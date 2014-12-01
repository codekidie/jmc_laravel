$(function() {
 
  // Create a function that will handle AJAX requests
  function requestData(startDate,endDate){   
    var today = new Date();
    var dd = today.getDate();
    var dd_7 = today.getDate()-7;
    var mm = today.getMonth()+1;
    var yyyy = today.getFullYear();
    var startDate_proxy = yyyy+'-'+mm+'-'+dd;
    var endDate_proxy = yyyy+'-'+mm+'-'+dd_7;

    if(startDate == "" || endDate == ""){
      startDate = endDate_proxy;
      endDate = startDate_proxy;
    }
    $.ajax({
      type: "POST",
      dataType: 'json',
      url: "ajax/traffic", // This is the URL to the API
      data : {"startDate": startDate,"endDate": endDate}
    })
    .done(function( data ) {
      // When the response to the AJAX request comes back render the chart with new data
      chart.setData(data);
    })
    .fail(function() {
      // If there is no communication between the server, show an error
      alert( "There are no available data" );
    });
  }
 
  var chart = Morris.Bar({
    // ID of the element in which to draw the chart.
    element: 'morris-chart-bar',
    data: [0, 0], // Set initial data (ideally you would provide an array of default data)
    xkey: 'date', // Set the key for X-axis
    ykeys: ['value'], // Set the key for Y-axis
    labels: ['Page Visits'] // Set the label when bar is rolled over
  });
 requestData("","");
  // Request initial data for the past 7 days:
  $("#search-traffic").click(function(){
    var startDate = $("#startDate").val();
    var endDate = $("#endDate").val();
    requestData(startDate,endDate);
  });
  
});