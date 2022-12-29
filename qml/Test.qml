import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls

Item {
    width: 995
    height: 640
    id: projectpage
    y: 68
    x: 10
    ScrollView {
        anchors.fill: projectpage
        id:scroller
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff
        smooth: true
        ListModel {
            id: projectsModel
            ListElement {
                projectSrc: "assets/project-1.jpg"
                projectName:"Project 2"
            }
            ListElement {
                projectSrc: "assets/project-1.jpg"
                projectName:"Project 3"
            }
            ListElement {
                projectSrc: "assets/project-1.jpg"
                projectName:"Project 4"
            }

        }
        Component {
            id: projectsDelegate
            Rectangle {
                width: 985
                height: 400
                Rectangle {
                    color: "transparent"
                    anchors.fill: parent

                    Image {
                        id: projectsrc
                        anchors.centerIn: parent
                        anchors.fill: parent
                        clip: true

                        source: projectSrc
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
                    Text {
                        id: projectname
                        x: 30
                        y: 300
                        width: 557.08
                        height: 86.59
                        wrapMode: Text.Wrap
                        font.bold: true
                        font.pixelSize: 32
                        text: projectName
                        color: "#FCFCFC"
                    }
                }
            }

        }

        ListView {
            model: projectsModel
            delegate: projectsDelegate
            anchors.fill: parent
        }
    }


    //    Swiper {
    //        id:view
    //        y: 68
    //        x: 10
    //    }
    //    PageIndicator {
    //        id: indicator

    //        count: view.count
    //        currentIndex: view.currentIndex

    //        anchors.bottom: view.bottom
    //        anchors.horizontalCenter: projectpage.horizontalCenter
    //    }
}
