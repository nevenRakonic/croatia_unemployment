$(function() {

    var time_format = '%Y-%m-%dT%H:%M:%S.%LZ' // rails compatible time

    d3.json('/unemployed.json', function(data) {

        data = MG.convert.date(data, 'fetch_time', time_format);

        MG.data_graphic({
            title: "Broj nezaposlenih na HZZ",
            description: false,
            data: data,
            width: 600,
            height: 200,
            right: 40,
            target: document.getElementById('unemployed'),
            x_accessor: 'fetch_time',
            y_accessor: 'unemployed_people',
            min_y_from_data: true,
            linked: true
        });
    });

    d3.json('/openings.json', function(data) {

        data = MG.convert.date(data, 'fetch_time', time_format);

        MG.data_graphic({
            title: "Broj otvorenih radnih mjesta na HZZ",
            description: false,
            data: data,
            width: 600,
            height: 200,
            right: 40,
            target: document.getElementById('openings'),
            x_accessor: 'fetch_time',
            y_accessor: 'job_openings',
            min_y_from_data: true,
            linked: true
        });
    });

});
