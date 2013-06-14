/**
 * @author veontomo
 */


    spizzica = {
        setup: function() {
            // add invisible 'div' to end of page:
            $('<div id="beerInfo"></div>').
                hide().
                appendTo($('.mainframe'));
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
            $('#beerInfo').
                html(data).
                css({'z-index': 1}).show();
            $('#beer_back').hide();
            $('.panelindex').css({'opacity':0.5, 'transition': "opacity 1s ease 0.25s"});
            $('<div id="close_button">&nbsp;<div>').prependTo($('.itemcell_show')).click(spizzica.hidebeerInfo);
            return(false);  // prevent default link action
        },
        hidebeerInfo: function() {
            $('#beerInfo').hide();
            $('.panelindex').css({'opacity':1, 'transition': "opacity 0.5s ease"});
            return(false);
        },
    }
    $(spizzica.setup);


