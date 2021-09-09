import QtQuick 2.0

Rectangle {
    width: 100; height: 100
    color: "green"

    Text {
        id: text
        text: qsTr("按下 ↑ ↓ ← → + - 键试试 ^_^")
        color: "red"
        font.pixelSize: 18
    }
}
