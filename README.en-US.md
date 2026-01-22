# Evandro Santos - Portfolio + Blog 🚀

Personal portfolio and technology blog built with Hugo and Tailwind CSS.

## 📋 Table of Contents

- [About the Project](#-about-the-project)
- [Objective](#-objective)
- [Technologies](#-technologies)
- [Project Structure](#-project-structure)
- [How to Run](#-how-to-run-locally)
- [License](#-license)
- [Contributing](#-contributing)

---

## 🎯 About the Project

This project is a professional portfolio and personal blog that showcases:

- **Portfolio**: Projects created, highlighting technologies and learnings
- **Blog**: Technical articles about development, frameworks, and best practices
- **Skills**: Technology stack and professional competencies
- **About**: Personal information and professional journey
- **Contact**: Channels to connect and collaborate

The website is built as a **Static Site Generator (SSG)** for better performance, SEO, and security.

---

## 🎪 Objective

- Create a modern and responsive portfolio
- Share knowledge through technical articles
- Demonstrate skills in frontend, backend, and DevOps
- Facilitate networking and professional opportunities
- Maintain a space for technical growth and documentation

---

## 🛠️ Technologies

### Core
- **Hugo** - Static Site Generator (v0.121+)
- **Tailwind CSS** - Utility-first CSS framework
- **JavaScript** - Interactivity and UX

### Development
- **Go** - Foundation of Hugo
- **Markdown** - Content format
- **HTML5** - Semantic structure

### Tools
- **Git** - Version control
- **npm/PostCSS** - CSS build

---

## 📁 Project Structure

```
portfolio-vandersant7/
├── archetypes/          # Templates for creating new content
├── assets/              # CSS, images, and resources
│   └── css/
│       ├── main.css     # Base styles
│       └── theme.css    # Theme and customizations
├── content/             # Site content (Markdown)
│   ├── about/           # About page
│   ├── hero/            # Hero section
│   ├── posts/           # Blog articles
│   ├── projects/        # Portfolio projects
│   └── skills/          # Skills and competencies
├── layouts/             # Hugo HTML templates
│   ├── _default/        # Default layouts
│   ├── _partials/       # Reusable components
│   ├── posts/           # Post templates
│   └── projects/        # Project templates
├── static/              # Static files (JS, images, etc)
├── public/              # Generated output (site build)
├── hugo.toml            # Main Hugo configuration
├── README.md            # Main README (language selection)
└── .gitignore           # Git exclusions

```

### Main Directories

- **`/content`** - All site content in Markdown
- **`/layouts`** - HTML templates that define appearance
- **`/assets`** - CSS styles and images
- **`/public`** - Generated output (do not commit, generate locally)

---

## 🚀 How to Run Locally

### Prerequisites

- **Hugo Extended** (v0.121+) - [Download](https://gohugo.io/)
- **Node.js** (v18+) - For Tailwind CSS
- **Git** - For version control

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/vandersant7/portfolio-vandersant7.git
   cd portfolio-vandersant7
   ```

2. **Install dependencies (if needed)**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   hugo server -D
   ```

   The site will be available at: `http://localhost:1313`

### Development Mode

The Hugo server automatically monitors changes in:
- Content (Markdown)
- Templates (HTML)
- CSS

Updates will appear in real-time in the browser.

### Generate Static Build

```bash
hugo
```

Static files will be generated in the `/public` folder.

---

## 📝 Adding Content

### New Article

```bash
hugo new posts/my-article/index.md
```

### New Project

```bash
hugo new projects/my-project/index.md
```

Edit the created Markdown file and Hugo will automatically reload.

---

## 📄 License

This project is licensed under the **MIT License** - a permissive Open Source license.

### MIT License Terms

✅ **You can:**
- Use for commercial and personal purposes
- Modify the code
- Distribute the code
- Use privately

⚠️ **Conditions:**
- Include license and copyright notice

❌ **You cannot:**
- Hold the author liable for damages

For more details, see [LICENSE](LICENSE).

---

## 🤝 Contributing

This is an Open Source project and contributions are welcome! Anyone can contribute by improving code, documentation, reporting bugs, or suggesting features.

### How to Contribute

1. **Fork the Repository**
   ```bash
   Click "Fork" on GitHub
   ```

2. **Clone your fork locally**
   ```bash
   git clone https://github.com/your-username/portfolio-vandersant7.git
   cd portfolio-vandersant7
   ```

3. **Create a branch for your feature/fix**
   ```bash
   git checkout -b feature/my-feature
   # or
   git checkout -b fix/my-fix
   ```

4. **Make your changes**
   - Edit or create files as needed
   - Follow semantic commit pattern

5. **Commit your changes**
   ```bash
   git add .
   git commit -m "type: clear description of change"
   # Example: "feat: add certifications section"
   # Example: "fix: correct mobile responsive layout"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/my-feature
   ```

7. **Open a Pull Request**
   - Go to the original repository
   - Click "New Pull Request"
   - Describe your changes clearly

### Semantic Commit Pattern

Use semantic commits for clarity:

- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `style:` - Formatting or CSS
- `refactor:` - Code refactoring
- `perf:` - Performance improvement
- `build:` - Build changes
- `ci:` - CI/CD

### Contribution Guidelines

- Describe the problem/feature in detail
- Follow existing code patterns
- Update documentation if necessary
- Test your changes locally
- Maintain consistency with the project

---

## 📧 Contact

- **Email**: your-email@example.com
- **LinkedIn**: [linkedin.com/in/evandro-santos](https://linkedin.com)
- **GitHub**: [github.com/vandersant7](https://github.com/vandersant7)
- **Twitter**: [@your-twitter](https://twitter.com)

---

## 🎓 Useful Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Markdown Guide](https://www.markdownguide.org/)
- [Git Guide](https://git-scm.com/doc)

---

**Made with ❤️ by Evandro Santos**

[⬆ Back to top](#-table-of-contents)
