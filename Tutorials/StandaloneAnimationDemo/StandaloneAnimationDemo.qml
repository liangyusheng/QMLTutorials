import QtQuick 2.0

Item {
    id: root
    width: 300; height: 171

    Image {
        id: rocket
        source: "qrc:/rocket.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                ani.restart()
            }
        }

        // 与 NumberAnimation on XX 不同的是，
        // NumberAnimation 需要指定 target
        NumberAnimation {
            id: ani
            target: rocket
            properties: "y"
            from: 0
            to: 300
            duration: 3000
        }
    }
}
