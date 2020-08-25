user_district_id = null;
user_district_name = null;
user_zone_id = null;
user_zone_name = null;

// var g = null
var districts = document.getElementById('district')
var zones = document.getElementById('zone')
var units = document.getElementById('unit')

districts.innerHTML = ''
zones.innerHTML = ''
units.innerHTML = ''

fetch('server.php?function=get_all_districts')
    .then(response => response.json())
    .then(data => {
        // console.log(data)
        //   g=data;
        var option = document.createElement('option')
        option.value = 'none'
        option.innerHTML = 'Select anything'
        districts.appendChild(option)

        for (var i = 0; i < data.length; i++) {
            var option = document.createElement('option')
            // option.id = data[i].district_id
            option.dataset.value = data[i].district_id
            option.value = data[i].district_name
            // option.setAttribute('onclick',"district_selected("+data[i].district_id+")")
            option.innerHTML = data[i].district_name
            districts.appendChild(option)

        }
    });

function district_selected() {
    zones.innerHTML = ''
    units.innerHTML = ''
    // var options = districts.options

    //how to retrieve data from DATALIST????

    // console.log(districts.options[districts.selectedIndex]);

    // var district_id = districts.options[options.selectedIndex].id; ---> NOT WORKING

    // checking
    if (district_id.value == 'none') return

    console.log('selected district is ' + district_id.value)
    user_district_id = district_id.value
    user_district_name = district_id.innerHTML

    fetch('server.php?function=get_all_zones&district_id=' + user_district_id)
        .then(response => response.json())
        .then(data => {
            // console.log(data)
            //   g=data;
            var option = document.createElement('option')
            option.value = 'none'
            option.innerHTML = 'Select anything'
            zones.appendChild(option)

            for (var i = 0; i < data.length; i++) {
                if (data[i].zone_name == '') continue
                var option = document.createElement('option')
                option.value = data[i].zone_id
                // option.setAttribute('onclick',"district_selected("+data[i].district_id+")")
                option.innerHTML = data[i].zone_name
                zones.appendChild(option)
            }
        });
}

function zone_selected() {
    units.innerHTML = ''

    var zone_id = zones.options[zones.selectedIndex]

    // checking
    if (zone_id.value == 'none') return

    console.log('selected zone is ' + zone_id.innerHTML)
    user_zone_id = zone_id.value
    user_zone_name = zone_id.innerHTML


    fetch('server.php?function=get_all_units&district_id=' + user_district_id + '&zone_id=' + user_zone_id)
        .then(response => response.json())
        .then(data => {
            // console.log(data)
            //   g=data;
            var option = document.createElement('option')
            option.value = 'none'
            option.innerHTML = 'Select anything'
            units.appendChild(option)

            for (var i = 0; i < data.length; i++) {
                var option = document.createElement('option')
                option.value = data[i].unit_id
                // option.setAttribute('onclick',"district_selected("+data[i].district_id+")")
                option.innerHTML = data[i].unit_name
                units.appendChild(option)
            }
        });
}


function unit_selected() {

    var unit_id = units.options[units.selectedIndex]
    console.log('selected unit is ' + unit_id.innerHTML)

}