$(function(){
  console.log("ezdzテスト");

$('[type="file"]').ezdz({
            text: 'drop a picture',
            validators: {
                maxWidth:  2000,
                maxHeight: 2000,
                maxSize: 1000000
            },
            reject: function(file, errors) {
                if (errors.mimeType) {
                    alert(file.name + ' must be an image.');
                }

                if (errors.maxWidth) {
                    alert(file.name + ' must be width:1000px max.');
                }

                if (errors.maxHeight) {
                    alert(file.name + ' must be height:1000px max.');
                }
            }
        });



});

