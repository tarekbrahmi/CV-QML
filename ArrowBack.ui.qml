import QtQuick 2.12
import MyCVTemplate 1.0

MouseArea {
    id: element
    width: 123
    height: 25
    enabled: true
    hoverEnabled: true
    Rectangle {
        color: "transparent"
        id: rectangle
        anchors.fill: parent
        Image {
            x: 0
            id: iconback
            height: 15
            anchors.verticalCenter: parent.verticalCenter
            width: 15
            source: "assets/back.png"
        }
        Text {
            anchors.left: iconback.right
            id: backlabel
            text: qsTr("Back to Projects")
            font.pixelSize: 15
            font.bold: true
            color: "#D6D6D6"
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    states: [
        State {
            name: "active"
            when: element.containsMouse
            PropertyChanges {
                target: backlabel
                color: Constants.goldColor
            }
            PropertyChanges {
                target: iconback
                source: "assets/back_active.png"
            }
        }
    ]
}
