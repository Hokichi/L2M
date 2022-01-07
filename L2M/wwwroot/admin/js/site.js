function Delete(type, name) {
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
            swal("Đã xóa", "Dữ liệu đã xóa thành công", "success");
           $('form').submit();
           
        }
        else {
            swal("Đã hủy", "Dữ liệu của bạn an toàn", "error");
        }
    });
}