import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Item {
    width: 995
    height: 642
    id: projectsgrid
    y: 78
    ScrollView {

        id: scroller
        anchors.horizontalCenter: projectsgrid.horizontalCenter
        anchors.verticalCenter: projectsgrid.verticalCenter
        anchors.top: projectsgrid.top
        clip: true
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff
        GridLayout {
            id: rowLayout
            columnSpacing: 15
            rowSpacing: 15
            columns: 2
            rows: 3
            ProjectGrid {
                projectName: "ҽLAB : Remote access to HW testing Boards"
                projectDesc: "Our project makes life easier with STM32 boards."
                projectCategory: "Iot"
                projectDate: "2022-03-01"
                projectSRC: "assets/elab_pre.png"
            }
            ProjectGrid {
                projectName: "Project on computer vision and AI/ML"
                projectDesc: " Project for learning purpose on computer vision and AI/ML"
                projectCategory: "Computer Vision"
                projectDate: "2022-10-01"
                projectSRC: "assets/machine-learning.jpg"
            }
            ProjectGrid {
                projectName: "TakeNote"
                projectDesc: "You can create a note that can be saved to a local database at your system for later use"
                projectCategory: "Python"
                projectDate: "2021-07-11"
                projectSRC: "assets/s_login.png"
            }
            ProjectGrid {
                projectName: "Chat Application with Django Channels"
                projectDesc: "Think about some of the apps. We can create chat rooms, multiplayer games and collaborative applications that allow users to communicate in real time"
                projectCategory: "Web Development"
                projectDate: "2021-11-26"
                projectSRC: "assets/demoWS.png"
            }
            ProjectGrid {
                projectName: "Smart home automation"
                projectDesc: "Smart home automation” refers to the automatic and electronic control of household features, activity, and appliances. In simple terms, it means you can easily control the utilities"
                projectCategory: "Iot"
                projectDate: "2022-03-01"
                projectSRC: "assets/casa_smart.png"
            }
            ProjectGrid {
                projectName: "Self driving car"
                projectDesc: "Remotely control a 4 dc motors robot via an Android app and a camera based on OpenCV"
                projectCategory: "Iot"
                projectDate: "Present"
                projectSRC: "assets/elab_pre.png"
            }
        }
    }
}
