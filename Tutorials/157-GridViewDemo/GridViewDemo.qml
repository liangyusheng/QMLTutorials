import QtQuick 2.0

Rectangle {
    width: 640; height: 480
    color: 'white'

    GridView {
        anchors.fill: parent
        anchors.margins: 20
        clip: true
        model: 108
        cellWidth: 65; cellHeight: 65

        delegate: numberDelegate
    }

    Component {
        id: numberDelegate

        Rectangle {
            id: rect
            width: 60; height: 60
            color: "lightGreen"
            radius: 3

            Text {
                anchors.centerIn: parent
                font.pixelSize: 20
                text: index + 1
            }

            // 缩小
            NumberAnimation {
                id: scaleAnimZoomOut
                target: rect
                properties: 'scale'
                from: 1
                to: 0.7
                duration: 350
                loops: 1
            }
            // 放大
            NumberAnimation {
                id: scalAnimZoom
                target: rect
                properties: 'scale'
                from: 0.7
                to: 1
                duration: 350
                loops: 1
            }

            // 颜色渐变 -> 深色
            ColorAnimation {
                id: toDrakColor
                target: rect
                properties: 'color'
                from: "lightGreen"
                to: "green"
                duration: 350
                loops: 1
            }
            // 颜色渐变 -> 浅色
            ColorAnimation {
                id: toLightColor
                target: rect
                properties: 'color'
                from: "green"
                to: "lightGreen"
                duration: 350
                loops: 1
            }

            MouseArea {
                anchors.fill: rect
                onPressed: {
                    // rect.scale = 0.7
                    scaleAnimZoomOut.restart()
                    // rect.color = "green"
                    toDrakColor.restart()
                }
                onReleased: {
                    scalAnimZoom.restart()
                    // rect.color = "lightGreen"
                    toLightColor.restart()
                }
            }
        }
    }
}
