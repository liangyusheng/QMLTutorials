import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Status Demo2")

    StatusDemo2 {
        anchors.fill: parent
    }
}
