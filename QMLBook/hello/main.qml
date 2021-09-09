import QtQuick 2.0
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 360 * 2
    height: 360 * 2

    MouseArea {
        anchors.fill: parent
        onClicked: { Qt.quit() }
    }

    Rectangle {
        width: 360
        height: 360
        color: "#c49595"
        anchors.centerIn: parent

        Text {
            id: label
            anchors.centerIn: parent
            text: qsTr("Hello, QML!\n你可以点击该区域")
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                label.text = qsTr("点击了")
                // Qt.quit();
            }
        }
    }
}
