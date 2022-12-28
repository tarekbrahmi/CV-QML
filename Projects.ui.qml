import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    width: 995
    height: 642
    y: 0
    x: 0
    Flickable {
        id: flickable
        anchors.fill: parent
        contentWidth: 995
        boundsBehavior: Flickable.StopAtBounds
        contentHeight: 1506
        clip: true
        ProjectItem {
        }
    }
}
