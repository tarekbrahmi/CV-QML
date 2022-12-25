import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 426.75
    height: 138.89
    Image {
        id: i_service
        x: 30
        y: 30
        width: 40
        height: 40
        source: "assets/14_79.png"
    }
    Rectangle {
        anchors.fill: parent
        color: Constants.midgrayColor
        radius: 20
        Rectangle {
            id: name
            x: 86
            y: 29
            Text {
                color: "#FCFCFC"
                id: service_name
                text: qsTr("Photography")
                width: 120
                height: 24
            }
            Text {
                id: service_desc
                x: 0
                y: 30
                color: "#D6D6D6"
                width: 250.81
                height: 50
                wrapMode: Text.Wrap
                text: qsTr("I make high-quality photos of any category at a professional level.")
            }
        }
    }
}
