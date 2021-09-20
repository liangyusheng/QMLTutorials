import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Image Demo")

    Image {
        id: img
        // 也可以是一个网络链接
        source: "qrc:/linux.png"
        anchors.centerIn: parent
    }

    Image {
        id: img2
        // 也可以是一个网络链接
        source: "qrc:/linux.png"
        width: 200; height: 200
    }
}
