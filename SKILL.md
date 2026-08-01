---
name: matematica
description: >
  Matemática profunda para cibersegurança e criptografia: teoria dos números,
  álgebra, curvas elípticas, lattices/PQC, SageMath, cryptanalysis math, formal
  verification. Router multi-skill.
  Use when: matematica, math crypto, ECC, ECDLP, lattice, PQC, number theory
  security, SageMath, formal crypto, /matematica, deep crypto math.
---

# matematica — router

## Missão

Entregar **matemática séria** aplicada a **cibersegurança e criptografia** com:
- rigor conceitual
- mapa defesa/lab
- ferramentas reais (Sage, fpylll, PARI, Lean)
- **zero** tutorial de crime / exploit operacional ilegal

## Roteamento

| Pedido | Skill |
|--------|-------|
| Geral / não sei por onde | `skills/math-crypto-router` |
| Modular, DLP, RSA math | `skills/number-theory-crypto` |
| ECC, secp256k1, modular forms | `skills/elliptic-curves-crypto` |
| Lattices, LWE, NIST PQC | `skills/lattices-pqc` |
| Quantum, Shor, Grover, migração PQC wallets | `skills/quantum-pqc-wallets` |
| Auditoria de wallet/plataforma (RNG, BIP-39, nonces) | `skills/wallet-audit-math` |
| Sage/PARI/fpylll hands-on | `skills/sage-toolkit` |
| Ataques algébricos, estimators | `skills/cryptanalysis-math` |
| Lean, proofs formales | `skills/formal-crypto` |

Leia o `SKILL.md` da skill escolhida e execute.

## Output padrão

1. **Conceito math** (definições + por quê importa)
2. **Ligação security** (o que protege / o que quebra se falhar)
3. **Ferramentas** (comandos/lab seguros)
4. **Exercícios** (CryptoHack/Cryptopals/Sage)
5. **Referências** (livros/papers)

## Ética

- Lab próprio, CTF, research, auditoria autorizada.
- Nunca: roubo, bypass operacional de sistemas de terceiros, weaponize sem escopo.
