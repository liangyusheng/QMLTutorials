import QtQuick 2.0

Rectangle {
    id: root
    width: 120; height: 30

    ListView {
        model: 88
        clip: true
        anchors.fill: root
        anchors.margins: 25
        spacing: 3

        delegate: numberDelegate
        // 设置为水平方向
        orientation: ListView.Horizontal
        /*
         * 水平链表视图默认的元素顺序方向是由左到右。
         * 可以通过设置 layoutDirection 属性来控制元素顺序方向,
         * 它可以设置为 Qt.LeftToRight 或者 Qt.RightToLeft。
         */
        // 将数字设置成从右到左
        layoutDirection: Qt.RightToLeft
    }

    Component {
        id: numberDelegate

        Rectangle {
            width: 120; height: 30
            color: 'orange'
            radius: 3

            Text {
                anchors.centerIn: parent
                text: index + 1
                font.pixelSize: 20
                color: 'blue'
            }
        }
    }
}
