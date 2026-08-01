# matematica

**Skills e ferramentas de matemática profunda para cibersegurança e criptografia.**

Pacote multi-agente: **Grok · Codex · Kimi · DeepSeek** (+ Claude/Cursor compatível via `SKILL.md`).

## O que é

- Trilha de estudo (number theory → ECC → lattices/PQC → formal)
- Skills agentic (router + especialistas)
- Toolkit (SageMath, fpylll, PARI, CryptoHack, Lean)
- Referências e currículos profundos
- **Defesa / lab / pesquisa** — sem tutorial de crime

## Estrutura

```
matematica/
├── SKILL.md                          # router principal
├── skills/
│   ├── math-crypto-router/           # entrada / roteamento
│   ├── number-theory-crypto/         # Z/nZ, DLP, factoring
│   ├── elliptic-curves-crypto/       # ECDLP, secp256k1, modular forms
│   ├── lattices-pqc/                 # CVP/SVP/LWE, NIST PQC
│   ├── sage-toolkit/                 # Sage/PARI/fpylll workflows
│   ├── cryptanalysis-math/           # algebraic attacks, estimators
│   └── formal-crypto/                # Lean / formal verification
├── adapters/
│   ├── grok/                         # install + AGENTS hooks
│   ├── codex/
│   ├── kimi/
│   └── deepseek/
├── curricula/                        # ordem de estudo
├── tools/                            # scripts auxiliares
└── references/                       # papers, livros, links X
```

## Install rápido

### Grok (Windows)

```powershell
cd $env:USERPROFILE\matematica
powershell -ExecutionPolicy Bypass -File adapters\grok\install.ps1
```

### Codex

```powershell
powershell -ExecutionPolicy Bypass -File adapters\codex\install.ps1
```

### Kimi / DeepSeek

```powershell
powershell -ExecutionPolicy Bypass -File adapters\kimi\install.ps1
powershell -ExecutionPolicy Bypass -File adapters\deepseek\install.ps1
```

Ou clone direto:

```bash
git clone https://github.com/maux339-cpu/matematica.git
```

## Uso (agente)

Triggers: `matematica`, `math crypto`, `ECC deep`, `lattice PQC`, `number theory security`, `SageMath crypto`, `/matematica`.

O router escolhe a skill especialista e devolve:
1. Conceitos math
2. Mapa pra segurança
3. Ferramentas
4. Exercícios / labs seguros
5. Referências

## Licença

MIT — uso educacional e defensivo.
