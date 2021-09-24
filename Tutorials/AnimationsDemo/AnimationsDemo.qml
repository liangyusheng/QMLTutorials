import QtQuick 2.0

Item {
    id: root

    Image {
        id: rocket
        source: "qrc:/rocket.png"
        width: 300; height: 171

        // 3000ms x 坐标从 0～400
        NumberAnimation on x {
            to: 400
            duration: 3000
            loops: Animation.Infinite
        }

        // 同上
        NumberAnimation on y {
            to: 350
            duration: 3000
            loops: Animation.Infinite
        }

        // 3000ms 图像缩放至 0.2
        NumberAnimation on scale {
            to: 0.2
            duration: 3000
            loops: Animation.Infinite
        }
    }
}
