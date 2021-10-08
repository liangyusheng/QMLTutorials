import QtQuick 2.0

/*
 * Row(行)元素将它的子对象从左到右,或者从右到左依次排列,
 * 排列方式取决于layoutDirection属性。
 * spacing属性用来设置每个元素之间的间隔大小。
 */

Item {
    id: root

    // 行
    Row {
        id: row
        anchors.fill: root
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
