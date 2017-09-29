$(document).ready(function() {
    function locationFailed(err) {
        console.log(err);
        $("#error").text("Unable to get location! Please try again!");
    }
    $('#forward').css('display','none');
    $('#land').css('display','none');
    $('#backward').css('display','none');
    $('#search').click(function() {
        $('#search').text('Hacking...');
        $.ajax({
            method: 'POST',
            url: "/go",
            type: 'json',
            data: {
            },
            success: function(data, textStatus, jqXHR) {
                $('#search').text('Hacked!');
                $('#forward').css('display','inline');
                $('#land').css('display','inline');
                $('#backward').css('display','inline');
            }
        });
    });

    $('#forward').click(function() {
        $.ajax({
            method: 'POST',
            url: "/forward",
            type: 'json',
            data: {
            },
            success: function(data, textStatus, jqXHR) {
            }
        });
    });

    $('#backward').click(function() {
        $.ajax({
            method: 'POST',
            url: "/backward",
            type: 'json',
            data: {
            },
            success: function(data, textStatus, jqXHR) {
            }
        });
    });

    $('#land').click(function() {
        $.ajax({
            method: 'POST',
            url: "/land",
            type: 'json',
            data: {
            },
            success: function(data, textStatus, jqXHR) {
            }
        });
    });
});
