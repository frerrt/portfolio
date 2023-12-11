// toggle icon navbar
let menuIcon = document.querySelector('#menu-icon');
let navbar = document.querySelector('.navbar');

menuIcon.onclick = () => {
    menuIcon.classList.toggle('bx-x');
    navbar.classList.toggle('active');
}

// scroll sections and sticky header
let sections = document.querySelectorAll('section');
let navLinks = document.querySelectorAll('header nav a');

window.onscroll = () => {
    sections.forEach(sec => {
        let top = window.scrollY;
        let offset = sec.offsetTop - 100;
        let height = sec.offsetHeight;
        let id = sec.getAttribute('id');

        if (top >= offset && top < offset + height) {
            // active navbar links
            navLinks.forEach(links => {
                links.classList.remove('active');
                document.querySelector('header nav a[href*=' + id + ']').classList.add('active');
            });
            // active sections for animate on scroll
            sec.classList.add('show-animate');
        } else {
            sec.classList.remove('show-animate');
        }
    });

    // sticky header
    let header = document.querySelector('header');
    header.classList.toggle('sticky', window.scrollY > 100);

    // remove toggle icon navbar when click navbar links (scroll)
    menuIcon.classList.remove('bx-x');
    navbar.classList.remove('active');

    // animation footer on scroll
    let footer = document.querySelector('footer');
    footer.classList.toggle('show-animate', this.innerHeight + this.scrollY >= document.scrollingElement.scrollHeight);


}
$(document).ready(function () {
    $('.slick-carousel').slick({
        dots: true,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: 'linear'
    });
});

document.addEventListener('DOMContentLoaded', function () {
    // Récupérez toutes les modales et boutons d'ouverture
    var modals = document.querySelectorAll('dialog');
    var openButtons = document.querySelectorAll('.glow-on-hover');

    // Initialisez chaque modal avec dialog-polyfill
    if (typeof window.dialogPolyfill !== 'undefined') {
        for (var i = 0; i < modals.length; i++) {
            dialogPolyfill.registerDialog(modals[i]);
        }
    }

    // Ajoutez des écouteurs d'événements pour chaque bouton d'ouverture
    openButtons.forEach(function (button, index) {
        button.addEventListener('click', function (event) {
            event.preventDefault();
            var modalId = button.getAttribute('data-modal');
            var modal = document.getElementById(modalId);
            if (modal) {
                modal.showModal();
                // Faites défiler la page vers la modal
                modal.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
        });
    });

    // Ajoutez des écouteurs d'événements pour chaque bouton de fermeture
    modals.forEach(function (modal) {
        modal.querySelector('button').addEventListener('click', function () {
            // Fermez la modal
            modal.close();
        });
    });
});
