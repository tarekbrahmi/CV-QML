import QtQuick 2.12
import MyCVTemplate 1.0

Rectangle {
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor
    id:recWrapper

    LeftSide {
        x: 0
        y: 0
        width: 275
        height: 708

    }
    RightSide {
        x: 294
        y: 0
        width: 995
        height: 708

    }
}
