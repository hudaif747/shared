var $form = $('form#booking-form'),
    url = 'https://script.google.com/macros/s/AKfycbzyvLMNd8Aj2CzsebF9xF-cTXpb9vQAOCucJlV3/exec';

// https://script.google.com/macros/s/AKfycbxJVNsD00djgPuZLNKwRoCgPgC6hv5gLYFFuaTqlbdzuUSfaf77/exec inital api
// https://script.google.com/macros/s/AKfycbzyvLMNd8Aj2CzsebF9xF-cTXpb9vQAOCucJlV3/exec (updated)
// code for serializeObject 


$.fn.serializeObject = function () {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function () {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

jQuery.validator.addMethod('selectcheck', function (value) {
    return (value != '0');
}, "Please Select one");

// form validation code

// $form.validate({
//     rules: {
//         Name: "required",
//         Gender: {
//             required: true
//         },
//         Place: "required",
//         "District/Area": "required",
//         "State/Province": "required",
//         Country: "required",
//         "Mobile-Number": {
//             required: true,
//             digits: true,
//             maxlength: 12,
//             minlength: 10
//         },
//         "Whatsapp-Number": {
//             required: false,
//             digits: true,
//             maxlength: 12,
//         },
//     },
//     messages: {
//         Name: "Please Enter your Name",
//         Gender: "Please select one",
//         Place: "Please Enter a Place",
//         "District/Area": "Please Enter a District",
//         "State/Province": "Please Enter a State",
//         Country: "Please Enter a Country",
//         "Mobile-Number": "Enter a valid Mobile number"
//     }
// });



// submitting to google form

// $('#submit-contact').on('click', function (e) {
//     e.preventDefault();
//     if ($form.valid()) {
//         var jqxhr = $.ajax({
//             url: url,
//             method: "GET",
//             dataType: "json",
//             data: $form.serializeObject()
//         }).success(
//             // do something
//             onSuccess()
//         );
//     }
// })

$('#submit').on('click', function (e) {
    e.preventDefault();
    var jqxhr = $.ajax({
        url: url,
        method: "GET",
        dataType: "json",
        data: $form.serializeObject()
    }).success(
        onSuccess()
    );

})



// function to perform after succesful submit

function onSuccess() {
    $form.trigger("reset");
    $(".overlay").css({
        "visibility": "visible",
        "opacity": "1"
    });

}


function onXClick() {
    $(".overlay").css({
        "visibility": "hidden",
        "opacity": "0"
    });

    $(window).scrollTop(0);
}