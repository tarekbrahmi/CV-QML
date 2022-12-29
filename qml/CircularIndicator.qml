import QtQuick 2.12
import MyCVTemplate 1.0

Rectangle {
    id: circularIndicatorWrapper
    width: 20
    height: 20
    radius: 50
    color: "#FFDB6E"
    Rectangle {
        id: circularIndicator
        radius: 50
        anchors.rightMargin: 3
        anchors.leftMargin: 3
        anchors.bottomMargin: 3
        anchors.topMargin: 3
        anchors.fill: parent
        color: "#FFBC5E"
    }
}

/*##^## Designer {
    D{i:1;anchors_height:9;anchors_width:9}
}
 ##^##*/
