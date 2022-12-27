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
            articleWhere: "FST"
            articleDate: "2021-2023"
            articleDesc: "Currently in engineering studies in embedded systems at the Faculty of Sciences of Tunis."
        }
        ArticleElement {
            y: 226
            articleWhere: "FST"
            articleDate: "2021-2023"
            articleDesc: "Currently in engineering studies in embedded systems at the Faculty of Sciences of Tunis."
        }
        ArticleElement {
            y: 312
            articleWhere: "FST"
            articleDate: "2021-2023"
            articleDesc: "Currently in engineering studies in embedded systems at the Faculty of Sciences of Tunis."
        }
    }
}
