import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("State 元素")

    State1 {
        x: parent.width / 2 - this.width / 2
        y: parent.height / 2 - this.height / 2
    }
}
