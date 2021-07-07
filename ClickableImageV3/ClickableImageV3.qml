import QtQuick 2.0

Item {
    id: root

    width: container.childrenRect.width
    height: container.childrenRect.height

    property alias text: label.text
    property alias source: img.source

    property alias img_width: img.width
    property alias img_height: img.height

    property int duration: 3000

    signal clicked

    onClicked: {
        this.text = "点击了，动画开始运行！"
        // 点击后逆时针旋转
        anim.to = 360
        anim.restart()
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
            color: "#a1a1a1"
            text: "点击图片，开始动画"
        }
    }

    RotationAnimation on rotation {
        id: anim
        // to: 360
        duration: root.duration
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}
