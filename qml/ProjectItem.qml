import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.0
Flickable {
    x: 0
    y: 0
    id: projectitem
    property alias projectItemSrc: myproject.projectSrc
    property alias projectItemName: myproject.projectName
    property alias labelCategory1iconSrc: labelCategory1.iconSrc
    property alias labelCategory1txtlabel: labelCategory1.txtlabel
    property alias labelCategory1txtvalue: labelCategory1.txtvalue
    property alias labelCategory2iconSrc: labelCategory2.iconSrc
    property alias labelCategory2txtlabel: labelCategory2.txtlabel
    property alias labelCategory2txtvalue: labelCategory2.txtvalue
    property alias projectImages:swipper.modelData
    property alias projectDescc:iprojectDescc.text

    //    anchors.bottomMargin: -110
    contentWidth: 995
    boundsBehavior: Flickable.StopAtBounds
    contentHeight: 1506
    //    clip: true
    ArrowBack {
        id: igoback
        y: 40
        x: 31
        width: 881.5
        height: 24.75
        onClicked: stackProjects.pop()
    }
    ProjectBackGround {
        x: 1
        y: 76
        width: 995
        id: myproject
        projectSrc: projectItemSrc
        projectName: projectItemName
    }
    Swiper{
        id:swipper
        modelData:projectImages
    }

    Text {
        id: iprojectDescc
        x: 15
        y: 556
        width: 980
        height: 200
        wrapMode: Text.WrapAnywhere
        font.pixelSize: 15
        font.bold: true
        color: "#D6D6D6"
        anchors.margins: 15
        text: projectDescc
        horizontalAlignment: Text.AlignLeft

    }

    Rectangle {
        id: labels
        y: 400 + 96
        x: 31
        color: "transparent"
        CustomLabel2 {
            id: labelCategory1
            x: 0
            y: 0
            width: 149.28
            height: 48
            iconSrc: labelCategory1iconSrc
            txtlabel: labelCategory1txtlabel
            txtvalue: labelCategory1txtvalue
        }
        CustomLabel2 {
            id: labelCategory2
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
