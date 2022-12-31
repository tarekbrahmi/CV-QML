import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.3

Item{
    anchors.topMargin: 933
    anchors.bottomMargin: 179
    height: 400
    anchors.fill: parent
    property int i: 0
    property alias modelData: imagerep.model
    Timer {
        interval: 2300; running: true; repeat: true
        onTriggered: {
            var allElemnts=view.count
            view.currentIndex = i%allElemnts
            i++
        }
    }
    SwipeView {
        id: view
        enabled: true
        currentIndex: 0
        anchors.fill: parent
        Repeater{
            id:imagerep
            model:modelData
            delegate: Component{
                id:imageitem
                Rectangle {
                    width: 995
                    height: 400

                    Rectangle {
                        color: "transparent"
                        anchors.fill: parent
                        Image {

                            anchors.centerIn: parent
                            anchors.fill: parent
                            clip: true

                            source: modelData
                            Rectangle {
                                anchors.centerIn: parent
                                anchors.fill: parent
                                gradient: Gradient {

                                    GradientStop {
                                        position: 0.0
                                        color: "#000d0d0d"
                                    }
                                    GradientStop {
                                        position: 0.4
                                        color: "#660d0d0d"
                                    }
                                    GradientStop {
                                        position: 1.0
                                        color: "#660d0d0d"
                                    }
                                }
                            }
                        }

                    }
                }
            }
        }


    }

    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: view.horizontalCenter
    }

}
