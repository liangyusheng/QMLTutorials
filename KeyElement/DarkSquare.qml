import QtQuick 2.0

Rectangle {
    width: 400; height: 200

    GreenSquare {
        id: green
        x: 8; y: 8
    }
    focus: true
    Keys.onLeftPressed: green.x -=8
    Keys.onRightPressed: green.x += 8
    Keys.onUpPressed: green.y -= 8
    Keys.onDownPressed: green.y += 8

    Keys.onPressed: {
        switch (event.key) {
        case Qt.Key_Plus:
            green.scale += 0.2
            break;
        case Qt.Key_Minus:
            green.scale -= 0.2
            break;
        }
    }
}
