$(document).ready(function () {
    $('.nav-toggle').click(function () {
        var collapse_content_selector = $('#collapse').text();
        var toggle_switch = $(this);
        $('#collapse').toggle(function () {
            if ($(this).css('display') == 'none') {
                toggle_switch.html('Read More');
            } else {
                toggle_switch.html('Read Less');
            }
        });
    });

});