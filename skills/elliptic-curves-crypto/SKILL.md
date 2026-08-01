---
name: elliptic-curves-crypto
description: Curvas elípticas, ECDLP, secp256k1, modular forms intro para crypto.
---

# elliptic-curves-crypto

## Conceitos-chave

| Tópico | Security |
|--------|----------|
| Grupo de pontos E(F_p) | ECDSA / ECDH |
| ECDLP | Hardness classica de ECC |
| Curva + ordem do subgrupo | anti small-subgroup |
| secp256k1 | Bitcoin / muitos wallets |
| Twist / invalid curve | ataques de implementação |
| Modular forms / L-functions | arithmetic geometry deep (research) |

## Abelian groups

Todo grupo abeliano finito ≈ produto de cíclicos. Em ECC isso guia a estrutura de E(F_q).  
Security depende de **não** haver DLP fácil no subgrupo usado.

## Labs (Sage)

```sage
E = EllipticCurve(GF(97), [1, 1])
E.abelian_group()
P = E.gens()[0]
n = E.order()
Q = 5*P
discrete_log(Q, P, n, operation='+')
```

## Bitcoin / wallets (defesa)

- Seed fraca ≠ falha da curva: é falha de **entropia** na geração de chave
- Multisig / threshold mudam o modelo de confiança, não o ECDLP
- PQC: ECDLP é o alvo de Shor otimizado (ver referências)

## Livro deep

- Lozano-Robledo, *Elliptic Curves, Modular Forms and Their L-Functions* (AMS SML)
- Silverman, *The Arithmetic of Elliptic Curves* (avançado)

## Ferramentas

- SageMath `EllipticCurve`
- `noble-secp256k1` / libsecp256k1 (engenharia)
- Bitcoin Core / research notes secp256k1

## Limites

Sem recovery de private keys de endereços reais; só demos com curvas toy.
