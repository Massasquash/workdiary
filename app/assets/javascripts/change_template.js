function changeTemplate(val){
  var template_id = val;
  
  // alert(template_id)
  
  $.ajax({
    url: "/templates/get_body",
    type: "GET",
    data: {
      template_id: template_id
    }
  })
}