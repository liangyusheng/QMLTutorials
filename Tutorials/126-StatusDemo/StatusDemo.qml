import QtQuick 2.0

Item {
    id: light

    // 红灯
    Rectangle {
        id: redLight
        width: 100; height: 100
        radius: 50
        color: 'red'
        x: 10; y: 10
    }

    // 绿灯
    Rectangle {
        id: greenLight
        width: 100; height: 100
        radius: 50
        color: 'green'
        x: 10; y: 120
    }

    // 设定状态
    states: [
        // 绿灯行
        State {
            name: "greenLightGo"
            // 当红灯按下，变为绿灯
            when: toGo.pressed
            PropertyChanges {
                target: redLight
                color: 'green'
            }
        },
        // 红灯停
        State {
            name: "RedLightstop"
            // 当绿灯按下，变为红灯
            when: toStop.pressed
            PropertyChanges {
                target: greenLight
                color: 'red'
            }
        }
    ]

    MouseArea {
        id: toGo
        anchors.fill: redLight
    }
    MouseArea {
        id: toStop
        anchors.fill: greenLight
    }
}
