import QtQuick 2.0

// FocusScope 焦点区域
FocusScope {
    property alias text: input.text
    property alias input: input
    width: 128; height: 128;

    Rectangle {
        anchors.fill: parent
        color: "lightsteelblue"
        border.color: "gray"
        radius: 3
    }

    TextEdit {
        id: input
        x: 8; y: 8
        anchors.fill: parent
        anchors.margins: 6
    }
}
