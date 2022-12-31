import QtQuick 2.12
import MyCVTemplate 1.0
import QtQuick.Controls 2.3

Flickable {
    x: 0
    y: 0
    contentWidth: 995
    boundsBehavior: Flickable.StopAtBounds
//    contentHeight: expwrap.height + 2*80 + commentsSection.height
    contentHeight: 742
    property int commentW: 426
    property int i: 0
    width: 995
    height: 642

    Rectangle {
        id: expwrap
        x: 30
        y: 30
        color: "transparent"
        CustomLabel1 {
            y: 66
            iconSrc: "assets/exper.png"
            textArticle: "Experience"
        }

        ArticleElement {
            y: 144
            articleWhere: "Front End Developer - Digital Trading LLC"
            articleDate: "08/2022 - 09/2022"
            articleDesc: "Achievements/Tasks
ReactJS, Bootstrap, GraphQl, Redux.
UI/UX design.
Intégrer moyen de paiement(Stripe, Konnect..)
Git, Github, Jira, Agile."
        }
        VirticalDivider {
            x: 24
            y: 236
        }
        ArticleElement {
            y: 296
            articleWhere: "Full Stack Developer Intern - CONFLEDIS SAS"
            articleDate: "08/2021 - 02/2022"
            articleDesc: "Achievements/Tasks
FrontEnd(Reactjs, Ionic5, Html, Bootstrap..)
BackEnd(Django, Cookiecutter, Python, Docker)
Déploiement(AWS, Digitalocean, Gunicorn, Ngnix..)"
        }
    }
    Timer {
        interval: 2300; running: true; repeat: true
        onTriggered: {
            var allElemnts=commentView.count
            commentView.currentIndex = i%allElemnts
            i++
        }
    }
    Rectangle {
        y: 530
        x: 0
        width: 995
        color: "transparent"
        id: labelTestimonials
        Text {
            x: 15
            y: -48
            width: 980
            height: 32
            id: myTestimonials
            font.pixelSize: 20
            color: "#FFFFFF"
            text: qsTr("Testimonials")
            wrapMode: Text.Wrap
        }
    }
    Rectangle {
        id: commentsSection
        color: "transparent"
        y: 540
        SwipeView {
            id: commentView
            x: 64
            y: 0
            enabled: true
            currentIndex: 0
            clip: true
            height: 210
            Row {
                height: 206.89
                width: 881.5
                spacing: 40
                Repeater {

                    model: ListModel {
                        ListElement {
                            mauthName: "Daniel Lewis"
                            mcommentBody: "Thanks to the skill of Ricardo, we have a design that we can be proud of. We are impressed with..."
                            mauthImage: "assets/avatar-1.png"
                        }
                        ListElement {
                            mauthName: "Jessica Miller"
                            mcommentBody: "Ricardo was hired to create a corporate identity. We were very pleased with the work done..."
                            mauthImage: "assets/avatar-2.png"
                        }
                    }
                    delegate: Comment {
                        y: 40

                        required property string mauthName
                        required property string mauthImage
                        required property string mcommentBody
                        required property int index
                        x: commentW * index
                        commentAuthImage:mauthImage
                        commentBody:mcommentBody
                        commentAuth:mauthName
                    }
                }
            }
            Row {
                height: 206.89
                width: 881.5
                spacing: 40
                Repeater {

                    model: ListModel {
                        ListElement {
                            mauthName: "USER 3"
                            mcommentBody: "good player"
                            mauthImage: "assets/avatar-3.png"
                        }
                        ListElement {
                            mauthName: "USER 4"
                            mcommentBody: "good good"
                            mauthImage: "assets/avatar-4.png"
                        }
                    }
                    delegate: Comment {
                        y: 40

                        required property string mauthName
                        required property string mauthImage
                        required property string mcommentBody
                        required property int index
                        x: commentW * index
                        commentAuthImage:mauthImage
                        commentBody:mcommentBody
                        commentAuth:mauthName
                    }
                }
            }

        }
    }
}
