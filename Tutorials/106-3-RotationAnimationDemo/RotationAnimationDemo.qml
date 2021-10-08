import QtQuick 2.0

Item {
    id: root
    width: 300; height: 300

    Rectangle {
        id: rect
        width: 300; height: 300
        anchors.fill: root
        color: 'orange'

        // 3s 旋转 360度
        // 无限循环
        RotationAnimation on rotation {
            from: 0
            to: 360
            duration: 3000
            loops: Animation.Infinite
        }
    }
}
