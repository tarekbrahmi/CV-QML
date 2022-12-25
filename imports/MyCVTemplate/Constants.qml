pragma Singleton
import QtQuick 2.10

QtObject {
    readonly property int width: 1262
    readonly property int height: 708
    readonly property FontLoader mySystemFont: FontLoader { name: "Arial" }
    /* Edit this comment to add your custom font */
    /* readonly property FontLoader myCustomFont: FontLoader { source: "MyCustomFont.ttf" } */
    readonly property font font: Qt.font({
                                             family: mySystemFont.name,
                                             pixelSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: mySystemFont.name,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6
                                              })
    readonly property color backgroundColor: "#2A2A2B"
    readonly property color grayColor: "#D6D6D6"
    readonly property color midgrayColor: "#383838"
    readonly property color goldColor: "#FFD66B"
    readonly property color nameLabelColor: "#941F1F"


}
