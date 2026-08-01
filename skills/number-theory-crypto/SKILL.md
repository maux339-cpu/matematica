---
name: number-theory-crypto
description: Teoria dos números e álgebra para criptografia clássica (RSA, DLP, modular).
---

# number-theory-crypto

## Conceitos-chave

| Tópico | Por quê security |
|--------|------------------|
| Aritmética modular | Base de quase todo scheme |
| Inverso modular (EGCD) | Decifração RSA, ops de campo |
| Teorema chinês dos restos | CRT RSA, speedups, side-channels |
| Grupos cíclicos / ordem | Discrete log hardness |
| Residuosidade quadrática | schemes e testes |
| Factoring (N=pq) | RSA |
| DLP em F_p^* | Diffie–Hellman clássico |

## Skill targets

- Calcular ordens, geradores, subgrupos
- Explicar por que DLP/factoring hard (não “provar P≠NP”)
- Ligar falhas de RNG/primality a quebra de scheme
- Implementar demos **didáticas** em Sage (números pequenos)

## Labs seguros

```sage
# SageMath
Zmod(17).multiplicative_group_is_cyclic()
R = Integers(17)
discrete_log(R(3), R(2))  # dlog base 2 de 3 mod 17
factor(2^61-1)
```

## Ferramentas

- SageMath, PARI/GP
- CryptoHack (modular, RSA starter)
- Cryptopals sets com math modular

## Referências

- Ireland & Rosen, *A Classical Introduction to Modern Number Theory*
- Katz & Lindell, *Introduction to Modern Cryptography* (cap. number theory)
- Boneh–Shoup, *A Graduate Course in Applied Cryptography* (online)

## Limites

Não entregar scripts de quebra RSA real-world (moduli grandes de produção).
