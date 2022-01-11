function Delete(sender,type, name) {
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
            sender.parentElement.submit();
            swal("Đã xóa", "Dữ liệu đã xóa thành công", "success");
        }
        else {
            swal("Đã hủy", "Dữ liệu của bạn an toàn", "error");
        }
    });
}