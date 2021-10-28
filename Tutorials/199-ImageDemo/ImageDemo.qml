import QtQuick 2.0

Item {
    Canvas {
        id: canvas
        width: parent.width; height: parent.height

        onPaint: {
            var ctx = getContext("2d")
            // 绘制图片
            ctx.drawImage('qrc:/dog.jpg', 0, 0)
            // ctx.save()

            // ctx.strokeStyle = 'red'

            // ctx.beginPath()
            // ctx.moveTo(10, 10)
            // ctx.lineTo(10, 10)
            // ctx.lineTo(35, 55)
            // ctx.closePath()

            // ctx.translate(100, 0)
            // ctx.clip()
            // ctx.drawImage('qrc:/dog.jpg', 700, 0)
            // ctx.stroke()
            // ctx.restore()
        }
    }
}
