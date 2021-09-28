import QtQuick 2.0

Item {
    id: light

    // 红灯
    Rectangle {
        id: redLight
        width: 100; height: 100
        radius: 50
        x: 10; y: 10
        color: 'red'
    }
    // 绿灯
    Rectangle {
        id: greenLight
        width: 100; height: 100
        radius: 50
        x: 10; y: 120
        color: 'green'
    }

    // 红变绿动画
    ColorAnimation {
        id: toGreen
        target: redLight
        properties: 'color'
        to: "green"
        duration: 2000
    }
    // 点击红灯 -> 绿灯
    MouseArea {
        anchors.fill: redLight
        onClicked: {
            toGreen.restart()
        }
    }

    // 绿变红动画
    ColorAnimation {
        id: toRed
        target: greenLight
        properties: 'color'
        to: "red"
        duration: 2000
    }
    // 点击绿灯 -> 红灯
    MouseArea {
        anchors.fill: greenLight
        onClicked: {
            toRed.restart()
        }
    }
}
