import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.3
Flickable {
    x: 0
    y: 0
    contentWidth: 995
    property int skillH: 30
    boundsBehavior: Flickable.StopAtBounds
    contentHeight: skillsok.height + about_me.height + 2 * labeldoing.height
                   + servicessection.height
    width: 995
    height: 642
    Text {

        y: 78
        x: 10
        width: 985
        height: 146
        id: about_me
        font.pixelSize: 20
        color: "#FFFFFF"
        wrapMode: Text.Wrap

        text: qsTr("Currently studying embedded systems engineering at the Faculty of Sciences de Tunis, I am looking for a company that could welcome me in the as part of a 4-6 months approved internship from the beginning of January or February 2023.")
    }

    Rectangle {
        y: 188
        x: 0
        width: 995
        height: 81
        color: "transparent"
        id: labeldoing
        Text {
            x: 15
            y: 0
            width: 980
            height: 32
            id: whatimDo
            font.pixelSize: 20
            color: "#FFFFFF"
            text: qsTr("What I'm Doing ?")
            wrapMode: Text.Wrap
        }
    }
    Rectangle {
        x: 0
        y: 240
        width: 995
        height: 411
        color: "transparent"
        id: servicessection
        Service {
            x: 50
            y: 25
            id: service1
            iconSrc: "assets/14_79.png"
            serviceLabel: "Build IoT Application"
            serviceDesc: "I can create an ioT application using many sensors like (DHT11,Gas,Mouvemennt,Vitesse) with many development boars like STM32,RaspberryPi,.."
        }

        Service {
            x: 521
            y: 25
            id: service2
            iconSrc: "assets/21_525.png"
            serviceLabel: "Web development"
            serviceDesc: "I can design and create websites also i am responsible for both how the site looks and how it functions. I will evaluate a site to make sure it meets quality standards before it is released."
        }
        Service {
            x: 50
            y: 187
            id: service3

            iconSrc: "assets/21_537.png"
            serviceLabel: "Mobile app development"
            serviceDesc: "I can design and code software for mobile devices like cell phones and tablets. Also a can create a determined by the needs of a specific clients."
        }
        Service {
            x: 521
            y: 188
            id: service4

            iconSrc: "assets/21_507.png"
            serviceLabel: "Design"
            serviceDesc: "The most modern and high-quality design made at a professional level."
        }
    }

    Rectangle {
        y: 188
        x: 0
        width: 995
        anchors.top: servicessection.bottom
        color: "transparent"
        id: labelskills
        Text {
            x: 15
            y: -48
            width: 980
            height: 32
            id: myskillstxt
            font.pixelSize: 20
            color: "#FFFFFF"
            text: qsTr("My skills")
            wrapMode: Text.Wrap
        }
    }
    Rectangle{
        radius: 16
        clip: true
        x: 50
        width: 901
        height:skillrep.count*(skillH+ 5+10)
        id:skillsok
        anchors.top: labelskills.bottom
        color: "#D6D6D6"

        Rectangle{
            anchors.fill:skillsok
            radius: 16
            color: Constants.backgroundColor
            anchors.margins: 0.5

            Repeater{
                id:skillrep
                model: ListModel {
                    ListElement { mpercent: "90 %"; mtextLabel: "Django,Django-Channels,RestFramework" }
                    ListElement { mpercent: "85 %"; mtextLabel: "OpenCV,TensorFlow" }
                    ListElement { mpercent: "80 %"; mtextLabel: "Python3,C/C++,JavaScript" }
                    ListElement { mpercent: "75 %"; mtextLabel: "UART,SPI,I2C,CAN" }
                    ListElement { mpercent: "70 %"; mtextLabel: "RasperryPi,Ardino,STM32" }
                    ListElement { mpercent: "60 %"; mtextLabel: "Html,bootstrap,CSS/Sass" }

                }

                delegate: Progressbar{
                    required property string mpercent
                    required property string mtextLabel
                    required property int index
                    x:skillH
                    y:skillH*(index+1)
                    anchors.topMargin: 20
                    percent: mpercent
                    textLabel: mtextLabel
                }
            }
        }



    }
}
