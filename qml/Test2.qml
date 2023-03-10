
import QtQuick 2.6
import QtQuick.Controls 2.1

Pane {
    id: pane

    SwipeView {
        id: view
        currentIndex: 1
        anchors.fill: parent

        Repeater {
            model: 3

            Pane {
                width: view.width
                height: view.height

                Column {
                    spacing: 40
                    width: parent.width

                    Label {
                        width: parent.width
                        wrapMode: Label.Wrap
                        horizontalAlignment: Qt.AlignHCenter
                        text: "SwipeView provides a navigation model that simplifies horizontal paged scrolling. "
                        + "The page indicator on the bottom shows which is the presently active page."
                    }

                    Image {
                        source: "assets/back.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }

    PageIndicator {
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
