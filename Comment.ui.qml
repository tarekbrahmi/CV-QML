import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    clip: false
    width: 426
    height: 136.89
    Rectangle {
        color: Constants.midgrayColor
        id: comment
        radius: 16
        anchors.fill: parent
        Image {
            id: comment_auth_image
            x: 30
            y: -30
            width: 80
            height: 80
            source: "assets/14_92.png"
        }
        Text {
            x: 30
            y: 64
            width: 359.03
            height: 45.75
            color: "#D6D6D6"
            id: comment_body
            text: qsTr("Ricardo was hired to create a corporate identity. We were very pleased with the work done...")
            wrapMode: Text.Wrap
        }
        Text {
            id: comment_auth
            text: qsTr("Daniel lwis")
            wrapMode: Text.Wrap
            x: 125
            y: 27
            width: 111.98
            height: 25
            color: "#FCFCFC"
        }
    }
}
