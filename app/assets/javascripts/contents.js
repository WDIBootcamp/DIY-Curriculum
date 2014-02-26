if($("#addContent").length > 0) {
  $(function(){
    $.ajaxSetup({
        headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    });

    // show new content form
    // in SECTIONS edit view
    var content_path = {content_path: gon.content_path};
    var contentFormHTML = HandlebarsTemplates.contents_form(content_path);
    $("#addContent").append(contentFormHTML);

    // listen for submit on #addContent
    $("#addContent form").on("submit", function(event){
      event.preventDefault();

      // create newContent using
      // content_source_url and content_text
      // from the content form
      var newContent = {
        source_url: $("#content_source_url").val(),
        text: $("#content_text").val()
      };

      // log the newContent in console
      console.log(newContent);

      // Get url path from gon variable
      // in sections controller
      

    $.post(gon.content_path, {content: newContent}).done(function(data){
        console.log(data);

        // Append this content
        var contentHTML = HandlebarsTemplates.contents(data);
        $("#content_source_url").val(""); //empties value
        $("#content_text").val("");
        $("#contents").append(contentHTML);
        $(document).foundation();
      });
    });// <-- end of submit #addContent function


    // Display all content(s) on the page
    // Get url path from gon variable
    // in sections controller
    $.get(gon.content_path).done(function(data){
      $(data).each(function(index, contentItem){
        contentItem.content_path = gon.content_path;
        var contentHTML = HandlebarsTemplates.contents(contentItem);
        $("#contents").append(contentHTML);
        $(document).foundation();
        $("#edit_content_form_"+contentItem.id).submit(function(){
        event.preventDefault();
        var updated_content = {id: contentItem.id};
        updated_content.source_url = $("#update_content_source_url_"+contentItem.id).val();
        updated_content.text = $("#update_content_text_"+contentItem.id).val();
        $.ajax({
          url: gon.edit_content_path + updated_content.id+".json",
          type: "PATCH",
          data: {content: updated_content}
        }).done(window.reload);
      });
      


    });
    });




  });
} // <-- end of entire function


// begin content 

$(".content_button").click(function(){
  $(this).next('#content').toggle('medium');
    if ($(this).text() === "+") {
      $(this).text("-");
    }
    else 
      $(this).text("+");
  }
);

$( ".author" ).each(function() {
  if ( $(this).text() !== "" ) {
    $(this).prepend("by ");
  }
});

var total = 0;
$('.count').each(function(){
   total += parseInt($(this).val());
});

$( ".count" ).each(function() {
  if ( $(this).text() !== "" ) {
    $(this).append(" words");
  }
});

$("#count_to").append($("#count_from"));

// end content

// $(function() {  
//     $( "#sortable" ).sortable({   
//         placeholder: "ui-sortable-placeholder"   
//     });  
// }); 


