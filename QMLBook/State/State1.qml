import QtQuick 2.0

Item {
    id: root
    width: 100
    height: 250

    Rectangle {
        id: light1
        x: 25; y: 15
        width: 100; height: width
        radius: width/2
        color: "black"
    }

    Rectangle {
        id: light2
        x: 25; y: 135
        width: 100; height: width
        radius: width/2
        color: "black"
    }

    // 设置状态
    states: [
        State {
            name: "stop"
            PropertyChanges {
                target: light1
                color: "red"
            }
            PropertyChanges {
                target: light2
                color: "black"
            }
        },
        State {
            name: "go"
            PropertyChanges {
                target: light1
                color: "black"
            }
            PropertyChanges {
                target: light2
                color: "green"
            }
        }
    ]

    MouseArea {
        anchors.fill: root
        onClicked: {
            root.state = (parent.state == "stop" ? "go" : "stop")
        }
    }
    // 默认：黑黑
    // 点击1：红黑
    // 点击2：黑绿
    // 点击3：红黑
    // 点击4：黑绿
    //！ 过渡（Transitions）
    // 有问题，看看即可
    transitions: [
        Transition {
            from: "stop"
            to: "go"

            ColorAnimation {
                target: light1
                properties: "color"
                from: "black"
                to: "red"
                duration: 2000
            }
            ColorAnimation {
                target: light2
                properties: "color"
                from: "black"
                to: "green"
                duration: 2000
            }
        },
        Transition {
            from: "go"
            to: "stop"

            ColorAnimation {
                target: light1
                properties: "color"
                from: "red"
                to: "black"
                duration: 2000
            }
            ColorAnimation {
                target: light2
                properties: "color"
                from: "black"
                to: "green"
                duration: 2000
            }
        }
    ]
}
