import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 236.5
    height: 271.02
    Rectangle {
        anchors.fill: parent
        color: "transparent"
        Image {
            id: i_avatar
            source: "assets/I21_839_21_729_14_23.png"
            x: 30
            y: 0
            width: 176.5
            height: 173.22
        }
        Rectangle {
            x: 0
            y: 193.22
            width: 236.5
            height: 77.8
            color: "#202021"
            Text {
                id: myname
                text: qsTr("Brahmi Tarek")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                color: "#FFFFFF"
                x: 29.06
                y: -1
                width: 179
                height: 34
                font.pixelSize: 26
            }
            Rectangle {
                id: rectangle
                x: 5
                y: 43
                width: 224
                height: 28
                radius: 8
                color: Constants.midgrayColor
                Text {
                    wrapMode: Text.Wrap
                    id: myoccupation
                    x: 2
                    width: 224
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    font.pixelSize: 12
                    text: qsTr("Embedded Systems Engineering Student")
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenterOffset: 2
                    anchors.topMargin: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.top: parent.top
                    color: "#FFFFFF"
                }
            }
        }
    }
}
