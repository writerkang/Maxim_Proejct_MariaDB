$(document).ready(function() {
    var $btn_open_modal = $(".btn-delete-pst")[0];
    var $modal = $("#modal-delete-pst");
    var $back = $("#modal-delete-pst .back")[0];
    var $close = $("#modal-delete-pst .close")[0];
    
    $btn_open_modal.onclick = function() {
        $modal.css("display", "block");
    };
    
    $back.onclick = function() {
        $modal.css("display", "none");
    };
    
    $close.onclick = function() {
        $modal.css("display", "none");
    };
});