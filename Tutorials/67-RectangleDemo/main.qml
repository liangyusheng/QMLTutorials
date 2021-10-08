import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Rectangle Demo")


    // 颜色的命名是来自 SVG 颜色的名称
    // 也可以使用其它的方法来指定颜色,
    // 比如 RGB 字符串('#FF4444'),或者一个颜色名字(例如'white')。
    Rectangle {
        id: rect1
        x: 12; y: 12
        width: 76; height: 96
        color: "lightsteelblue"
    }

    Rectangle {
        id: rect2
        x: 110; y: 12
        width: 76; height: 96
        color: 'orange'
        border.color: 'lightsteelblue'
        border.width: 4
        radius: 8
    }
}
