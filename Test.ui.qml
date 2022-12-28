import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Item {
    id: name
    width: 640
    height: 480
    TabBar {
        id: tab
        width: name.width
        anchors {
            top: name.top
            left: name.left
            right: name.right
        }

        TabButton {
            text: "h1"
        }
        TabButton {
            text: "h2"
        }
        TabButton {
            text: "h3"
        }
    }
    StackLayout {
        currentIndex: tab.currentIndex
        width: name.width
        height: name.height - tab.height
        anchors.rightMargin: 0
        anchors.bottomMargin: -36
        anchors.leftMargin: 0
        anchors.topMargin: 36
        anchors {
            top: tab.top
            left: name.left
            right: name.right
            bottom: name.bottom
        }
        Rectangle {
            id: h1
            color: "red"
            Text {
                text: qsTr("H1")
                anchors.centerIn: parent
            }
        }
        Rectangle {
            id: h2
            color: "green"
            Text {
                text: qsTr("H2")
                anchors.centerIn: parent
            }
        }
        Rectangle {
            id: h3
            color: "yellow"
            Text {
                text: qsTr("H3")
                anchors.centerIn: parent
            }
        }
    }
}



