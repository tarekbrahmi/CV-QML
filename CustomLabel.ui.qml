import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 155
    height: 46
    property string textValue: ""
    Rectangle {
        anchors.fill: parent
        color: "transparent"
        Text {
            id: textLabelValue
            height: 42
            text: textValue
            font.pixelSize: 32
            color: "#FCFCFC"
            font.bold: true
        }
        Image {
            y: 42
            width: 40
            height: 4
            id: h1Indicator
            source: "assets/b5843930-1c13-5047-acaf-3b479ce38f45.png"
        }
    }
}
