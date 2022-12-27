import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 187
    height: 48
    property string iconSrc: "assets/edu.png"
    property string textArticle: "Education"
    Rectangle {
        anchors.fill: parent
        color: "transparent"
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
        Text {
            x: 64
            y: 8
            width: 123
            height: 32
            color: "#FCFCFC"
            id: txtArticle
            text: textArticle
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
    }
}
