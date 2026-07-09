# x402-Arbitrum Extension
**HTTP 402 Payment-Gated Routing on Arbitrum**
**Author:** Richard Patterson (@De-ASI-INTERFACE) | **Version:** 1.0.0 | **Date:** 2026-07-09

## Overview
The x402-Arbitrum Extension adapts the x402 HTTP 402 payment standard to Arbitrum One (chainId: 42161) and Arbitrum Nova (chainId: 42170) using Nitro's optimistic rollup architecture. It defines `scheme: arbitrum-erc20` for ERC-20/ETH payments with Uniswap v3 (Arbitrum) and Camelot DEX as routing surfaces. Arbitrum's unique Stylus environment enables Rust/WASM payment gate contracts alongside Solidity, providing dual-language Facilitator support. Lean 4 proofs verify nonce replay prevention, block timestamp expiry, and Stylus WASM determinism invariants.
**Reference ID:** RP-DEASI-ARB-2026-0709-001
