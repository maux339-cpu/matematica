---
name: sage-toolkit
description: Workflows SageMath, PARI/GP, fpylll, Magma-like tasks para crypto math.
---

# sage-toolkit

## Stack recomendada

| Tool | Uso |
|------|-----|
| **SageMath** | ECC, number theory, experiments |
| **PARI/GP** | number theory pesado |
| **fpylll** | LLL/BKZ lattices |
| **lattice-estimator** | params PQC |
| **GAP** | group theory |
| **Lean** | formal (ver formal-crypto) |

## Install (Windows)

Preferir WSL2 ou Docker:

```bash
# Docker
docker run -it sagemath/sagemath:latest

# WSL
sudo apt install sagemath
```

## Receitas

### Modular + DLP toy

```sage
p = 101
R = Integers(p)
g = R.multiplicative_generator()
h = g^17
discrete_log(h, g)
```

### ECC toy

```sage
E = EllipticCurve(GF(next_prime(10^3)), [0, 1])
P = E.gens()[0]
Q = 42*P
# discrete log additive on E (toy only)
```

### Lattice LLL

```sage
M = matrix(ZZ, [[1, 2, 3], [3, 4, 5], [5, 6, 8]])
M.LLL()
```

## Integração com agentes

- Preferir **snippets executáveis** em lab local
- Documentar versão do Sage
- Nunca rodar código não auditado de third-party sem sandbox

## CTF drills

- CryptoHack modules
- Cryptopals
- PlaidCTF / Google CTF crypto writeups (estudo)

## Limites

Sandbox; sem scan ofensivo de redes de terceiros.
