import QtQuick 2.0

Item {
    Rectangle {
        id: rect
        color: 'orange'
        width: 300; height: 300
        radius: 10
        anchors.centerIn: parent

        Text {
            text: qsTr("Click")
            font.pixelSize: 100
            anchors.centerIn: parent
            color: 'white'
        }
    }

    RotationAnimation {
        id: anim
        target: rect
        from: 0
        to:   360
        duration: 3000
        loops: Animation.Infinite
    }

    MouseArea {
        anchors.fill: rect
        onClicked: {
            anim.restart()
        }
    }
}
