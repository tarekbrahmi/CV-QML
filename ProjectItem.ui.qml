import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    id: projectitem
    ArrowBack {
        y: 125
        x: 31
        width: 881.5
        height: 24.75
    }
    ProjectBackGround {
        x: 1
        y: 174.34
        id: myproject
        projectSrc: "assets/machine-learning.jpg"
        projectName: "Moonboard – Admin Dashboard & UI Kit + Charts Kit"
    }
    Rectangle {
        id: labels
        y: 614.34
        x: 31
        color: "transparent"
        CustomLabel2 {
            x: 0
            y: 0
            width: 149.28
            height: 48
            iconSrc: "assets/catego.png"
            txtlabel: "CATEGORY"
            txtvalue: "value"
        }
        CustomLabel2 {
            x: 229
            y: 0
            width: 149.28
            height: 48
            iconSrc: "assets/date.png"
            txtlabel: "DATE"
            txtvalue: "2021-PRESENT"
        }
    }

}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
