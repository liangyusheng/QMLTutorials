import QtQuick 2.0

Item {
    id: root
    width: 200

    // 列
    Column {
        spacing: 1

        // 重复器
        Repeater {
            // 重复 5 次
            model: 5

            // 矩形
            Rectangle {
                width: root.width; height: 60
                radius: 4
                color: Qt.lighter('blue')
                // 显示文本
                Text {
                    anchors.centerIn: parent
                    text: index
                }
            }
        }
        Column {
            spacing: 1

            // JS 重复器
            // modelData 获取数据
            Repeater {
                id: repeater
                model: ["Rect1", "AAA", "BBB", "CCC", "DDD"]

                Rectangle {
                    width: root.width; height: 60
                    radius: 4
                    color: Qt.lighter('red')
                    Text {
                        anchors.centerIn: parent
                        // !!
                        text: modelData
                    }
                }
            }
        }
    }
}
