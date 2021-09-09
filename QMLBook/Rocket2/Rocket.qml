import QtQuick 2.0

Item {
    id: root
    signal clicked

    onClicked: {
        y = 800
        msg.text = qsTr("点击了")
    }

    Image {
        id: img
        source: "qrc:/rocket.png"

        width: parent.width
        height: parent.height
    }

    Text {
        id: msg
        text: qsTr("点击火箭")
        x: img.x + 7
        y: img.height + 10
        color: "blue"
    }

    Behavior on y {
        NumberAnimation {
            easing.type: Easing.InElastic
            duration: 4000
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}
