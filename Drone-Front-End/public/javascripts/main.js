$(document).ready(function () {
    function locationFailed(err) {
        console.log(err);
        $("#error").text("Unable to get location! Please try again!");
    }

    $('#search').click(function () {
        $('#search').text('Hacking...');
        $.ajax({
            method: 'POST',
            url: "/go",
            type: 'json',
            data: {},
            success: function (data, textStatus, jqXHR) {
                $('#search').text('Hacked!');
                $('.hidden').removeClass('hidden');
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
                }, 50000);

            }
        });
    });

    $('#forward').click(() => {
        action('/forward'
        )
    });
    $('#backflip').click(() => {
        action('/backflip'
        )
    });
    $('#backward').click(() => {
        action('/backward'
        )
    });
    $('#land').click(() => {
        action('/land'
        )
    });

    $('#left').click(() => {
        action('/left'
        )
    });
    $('#right').click(() => {
        action('/right'
        )
    });

    $('#emergency').click(() => {
        action('/emergency'
        )
    });
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
        action('/left')
    }
    else if (e.keyCode == '39') {
        action('/right')
    }

}