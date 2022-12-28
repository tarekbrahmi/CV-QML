import QtQuick 2.12
import MyCVTemplate 1.0
import QtGraphicalEffects 1.0

Item {
    id: element
    width: 425.75
    height: 393.44
    Rectangle {
        id: projectgridwrapper
        anchors.fill: parent
        color: "#202021"
        radius: 16
        Rectangle {
            id: lower
            color: "transparent"
            width: 425.75
            height: 169.44
            x: 0
            y: 224
            radius: 16
            Text {
                id: projectName
                text: qsTr("Design Conferences in 2019")
                font.bold: true
                height: 32
                width: 333
                x: 24
                y: 55.75
                color: mapname.containsMouse ? Constants.goldColor : "#FCFCFC"
                font.pixelSize: 15
                MouseArea {
                    id: mapname
                    enabled: true
                    hoverEnabled: true
                    anchors.fill: projectName
                }
            }
            Text {
                id: projectDesc
                text: qsTr("Veritatis et quasi architecto beatae vitae dicta sunt, explicabo.")

                height: 50
                width: 345.89
                x: 24
                y: 95.94
                color: "#D6D6D6"
                font.pixelSize: 15
                wrapMode: Text.Wrap
            }
            Rectangle {
                color: "transparent"
                x: 24
                y: 19
                width: 377.75
                height: 25.75
                Text {
                    id: projectCategory
                    text: qsTr("Design")
                    width: 51
                    height: 25
                    font.pixelSize: 15
                    font.bold: true
                    color: "#D6D6D6"
                }
                Rectangle {
                    id: span
                    x: 57.64
                    y: 11.38
                    width: 4
                    height: 4
                    radius: 2
                    color: "#D6D6D6"
                }
                Text {
                    id: projectDate
                    text: qsTr("Sep 16, 2021")
                    font.bold: true
                    height: 25
                    width: 84
                    x: 68.64
                    y: 0
                    color: "#D6D6D6"
                    font.pixelSize: 15
                }
            }
        }

        Rectangle {
            radius: 16
            id: upper
            width: 425.75
            height: 224
            x: 0
            y: 0
            clip: true
            MouseArea {
                id: mahovered
                anchors.fill: upper
                enabled: true
            }
            Image {
                id: img
                width: 427
                height: 224
                source: "assets/machine-learning.jpg"
                anchors.centerIn: upper

                property bool rounded: true
                property bool adapt: true
                layer.enabled: rounded
                layer.effect: OpacityMask {
                    maskSource: Item {
                        width: img.width
                        height: img.height
                        Rectangle {
                            anchors.centerIn: parent
                            width: img.width
                            height: img.adapt ? img.height : width
                            radius: 16
                        }
                    }
                }
            }
        }
    }
    states: [
        State {
            name: "scaled"
            when: mahovered.containsPress
            PropertyChanges {
                target: img
                scale: 1.3
                smooth: true
            }
        }
    ]
}
