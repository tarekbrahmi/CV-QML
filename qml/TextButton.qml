import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.3
import QtQuick.Templates 2.1 as T

T.Button {
    id: control
    height: 21
    width: 61.43
    property alias textLabel: button_item_text.text
    autoExclusive: false
    checkable: true
    Text {
        text: "About"
        id: button_item_text
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.AlignHCenter
        color: control.hovered ? "#FCFCFC" : Constants.grayColor
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
    states: [
        State {
            name: "checked"
            when: control.checked
            PropertyChanges {
                target: button_item_text
                color: Constants.goldColor
            }
        },
        State {
            name: "normal"
            when: !control.pressed && !control.checked && !control.hovered
            PropertyChanges {
                target: button_item_text
                color: Constants.grayColor
            }
        }
    ]
}
