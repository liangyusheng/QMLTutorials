import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    title: qsTr("动画")
    minimumWidth: 800
    minimumHeight: 800
    maximumWidth: 800
    maximumHeight: 800

    MyAnimation {
        width: parent.width
        height: parent.height
    }
}
