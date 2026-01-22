# Evandro Santos - Portfolio + Blog 🚀

Portfólio pessoal e blog tecnológico showcasando projetos, habilidades e artigos sobre desenvolvimento de software.

## 📋 Sumário

- [Sobre o Projeto](#-sobre-o-projeto)
- [Objetivo](#-objetivo)
- [Tecnologias](#-tecnologias)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Como Executar](#-como-executar-localmente)
- [Licença](#-licença)
- [Contribuindo](#-contribuindo)

---

## 🎯 Sobre o Projeto

Este projeto é um portfólio profissional e blog pessoal que exibe:

- **Portfolio**: Projetos realizados, destacando tecnologias e aprendizados
- **Blog**: Artigos técnicos sobre desenvolvimento, frameworks, e melhores práticas
- **Habilidades**: Stack de tecnologias e competências profissionais
- **Sobre**: Informações pessoais e trajetória profissional
- **Contato**: Canais para conectar e colaborar

O site é construído como um **Static Site Generator (SSG)** para melhor performance, SEO e segurança.

---

## 🎪 Objetivo

- Criar um portfólio moderno e responsivo
- Compartilhar conhecimento através de artigos técnicos
- Demonstrar habilidades em frontend, backend e DevOps
- Facilitar networking e oportunidades profissionais
- Manter um espaço para evolução técnica e documentação

---

## 🛠️ Tecnologias

### Core
- **Hugo** - Static Site Generator (v0.121+)
- **Tailwind CSS** - Framework CSS utilitário
- **JavaScript** - Interatividade e UX

### Desenvolvimento
- **Go** - Fundação do Hugo
- **Markdown** - Formato de conteúdo
- **HTML5** - Estrutura semântica

### Ferramentas
- **Git** - Versionamento
- **npm/PostCSS** - Build de CSS

---

## 📁 Estrutura do Projeto

```
portfolio-vandersant7/
├── archetypes/          # Templates para criar novo conteúdo
├── assets/              # CSS, imagens e recursos
│   └── css/
│       ├── main.css     # Estilos base
│       └── theme.css    # Tema e personalizações
├── content/             # Conteúdo do site (Markdown)
│   ├── about/           # Página sobre
│   ├── hero/            # Seção herói
│   ├── posts/           # Artigos do blog
│   ├── projects/        # Projetos do portfólio
│   └── skills/          # Habilidades e competências
├── layouts/             # Templates HTML do Hugo
│   ├── _default/        # Layouts padrão
│   ├── _partials/       # Componentes reutilizáveis
│   ├── posts/           # Templates para posts
│   └── projects/        # Templates para projetos
├── static/              # Arquivos estáticos (JS, imagens, etc)
├── public/              # Output gerado (build do site)
├── hugo.toml            # Configuração principal do Hugo
├── README.md            # Este arquivo (seleção de idioma)
└── .gitignore           # Exclusões Git

```

### Diretórios Principais

- **`/content`** - Todo o conteúdo do site em Markdown
- **`/layouts`** - Templates HTML que definem a aparência
- **`/assets`** - Estilos CSS e imagens
- **`/public`** - Saída gerada (não commitar, gerar local)

---

## 🚀 Como Executar Localmente

### Pré-requisitos

- **Hugo Extended** (v0.121+) - [Download](https://gohugo.io/)
- **Node.js** (v18+) - Para Tailwind CSS
- **Git** - Para versionamento

### Instalação

1. **Clone o repositório**
   ```bash
   git clone https://github.com/vandersant7/portfolio-vandersant7.git
   cd portfolio-vandersant7
   ```

2. **Instale dependências (se necessário)**
   ```bash
   npm install
   ```

3. **Inicie o servidor de desenvolvimento**
   ```bash
   hugo server -D
   ```

   O site estará disponível em: `http://localhost:1313`

### Modo Desenvolvimento

O servidor Hugo monitora automaticamente mudanças em:
- Conteúdo (Markdown)
- Templates (HTML)
- CSS

Atualizações aparecerão em tempo real no navegador.

### Gerar Build Estático

```bash
hugo
```

Os arquivos estáticos serão gerados na pasta `/public`.

---

## 📝 Adicionando Conteúdo

### Novo Artigo

```bash
hugo new posts/meu-artigo/index.md
```

### Novo Projeto

```bash
hugo new projects/meu-projeto/index.md
```

Edite o arquivo Markdown criado e Hugo recarregará automaticamente.

---

## 📄 Licença

Este projeto está licenciado sob a **Licença MIT** - uma licença Open Source permissiva.

### Termos da MIT

✅ **Você pode:**
- Usar para fins comerciais e pessoais
- Modificar o código
- Distribuir o código
- Usar de forma privada

⚠️ **Condições:**
- Incluir a licença e aviso de copyright

❌ **Você NÃO pode:**
- Responsabilizar o autor por danos

Para mais detalhes, veja [LICENSE](LICENSE).

---

## 🤝 Contribuindo

Este é um projeto Open Source e contribuições são bem-vindas! Qualquer pessoa pode contribuir melhorando código, documentação, reportando bugs ou sugerindo features.

### Como Contribuir

1. **Faça um Fork**
   ```bash
   Clique em "Fork" no GitHub
   ```

2. **Clone seu Fork localmente**
   ```bash
   git clone https://github.com/seu-usuario/portfolio-vandersant7.git
   cd portfolio-vandersant7
   ```

3. **Crie uma branch para sua feature/fix**
   ```bash
   git checkout -b feature/minha-feature
   # ou
   git checkout -b fix/meu-fix
   ```

4. **Faça suas alterações**
   - Edite ou crie arquivos conforme necessário
   - Siga o padrão de commits semânticos

5. **Commit suas mudanças**
   ```bash
   git add .
   git commit -m "tipo: descrição clara da mudança"
   # Exemplo: "feat: adicionar seção de certificações"
   # Exemplo: "fix: corrigir layout responsivo no mobile"
   ```

6. **Push para seu Fork**
   ```bash
   git push origin feature/minha-feature
   ```

7. **Abra um Pull Request**
   - Vá até o repositório original
   - Clique em "New Pull Request"
   - Descreva suas mudanças claramente

### Padrão de Commits (Semântico)

Use commits semânticos para clareza:

- `feat:` - Nova funcionalidade
- `fix:` - Correção de bug
- `docs:` - Documentação
- `style:` - Formatação ou CSS
- `refactor:` - Refatoração de código
- `perf:` - Melhoria de performance
- `build:` - Mudanças no build
- `ci:` - CI/CD

### Diretrizes de Contribuição

- Descreva o problema/feature em detalhes
- Siga o padrão de código existente
- Atualize documentação se necessário
- Teste suas mudanças localmente
- Mantenha a consistência com o projeto

---

## 📧 Contato

- **Email**: seu-email@example.com
- **LinkedIn**: [linkedin.com/in/evandro-santos](https://linkedin.com)
- **GitHub**: [github.com/vandersant7](https://github.com/vandersant7)
- **Twitter**: [@seu-twitter](https://twitter.com)

---

## 🎓 Recursos Úteis

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Markdown Guide](https://www.markdownguide.org/)
- [Git Guide](https://git-scm.com/doc)

---

**Feito com ❤️ por Evandro Santos**

[⬆ Voltar ao topo](#-sumário)
