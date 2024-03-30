<html>
<head>
<title>Stationary Items</title>
<style>
table, th, td {
border: 1px solid black;
border-collapse: collapse;
padding: 5px;
}
</style>
</head>
<body>
<h1>Stationary Items</h1>
<table id="stationaryItemsTable"></table>
<script>
function loadStationaryItems() {
var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
if (this.readyState == 4 && this.status == 200) {
displayStationaryItems(this);
}
};
xmlhttp.open("GET", "stationaryItems.xml", true);
xmlhttp.send();
}

function displayStationaryItems(xml) {
var xmlDoc = xml.responseXML;
var table = "<tr><th>Name</th><th>Price</th></tr>";
var x = xmlDoc.getElementsByTagName("item");
for (i = 0; i<x.length; i++) {
table += "<tr><td>" + x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue + "</td><td>" + x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue + "</td></tr>";
}
document.getElementById("stationaryItemsTable").innerHTML = table;
}

loadStationaryItems();
</script>
</body>
</html>

