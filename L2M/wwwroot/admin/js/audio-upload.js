function PreviewAudio(inputFile, previewElement) {
    if (inputFile.files && inputFile.files[0] && $(previewElement).length > 0) {

        $(previewElement).stop();

        var reader = new FileReader();

        reader.onload = function (e) {

            $(previewElement).attr('src', e.target.result);
            var playResult = $(previewElement).get(0).play();

            if (playResult !== undefined) {
                playResult.then(_ => {
                    // Automatic playback started!
                    // Show playing UI.

                    $(previewElement).show();
                })
                    .catch(error => {
                        // Auto-play was prevented
                        // Show paused UI.

                        $(previewElement).hide();
                        alert("File Is Not Valid Media File");
                    });
            }
        };

        reader.readAsDataURL(inputFile.files[0]);
    }
    else {
        $(previewElement).attr('src', '');
        $(previewElement).hide();
        alert("File Not Selected");
    }
}

//function Delete(url) {
//    swal({
//        title: "Are you sure?",
//        text: "Once deleted, you will not be able to recover",
//        icon: "warning",
//        buttons: true,
//        dangerMode: true
//    }).then((willDelete) => {
//        if (willDelete) {
//            $.ajax({
//                type: "DELETE",
//                url: url,
//                success: function (data) {
//                    if (data.success) {
//                        toastr.success(data.message);
//                        dataTable.ajax.reload();
//                    }
//                    else {
//                        toastr.error(data.message);
//                    }
//                }
//            });
//        }
//    });
//}