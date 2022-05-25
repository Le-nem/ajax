function load_data1() {
    fetch('controller/CategoriesController.php')
        .then((response) => {
            return response.json()
        }).then((data) => {
            let option;
            for (const element of data) {
                option += `<option value='${element.title}' onclick="load_data2('${element.title}')">${element.title}</option>`
            }
            document.querySelector('.categ').innerHTML = "<select name='cat' class='form-select form-select-sm'>" + option + '</select>';
        })
}
load_data1();
function load_data2(cat) {
    fetch(`controller/MoviesController.php?cat=${cat}`)
        .then((response) => {
            return response.json()
        }).then((data) => {
            let option;
            for (const element of data) {
                option += `<option value='${element.title}'>${element.title}</option>`
            }
            document.querySelector('.movies').innerHTML = "<select class='form-select form-select-sm'>" + option + '</select>';
        })
}

