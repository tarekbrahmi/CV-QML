import QtQuick 2.12
import MyCVTemplate 1.0

Item {
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
        Service {
            x: 50
            y: 25
            id: service1
            iconSrc: "assets/21_537.png"
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

            iconSrc: "assets/21_525.png"
            serviceLabel: "Web development"
            serviceDesc: "I can design and create websites also i am responsible for both how the site looks and how it functions. I will evaluate a site to make sure it meets quality standards before it is released."
        }
        Service {
            x: 521
            y: 188
            id: service4

            iconSrc: "assets/21_525.png"
            serviceLabel: "Web development"
            serviceDesc: "I can design and create websites also i am responsible for both how the site looks and how it functions. I will evaluate a site to make sure it meets quality standards before it is released."
        }
    }
}
