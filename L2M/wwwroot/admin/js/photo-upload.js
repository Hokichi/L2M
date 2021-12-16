$(document).ready(() => {
    $('#photo').change(function () {
        const file = this.files[0];
        if (file) {
            let reader = new FileReader();
            reader.onload = function (event) {
                console.log(event.target.result);
                $('#imgPreview').attr('src', event.target.result);
            }
            reader.readAsDataURL(file);
        }
    });
});


//$(document).ready(() => {
//    $("#audio").change(function () {
//        const file = this.files[0];
//        var sound = document.getElementById('sound');
//        if (file) {
//            let reader = new FileReader();
//            reader.onload = function (event) {
//                sound.src = event.target.result;
//                sound.controls = true;
//                sound.play();
//            };
//            reader.readAsDataURL(file);
//        }
//    });
//});




