# Trilha profunda — matemática para crypto/security

## Fase 0 — Base (2–4 semanas)

- Discrete math, proofs, probability
- Linear algebra (mod p)
- Python/Sage basics

**Check:** inverter modular, ordem de elemento, LLL em 2D

## Fase 1 — Number theory crypto (4–8 semanas)

- Modular, CRT, Euler, generators
- Factoring intuition, DLP
- RSA / DH math (não só “use biblioteca”)

**Tools:** Sage, CryptoHack modular/RSA  
**Skill:** `number-theory-crypto`

## Fase 2 — Elliptic curves (6–10 semanas)

- Group law, ECDLP
- secp256k1 / P-256 differences
- Nonces, signatures, invalid curve (implementação)

**Book:** Lozano-Robledo SML; Silverman later  
**Skill:** `elliptic-curves-crypto`

## Fase 3 — Lattices & PQC (6–12 semanas)

- SVP/CVP, LWE
- NIST algorithms
- lattice-estimator

**Skill:** `lattices-pqc`

## Fase 4 — Cryptanalysis lab (ongoing)

- CTF crypto
- Weak params, RNG failures
- Side-channel **theory** + lab próprio

**Skill:** `cryptanalysis-math` + `sage-toolkit`

## Fase 5 — Formal / research (optional)

- Lean mathlib
- Read PQC / ECC papers critically

**Skill:** `formal-crypto`

## Capstone projects (seguros)

1. Toy ECDH + MITM demo em lab
2. Reproduce lattice-estimator on toy params
3. Audit de RNG (estatística + crypto.random vs Math.random)
4. Write-up: por que seed fraca ≠ curva fraca (Coldcard-class lessons)
