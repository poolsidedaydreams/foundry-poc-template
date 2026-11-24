# Foundry PoC Template — Bug Bounty

Official template for every bug bounty proof of concept. Mandatory from 24 Nov 2026 (Adhi): every submit uses this template, no exceptions.

Pattern: Immunefi's official `forge-poc-templates` (`forge init --template immunefi-team/forge-poc-templates`).

## Start a new PoC

```bash
forge init <finding-slug> --template poolsidedaydreams/foundry-poc-template
cd <finding-slug>
# Copy the production contracts from the scope repo (pinned commit) into src/
forge install --no-git foundry-rs/forge-std \
  OpenZeppelin/openzeppelin-contracts@v5.6.1 \
  OpenZeppelin/openzeppelin-contracts-upgradeable@v5.6.1
forge test -vv
```

## Mandatory standard (checked before any submit)

1. **One repo per PoC (or one folder per finding)** — a complete Foundry project, not a zip.
2. **README** — bug summary, **impact with numbers**, reproduction steps. Fill in `README-TEMPLATE.md`.
3. **Test file header** — `@title`, Bug, Impact, Severity, vulnerable file + lines (see `test/PoC.t.sol`).
4. **Remappings written out explicitly** — `remappings.txt` (forge-std + OpenZeppelin 5.6.1).
5. **Target commit pinned** — scope repo URL + commit hash in the README and the test header.
6. **Tests log before vs after** — `console.log` the numbers before and after the exploit step. The before/after numbers ARE the proof.
7. **No raw zips** — all source files visible in the repo.
8. **Verified from a fresh clone** — `forge test` must pass in a clean folder before the thread reply is sent.

## README template

Copy `README-TEMPLATE.md` into each PoC's README.md and fill in the bracketed sections.

## Layout of this template

- `test/PoC.t.sol` — the test template. Replace the placeholder test with the real exploit, keep the header and the before/after log pattern.
- `test/mocks/` — put PoC-only mocks here.
- `src/` — production contracts go here (copied byte-identical from the scope repo at the pinned commit).
- `foundry.toml`, `remappings.txt` — Foundry config (solc 0.8.35, evm cancun, optimizer 200; adjust the solc version to the target's).
