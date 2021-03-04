const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const home = document.querySelector('.navbar-home')
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
        home.classList.remove('d-none');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        home.classList.add('d-none');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };