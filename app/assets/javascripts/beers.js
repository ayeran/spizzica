/**
 * @author veontomo
 */


    spizzica = {
        setup: function() {
            // add invisible 'div' to end of page:
            $('<div id="beerInfo"></div>').
                hide().
                appendTo($('body'));
            $('img.item_image_small').click(spizzica.getbeerInfo);
        },
        getbeerInfo: function() {
            $.ajax({type: 'GET',
                    url: $(this).parent().attr('href'),
                    timeout: 5000,
                    success: spizzica.showbeerInfo,
                    error: function() { alert('Mi dispiace, ma non riesco a visualizzare!'); }
                   });
            return(false);
        },
        showbeerInfo: function(data) {
            // center a floater 1/2 as wide and 1/4 as tall as screen
            var oneFourth = Math.ceil($(window).width() / 4);
            $('#beerInfo').
                html(data).
                css({'left': oneFourth,  'width': 2*oneFourth, 'top': 50,'z-index': 1}).show();
            $('Indietro').click(spizzica.hidebeerInfo);
            return(false);  // prevent default link action
        },
        hidebeerInfo: function() {
            $('#beerInfo').hide();
            return(false);
        },
    }
    $(spizzica.setup);


