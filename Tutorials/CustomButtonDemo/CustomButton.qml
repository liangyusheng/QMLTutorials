import QtQuick 2.0

// 自定义 button
Item {
    id: root
    width: 90; height: 32

    // 配置属性
    // 按钮默认颜色
    property string defaultColor: "lightsteelblue"
    // 按钮按下颜色
    property string pressedColor: "slategrey"
    // 边框颜色
    property alias  borderColor: root.pressedColor

    // 绘制一个矩形，作为按钮
    Rectangle {
        id: btn
        anchors.fill: root
        color: defaultColor
        radius: 2
        border.color: borderColor

        // 在矩形中心显示文本
        Text {
            id: txt
            text: "Button"
            anchors.centerIn: btn
        }

        // 实现按钮点击效果
        MouseArea {
            anchors.fill: btn

            // 点击时修改文本
            onClicked: {
                txt.text = "Clicked!"
            }

            // 鼠标按下时加深颜色
            onPressed: {
                btn.color = pressedColor
            }
            // 鼠标释放后恢复颜色
            onReleased: {
                btn.color = defaultColor
            }
        }
    }
}
