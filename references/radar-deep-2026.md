# Radar deep 2026 — quantum, RE, wallet audits

## Horizontes

| Horizonte | Foco #1 |
|-----------|---------|
| Hoje | RNG/seed, nonces ECDSA, phishing, RE path, supply chain |
| Médio | crypto-agility, hybrid TLS, inventário, address hygiene |
| Longo | PQC signatures on-chain/custody, depreciação NIST clássicos |

## NIST PQC

- FIPS 203 ML-KEM (Kyber)
- FIPS 204 ML-DSA (Dilithium)
- FIPS 205 SLH-DSA (SPHINCS+)
- Migração / IR 8547: depreciação até ~2035 (high-risk antes)

## Quantum ECDLP (hot)

- Google Quantum AI: resource estimates Shor ECDLP-256 (~&lt;1200 logical qubits; arXiv 2603.28846 class)
- Address reuse / pubkey on-chain = superfície preferencial
- Hash-only address (sem pubkey exposta) atrasa Shor até spend

## Clássico que ainda mata

- Entropy failures (Coldcard-class H(K) << design)
- ECDSA nonce bias → lattice
- Side-channel / fault em HW
- KDF legado em storage

## Dual-track

- Track A: key exchange (HNDL) → hybrid KEM
- Track B: signatures (TNFL) → PKI + chain sigs

## Casos pack

- Coldcard-class: [0] entropy
- BlueWallet-class CSPRNG fail-closed: [0] OK se path real
- Import path: herda H(K) externa
