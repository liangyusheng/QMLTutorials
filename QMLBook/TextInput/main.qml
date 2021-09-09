import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("TextInput")

    // KeyNavigation 按键向导
    // KeyNavigation.tab: id
    MyTextEdit {
        id: i1
        x: tip.x; y: tip.y + 33
        focused: true
        text: "Input 1"
    }

    MyTextEdit {
        id: i2
        x: tip.x; y: tip.y + 66
        // focus: true
        text: "Input 2"
    }

    Text {
        id: tip
        text: qsTr("自定义文本编辑框")
        color: "red"
        font.pixelSize: 18
        anchors.centerIn: parent
    }
}
