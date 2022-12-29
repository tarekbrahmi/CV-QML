import QtQuick 2.12
import MyCVTemplate 1.0

Item {
    width: 995
    height: 642
    Rectangle {
        id: eduwrap
        x: 30
        y: 30
        color: "transparent"
        CustomLabel1 {
            y: 66
            iconSrc: "assets/edu.png"
            textArticle: "Education"
        }

        ArticleElement {
            y: 144
            articleWhere: "Electronic Engineering and Embedded Systems"
            articleDate: "2021-present"
            articleDesc: "Currently in engineering studies in embedded systems at the Faculty of Sciences of Tunis."
        }
        ArticleElement {
            y: 226
            articleWhere: "PREPARATORY CYCLE: MATHEMATICS - PHYSICAL"
            articleDate: "2017-2020"
            articleDesc: "PREPARATORY CYCLE: MATHEMATICS - PHYSICAL at Higher Institute of Applied Sciences and Technology of Mahdia."
        }

    }
}
