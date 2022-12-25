import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 256.5
    height: 595.7
    Rectangle {
        anchors.fill: parent
        radius: 20
        color: "#202021"
        Rectangle {
            id: aboutme
            color: "transparent"
            x: 10
            y: 10
            width: 236.5
            height: 271.02
            About {
            }
        }

        Rectangle {
            id: contactInfo
            x: 10
            y: 291.02
            height: 294
            width: 236
            color: "#202021"
            Divider {
                x: 0
                y: 0
            }
            Rectangle {
                id: contactInfoWrapper
                ContactInfoItem {
                    x: 0
                    y: 0
                    id: emailContact
                }
                ContactInfoItem {
                    x:0
                    y:76
                    id: phoneContact
                }
                ContactInfoItem {
                    x:0
                    y:152
                    id: locationContact
                }
            }
        }
    }
}
