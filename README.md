# 🛍️ TechStore

E-commerce fictício desenvolvido como laboratório prático da disciplina de DevOps, simulando a transformação digital de uma empresa real ao longo do semestre.

**Status atual:** 🚧 Em desenvolvimento (MVP - Marco 1)

---

## 📖 Sobre o Projeto

A TechStore é uma plataforma de e-commerce que gerencia o ciclo de vida completo do pedido: autenticação, navegação no catálogo, carrinho, checkout e pagamento via PIX. O projeto prioriza integridade de dados, segurança de sessão e uma arquitetura preparada para evolução.

Este repositório acompanha a disciplina de DevOps e evolui a cada módulo, incorporando gradualmente containers, orquestração, infraestrutura como código, observabilidade e segurança (DevSecOps).

Toda a definição de escopo, regras de negócio e requisitos do produto está documentada em **[docs/prd.md](docs/prd.md)** - esse é o documento fonte de verdade sobre *o que* o sistema faz.

---

## 🧱 Stack Atual

| Camada | Tecnologia |
|---|---|
| Back-end | Node.js + Express (JavaScript) |
| Front-end | React + Vite (JavaScript) |
| Persistência (MVP) | Arquivos JSON (`backend/data/`) |
| Containers | Docker + Docker Compose |
| Servidor Web (produção) | Nginx (imagem não-root) |

---

## 📂 Estrutura do Projeto

```
techstore/
├── docs/
│   ├── prd.md                  ← requisitos e regras de negócio do produto
│   ├── specs/                  ← especificação técnica de cada funcionalidade (contratos de API)
│   └── setup/
│       ├── setup-backend.md    ← guia de setup do ambiente back-end
│       └── setup-frontend.md   ← guia de setup do ambiente front-end
├── backend/
├── frontend/
├── docker-compose.yml
└── README.md
```

> Pastas como `terraform/`, `kubernetes/`, `monitoring/` e `security/` serão incorporadas gradualmente conforme a disciplina avança.

---

## ▶️ Como Rodar o Projeto

O setup completo, passo a passo, com o porquê de cada decisão, está documentado em:

- **[docs/setup/setup-backend.md](docs/setup/setup-backend.md)** - ambiente Node.js + Express
- **[docs/setup/setup-frontend.md](docs/setup/setup-frontend.md)** - ambiente React + Vite

Resumo rápido, com os dois ambientes já configurados:

```bash
docker compose up --build
```

- Backend disponível em: `http://localhost:3000`
- Frontend disponível em: `http://localhost`

---

## ✅ Estado Atual (Marco 1 - MVP)

Conforme o Roadmap definido em [docs/prd.md](docs/prd.md):

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

| Documento | Descrição |
|---|---|
| [docs/prd.md](docs/prd.md) | Requisitos de produto, regras de negócio e critérios de aceite |
| [docs/specs/](docs/specs/README.md) | Especificação técnica de cada funcionalidade (contratos de API) |
| [docs/setup/setup-backend.md](docs/setup/setup-backend.md) | Setup completo do ambiente back-end |
| [docs/setup/setup-frontend.md](docs/setup/setup-frontend.md) | Setup completo do ambiente front-end |

---

*Projeto acadêmico - Disciplina de DevOps.*