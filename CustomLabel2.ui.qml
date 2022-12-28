import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    id: element
    width: 150
    height: 48
    property alias iconSrc: icon.source
    property alias txtlabel: label.text
    property alias txtvalue: value.text
    Rectangle {
        MouseArea {
            hoverEnabled: true
            enabled: true
            id: marea
            anchors.fill: parent
        }
        color: "transparent"
        anchors.fill: parent
        Rectangle {
            id: wrapper_icon

            x: 0
            y: 0
            width: 48
            height: 48
            radius: 12
            transformOrigin: Item.TopLeft
            border.color: "#3b3b3b"
            border.width: 1
            color: "#202021"

            Image {
                id: icon
                anchors.centerIn: parent
                width: 32
                height: 32
                fillMode: Image.PreserveAspectFit
                source: iconSrc
            }
        }
        Rectangle {
            x: 64
            y: 2
            height: 44
            width: 86
            color: "transparent"
            Text {
                x: 0
                y: 0
                id: label
                height: 20
                font.bold: true
                text: txtlabel
                wrapMode: Text.Wrap
                font.pixelSize: 12
                color: "#D6D6D6"
            }
            Text {
                x: 0
                y: 19
                id: value
                height: 24
                text: txtvalue
                wrapMode: Text.Wrap
                font.pixelSize: 14
                color: "#FCFCFC"
            }
        }
    }
    states: [
        State {
            name: "hovered"
            when: marea.containsMouse
            PropertyChanges {
                target: label
                color: Constants.goldColor
            }
        }
    ]
}
