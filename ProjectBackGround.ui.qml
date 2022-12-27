import QtQuick 2.12
import MyCVTemplate 1.0

Rectangle {
    width: 985
    height: 400
    property alias projectSrc: projectsrc.source
    property alias projectName: projectname.text
    Rectangle {
        color: "transparent"
        anchors.fill: parent

        Image {
            id: projectsrc
            anchors.centerIn: parent
            anchors.fill: parent
            clip: true

            source: projectSrc
            Rectangle {
                anchors.centerIn: parent
                anchors.fill: parent
                gradient: Gradient {

                    GradientStop {
                        position: 0.0
                        color: "#000d0d0d"
                    }
                    GradientStop {
                        position: 0.4
                        color: "#660d0d0d"
                    }
                    GradientStop {
                        position: 1.0
                        color: "#660d0d0d"
                    }
                }
            }
        }
        Text {
            id: projectname
            x: 30
            y: 300
            width: 557.08
            height: 86.59
            wrapMode: Text.Wrap
            font.bold: true
            font.pixelSize: 32
            text: projectName
            color: "#FCFCFC"
        }
    }
}
