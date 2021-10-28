import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TransformationDemo")

    Item {
        anchors.fill: parent
        Canvas {
            id: root
            anchors.fill: parent

            onPaint: {
                var ctx = getContext("2d")
                ctx.strokeStyle = "blue"
                ctx.lineWidth = 4

                ctx.beginPath()
                ctx.rect(20, 20, 90, 90)
                // 没搞明白
                ctx.translate((20 + 90) / 2 + 10, (20 + 90) / 2 - 80)
                ctx.stroke()

                // draw path now rotated
                ctx.strokeStyle = "green"
                ctx.rotate(Math.PI/4)
                ctx.stroke()
            }
        }
    }
}
