import QtQuick 2.0

Item {
    id: root
    width: 300; height: 300

    Rectangle {
        id: rect
        anchors.fill: root
        color: 'orange'

        // 在 5s 之类颜色从 'orange' 渐变到 'blue'
        ColorAnimation on color {
            // from: "orange"
            to: "blue"
            duration: 5000
            loops: Animation.Infinite
        }
    }
}
