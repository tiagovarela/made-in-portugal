jQuery ->
	$('.details').hide()
	$('.thumbnail').mouseenter( (e) ->
		$(e.currentTarget).children('.image').toggle()
		console.log('mouse enter')
	).mouseleave( (e) ->
		$(e.currentTarget).children('.image').toggle()
		console.log('mouse leave')
	)
	
