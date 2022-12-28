import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Item {
    width: 995
    height: 642
    id: projectsgrid
    y: 78
    ScrollView {

        id: scroller
        anchors.horizontalCenter: projectsgrid.horizontalCenter
        anchors.verticalCenter: projectsgrid.verticalCenter
        anchors.top: projectsgrid.top
        clip: true
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff
        GridLayout {
            id: rowLayout
            columnSpacing: 15
            columns: 2
            rows: 3
            ProjectGrid {
            }
            ProjectGrid {
            }
            ProjectGrid {
            }
            ProjectGrid {
            }
            ProjectGrid {
            }
            ProjectGrid {
            }
        }
    }
}
