import QtQuick 2.0

/*
 * 渐变色是在 画布坐标 下定义的, 而不是在 绘制路径相对坐标 下定义的。
 * 画布中 没有 相对坐标 的概念。
 */

Item {
    Canvas {
        id: canvas
        width: 200; height: 200

        onPaint: {
            var ctx = getContext("2d")

            // 渐变色定义在开始点(100,0)到结束点(100,200)
            var gradient = ctx.createLinearGradient(100, 0, 100, 200)
            // 使用一个蓝色作为 0.0(100,0)
            gradient.addColorStop(0, 'blue')
            // 一个高亮刚蓝色作为 0.5(100,200)
            gradient.addColorStop(0.5, "lightsteelblue")
            ctx.fillStyle = gradient
            ctx.fillRect(50, 50, 100, 100)
        }
    }
}
