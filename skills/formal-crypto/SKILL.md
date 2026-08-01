---
name: formal-crypto
description: Verificação formal (Lean etc.) aplicada a proofs e crypto math.
---

# formal-crypto

## Por quê

- Proofs de hardness / correctness com **machine check**
- Reduz erro humano em argumentos longos (papers + specs)
- Fronteira: AI-assisted formalization (Lean) em math/crypto

## Stack

| Tool | Uso |
|------|-----|
| **Lean 4** + mathlib | formal math |
| Isabelle/HOL | alternative |
| EasyCrypt / CryptoVerif | protocol proofs (research) |

## Skill targets

- Explicar gap entre “proof sketch” e formalização
- Sugerir como formalizar lemas de group theory / finite fields
- Revisar claims de papers com ceticismo (verificar peer review)

## Labs

```bash
# Lean 4 + mathlib (docs leanprover)
# Começar com naturais, grupos, anéis — não pular pro ECDLP
```

## Ligação crypto

- Specs de schemes (RSA-OAEP, signatures) formalizadas em literatura
- PQC proofs ainda em evolução — ler papers NIST

## Limites

Não inventar teoremas “formalizados” sem artefato Lean/Isabelle real.
