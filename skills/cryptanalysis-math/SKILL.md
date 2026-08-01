---
name: cryptanalysis-math
description: Cryptanalysis matemática em lab/CTF — algebraic, lattice, statistical (defensivo).
---

# cryptanalysis-math

## Escopo

**Permitido:** CTF, lab próprio, review de scheme, paper reproduction, teaching.  
**Proibido:** atacar sistemas de terceiros, roubo, weaponize sem autorização.

## Famílias de análise

| Classe | Math | Exemplos lab |
|--------|------|--------------|
| Algebraic | poly systems, Gröbner | toy ciphers, low-degree |
| Lattice | LLL/BKZ | knapsack, weak RSA, LWE toy |
| Statistical | bias, correlation | LFSR, weak RNG |
| Group structure | small subgroup, MOV | ECC misconfig **em lab** |
| Implementation | timing, faults | constant-time review |

## Workflow agente

1. Identificar **assumptions** do scheme  
2. Mapear **math problem** (DLP, SVP, factoring…)  
3. Checar **params** (tamanho, RNG, nonce reuse)  
4. Estimar complexidade (lattice-estimator / literature)  
5. Propor **mitigação** e teste de regressão  

## Tools

- Sage, fpylll, lattice-estimator
- RsaCtfTool **só em CTF/lab**
- hashcat/john **só hashes próprias/CTF**

## Output

- Modelo de ameaça
- Caminho math do ataque (alto nível)
- Complexidade estimada
- Fix / defesa
- Referências

## Limites

Nunca: dumps de produção, phishing, roubo de seed, mainnet exploit.
