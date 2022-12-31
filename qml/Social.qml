import QtQuick 2.12
import MyCVTemplate 1.0
Rectangle {
    id: rectangle
    width: 236
    height: 30
    color: "transparent"

    SocialIcon {
        x: 75
        y: 4
        anchors.verticalCenter: rectangle.verticalCenter
        socialIcon: "assets/lin.png"
    }
    SocialIcon {
        anchors.verticalCenter: rectangle.verticalCenter
        x: 110
        y: 4
        socialIcon: "assets/github.png"
    }
    SocialIcon {
        anchors.verticalCenter: rectangle.verticalCenter
        x: 143
        y: 4
        socialIcon: "assets/fb.png"
    }
}
