import QtQuick 2.12
import MyCVTemplate 1.0


Rectangle {
    width: 38
    height: 38
    color: "transparent"
    property alias socialIcon: isocialIcon.source
    Image {
        id: isocialIcon
        source: socialIcon
        anchors.fill: parent
    }
    MouseArea {
        id: masocialicon
        anchors.fill: isocialIcon
        enabled: true
        hoverEnabled: true
    }

}
