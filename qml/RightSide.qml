import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.12

Item {
    width: 995
    height: 708
    Rectangle {

        id: wrapper
        anchors.fill: parent
        color: "#1E1E1F"
        border.width: 0
        radius: 20

        Stacklayoutframe {
            id: stacklayoutframe
        }
        Rectangle {
            x: 0
            y: 0
            radius: 20
            visible: true
            width: 995
            height: 66
            color: "#1e1e1f"
            CustomLabel {
                width: 175
                height: 66
                x: 10
                y: 10
                textValue: stacklayoutframe.stacklayoutindex === 3 ?
                               "Project":stacklayoutframe.stacklayoutindex === 2 ?
                                   "Experience":stacklayoutframe.stacklayoutindex === 1 ?
                                       "Education":"About Me"
            }

            Item {
                visible: true
                x: 543
                y: 0
                width: 452
                height: 66
                RectangleItem {
                    id: rectangle
                    radius: 0
                    strokeWidth: 0
                    bottomLeftRadius: 20
                    topRightRadius: 20
                    anchors.fill: parent
                    strokeColor: "#00000000"
                    fillColor: Constants.midgrayColor
                    topLeftRadius: 0

                    TextButton {
                        id: textButtonProjects
                        x: 379
                        y: 22
                        textLabel: "Projects"
                        hoverEnabled: true
                        autoExclusive: true
                        onClicked: stacklayoutframe.stacklayoutindex = 3
                    }

                    TextButton {
                        id: textButtonExperience
                        x: 277
                        y: 22
                        textLabel: "Experience"
                        hoverEnabled: true
                        autoExclusive: true
                        onClicked: stacklayoutframe.stacklayoutindex = 2
                    }

                    TextButton {
                        id: textButtonEducation
                        x: 164
                        y: 22
                        textLabel: "Education"
                        hoverEnabled: true
                        autoExclusive: true
                        onClicked: stacklayoutframe.stacklayoutindex = 1
                    }

                    TextButton {
                        id: textButtonAbout
                        x: 40
                        y: 22
                        hoverEnabled: false
                        checked: true
                        autoExclusive: true
                        onClicked: stacklayoutframe.stacklayoutindex = 0
                    }
                }
            }
        }
    }
}
