 ! function(window, document, $) {
 
 
  $(".best-h4").click(function () {

    $header = $(this).parents('.best-index');
    //getting the next element
    $content = $header.nextAll("#info-expanded").first().focus();
    //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
    $content.slideToggle(500, function () {
        //execute this after slideToggle is done
        //change text of header based on visibility of content div
       
    });
});

}(window, document, window.jQuery);