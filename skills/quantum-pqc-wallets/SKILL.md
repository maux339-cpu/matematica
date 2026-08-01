---
name: quantum-pqc-wallets
description: >
  Quantum threat model (Shor/Grover), NIST PQC (ML-KEM/ML-DSA/SLH-DSA), and
  wallet/platform migration for crypto auditors. Use for Q-Day planning,
  ECDLP resource estimates, hybrid TLS, address hygiene, crypto-agility.
---

# quantum-pqc-wallets

## Missão

Mapear ameaça quântica e migração PQC em **wallets, custody, exchanges e blockchains**.  
Defesa / planejamento / lab — **não** “como quebrar mainnet”.

## Conceitos

| Peça | O que faz | Impacto wallet |
|------|-----------|----------------|
| **Shor** | factoring + discrete log em poly-time (CRQC) | ECDSA/ECDH/RSA morrem se pubkey exposta |
| **Grover** | busca \(2^{n/2}\) | AES/hash degradam, não zeram |
| **ECDLP-256** | base secp256k1 | resource estimates caem com melhor compilação de circuitos |
| **ML-KEM (FIPS 203)** | Kyber → KEM | TLS / key exchange hybrid |
| **ML-DSA (FIPS 204)** | Dilithium → signatures | txs, PKI, code sign |
| **SLH-DSA (FIPS 205)** | SPHINCS+ hash-based | backup signature |

## Dual-track migration

1. **Track A – Key exchange** (HNDL: harvest now, decrypt later) → hybrid ML-KEM cedo  
2. **Track B – Signatures** (TNFL: trust now, forge later) → PKI + on-chain sigs (mais lento)

## Wallet-specific

| Item | Ação de auditor |
|------|-----------------|
| Address reuse | pubkey on-chain = alvo preferencial no Q-Day |
| Change address | sempre fresco |
| Multi-sig / MPC | reduz single-key, **não** é PQC sozinho |
| Seed entropy | PQC **não** conserta seed de 40 bits |
| Hybrid cosigner PQ | retrofit em estudo; validar claims de projeto |

## Separar horizontes

| Horizonte | Foco real |
|-----------|-----------|
| **Hoje** | RNG, nonces ECDSA, phishing, RE path |
| **Médio** | crypto-agility, inventário, hybrid TLS |
| **Longo** | migração assinaturas PQC on-chain / custody |

## Output padrão

1. Threat model (clássico vs quantum)  
2. Superfície (pubkey exposta? HNDL?)  
3. Recomendações por horizonte  
4. Referências (NIST, Google ECDLP estimates, surveys)

## Ética

Sem instrução de ataque a chaves reais. Lab toy + planejamento de migração.
