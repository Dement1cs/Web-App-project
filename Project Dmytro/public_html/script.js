document.getElementById("productCode").addEventListener("input", function() {
    filterTable();
});

function filterTable() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("productCode");
    filter = input.value.toUpperCase();
    table = document.getElementById("artTable");
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}
