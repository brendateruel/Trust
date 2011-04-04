$(document).ready(function(){
	$("#submit").hide();
	$("#submit-box a").click(function(){
	    $("#submit-box a").toggleClass("toggle");
	    $("#submit").slideToggle("fast");
		return false;
	});
	
	$("input[type=text]").each(function() {
        var search = 'Never Trust Someone Who...';
        var empty = '';
        $(this).attr('value', search);
        $(this).focus(function() {
            if (this.value == search) {
                this.value = empty;
            }
        });
        $(this).blur(function() {
            if (this.value == empty) {
                this.value = search;
            }
        });
    });

});