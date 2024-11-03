/*==================== Menú pegajoso ====================*/

// Agrega un listener al evento "scroll" de la ventana
window.addEventListener('scroll', function () {

    // Selecciona el elemento con el ID "Sticky"
    var navbar = document.querySelector('#Sticky');

    // Verifica si el desplazamiento vertical de la ventana es mayor a 0
    if (window.pageYOffset > 0) {

      // Si es así, agrega la clase "scrolled" al elemento "navbar"
      navbar.classList.add('scrolled');
    } else {

      // Si no, remove la clase "scrolled" del elemento "navbar"
      navbar.classList.remove('scrolled');
    }
  });