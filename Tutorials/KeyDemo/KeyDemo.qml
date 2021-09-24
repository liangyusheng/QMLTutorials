import QtQuick 2.0

Item {
    id: root
    width: 100; height: 100

    Rectangle {
        id: rect
        width: 100; height: 100
        color: 'orange'
        radius: 3

        property int step: 20

        focus: true
        // 移动矩形
        Keys.onUpPressed: rect.y -= step
        Keys.onDownPressed: rect.y += step
        Keys.onLeftPressed: rect.x -= step
        Keys.onRightPressed: rect.x += step

        // 关闭 App
        Keys.onEscapePressed: Qt.quit()
    }
}
