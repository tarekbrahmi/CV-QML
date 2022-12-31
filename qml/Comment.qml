import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    clip: false
    width: 426
    height: 136.89
    property alias commentAuthImage: comment_auth_image.source //assets/14_92.png
    property alias commentBody: comment_body.text
    property alias commentAuth: comment_auth.text

    Rectangle {
        color: "#202021"
        id: comment
        radius: 16
        anchors.fill: parent
        Rectangle {
            x: 30
            y: -30
            width: 80
            height: 80
            radius: 20
            color: "#202021"
            Image {
                width: 80
                height: 80
                id: comment_auth_image
                anchors.fill: parent
                source: commentAuthImage
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
            x: 125
            y: 27
            width: 111.98
            height: 25
            color: "#FCFCFC"
        }
    }
}
