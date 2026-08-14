# 🛍️ TechStore

![Status](https://img.shields.io/badge/status-MVP%20%7C%20Em%20Desenvolvimento-black?style=flat-square)

---

## 📌 Sobre o Projeto

> E-commerce fictício desenvolvido como laboratório prático da disciplina de DevOps, simulando a transformação digital de uma empresa real ao longo do semestre.

A TechStore é uma plataforma de e-commerce que gerencia o ciclo de vida completo do pedido: autenticação, navegação no catálogo, carrinho, checkout e pagamento via PIX. O projeto prioriza integridade de dados, segurança de sessão e uma arquitetura preparada para evolução.

Este repositório acompanha a disciplina de DevOps e evolui a cada módulo, incorporando gradualmente containers, orquestração, infraestrutura como código, observabilidade e segurança (DevSecOps).

Toda a definição de escopo, regras de negócio e requisitos do produto está documentada em **[docs/prd.md](docs/prd.md)** - esse é o documento fonte de verdade sobre *o que* o sistema faz.

---

## 🧱 Stack Atual

* **Back-end:** ![Node.js](https://img.shields.io/badge/Node.js-18181B?style=flat-square&logo=nodedotjs&logoColor=white) ![Express](https://img.shields.io/badge/Express-18181B?style=flat-square&logo=express&logoColor=white) — API REST em JavaScript
* **Front-end:** ![React](https://img.shields.io/badge/React-18181B?style=flat-square&logo=react&logoColor=white) ![Vite](https://img.shields.io/badge/Vite-18181B?style=flat-square&logo=vite&logoColor=white) — SPA em JavaScript
* **Persistência:** ![JSON](https://img.shields.io/badge/JSON-18181B?style=flat-square&logo=json&logoColor=white) — Armazenamento local para MVP (`backend/data/`)
* **Containers:** ![Docker](https://img.shields.io/badge/Docker-18181B?style=flat-square&logo=docker&logoColor=white) — Ambiente com Docker & Docker Compose
* **Servidor Web:** ![Nginx](https://img.shields.io/badge/Nginx-18181B?style=flat-square&logo=nginx&logoColor=white) — Servidor de produção (imagem não-root)
---

## 📂 Estrutura do Projeto

```text
techstore/
├── .github/
│   └── workflows/          ← pipelines de CI/CD (GitHub Actions)
├── .vscode/                ← padronização de ambiente e formatação (Biome)
├── docs/                   ← portfólio de documentação e guias do projeto
├── backend/                ← API REST e regras de negócio
├── frontend/               ← aplicação web em React
├── docker-compose.yml      ← orquestração de containers locais
├── start.js                ← script de automação e orquestração local
├── package.json            ← centralizador de scripts e automações
└── README.md
```


> **Nota:** Pastas de infraestrutura avançada como (**terraform/**, **kubernetes/**, **monitoring/** e **security/**) serão incorporadas gradualmente conforme os módulos da disciplina avançarem.

---

## 🏗️ Architecture & Development

O projeto adota uma abordagem moderna baseada em **containers**, projetada para eliminar o clássico problema de divergência de ambientes ("na minha máquina funciona") e garantir isolamento total.

* **Isolamento de Dependências:** O gerenciamento de pacotes ocorre inteiramente dentro de cada container durante o build. Pastas locais como `node_modules` são ignoradas (`.dockerignore`), mantendo o repositório limpo e leve.
* **Automação de Infraestrutura:** Scripts locais centralizados na raiz simplificam a orquestração do ecossistema sem exigir comandos complexos manuais.
* **Código Padronizado:** O ambiente utiliza Biome e configurações versionadas em **.vscode/** para garantir formatação e lint automatizados em todo o time.
---

## 📑 Instruções de Execução

Certifique-se de ter o [**Docker**](https://www.docker.com/) e o [**Docker Compose**](https://docs.docker.com/compose/) instalados na sua máquina.

### ⚡ Início Rápido (Recomendado)
Para subir o ambiente completo de forma automatizada com um único comando na raiz:

```bash
# 1. Clone o repositório e acesse a pasta
git clone <url-do-repositorio>
cd techstore-devops16-labs

# Sobe os containers e inicia a aplicação
npm start
```
Com os containers rodando, acesse os serviços nos endereços:

```text
----------------------------------------
🚀 Sistema iniciado com sucesso!
👉🏼 Frontend: http://localhost
👉🏼 Backend:  http://localhost:3000/health
----------------------------------------
```

### 🛠️ Outros Comandos Úteis
```bash
 npm run stop    # Encerra e remove os containers 
 npm run restart # Reinicia os serviços rapidamente 
 npm run logs    # Acompanha os logs em tempo real 
```

### 🐳 Via Comandos Nativos do Docker Compose
Se preferir gerenciar diretamente pelo Docker:

```bash
docker compose up -d --build    # Sobe os containers
docker compose down             # Encerra e remove os containers
docker compose logs -f          # Acompanha os logs em tempo real
```

---

## ✅ Estado Atual (Marco 1 - MVP)

Conforme o **Roadmap** definido em [**docs/prd.md**](docs/prd.md):

- [ ] Cadastro de Clientes
- [ ] Login e Logout de Usuários
- [ ] Recuperação de Senha
- [ ] Gestão de Catálogo de Produtos (CRUD)
- [ ] Carrinho de Compras
- [ ] Pagamento via PIX

---

## 🎯 Objetivos da Disciplina

Ao longo do semestre, o projeto aplica conceitos de:

- Versionamento de Código
- Desenvolvimento Ágil
- Integração e Entrega Contínua (CI/CD)
- Containers e Orquestração
- Infraestrutura como Código
- Cloud Computing
- Observabilidade
- Segurança em DevOps (DevSecOps)

---

## 📚 Documentação

Toda a arquitetura, regras de negócio e guias de configuração estão centralizados no nosso portal de documentação:

- **[docs/README.md](docs/README.md)** — Acesso rápido a todos os manuais, PRD e especificações técnicas.

---

## 🌿 Estratégia de Git & Versionamento

Este repositório combina a **sincronização de um projeto base** com uma **extensão autoral e individual de engenharia**. Para garantir que a arquitetura personalizada evolua de forma isolada e sem conflitos com atualizações da fonte original, adota-se o seguinte fluxo:

* **`main` (Upstream Mirror):** Mantida como espelho estrito do repositório base (`upstream`). Não recebe commits diretos e serve exclusivamente para rastreabilidade e integração de atualizações estruturais da fonte.

* **`develop` (Laboratório & Arquitetura Individual):** Branch principal onde reside a **versão personalizada do projeto**. Concentra todas as implementações autorais, padronização de código (Biome), customizações de ambiente, refatorações e novos recursos.

* **`feature/`:** Branches temporárias criadas a partir da `develop` para isolar o desenvolvimento de cada módulo, funcionalidade ou ajuste de infraestrutura antes da consolidação.

---

*Projeto acadêmico - Disciplina de DevOps.*