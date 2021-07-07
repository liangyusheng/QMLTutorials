import QtQuick 2.0

Item {
    id: root
    property int animationDuration: 8000

    Image {
        id: ball
        x: root.x
        y: root.y
        width: root.width
        height: root.height
        source: "qrc:/football.png"
        anchors.fill: parent

//        NumberAnimation {
//            target: ball
//            property: "x"
//            to: 400
//            duration: 200
//            easing.type: Easing.InOutQuad
//        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            console.log("1111111")
            animY.restart()
            animX.restart()
            animRotation.restart()
        }
    }
    // y 方向动画
    SequentialAnimation {
        id: animY
        NumberAnimation {
            target: root
            properties: "y"
            to: 120
            duration: root.animationDuration * 0.6
        }

        NumberAnimation {
            target: root
            easing.type: Easing.InQuint
            properties: "y"
            to: 240
            duration: root.animationDuration * 0.6
        }
    }
    // x 方向动画
    ParallelAnimation {
        id: animX
        NumberAnimation {
            target: root
            properties: "x"
            to: 400
            duration: root.animationDuration * 0.6
        }
    }
    // 旋转
    RotationAnimation {
        id: animRotation
        target: root
        properties: "rotation"
        to: 360
        duration: root.animationDuration * 0.6
    }
}
