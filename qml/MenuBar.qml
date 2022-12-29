import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Studio.Components 1.0

Item {
    width: 448
    height: 64
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
            id: textButtonContact
            x: 379
            y: 22
            textLabel: "Contact"

        }

        TextButton {
            id: textButtonPortfolio
            x: 277
            y: 22
            textLabel: "Portfolio"
        }

        TextButton {
            id: textButtonResume
            x: 164
            y: 22
            textLabel: "Resume"
        }

        TextButton {
            id: textButtonAbout
            x: 40
            y: 22
            active: true
        }
    }
}
