import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioning Demo")

    Rectangle {
        id: rect
        width: 48; height: 48
        color: '#ea7025'
        // 使用了 Qt.lighter(color) 来指定了基于填充色的边界高亮色。
        border.color: Qt.lighter(rect.color)
    }

    // 列布局
    ColumnDemo {
        x: 8
        y: rect.height + 50
    }

    // 行布局
    RowDemo {
        x: rect.width + 50
    }

    // 栅格布局
    GridDemo {
        x: 100; y: 100
    }

    // 流布局
    FlowDemo {
        x: 250; y: 100
    }

    // 重复元素
    RepeaterDemo {
        x: 360; y: 80
    }
}
