import QtQuick 2.0

Item {
    id: root

    width: container.childrenRect.width
    height: container.childrenRect.height
    property alias text: label.text
    property alias source: img.source

    signal clicked

    onClicked: {
        console.log("clicked!")
        this.text = "点击了，动画开始运行！"
        // 动画运行到 y = 100 时候停止
        y = 100
    }

    Column {
        id: container

        Image {
            id: img
            source: "qrc:/dog.png"
        }

        Text {
            id: label
            width: img.width
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            color: "#111111"
            text: "点击图片，开始动画"
        }
    }

    Behavior on y {
        // 该行使用工具完成
        NumberAnimation { easing.amplitude: 1.85; easing.type: Easing.InOutBounce; duration: 4000 }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }

}
