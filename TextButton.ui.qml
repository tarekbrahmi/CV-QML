import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.3

Item {

    id: buttons
    height: 21
    width: 61.43
    property bool active: false
    property string textLabel: "About"

    Rectangle {
        id: button_item
        width: 61.43
        color: "transparent"
        height: 21
        Text {
            text: qsTr(textLabel)
            id: button_item_text
            wrapMode: Text.WordWrap
            color: Constants.grayColor
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
    }
    states: [
        State {
            name: "active_state"
            when: buttons.active === true
            PropertyChanges {
                target: button_item_text
                color: Constants.goldColor
            }
        }
    ]
}
