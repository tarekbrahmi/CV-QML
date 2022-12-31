import QtQuick 2.12
import MyCVTemplate 1.0

Rectangle {
    clip: false
    width: 426
    height: 136.89
    color: "#202021"
    radius: 16
    property alias commentAuthImage: comment_auth_image.source //assets/14_92.png
    property alias commentBody: comment_body.text
    property alias commentAuth: comment_auth.text

    Rectangle {
        color: "#383838"
        id: comment
        radius: 16
        anchors.fill: parent
        anchors.margins: 0.5
        Rectangle {
            x: 30
            y: -30
            width: 80
            height: 80
            radius: 20
            color: "#D6D6D6"

            Rectangle{
                anchors.margins: 0.5
                anchors.fill: parent
                color: "#202021"
                radius: 20
                Image {
                    width: 79
                    height: 79
                    id: comment_auth_image
                    anchors.fill: parent
                    source: commentAuthImage
                }
            }


        }

        Text {
            x: 30
            y: 64
            width: 359.03
            height: 45.75
            color: "#D6D6D6"
            id: comment_body
            text: commentBody
            wrapMode: Text.Wrap
        }
        Text {
            id: comment_auth
            text: commentAuth
            wrapMode: Text.Wrap
            font.bold: true
            x: 125
            y: 10
            font.pixelSize: 18
            width: 111.98
            height: 25
            color: "#FCFCFC"
        }
    }
}
