import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Repater Demo")

    RepeaterDemo {
        x: parent.width / 2 - /* (this.) */ width / 2
    }
}
