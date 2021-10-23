import QtQuick 2.0

/*
 * 在 QML 中,画布元素(canvas element)充当了绘制的容器。
 * 2D 绘制对象提供了实际绘制的方法。
 * 绘制需要在 onPaint 事件中完成。
 *
 * 典型绘制命令调用如下
 * 1. 装载画笔或者填充模式
 * 2. 创建绘制路径
 * 3. 使用画笔或者填充绘制路径
 */
Canvas {
    id: root

    width: 200; height: 200

    onPaint: {
        var ctx = getContext("2d")
        // 画笔的宽度被设置为4个像素
        ctx.lineWidth = 4
        ctx.strokeStyle = "blue"
        ctx.fillStyle = "steelblue"

        ctx.beginPath()
        ctx.moveTo(50, 50)
        ctx.lineTo(150, 50)
        ctx.lineTo(150, 150)
        ctx.lineTo(50, 150)
        ctx.closePath()

        // 只有调用 stroke 或者 fill 函数,
        // 创建的路径才会绘制，它们与其它的函数使用是相互独立的。
        ctx.fill()
        ctx.stroke()
    }
}
