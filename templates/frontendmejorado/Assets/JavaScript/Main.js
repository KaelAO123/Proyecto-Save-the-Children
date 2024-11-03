window.addEventListener('scroll', function () {
  var navbar = document.querySelector('#Sticky');
  if (window.pageYOffset > 0) {
    navbar.classList.add('scrolled');
  } else {
    navbar.classList.remove('scrolled');
  }
});