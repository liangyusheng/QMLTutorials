import QtQuick 2.0

/*
 * rocket 45 度从左向右从上到下移动
 */
Item {
    id: root
    property int duration: 3000
    property int w: 300
    property int h: 171

    Image {
        id: rocket
        source: "qrc:/rocket.png"
        width: root.w; height: root.h

        // 平行动画
        // 两个 NumberAnimation 一起执行
        ParallelAnimation {
            id: anim

            NumberAnimation {
                target: rocket
                properties: "y"
                from: 0
                to: 300
                duration: root.duration
                loops: Animation.Infinite
            }

            NumberAnimation {
                target: rocket
                properties: "x"
                from: 0; to: 300
                duration: root.duration
                loops: Animation.Infinite
            }
        }

        MouseArea {
            anchors.fill: rocket
            onClicked: {
                anim.restart()
            }
        }
    }
}
