---
name: lattices-pqc
description: Lattices, CVP/SVP/LWE e criptografia pós-quântica (NIST).
---

# lattices-pqc

## Conceitos-chave

| Tópico | Security |
|--------|----------|
| Lattice Λ ⊂ R^n | geometria de hard problems |
| SVP / CVP | problemas base |
| LWE / Ring-LWE | PQC moderno (Kyber etc.) |
| Reduction / dual | cryptanalysis params |
| NISTs PQC | ML-KEM, ML-DSA, SLH-DSA |
| Shor vs lattices | ECC/RSA caem; lattice é aposta PQ |

## Por que importa 2026+

- Resource estimates de Shor em ECDLP caem com engenharia de circuito
- Blockchains ECDSA precisam de **caminho de migração** PQC
- ZK lattice (ex. zkVM) depende de hardness CVP/LWE

## Labs seguros

```python
# conceitual: use fpylll / lattice-estimator (docs oficiais)
# Nunca "quebrar" schemes de produção; só params de lab/toy
```

- [lattice-estimator](https://github.com/malb/lattice-estimator) — estimar custo de ataque
- fpylll — LLL/BKZ experiments
- Sage lattice modules

## Skill targets

- Explicar SVP vs CVP vs LWE em linguagem clara + rigor
- Ler e resumir papers NIST / hardness updates
- Sugerir inventário cripto (crypto-agility) pra migração PQC
- Ligar falhas de implementação (não só math) a quebras

## Referências

- Peikert survey lattices
- NIST PQC standards
- Regev LWE
- Papers de resource estimation quantum ECDLP (acompanhar crítica)

## Limites

Não gerar “ataque real” contra sistemas em produção.
