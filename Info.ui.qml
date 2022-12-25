import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    Image {
        id: img
        anchors.fill: parent

        source: "assets/14_79.png"
        asynchronous: true
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: mouseArea
            enabled: img.status == Image.Ready
            anchors.fill: parent

            hoverEnabled: true
        }

        Item {
            id: overlay
            anchors.fill: parent

            visible: mouseArea.containsMouse

            Text {
                id: imgcaption
                text: "Caption"
                anchors.bottom: overlay.bottom
                anchors.verticalCenter: overlay.verticalCenter
                font.pointSize: 14
            }
        }
    }
}


/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
