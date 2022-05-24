function load_data1() {
    var ajax_request1 = new XMLHttpRequest();
    ajax_request1.open('POST', 'process_data1.php');
    ajax_request1.send();
    ajax_request1.onreadystatechange = function () {
        if (ajax_request1.readyState == 4 && ajax_request1.status == 200) {
            var response = JSON.parse(ajax_request1.responseText);
            let option;
            for (const element of response) {
                option += `<option value='${element.title}' onclick="load_data2('${element.title}')">${element.title}</option>`
            }
            document.querySelector('.categ').innerHTML = "<select name='cat' class='form-select form-select-sm'>" + option + '</select>';
        }
    }
}
load_data1();
function load_data2(cat) {
    var form_data = new FormData();
    form_data.append('cat', cat);
    var ajax_request1 = new XMLHttpRequest();
    ajax_request1.open('POST', 'process_data2.php');
    ajax_request1.send(form_data);
    ajax_request1.onreadystatechange = function () {
        if (ajax_request1.readyState == 4 && ajax_request1.status == 200) {
            var response = JSON.parse(ajax_request1.responseText);
            let option;
            for (const element of response) {
                option += `<option value='${element.title}'>${element.title}</option>`
            }
            document.querySelector('.movies').innerHTML = "<select class='form-select form-select-sm'>" + option + '</select>';
        }
    }
}

