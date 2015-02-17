window.dmsVibrationJS=function (milliseconds){
        cordova.exec(null,null,"DMSVibrate","vibrate",[milliseconds]);
    };
