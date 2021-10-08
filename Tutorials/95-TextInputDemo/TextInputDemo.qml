import QtQuick 2.0

Item {
    width: 120; height: 20

    TextInput {
        anchors.fill: parent

        id: input
        x: 5; y: 5
        // 提升为焦点
        focus: true
        text: 'Enter text here!'
        // 文本颜色
        color: 'red'
    }
}
