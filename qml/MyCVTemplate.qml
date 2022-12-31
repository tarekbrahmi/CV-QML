import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Window 2.15
Window {
    width: Constants.width
    height: Constants.height
    visible: true
    id: name
    color: Constants.backgroundColor
    Screen01 {
        anchors.fill: parent
        Image {
            z:1
            id: santaimage
            objectName:"santaimage"
            width: 80
            height: 80
            source: "assets/santa-claus.png"
            fillMode: Image.PreserveAspectFit
            Behavior on x { PropertyAnimation { duration: 500 } }
            Behavior on y { PropertyAnimation { duration: 500 } }

        }

    }
}

