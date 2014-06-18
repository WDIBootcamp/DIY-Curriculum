if($("#browse_title").length > 0) {

  $(".cat_holder")
    .mouseover(function() {
      var this_text = $(this).text();
      console.log(this_text);
    $( "#cat_name_to" ).text(this_text);
      })
    .mouseout(function() {
    $( "#cat_name_to" ).text( "* * * * *" );
  });

  $(".cat_holder")
    .on("click", function() {
   window.scroll(0, 300);
  });
  
}
