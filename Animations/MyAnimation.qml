import QtQuick 2.0

Image {
    source: "qrc:/sky.jpg"

    Image {
        source: "qrc:/rocket.png"
        width: 100; height: 100
        x: 0
        y: parent.height / 2

        // 从 x 的初始值移动到 750
        NumberAnimation on x {
            to: 750
            duration: 4000
            loops: Animation.Infinite
        }
        // 从初始角度开始旋转至 360°，并无限循环
        RotationAnimation on rotation {
            to: 360
            duration: 4000
            loops: Animation.Infinite
        }
        // 火箭消失
        RotationAnimation on scale {
            to: 0.1
            duration: 4000
            loops: Animation.Infinite
        }
    }
}
