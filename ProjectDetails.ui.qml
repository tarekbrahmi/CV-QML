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
        Swiper {
            clip: true
            id: view
            currentIndex: 0
            anchors.topMargin: 680
            anchors.bottomMargin: 248
            anchors.fill: parent
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
