$(function() {
	$('.startups li').mouseenter(function() {
    $(this).find('.image').stop().slideToggle();
    console.log('mouse enter');
  }).mouseleave( function() {
    $(this).find('.image').stop().slideToggle();
    console.log('mouse leave');
  });
});