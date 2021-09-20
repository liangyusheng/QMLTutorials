import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Mouse Area Demo")

    Rectangle {
        id: rect1
        width: 200; height: 200
        x: 20; y: 20
        color: 'orange'
    }

    Rectangle {
        id: rect2
        width: 200; height: 200
        x: 240; y: 20
        color: "orange"
    }
    MouseArea {
        anchors.fill: rect2
        onClicked: {
            rect2.color = "blue"
        }
    }
}
