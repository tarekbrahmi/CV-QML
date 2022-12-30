import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    width: 995
    height: 640
    y: 0
    x: 0
    property alias projectItemSrc: singlep.projectItemSrc
    property alias projectItemName:singlep.projectItemName
    property alias labelCategory1iconSrc:singlep.labelCategory1iconSrc
    property alias labelCategory1txtlabel:singlep.labelCategory1txtlabel
    property alias labelCategory1txtvalue:singlep.labelCategory1txtvalue
    property alias labelCategory2iconSrc:singlep.labelCategory2iconSrc
    property alias labelCategory2txtlabel:singlep.labelCategory2txtlabel
    property alias labelCategory2txtvalue:singlep.labelCategory2txtvalue
    Flickable {
        id: projectitem
        anchors.bottomMargin: -110
        anchors.fill: parent
        contentWidth: 995
        boundsBehavior: Flickable.StopAtBounds
        contentHeight: 1506
        //        clip: true
        ProjectItem {
            id:singlep
            projectItemSrc:projectItemSrc
            projectItemName:projectItemName

            labelCategory1iconSrc:labelCategory1iconSrc
            labelCategory1txtlabel:labelCategory1txtlabel
            labelCategory1txtvalue:labelCategory1txtvalue

            labelCategory2iconSrc:labelCategory2iconSrc
            labelCategory2txtlabel:labelCategory2txtlabel
            labelCategory2txtvalue:labelCategory2txtvalue
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
