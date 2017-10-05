$(document).ready(function () {
    function locationFailed(err) {
        console.log(err);
        $("#error").text("Unable to get location! Please try again!");
    }

    $('#forward').css('display', 'none');
    $('#land').css('display', 'none');
    $('#backward').css('display', 'none');
    $('#search').click(function () {
        $('#search').text('Hacking...');
        $.ajax({
            method: 'POST',
            url: "/go",
            type: 'json',
            data: {},
            success: function (data, textStatus, jqXHR) {
                $('#search').text('Hacked!');
                $('#forward').css('display', 'inline');
                $('#land').css('display', 'inline');
                $('#backward').css('display', 'inline');
                setInterval(function () {
                    $.ajax({
                        method: 'GET',
                        url: '/strength',
                        type: 'json',
                        data: {},
                        success: function (data, textStatus, jqXHR) {
                            $("#strength").text(data);
                        }
                    });
                }, 500);

            }
        });
    });

    $('#forward').click(action('/forward'));

    $('#backward').click(action('/backward'));

    $('#land').click(action('/land'));
});

function action(method) {
    $.ajax({
        method: 'POST',
        url: method,
        type: 'json',
        data: {},
        success: function (data, textStatus, jqXHR) {
        }
    });
}

document.onkeydown = checkKey;

function checkKey(e) {

    e = e || window.event;

    if (e.keyCode == '38') {
        action('/forward')
    }
    else if (e.keyCode == '40') {
        action('/backward')
    }
    else if (e.keyCode == '37') {
        // left arrow
    }
    else if (e.keyCode == '39') {
        // right arrow
    }

}