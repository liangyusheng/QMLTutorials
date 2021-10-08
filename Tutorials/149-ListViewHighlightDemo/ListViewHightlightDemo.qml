import QtQuick 2.0

Rectangle {
    id: root
    property int w: 120
    property int h: 30

    width: w; height: h
    color: 'white'

    ListView {
        anchors.fill: parent
        anchors.margins: 25
        model: 88
        clip: true
        spacing: 3

        delegate: numberDelegate
        highlight: highlightComponent
        // 重要！ 打开聚焦
        focus: true
    }

    Component {
        id: numberDelegate

        // 这里不可以用 Rectangle，否则颜色会被覆盖而无法看到高亮
        Item {
            id: rect
            anchors.fill: root
            width: w; height: h

            Text {
                id: txt
                text: index + 1
                anchors.centerIn: parent
                font.pixelSize: 17
                color: 'blue'
            }
        }
    }

    Component {
        id: highlightComponent

        Rectangle {
            id: hl
            width: 200
            radius: 3
            color: Qt.lighter('gray')
        }
    }
}
