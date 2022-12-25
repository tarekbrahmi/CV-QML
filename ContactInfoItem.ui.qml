import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 237
    height: 48

    Rectangle {
        id: wrapper
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
                id: image
                anchors.centerIn: parent
                width: 32
                height: 32
                fillMode: Image.PreserveAspectFit
                source: "assets/14_79.png"
            }
        }
        Rectangle {
            color: "transparent"
            id: wrapper_texts
            x: 59
            y: 1.55
            width: 172.5
            height: 43.89

            Text {
                id: contactLabel
                text: qsTr("EMAIL")
                x: 0
                y: 0
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: 20
                color: "#D6D6D6"
            }
            Text {
                id: contactValue
                text: qsTr("brahmitarek6@gmail.com")
                x: 0
                y: 19.8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: 24.09
                color: "#FCFCFC"
            }
        }
    }
}
