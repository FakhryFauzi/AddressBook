
//This file was made by Fakhry Fauzi

//function to be called when loading dashboard
function loadDashboard() {

    getCurrentDate();
}

function getCurrentDate() {
    //Display current Date
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();

    today = mm + '/' + dd + '/' + yyyy;
    document.getElementById("currentDate").innerHTML = today.toString();
}