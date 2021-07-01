import QtQuick 2.0

Rectangle {

    property alias text: input.text
    property alias focused: input.focus

    width: 222; height: 20
    color: "lightsteelblue"
    border.color: Qt.lighter("gray")
    radius: 3

    TextInput {
        id: input
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        // focus: true
        text: "TextEdit"
        font.pixelSize: 18
    }
}


