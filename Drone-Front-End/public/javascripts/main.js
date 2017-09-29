$(document).ready(function() {
    function locationFailed(err) {
        console.log(err);
        $("#error").text("Unable to get location! Please try again!");
    }

    $('#search').click(function() {
        $('#search').text('Hacking...');
         $.ajax({
            method: 'POST',
            url: "/go",
            type: 'json',
            data: {
            },
            success: function(data, textStatus, jqXHR) {
                window.location = data.redirect;
            }
        });
    });
});
