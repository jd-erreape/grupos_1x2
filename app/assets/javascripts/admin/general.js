$(function () {
    $('input').checkBox();
    $('#toggle-all').click(function () {
        $('#toggle-all').toggleClass('toggle-checked');
        $('#mainform input[type=checkbox]').checkBox('toggle');
        return false;
    });
});

$(document).ready(function () {
    $('.styledselect').selectbox({ inputClass:"selectbox_styled" });
});

$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});

$(document).ready(function() {
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
});

$(function() {
    $("input.file_1").filestyle({
        image: "images/forms/choose-file.gif",
        imageheight : 21,
        imagewidth : 78,
        width : 310
    });
});

$(function() {
	$('a.info-tooltip ').tooltip({
		track: true,
		delay: 0,
		fixPNG: true,
		showURL: false,
		showBody: " - ",
		top: -35,
		left: 5
	});
});

