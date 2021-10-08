import QtQuick 2.0

Rectangle {
    id: root
    property int w: 120
    property int h: 30
    // color: 'white'

    width: w; height: h

    ListView {
        anchors.fill: parent
        anchors.margins: 5

        // 80 个元素
        model: 80
        // 开启裁剪
        clip: true

        // 添加代理
        delegate: numberComponent
        spacing: 3
    }

    // 代理
    Component {
        id: numberComponent

        Rectangle {
            id: rect
            width: w; height: h
            color: 'orange'
            radius: 3

            Text {
                anchors.centerIn: parent
                font.pixelSize: 15
                text: index + 1
                color: 'blue'
            }
        }
    }
}
