$(document).ready(function() {
  // $('.details').hide();
  $('.startups li').mouseenter(function() {
    $(this).find('.image').slideToggle();
    console.log('mouse enter');
  }).mouseleave( function() {
    $(this).find('.image').slideToggle();
    console.log('mouse leave');
  });
});