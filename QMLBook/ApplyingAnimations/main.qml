import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    minimumWidth: 1000
    minimumHeight: 800
    maximumWidth: 1000
    maximumHeight: 800

    title: qsTr("应用动画")

    ClickableImageV2 {
        id: animation1
        x: parent.width / 2 - this.width / 2;
        y: parent.height - this.height

    }
}
