$(document).ready(function() {
  // load graphs
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
      google.charts.load('current', {
        'packages': ['gauge']
      });
      google.charts.setOnLoadCallback(drawCharts);

        var options = {
          width: 500,
          height: 100,
          redFrom: 75,
          redTo: 100,
          greenFrom: 0,
          greenTo: 25,
        };

      function drawCharts() {
        $('.rate > figure').each(function (i, figure) {
        var data = google.visualization.arrayToDataTable([
          ['Label', 'Value'],
          ['', +figure.dataset.avgRate]
        ]);

        var chart = new google.visualization.Gauge(figure);
        chart.draw(data, options);
      });
      }
   // load reviews - using handlebar
   
    //  var source = $("#review-template").html();
    //  var template = Handlebars.compile(source);
    // //  ev.preventDefault();
    //  $.get('/').
    //      done(function(result){
    //         var data = JSON.parse(result);
    //         var $container = $('#container');
    //         ev.preventDefault();



});
