import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    minimumWidth: 1000
    minimumHeight: 800
    maximumWidth: 1000
    maximumHeight: 800

    title: qsTr("应用动画")

    ClickableImageV2 {
        id: animation1
        source: "qrc:/dog.png"
        x: parent.width / 2 - this.width / 2;
        y: parent.height - this.height
        text: "点击图片，开始动画"

        Behavior on y {
            // 该行使用工具完成
            NumberAnimation { easing.amplitude: 1.85; easing.type: Easing.InOutBounce; duration: 4000 }
        }
        onClicked: {
            console.log("clicked!")
            animation1.text = "点击了，动画开始运行！"
            y = 2
        }
    }
}
