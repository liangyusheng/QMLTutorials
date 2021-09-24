import QtQuick 2.0

Item {
    id: root

    Image {
        id: rocket
        source: "qrc:/rocket.png"
        width: 300; height: 171

        // 类似于 NumberAnimation（数字动画）
        // 只不过换成了 'on' 后面的参数换成了属性变量
        PropertyAnimation on width {
            to: rocket.width / 3
            duration: 3000
            loops: Animation.Infinite
        }

        PropertyAnimation on height {
            to: rocket.height / 3
            duration: 3000
            loops: Animation.Infinite
        }

        // 同时修改了 width 和 height 的比例，
        // 实现了缩放 scale 效果
        // 与下面代码等价
        // NumberAnimation on scale {
        //     to: 1/3
        //     duration: 3000
        //     loops: Animation.Infinite
        // }
    }
}
