import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    id: element
    width: 123
    height: 25
    Rectangle {
        id: rectangle
        color: "transparent"
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
            text: qsTr("Back to")
            font.pixelSize: 15
            color: "#D6D6D6"
            anchors.verticalCenter: parent.verticalCenter
        }
        MouseArea {
            id: maarrowback
            enabled: true
            hoverEnabled: true
            anchors.fill: rectangle
        }
    }
    states: [
        State {
            name: "active"
            when: maarrowback.containsMouse
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
