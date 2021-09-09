import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1080
    height: 800
    title: qsTr("ClickableImageV3")

    ClickableImageV3 {
        x: parent.width / 2 - this.width / 2
        y: parent.height / 2 - this.height / 2
    }
}
