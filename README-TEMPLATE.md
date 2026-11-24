# [F-XX] — [Finding title]

**Severity:** [Critical/High/Medium/Low] — [Report thread]([thread URL])

**Target (pinned):** [scope repo URL] @ `[commit]` ("[release]"). Production contracts in `src/` are copied byte-identical from that commit.

## Bug

[What is wrong, with file + line references.]

## Impact (numbers from the PoC run)

- [Before/after numbers: amounts, prices, gas, counts.]
- [What the attacker gains, what the victim loses.]

## Layout

- `src/` — production contracts, copied byte-identical from the scope repo at the pinned commit.
- `test/PoC.t.sol` — the PoC ([N] tests). Header carries the bug, impact, severity, and vulnerable file + lines. Key tests log the numbers before vs after.
- `test/mocks/` — PoC-only mocks.
- `foundry.toml`, `remappings.txt` — Foundry config; remappings are written out explicitly (forge-std + OpenZeppelin 5.6.1).

## Reproduce

```bash
forge install --no-git foundry-rs/forge-std \
  OpenZeppelin/openzeppelin-contracts@v5.6.1 \
  OpenZeppelin/openzeppelin-contracts-upgradeable@v5.6.1
forge test -vv
```

Expected: **[N]/[N] pass**. Key test: `[testName]` (gas [N]). Run with `-vv` to see the before/after logs — [the numbers that prove it].
