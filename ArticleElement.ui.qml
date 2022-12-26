import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    y: 1
    width: 881
    height: 124.05
    property string articleWhere: "FST"
    property string articleDate: "2021-2023"
    property string articleDesc: "Nemo enims ipsam voluptatem, blanditiis praesentium voluptum delenit atque corrupti, quos dolores et quas molestias exceptur."

    Rectangle {
        width: 857.5
        height: 124.05
        color: "transparent"
        VirticalDivider {
            x: 24
            y: -30
        }
        CircularIndicator {
            x: 14
            y: 0
        }

        Text {
            id: iarticleWhere
            x: 41
            y: 0
            width: 223.57
            height: 23
            text: articleWhere
            color: "#FCFCFC"
            font.pixelSize: 16
            wrapMode: Text.Wrap
        }
        Text {
            id: iarticleDate
            x: 41
            y: 21.8
            width: 94.06
            height: 21
            text: articleDate
            color: "#D6D6D6"
            font.pixelSize: 15
            wrapMode: Text.Wrap
        }
        Text {
            id: iarticleDesc
            x: 41
            y: 50.55
            width: 811.59
            height: 45.75
            wrapMode: Text.Wrap
            text: articleDesc
            color: "#D6D6D6"

            font.pixelSize: 15
        }
        VirticalDivider {
            x: 24
            y: 30
        }
        VirticalDivider {
            x: 24
            y: 40
        }
    }
}
