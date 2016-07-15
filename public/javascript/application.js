$(document).ready(function() {

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
      google.charts.load('current', {
        'packages': ['gauge']
      });
      google.charts.setOnLoadCallback(drawCharts);

        var options = {
          width: 500,
          height: 100,
          redFrom: 0,
          redTo: 25,
          greenFrom: 75,
          greenTo: 100,
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
});
