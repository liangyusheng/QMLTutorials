import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("足球动画")

    Background {
        width: parent.width
        height: parent.height
    }

    Football {
        width: 50
        height: 50
        x: 20
        y: parent.height - this.height - 10
    }
}
