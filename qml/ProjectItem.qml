import QtQuick 2.12
import MyCVTemplate 1.0

Flickable {
    x:0
    y:160
    clip: true
    id: projectitem
    property alias projectItemSrc: myproject.projectSrc
    property alias projectItemName: myproject.projectName
    property alias labelCategory1iconSrc: labelCategory1.iconSrc
    property alias labelCategory1txtlabel: labelCategory1.txtlabel
    property alias labelCategory1txtvalue: labelCategory1.txtvalue
    property alias labelCategory2iconSrc: labelCategory2.iconSrc
    property alias labelCategory2txtlabel: labelCategory2.txtlabel
    property alias labelCategory2txtvalue: labelCategory2.txtvalue

    anchors.bottomMargin: 0
    contentWidth: 642
    boundsBehavior: Flickable.StopAtBounds
    contentHeight: 1506
    ArrowBack {
        id:igoback
        y: 40
        x: 31
        width: 881.5
        height: 24.75
        onClicked: stackProjects.pop()

    }
    ProjectBackGround {
        x: 1
        y: 76
        id: myproject
        projectSrc: projectItemSrc
        projectName: projectItemName
    }
    Rectangle {
        id:labels
        y: 400+86
        x: 31
        color: "transparent"
        CustomLabel2 {
            id:labelCategory1
            x: 0
            y: 0
            width: 149.28
            height: 48
            iconSrc: labelCategory1iconSrc
            txtlabel: labelCategory1txtlabel
            txtvalue: labelCategory1txtvalue
        }
        CustomLabel2 {
            id:labelCategory2
            x: 229
            y: 0
            width: 149.28
            height: 48
            iconSrc: labelCategory2iconSrc
            txtlabel: labelCategory2txtlabel
            txtvalue: labelCategory2txtvalue
        }
    }


}

