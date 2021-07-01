import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Grid Demo")

    Grid {
        id: grid
        // 2 行
        rows: 2
        // 2 列
        columns: 2
        anchors.centerIn: parent
        // 间隔 8
        spacing: 8
        RedSquare { radius: 6 }
        BlueSquare { radius: 6 }
        GreenSquare { radius: 6 }
        OrangeSquare { radius: 6 }
    }
}
