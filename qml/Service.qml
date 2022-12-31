import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 426.75
    height: 138.89
    property string iconSrc: "assets/14_79.png"
    property string serviceLabel: "Photography"
    property string serviceDesc: "I make ...."

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
                text: serviceLabel
                width: 120
                height: 24
            }
            Text {
                id: service_desc
                x: 0
                y: 30
                color: maservicedesc.containsMouse ?Constants.goldColor:"#D6D6D6"
                width: 339
                height: 79
                wrapMode: Text.Wrap
                text: serviceDesc
                MouseArea{
                    id:maservicedesc
                    anchors.fill: service_desc
                    enabled: true
                    hoverEnabled: true
                }
            }
        }
        Image {
            id: i_service
            x: 30
            y: 30
            width: 40
            height: 40
            fillMode: Image.PreserveAspectFit
            source: iconSrc
        }
    }
}
