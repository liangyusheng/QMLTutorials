import QtQuick 2.12
import QtQuick 2.0
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1080
    height: 880
    title: qsTr("Rocket2")

    Rocket {
        width: 50
        height: 50

        x: parent.width / 2 - this.width / 2
    }
}
