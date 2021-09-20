import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Demo")

    // 自定义 fontSize 属性
    property int fontSize: 28

    Text {
        id: label
        anchors.centerIn: parent
        text: "Hello QML!"
        color: '#123456'
        font.family: "Ubuntu"
        font.pixelSize: fontSize
    }

    MouseArea {
        anchors.fill: label
        // 鼠标点击后字体自增 5
        onClicked: {
            fontSize = fontSize + 5
        }
    }
}
