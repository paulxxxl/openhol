$rotate = true;
$canclick = true;
$(document).ready(function () {
    rotate(0);
    $(window).resize();
    $('body').append("<img src='image/header/lopasti.png' id='rotar'>");
    $('body').append("<div id='temp'><img src='image/header/temp.png' id='tempjpg'></div>");
    $('#tempjpg').hide();
    $("#10let").mousedown(function () {
    $('#10let').removeClass('blueshdw');
    if ($stop == true) {
        $('#10let').removeClass('redshdw');
    }
});

$("#10let").mouseup(function () {
    if ($rotate == true) {
        $rotate = false;
        Temperature('up');
        $('#10let').addClass('redshdw');
    } else {
        if ($stop == true) {
            $rotate = true;
            $('#10let').addClass('blueshdw');
            rotate(1);
            Temperature('down');
        }
    }
});
    
});

function rotate($z) {
    $ang = 0;
    if ($z == 0) {
        var angle = 0;
    } else {
        angle = $angle2;
    }
    id = setInterval(function () {
        if ($rotate == true) {
            $stop = false;
            if ($ang < 16) {
                $ang = $ang + 0.4;
                angle += $ang;
            } else {
                angle += 15
            };
        } else if ($rotate == false) {

            if ($ang > 0) {
                $ang = $ang - 0.4;
                angle += $ang;
            } else {
                $angle2 = angle;
                clearInterval(id);
                $stop = true;
            }

        }
        $("#rotar").rotate(angle);
    }, 40);
    0
}

function Temperature($value) {
    if ($value == 'up') {
        $("#tempjpg").fadeIn(600).animate({
            opacity: 1.0,
            height: "20px",
            display: "toggle",
        }, {
            duration: 3500,
            queue: false
        });
    }
    if ($value == 'down') {
        $("#tempjpg").fadeOut(3500).animate({
            opacity: 0,
            height: "0px",
            display: "toggle",
        }, {
            duration: 3500,
            queue: false
        });
    }
}


$(window).resize(function () {
    var p = $("#10let");
    var offset = p.offset();
    $x = offset.left + 54 + 'px';
    $y = offset.top + 38 + 'px';
    $("#rotar").css("left", $x);
    $("#rotar").css("top", $y);
    $x1 = offset.left + 23 + 'px';
    $y1 = offset.top + 40 + 'px';
    $("#temp").css("left", $x1);
    $("#temp").css("top", $y1);
});
$(window).resize();