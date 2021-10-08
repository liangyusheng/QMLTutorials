import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Key Demo")

    KeyDemo {
        id: key
        anchors.fill: parent
    }
}
