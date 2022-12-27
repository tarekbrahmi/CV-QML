import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 995
    height: 642
    Text {
        y: 68
        x: 10
        width: 985
        height: 146
        id: about_me
        font.pixelSize: 20
        color: "#FFFFFF"
        wrapMode: Text.Wrap

        text: qsTr("Currently studying embedded systems engineering at the Faculty of Sciences de Tunis, I am looking for a company that could welcome me in the as part of a 4-6 month approved internship from the beginning of January or February 2023.")
    }

    Rectangle {
        y: 188
        x: 0
        width: 995
        height: 81
        color: "transparent"
        Text {
            x: 15
            y: 0
            width: 980
            height: 32
            id: whatimDo
            font.pixelSize: 20
            color: "#FFFFFF"
            text: qsTr("What I'm Doing")
            wrapMode: Text.Wrap
        }
    }
    Rectangle {
        x: 0
        y: 240
        width: 995
        height: 411
        color: "transparent"
        Service {
            x: 50
            y: 25
            id: service1
        }
        Service {
            x: 521
            y: 25
            id: service2
        }
        Service {
            x: 50
            y: 187
            id: service3
        }
        ArticleElement {
            x: 521
            y: 188
            id: service4
        }
    }
}
