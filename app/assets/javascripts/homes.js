// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

var slideIndex = 1;

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = $('.carousel');
  var dots = $('.dot');
  // if(slides.length <= 0) return;
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}

  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = 'none';
      dots[i].classList.remove('active')
  }
  slides[slideIndex-1].style.display = 'block';
  dots[slideIndex-1].classList.add('active');
}

$(document).ready(function() {
  showSlides(slideIndex)
})