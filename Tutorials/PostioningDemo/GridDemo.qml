import QtQuick 2.0

/*
 * Grid(栅格)元素通过设置rows(行数)和columns(列数)将子对象排列在一个栅格中。
 * 可以只限制行数或者列数。如果没有设置它们中的任意一个,
 * 栅格元素会自动计算子项⺫总数来获得配置,例如,设置rows(行数)为3,
 * 添加了6个子项⺫到元素中,那么会自动计算columns(列数)为2。
 * 属性flow(流)与layoutDirection(布局方向)用来控制子元素的加入顺序。
 * spacing属性用来控制所有元素之间的间隔。
 */
Item {
    id: root

    Grid {
        anchors.fill: root

        // 指定为 2 行 2 列
        // 否则为行布局
        rows: 2
        columns: 2

        Rectangle {
            id: redRect
            width: 48; height: 48
            color: 'red'
        }

        Rectangle {
            id: greenRect
            width: 48; height: 48
            color: 'green'
        }

        Rectangle {
            id: blueRect
            width: 48; height: 48
            color: 'blue'
        }

        Rectangle {
            id: yellowRect
            width: 48; height: 48
            color: 'yellow'
        }
    }
}
