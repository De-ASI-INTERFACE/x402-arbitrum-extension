-- ============================================================
-- x402-Arbitrum: Basic Re-export Shim
-- Author: Richard Patterson (@De-ASI-INTERFACE)
-- Date: 2026-07-09
-- Chain: Arbitrum One / ERC-20 / Camelot DEX v3
--
-- Re-exports X402Arbitrum.PaymentVerification as the single
-- authoritative source of all shared types and definitions.
-- Chain-prefixed theorem aliases are provided for ergonomic use.
-- ============================================================
import X402Arbitrum.PaymentVerification

namespace X402Arbitrum

/-- Alias: replay prevention under the Arbitrum chain prefix.
    result type: a.nonce ∉ s.used_nonces. -/
theorem arbitrum_replay_prevented
    (a : PaymentAuth) (s : FacilitatorState) (h : verify a s) :
    a.nonce ∉ s.used_nonces :=
  replay_prevented a s h

/-- Alias: expiry enforcement under the Arbitrum chain prefix.
    Delegates to within_expiry: s.block_time ≤ a.expires_at. -/
theorem arbitrum_not_expired
    (a : PaymentAuth) (s : FacilitatorState) (h : verify a s) :
    s.block_time ≤ a.expires_at :=
  within_expiry a s h

end X402Arbitrum
