import QtQuick 2.5
import MyCVTemplate 1.0
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.5
StackView {
    id: stackView

    initialItem: Component {
        id: page

        Page {
            Row {
                spacing: 20
                anchors.centerIn: parent

                Button {
                    text: "<"
                    onClicked: stackView.replace(page, StackView.PopTransition)
                }
                Button {
                    text: ">"
                    onClicked: stackView.replace(page, StackView.PushTransition)
                }
            }
        }
    }
}
