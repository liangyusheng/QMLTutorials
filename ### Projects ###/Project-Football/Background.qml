import QtQuick 2.0

Item {
    id: root
    width: 640; height: 480

    Rectangle {
        id: sky
        y: 0
        height: root.height * 0.7
        width: root.width
        color: Qt.lighter('blue')
    }

    Rectangle {
        id: earth
        y: root.height * (1 - 0.3)
        height: root.height * 0.3
        width: root.width
        color: 'green'
    }
}
