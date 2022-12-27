import QtQuick 2.12
import MyCVTemplate 1.0

Item {
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
        ArticleElement {
            y: 226
            articleWhere: "Full Stack Developer Intern - CONFLEDIS SAS"
            articleDate: "08/2021 - 02/2022"
            articleDesc: "Achievements/Tasks
FrontEnd(Reactjs, Ionic5, Html, Bootstrap..)
BackEnd(Django, Cookiecutter, Python, Docker)
Déploiement(AWS, Digitalocean, Gunicorn, Ngnix..)"
        }
    }
}
