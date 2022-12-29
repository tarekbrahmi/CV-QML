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
                color: Constants.nameLabelColor
                x: 29.06
                y: -1
                width: 179
                height: 34
                font.pixelSize: 26
            }
            Rectangle {
                x: 52.14
                y: 49.8
                width: 132.2
                height: 28
                radius: 8
                color: Constants.midgrayColor
                Text {
                    anchors.fill: parent
                    wrapMode: Text.Wrap
                    id: myoccupation
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    font.pixelSize: 12
                    text: qsTr("Embadded System ing ")
                    color: "#FFFFFF"
                }
            }
        }
    }
}
