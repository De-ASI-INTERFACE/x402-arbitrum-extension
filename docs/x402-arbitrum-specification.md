# x402-Arbitrum Specification
**Author:** Richard Patterson | **Ref:** RP-DEASI-ARB-2026-0709-001

## Payment Schema (`scheme: arbitrum-erc20`)
```json
{ "scheme": "arbitrum-erc20", "chainId": 42161,
  "payTo": "0x<facilitator>", "token": "0x<erc20>",
  "amount": "<uint256>", "nonce": "<bytes32>",
  "expiresAt": "<unix-timestamp>",
  "signature": "<eip712-sig>" }
```

## Arbitrum-Specific Invariants
1. **Nitro Sub-second Sequencer:** Payment sequenced in <100ms; deterministic ordering before routing
2. **Stylus WASM Facilitator:** Rust-written payment gate compiled to WASM runs alongside Solidity
3. **ArbOS Precompiles:** `ArbSys.arbBlockNumber()` used for deterministic block-based expiry
4. **Nova AnyTrust:** Lighter data availability; higher throughput for high-frequency micro-payment gates
5. **Fraud Proof Awareness:** L2->L1 payment proofs available within 7-day challenge window
