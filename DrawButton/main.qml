import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    // Rectangle 加上半径后，位置无法随窗口变化而改变
    // 故有以下 6 行
    onWidthChanged: {
        rect.x = this.width / 2 - rect.width / 2
    }
    onHeightChanged: {
        rect.y = this.height / 2 - rect.height / 2
    }

    Rectangle {
        id: rect
        width: 52
        height: 30
        radius: 6
        x: root.width / 2 - this.width / 2
        y: root.height / 2 - this.height / 2

        color: "#ea7025"
        // Qt.lighter（color）来指定了基于填充的边界高亮
        border.color: Qt.lighter(this.color)

        MouseArea {
            width: parent.width
            height: parent.height

            onClicked: {
                parent.color = "#ea7025"
                console.log("点击后复位")
                parent.x = parent.x - 1
                parent.y = parent.y - 1
            }
            onPressed: {
                parent.color = "#dd2020"
                console.log("按下后偏移1")
                parent.x = parent.x + 1
                parent.y = parent.y + 1
            }
        }
    }

    Column {

    }
}
//DarkSquare {

//}
