
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

function addFriend() {
    var name = document.getElementById("friendName").value;
    var phone = document.getElementById("friendNumber").value;
    var email = document.getElementById("friendEmail").value;
    var address = document.getElementById("friendAddress").value;

    document.getElementById("addressForm").reset();
    addFriendtoTable(name, phone, email, address);

}

function addFriendtoTable(name, phone, email, address) {
//    code to empty the table
//    $("#address-display-body").empty();
    var header = document.getElementById("address-display-header");
    var table = document.getElementById("address-display-body");

    //check whether the table is empty

    if (table.rows.length == 0 && header.rows.length == 0) {
        // empty
        var hrow = header.insertRow(0);
        var Hcell0 = hrow.insertCell(0).innerHTML = "Name";
        var Hcell1 = hrow.insertCell(1).innerHTML = "Phone Number";
        var Hcell2 = hrow.insertCell(2).innerHTML = "Email";
        var Hcell3 = hrow.insertCell(3).innerHTML = "Address";
        var Hcell4 = hrow.insertCell(4).innerHTML = "";
    }

    var row = table.insertRow(0);

    var cell0 = row.insertCell(0).innerHTML = name;
    var cell1 = row.insertCell(1).innerHTML = phone;
    var cell2 = row.insertCell(2).innerHTML = email;
    var cell3 = row.insertCell(3).innerHTML = address;
    var deleteRow = document.createElement("button");
    deleteRow.className = "btn btn-danger";
    deleteRow.appendChild(document.createTextNode("remove"));
    deleteRow.onclick = function(){
        removeRow(this);
    }
    var cell4 = row.appendChild(deleteRow);

    //add counter to number of friends
    var numberOfFriends = parseInt(document.getElementById("numberOfFriends").innerHTML);
    numberOfFriends = numberOfFriends + 1;
    document.getElementById("numberOfFriends").innerHTML = numberOfFriends;

}

function removeRow(r) {
    var i = r.parentNode.parentNode.rowIndex;
    document.getElementById("address-display-body").deleteRow(i);
    
    //deduct counter to number of friends
    var numberOfFriends = parseInt(document.getElementById("numberOfFriends").innerHTML);
    numberOfFriends = numberOfFriends - 1;
    document.getElementById("numberOfFriends").innerHTML = numberOfFriends;

    
}

function addReminder() {
    var note = document.getElementById("reminderNote").value;

    if (note != "") {
        document.getElementById("reminderForm").reset();
        addRemindertoTable(note);
    } else {
        alert("Please fill in note");
    }

}

function addRemindertoTable(note) {
    var header = document.getElementById("reminder-display-header");
    var table = document.getElementById("reminder-display-body");

    //check whether the table is empty

    if (table.rows.length == 0) {
        // empty
        var hrow = header.insertRow(0);
        var Hcell0 = hrow.insertCell(0).innerHTML = "Date Added";
        var Hcell1 = hrow.insertCell(1).innerHTML = "Note";
    }

    var row = table.insertRow(0);

    var dateAdded = document.getElementById("currentDate").innerHTML;

    var cell0 = row.insertCell(0).innerHTML = dateAdded;
    var cell1 = row.insertCell(1).innerHTML = note;

    //add counter to number of reminder
    var numberOfReminder = parseInt(document.getElementById("numberOfReminder").innerHTML);
    numberOfReminder = numberOfReminder + 1;
    document.getElementById("numberOfReminder").innerHTML = numberOfReminder;
}