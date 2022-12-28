import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    width: 995
    height: 640
    y: 0
    x: 0
    Flickable {
        id: flickable
        anchors.bottomMargin: -110
        anchors.fill: parent
        contentWidth: 995
        boundsBehavior: Flickable.StopAtBounds
        contentHeight: 1506
        //        clip: true
        ProjectItem {
        }

        SwipeView {
            clip: true
            id: view
            anchors.topMargin: 680
            anchors.bottomMargin: 56

            currentIndex: 0
            anchors.fill: parent

            Item {
                id: firstPage
                Text {
                    id: name
                    text: qsTr("text")
                    anchors.centerIn: parent
                    color: "red"
                }
            }
            Item {
                id: secondPage
                Text {
                    id: page2
                    anchors.centerIn: parent
                    color: "red"
                    text: qsTr("page2")
                }
            }
            Item {
                id: thirdPage
                Text {
                    color: "red"
                    anchors.centerIn: parent
                    id: page3
                    text: qsTr("page3")
                }
            }
        }

        PageIndicator {
            id: indicator
            count: view.count
            currentIndex: view.currentIndex
            anchors.bottom: view.bottom
            anchors.horizontalCenter: view.horizontalCenter
        }
    }
}
