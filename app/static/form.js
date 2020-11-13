window.onload = function() {
    var reg_vepItem = sessionStorage.getItem("2reg_vep");  
    ('2reg_vep').val(reg_vepItem);
    }
    ('2reg_vep').change(function() { 
        var reg_vepVal = (this).val();
        sessionStorage.setItem("2reg_vep", reg_vepVal);
    });