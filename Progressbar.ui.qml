import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Layouts 1.3

Item {
    width: 821
    height: 40
    property alias textLabel: label.text
    property alias percent: percentValue.text
    Rectangle {
        color: "transparent"
        anchors.fill: parent
        RowLayout {
            anchors.fill: parent
            spacing: 2
            id: hwrapper
            width: 123.89
            height: 21
            Text {
                id: label
                text: qsTr("text")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 15
                color: "#FCFCFC"
                Layout.fillWidth: true
                horizontalAlignment: parent.horizontalCenter
                wrapMode: Text.Wrap
            }
            Text {
                wrapMode: Text.NoWrap
                id: percentValue
                Layout.fillWidth: true
                text: percent
                Layout.minimumWidth: 20
                Layout.preferredWidth: 20
                Layout.maximumWidth: 30
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: parent.horizontalCenter
                font.pixelSize: 15
                color: "#D6D6D6"
            }
        }
        Rectangle {
            id: progress
            x: 0
            y: 32
            width: 821
            height: 8
            color: "transparent"
            Image {
                id: ibackground
                x: 0
                y: 32
                width: 821
                anchors.fill: parent
                height: 8
                fillMode: Image.PreserveAspectFit
                source: "assets/43_323.png"
            }
            Rectangle {
                id: iindicator
                x: 0
                y: 32
                width: 821
                height: 8
                color: Constants.goldColor
                radius: 5
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.top: parent.top
            }
        }
    }
}
