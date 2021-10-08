import QtQuick 2.0

/*
 * Column(列)元素将它的子对象通过顶部对⻬的列方式进行排列。
 * spacing 属性用来设置每个元素之间的间隔大小。
 */
Item {
    id: root

    // 列
    Column {
        id: column
        anchors.fill: root
        // 间隔 8
        spacing: 8

        Rectangle {
            id: redRect
            width: 48; height: 48
            color: 'red'
        }

        Rectangle {
            id: greenRect
            width: 48; height: 48
            color: 'green'
        }

        Rectangle {
            id: blueRect
            width: 48; height: 48
            color: 'blue'
        }
    }
}
