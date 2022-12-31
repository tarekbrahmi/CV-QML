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
                    anchors.bottomMargin: 49
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
                        projectSRC.source: "assets/s_splash.png"
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
                        projectSRC.source: "assets/robot.png"
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
                labelCategory2txtvalue: "2022-05-01"
                projectImages: ["assets/elab_pre.png","assets/elab_login.png","assets/elab_boards.png"]
                projectDescc:"Our project makes life easier with STM32 boards. It allows us to control the remote STM32 cards . Remote access to the STM32 microcontroller will solve a lot of problems for those who do not have the purchasing power of this microcontroller especially students. Control and run embedded applications with the various STM32 cards at distance becomes possible with our “ҽ-LAB” platform. Our platform will ensure proper use of STM32 cards for students and teachers and creates an interactive online domain between them."

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
                projectImages: ["assets/machine-learning.jpg","assets/opencv_vehicle.png","assets/OCR.png"]
                projectDescc:" Computer vision is about helping machines interpret images and videos. It’s the science of interacting with an object through a digital medium and using sensors to analyze and understand what it sees. It’s a broad discipline that’s useful for machine translation, pattern recognition, robotic positioning, 3D reconstruction, driverless cars, and much more.The field of computer vision keeps evolving and becoming more impactful thanks to constant technological innovations. As time goes by, it will offer increasingly powerful tools for researchers, businesses, and eventually consumers."
            }
        }
        Component{
            id:project5
            ProjectItem{
                projectItemSrc: "assets/casa_smart.png"
                projectItemName: "Smart home automation"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "IoT"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2022-05-01"
                projectImages: ["assets/casa_smart.png","assets/casa_dash.png"]
                projectDescc:" Our project consists in first collecting data, the Temperature and Humidity values ​​via the DHT11 sensor.* The DHT11 sensor detects the Temperature and Humidity of the environment.* The STM32 board is programmed to obtain the data from these sensors. In parallel with this work, the values ​​of these sensors are displayed in a web platform ('SMART CASA').Next, we add a security system based on an algorithm of nfacial recognition using OpenCV and implement it in our web platform. 1. 'Web server' to view a temperature graph in real time. 2. 'OpenCV' provides security and facial recognition help."
            }
        }
        Component{
            id:project3
            ProjectItem{
                projectItemSrc: "assets/s_splash.png"
                projectItemName: "TakeNote"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "Python"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2021-07-14"
                projectImages: ["assets/s_login.png","assets/s_addnote.png","assets/s_welcome.png","assets/s_splash.png","assets/s_mynotes.png"]
                projectDescc:"I create new project that makes your life easier especially your coding experience. Imagine you find a new piece of code or a new command that can come in handy anytime even if you don't have internet access .. you can create a note that can be saved to a local database at your system for later use "
            }
        }
        Component{
            id:project4
            ProjectItem{
                projectItemSrc: "assets/demoWS.png"
                projectItemName: "Chat Application with Django Channels"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "Web development"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "2021-12-05"
                projectImages: ["assets/demoWS.png"]
                projectDescc:"Channels allow you to use WebSockets and other non-HTTP protocols on your Django site. For example, you can use WebSockets to allow a page on your site to immediately receive updates from your Django server without using the long HTTP poll or other expensive techniques."
            }
        }
        Component{
            id:project6
            ProjectItem{
                projectItemSrc: "assets/robot.png"
                projectItemName: "Self driving car"

                labelCategory1iconSrc: "assets/catego.png"
                labelCategory1txtlabel: "CATEGORY"
                labelCategory1txtvalue: "IoT"

                labelCategory2iconSrc: "assets/date.png"
                labelCategory2txtlabel: "DATE"
                labelCategory2txtvalue: "PRESENT"
                projectImages: ["assets/robot.png"]
                projectDescc:"Develops a prototype self-driving car. Remote control with mobile app, obstacle detection.Remotely control a 4 dc motors robot via an Android app and a camera based on OpenCV"
            }
        }

    }

}
