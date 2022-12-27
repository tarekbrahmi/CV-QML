import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.3

SwipeView {
    id: view

    currentIndex: 0
    anchors.fill: parent

    Item {
        id: firstPage
        Text {
            id: name
            text: qsTr("text")
            anchors.centerIn: parent
            color: "red"
        }
    }
    Item {
        id: secondPage
        Text {
            id: page2
            anchors.centerIn: parent
            color: "red"
            text: qsTr("page2")
        }
    }
    Item {
        id: thirdPage
        Text {
            color: "red"
            anchors.centerIn: parent
            id: page3
            text: qsTr("page3")
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
