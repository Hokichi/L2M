//function Delete(event, type, name) {
//    event.preventDefault();
//    swal({
//        title: `Xóa ${type} "${name}"`,
//        text: `Bạn chắc chắn muốn xóa ${type} "${name}"`,
//        icon: "warning",
//        buttons: {
//            cancel: "Hủy",
//            confirm: "Xóa"
//        },
//        dangerMode: true,
//    }).then((isConfirm) => {
//        if (isConfirm) {
//           $('form').submit();
//            swal("Đã xóa", "Dữ liệu đã xóa thành công", "success");
//        }
//        else {
//            swal("Đã hủy", "Dữ liệu của bạn an toàn", "error");
//        }
//    });
//}
function Delete(event, type, name, url) {
    event.preventDefault();
    swal({
        title: `Xóa ${type} "${name}"`,
        text: `Bạn chắc chắn muốn xóa ${type} "${name}"`,
        icon: "warning",
        buttons: {
            cancel: "Hủy",
            confirm: "Xóa"
        },
        dangerMode: true,
    }).then((isConfirm) => {
        if (isConfirm) {
            window.location.href = url;
        }
        else {
            swal("Đã hủy", "Dữ liệu của bạn an toàn", "error");
        }
    });
}