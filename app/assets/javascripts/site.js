$(function(){

  if($("#tag_line").length > 0) { 
    $(".toggle_button").click(function(){
      $('#index_partial').toggle('medium');
        if ($(".toggle_button").text() === "(see example)") {
          $(".toggle_button").text("(close example)");
        }
        else
          $(".toggle_button").text("(see example)");
      }
    );
  }
});
