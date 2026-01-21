---
date: '2026-01-20T10:00:00-03:00'
title: 'Portfolio & Blog Pessoal'
description: "Desenvolvimento de uma plataforma digital de alta performance para exibição de projetos e artigos técnicos. Construído com arquitetura JAMstack para máxima velocidade e SEO."
image: "mobile.webp"
tags:
  - Hugo Framework
  - Tailwind CSS
  - Web Performance
  - Arquitetura de Software
draft: true
---

# Portfolio & Blog - Evandro Santos

![Hugo](https://img.shields.io/badge/Hugo-Extended-ff4088?style=flat&logo=hugo)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-v4-38bdf8?style=flat&logo=tailwindcss)
![Status](https://img.shields.io/badge/Status-Development-green)

Este é um portfólio pessoal e blog desenvolvido com foco em alta performance, acessibilidade e design limpo. O projeto utiliza **Hugo** como Gerador de Site Estático (SSG) e **Tailwind CSS v4** para estilização moderna.

## 🚀 Funcionalidades

- **⚡ Performance Extrema:** Site estático gerado pelo Hugo (Go).
- **🎨 Design Moderno & Responsivo:** Layout adaptável para Mobile, Tablet e Desktop.
- **🌓 Dark/Light Mode:** Alternância de tema com persistência local e detecção de preferência do sistema.
- **📝 Blog Otimizado:**
  - Suporte a **Page Bundles** (texto e imagens na mesma pasta).
  - Categorias, Tags e Tempo de Leitura.
  - Índice Automático (Table of Contents).
  - Imagens responsivas (Hero e Feed).
- **🛠️ Seções Dinâmicas:**
  - **Hero Section:** Editável via Markdown (`content/hero/_index.md`).
  - **Skills:** Ícones SVG e dados via Front Matter (`content/skills/_index.md`).
- **📱 Menu Mobile:** Navegação suave e acessível.

---

## 🛠️ Tecnologias Utilizadas

* [Hugo Extended](https://gohugo.io/) (Framework principal)
* [Tailwind CSS v4](https://tailwindcss.com/) (Estilização)
* [Tailwind Typography](https://github.com/tailwindlabs/tailwindcss-typography) (Formatação de artigos do blog)
* JavaScript (ES6+) (Lógica de UI e Tema)
* HTML5 Semântico

---

## 📦 Pré-requisitos

Antes de começar, certifique-se de ter instalado em sua máquina:

1.  **Git**
2.  **Node.js** (para instalar o Tailwind)
3.  **Hugo Extended** (Necessário para processar o CSS via Hugo Pipes)
    * *Windows:* `choco install hugo-extended`
    * *Mac:* `brew install hugo`
    * *Linux:* `snap install hugo --channel=extended`

---

## 🔧 Instalação e Execução

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/portfolio-vandersant7.git](https://github.com/seu-usuario/portfolio-vandersant7.git)
    cd portfolio-vandersant7
    ```

2.  **Instale as dependências (Tailwind):**
    ```bash
    npm install
    ```

3.  **Execute o servidor local:**
    ```bash
    hugo server -D
    ```
    *A flag `-D` inclui posts marcados como rascunho (draft).*

4.  Acesse `http://localhost:1313`.

---

## 📂 Estrutura do Projeto

O projeto segue uma arquitetura organizada para facilitar a manutenção:

```text
├── assets/
│   ├── css/           # Arquivos CSS principais (Tailwind)
│   └── images/        # Imagens globais (processáveis via Hugo Pipes)
├── content/
│   ├── hero/          # Headless Bundle da seção Hero
│   ├── posts/         # Artigos do Blog (Page Bundles)
│   ├── projects/      # Portfólio de Projetos
│   ├── skills/        # Seção de Habilidades Técnicas
│   └── _index.md      # Configurações da Home
├── layouts/           # Templates HTML
│   ├── _default/      # Layouts padrão (list, single)
│   ├── partials/      # Componentes (header, footer, sidebar)
│   └── posts/         # Layout específico do Blog
├── static/            # Arquivos estáticos (favicon, imagens globais simples)
└── hugo.toml          # Configuração global do Hugo

```

---

## ✍️ Gerenciamento de Conteúdo

### Criando um Novo Post (Blog)

Este projeto usa **Page Bundles**. Para criar um novo post, use o comando abaixo para gerar a pasta correta:

```bash
hugo new content/posts/nome-do-post-slug/index.md

```

Isso criará a estrutura: `content/posts/nome-do-post-slug/`.

* Coloque suas imagens (ex: `capa.jpg`) dentro dessa pasta.
* No Front Matter do `index.md`, referencie apenas o nome: `image: "capa.jpg"`.

### Editando a Home (Hero)

A seção inicial não é "hardcoded". Para alterar textos, links sociais ou botões:

* Edite: `content/hero/_index.md`

### Adicionando Habilidades (Skills)

Para adicionar novas tecnologias (Angular, React, .NET, etc):

* Edite: `content/skills/_index.md`
* Adicione o nome e a chave do ícone no Front Matter.

---

## 🚀 Deploy

Este site está pronto para ser hospedado em plataformas como **Vercel**, **Netlify** ou **GitHub Pages**.

### Exemplo de Build Command:

```bash
hugo --gc --minify

```

### Exemplo (Netlify):

1. Conecte seu repositório.
2. Build command: `hugo --gc --minify`
3. Publish directory: `public`
4. **Importante:** Certifique-se de definir a variável de ambiente `HUGO_VERSION` para a versão mais recente (ex: `0.121.0`).

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](https://www.google.com/search?q=LICENSE) para mais detalhes.

---

Desenvolvido com ❤️ por **Evandro Santos**.