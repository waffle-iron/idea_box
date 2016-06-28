$(document).ready(function(){
  // Ajax call to go fetch the ideas from our endpoint
  $.ajax({
    type: 'GET',
    url: '/api/v1/ideas',
    // wait for this ajax call to end OR pass the ajax call a 'callback'
    //(a callback is where you tell JS what function to run when a thing happens or completes)
    success: function(jsonData) {
        // use the ideas and spit them out on the page
      // alert(jsonData);
      Idea.collectIdea(jsonData);
    },
    error: function() {
      alert('Error loading PatientID=' + id);
    }
  });
});


var Idea = {
  collectIdea: function(jsonData) {
    // var list = jsonData[0]
    // iterate in js through the array of data
    for (i = 0; i < jsonData.length; i++) {
    // jsonData.forEach(jsonData) {
      document.write("<h3>Title:" + jsonData[i].title + "</h3>"
                   + "<p>Body:" + jsonData[i].body + "</p>"
                   + "<p>Quality:" + jsonData[i].quality + "</p>")
    // debugger;
    }
  }
};
