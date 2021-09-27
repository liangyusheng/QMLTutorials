import QtQuick 2.0

Item {
    id: root

    // 绘制背景 - 足球场
    Background {
        id: bk
        anchors.fill: root
    }

    // 设置足球初始位置
    Football {
        id: football
        x: 3; y: bk.height - football.height - 30
    }

    SequentialAnimation {
        id: animRoot
        // 设置动画
        // 先执行并行动画
        ParallelAnimation {
            id: parlAnimUp
            // 足球向上运动
            NumberAnimation {
                target: football
                properties: 'y'
                to: root.height * 0.1
                duration: 3000
            }
            // 足球同时向右移动
            NumberAnimation {
                target: football
                properties: 'x'
                to: root.width * 0.4
                duration: 3000
            }
            // 旋转足球
            RotationAnimation {
                target: football
                from: 0; to: 360
                duration: 1000
                loops: 3
            }
            // 足球变小
            NumberAnimation {
                target: football
                properties: 'scale'
                to: 0.5
                duration: 3000
            }
        }
        // 当球处于最高位置时，出发第二个动画 - 落下
        ParallelAnimation {
            id: parlAnimDown
            // 足球向下运动
            NumberAnimation {
                target: football
                properties: 'y'
                to: root.height * 0.65
                duration: 3000
            }
            // 足球同时向右移动
            NumberAnimation {
                target: football
                properties: 'x'
                to: root.width * 0.9
                duration: 3000
            }
            // 旋转足球
            RotationAnimation {
                target: football
                from: 0; to: 360
                duration: 1000
                loops: 3
            }
            // 足球变小
            NumberAnimation {
                target: football
                properties: 'scale'
                to: 0.3
                duration: 3000
            }
        }
    }

    MouseArea {
        anchors.fill: football
        onClicked: {
            animRoot.restart()
        }
    }
}
