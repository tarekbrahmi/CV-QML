import QtQuick 2.12
import MyCVTemplate 1.0

import QtQuick.Layouts 1.3

Item {
    id: stacklayoutframe
    width: 995
    height: 642
    property alias stacklayoutindex: stacklayout.currentIndex
    property alias aboutme: layaboutme
    property alias experience: layexperience
    property alias education: layeducation
    property alias project: layproject
    StackLayout {
        id: stacklayout
        x: 0
        y: 0
        anchors.fill: parent

        Rectangle {
            id: layaboutme
            x: 0
            y: 0
            color: "transparent"
            AboutMe {
            }
        }
        Rectangle {
            id: layeducation
            color: "transparent"
            x: 0
            y: 0
            Education {
            }
        }

        Rectangle {
            id: layexperience
            color: "transparent"
            x: 0
            y: 0
            Experience {
            }
        }
        Rectangle {
            id: layproject
            color: "transparent"
            x: 0
            y: 0
            Projects {
            }
        }
    }
}
