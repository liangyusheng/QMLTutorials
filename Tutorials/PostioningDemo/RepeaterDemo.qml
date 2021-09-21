import QtQuick 2.0

/*
 * 通常Repeater(重复元素)与定位器一起使用。
 * 它的工作方式就像 for 循环与迭代器的模式一样。
 */
Item {
    id: root

    // 栅格布局
    Grid {
        anchors.fill: root
        rows: 5; columns: 5

        // 重复元素 25
        Repeater {
            model: 25

            // 绘制矩形
            Rectangle {
                color: 'orange'
                width: 48; height: 48
                border.width: 2
                border.color: Qt.lighter('blue')

                // 添加矩形文本
                Text {
                    color: 'cyan'
                    anchors.centerIn: parent
                    text: index + 1
                }
            }
        }
    }
}
