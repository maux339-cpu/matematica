---
name: wallet-audit-math
description: >
  Checklist matemático + RE para auditoria de wallets e plataformas crypto:
  BIP-39 entropy, CSPRNG, ECDSA nonces, KDF storage, supply chain, PQC surface.
  Use when auditing BlueWallet-class apps, hardware wallets, exchanges, bridges.
---

# wallet-audit-math

## Camadas (varredura exaustiva)

```
[0] Entropia / seed / BIP-39
[1] Derivação BIP-32 / nonces ECDSA
[2] Curva secp256k1 / ECDLP
[3] Protocolo (PSBT, multi-sig)
[4] Storage / KDF / platform / supply chain
```

## Checklist

### [0] Seed / RNG
- [ ] CSPRNG real? (`getRandomValues`, SecRandom, SecureRandom, getrandom)
- [ ] Fail-closed se RNG falha? (sem fallback UID/timer)
- [ ] Bits efetivos: 128/256 vs << ?
- [ ] Import vs generate (import herda H(K) externa)
- [ ] Dice/extra entropy sem piorar o path

### [1] Sign / nonce
- [ ] Nonce determinístico (RFC6979) ou CSPRNG forte
- [ ] Sem reuso / bias de \(k\) (lattice surface)

### [2] Curve
- [ ] Curva padrão (secp256k1/P-256/Ed25519)
- [ ] Sem invalid-curve / twist no path de validação
- [ ] Address hygiene (reuse = pubkey leak)

### [3] Protocol
- [ ] Multisig/MPC/threshold options
- [ ] PSBT / air-gap se HW

### [4] Storage / supply
- [ ] Keychain/Keystore flags
- [ ] KDF (evitar MD5/1-iter legado)
- [ ] Deps pinadas; npm name vs GitHub pin

## Casos de referência (pack)

| Caso | Classificação |
|------|---------------|
| Coldcard-class H(K)~40–72 | [0] entropia — busca de seed, não ECDLP |
| BlueWallet CSPRNG fail-closed | [0] OK se path real; residual [4] |
| Nonce bias ECDSA | [1] lattice clássico (hoje) |
| Quantum ECDLP | [2] horizonte CRQC + PQC skill |

## Cruzamento de skills

| Sintoma | Skill |
|---------|-------|
| Modular / RSA / DLP | number-theory-crypto |
| ECC / secp256k1 | elliptic-curves-crypto |
| PQC / Shor | quantum-pqc-wallets |
| Lab Sage | sage-toolkit |
| CTF / weak params | cryptanalysis-math |

## Output de relatório

1. Path de geração (evidência de código)  
2. Bits efetivos estimados  
3. Risco Coldcard-like: Sim/Não/Parcial  
4. Achados [0]–[4]  
5. Mitigações por horizonte  
6. Ferramentas usadas  

## Ética

Auditoria de código aberto / lab próprio / escopo autorizado. Zero roubo.
