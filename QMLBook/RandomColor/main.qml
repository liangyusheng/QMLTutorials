import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {

    // JS 函数
    function getRandomColor() {
        let r = Math.random(256)
        let g = Math.random(256)
        let b = Math.random(256)
        // console.log(r)
        return { red: r, green: g, blue: b }
    }

    visible: true
    width: 640
    height: 480
    title: qsTr("随机颜色")

    Button {
        id: btnChangeColor

        text: qsTr("改变颜色")
        // 设置位置，在窗口中间 1/3 处
        x: parent.width  / 2 - this.width  / 2
        y: parent.height / 3 - this.height / 3

        onClicked: {
            console.log("clicked")
            // 调用自己编写的 JS 随机函数
            let rgb = getRandomColor()
            rectShowColor.color = Qt.rgba(rgb.red, rgb.green, rgb.blue)
            // rectShowColor.color = Qt.rgba(randomColor().red, randomColor().green, randomColor().blue)
        }
    }

    Rectangle {
        id: rectShowColor

        width: 200
        height: 200

        // 放置在  button 中下方 20 像素处
        x: btnChangeColor.x - (this.width - btnChangeColor.width) / 2
        y: btnChangeColor.y + btnChangeColor.height + 20

        border.color: "red"
        //  按下按钮后，改变矩形内部颜色
        color: "blue"
    }
}
