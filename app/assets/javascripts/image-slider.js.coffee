class ImageSlider
	selectedIndex = 0
	el = '.sidebar'
	path = 'assets/'
	images = [ 'opo2.png', 'lisbon.jpg']

	buildUrl: (index) ->
		'url(' + path + images[index] + ')'

	changeTo: (index) ->
		newImage = @buildUrl(index)
		$(el).animate({opacity: 0}, {duration: 300, complete: -> 
			$(el).css({'background-image': newImage}).css({'background-position': 0}).animate({opacity: 1}, {duration: 1000, queue: false, complete: ->
				$(el).animate({'background-position': '-100px'}, {duration: 5000, easing: 'linear'})
			})
		, queue: false})
		selectedIndex = index

$.ImageSlider = new ImageSlider