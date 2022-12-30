import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Item {
    width: 995
    height: 642
    property int i: 0
    id: projectsgrid
    y: 78
    StackView{
        z:1
        id:stackProjects
        anchors.horizontalCenter: projectsgrid.horizontalCenter
        anchors.verticalCenter: projectsgrid.verticalCenter
        anchors.fill: projectsgrid
        clip: true
        initialItem:myProjects
        // to display projects grid in ScrollView

        Component{
            id:myProjects
            ScrollView {
                id: scroller
                clip: true
                ScrollBar.vertical.policy: ScrollBar.AlwaysOff
                GridLayout {
                    id: projectsGrid
                    x:60
                    columnSpacing: 15
                    rowSpacing: 15
                    columns: 2
                    rows: 3
                    ProjectGrid {
                        id:p1
                        projectName.text: "ҽLAB : Remote access to HW testing Boards"
                        projectDesc.text: "Our project makes life easier with STM32 boards."
                        projectCategory.text: "Iot"
                        projectDate.text: "2022-03-01"
                        projectSRC.source: "assets/elab_pre.png"
                        onClicked: stackProjects.push(project1)

                    }
                    ProjectGrid {
                        projectName.text: "Project on computer vision and AI/ML"
                        projectDesc.text: " Project for learning purpose on computer vision and AI/ML"
                        projectCategory.text: "Computer Vision"
                        projectDate.text: "2022-10-01"
                        projectSRC.source: "assets/machine-learning.jpg"
                        onClicked: stackProjects.push(project2)
                    }
                    ProjectGrid {
                        projectName.text: "TakeNote"
                        projectDesc.text: "You can create a note that can be saved to a local database at your system for later use"
                        projectCategory.text: "Python"
                        projectDate.text: "2021-07-11"
                        projectSRC.source: "assets/s_login.png"
                        onClicked: stackProjects.push(project3)
                    }
                    ProjectGrid {
                        projectName.text: "Chat Application with Django Channels"
                        projectDesc.text: "Think about some of the apps. We can create chat rooms, multiplayer games and collaborative applications that allow users to communicate in real time"
                        projectCategory.text: "Web Development"
                        projectDate.text: "2021-11-26"
                        projectSRC.source: "assets/demoWS.png"
                        onClicked: stackProjects.push(project4)
                    }
                    ProjectGrid {
                        projectName.text: "Smart home automation"
                        projectDesc.text: "Smart home automation” refers to the automatic and electronic control of household features, activity, and appliances. In simple terms, it means you can easily control the utilities"
                        projectCategory.text: "Iot"
                        projectDate.text: "2022-03-01"
                        projectSRC.source: "assets/casa_smart.png"
                        onClicked: stackProjects.push(project5)
                    }
                    ProjectGrid {
                        projectName.text: "Self driving car"
                        projectDesc.text: "Remotely control a 4 dc motors robot via an Android app and a camera based on OpenCV"
                        projectCategory.text: "Iot"
                        projectDate.text: "Present"
                        projectSRC.source: "assets/elab_pre.png"
                        onClicked: stackProjects.push(project6)
                    }
                }
            }

        }
        Component{
            id:project1
            ProjectItem{
                projectItemSrc: "assets/elab_pre.png"
                projectItemName: "ҽLAB : Remote access to HW testing Boards"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "IoT"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2021-PRESENT"
                projectImages: ["assets/elab_pre.png","assets/demoWS.png","assets/casa_smart.png"]
                projectDescc:"hello"

            }


        }
        Component{
            id:project2
            ProjectItem{
                projectItemSrc: "assets/machine-learning.jpg"
                projectItemName: "Project on computer vision and AI/ML"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "Computer Vision"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2022-10-01"
                projectImages: ["assets/elab_pre.png","assets/demoWS.png","assets/casa_smart.png"]
                projectDescc:"hello"
            }
        }
        Component{
            id:project3
            ProjectItem{
                projectItemSrc: "assets/elab_pre.png"
                projectItemName: "ҽLAB : Remote access to HW testing Boards"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "IoT"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2021-PRESENT"
                projectImages: ["assets/elab_pre.png","assets/demoWS.png","assets/casa_smart.png"]
                projectDescc:"hello"
            }
        }
        Component{
            id:project4
            ProjectItem{
                projectItemSrc: "assets/elab_pre.png"
                projectItemName: "ҽLAB : Remote access to HW testing Boards"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "IoT"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2021-PRESENT"
                projectImages: ["assets/elab_pre.png","assets/demoWS.png","assets/casa_smart.png"]
                projectDescc:"hello"
            }
        }
        Component{
            id:project5
            ProjectItem{
                projectItemSrc: "assets/elab_pre.png"
                projectItemName: "ҽLAB : Remote access to HW testing Boards"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "IoT"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2021-PRESENT"
                projectImages: ["assets/elab_pre.png","assets/demoWS.png","assets/casa_smart.png"]
                projectDescc:"hello"
            }
        }
        Component{
            id:project6
            ProjectItem{
                projectItemSrc: "assets/elab_pre.png"
                projectItemName: "ҽLAB : Remote access to HW testing Boards"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "IoT"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2021-PRESENT"
                projectImages: ["assets/elab_pre.png","assets/demoWS.png","assets/casa_smart.png"]
                projectDescc:"hello"
            }
        }

    }

}
