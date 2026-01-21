document.addEventListener('DOMContentLoaded', () => {
  /* -----------------------------
      THEME TOGGLE
     ----------------------------- */
  const html = document.documentElement;
  
  // AQUI: Usamos querySelectorAll com a classe (ponto) ao invés de ID (hashtag)
  const toggleButtons = document.querySelectorAll('.theme-toggle-btn');

  // Função para alternar o tema
  const toggleTheme = (e) => {
    // Evita comportamento padrão se houver
    e.preventDefault();

    if (html.classList.contains('dark')) {
      html.classList.remove('dark');
      localStorage.setItem('theme', 'light');
    } else {
      html.classList.add('dark');
      localStorage.setItem('theme', 'dark');
    }
  };

  // Adiciona o evento em TODOS os botões encontrados (Desktop e Mobile)
  if (toggleButtons.length > 0) {
    toggleButtons.forEach(btn => {
      // Removemos event listeners antigos para evitar duplicação (boa prática)
      btn.removeEventListener('click', toggleTheme);
      btn.addEventListener('click', toggleTheme);
    });
  } else {
    console.warn('Nenhum botão de tema encontrado (.theme-toggle-btn)');
  }

  /* -----------------------------
      MOBILE MENU (Mantenha o resto do seu código aqui)
     ----------------------------- */
  const menuButton = document.getElementById('mobile-menu-button');
  // ... resto do código do menu ...
});