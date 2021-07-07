import QtQuick 2.0

Item {
    // 绘制 “球场”
    Rectangle {
        // sky
        id: sky
        width: parent.width
        height: parent.height * 2/3
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0080FF" }
            GradientStop { position: 1.0; color: "#66CCFF" }
        }
    }
    Rectangle {
        // earth
        id: earth
        width: parent.width
        height: parent.height * 1/2
        x: 0
        y: sky.height
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#00FF00" }
            GradientStop { position: 1.0; color: "#00803F" }
        }
    }
}
