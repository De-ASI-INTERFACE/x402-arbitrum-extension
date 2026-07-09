import Lake
open Lake DSL
package «x402-arbitrum» where
  name := "x402-arbitrum"
require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.14.0"
lean_lib «X402Arbitrum» where
  roots := #[`X402Arbitrum]
