import Lake
open System Lake DSL

package «hex-perm-group» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "v0.9.0"

@[default_target]
lean_lib HexPermGroup where
  precompileModules := get_config? hexPermGroupNative != some "false"

lean_lib HexPermGroupTests where
  globs := #[`HexPermGroup.Tests, `HexPermGroup.CertificateTests, `HexPermGroup.ImportTests]
