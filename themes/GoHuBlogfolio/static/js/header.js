document.addEventListener('DOMContentLoaded', () => {
  const menuButton = document.getElementById('mobile-menu-button')
  const menuClose = document.getElementById('mobile-menu-close')
  const mobileMenu = document.getElementById('mobile-menu')

  menuButton.addEventListener('click', () => {
    mobileMenu.classList.remove('right-[-100%]')
    mobileMenu.classList.add('right-0')
  })

  menuClose.addEventListener('click', () => {
    mobileMenu.classList.remove('right-0')
    mobileMenu.classList.add('right-[-100%]')
  })
})
