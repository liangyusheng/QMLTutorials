import QtQuick 2.0

/*
 * 通过 flow(流)属性和 layoutDirection (布局方向) 属性来控制流的方向。
 * 它能够从头到底的横向布局,也可以从左到右或者从右到左进行布局。
 * 作为加入流中的子对象,它们在需要时可以被包装成新的行或者列。
 * 为了让一个流可以工作,必须指定一个宽度或者高度,可以通过属性直接设定,或者通过 anchor(锚定)布局设置。
 */

Item {
    id: root

    Flow {
        id: flow
        anchors.fill: root
        spacing: 20

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
