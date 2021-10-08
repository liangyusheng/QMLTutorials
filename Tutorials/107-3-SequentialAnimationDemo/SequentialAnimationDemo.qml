import QtQuick 2.0

Item {
    id: root

    property int duartion: 3000

    Image {
        id: rocket
        source: "qrc:/rocket.png"
        width: 300; height: 171

        // SequentialAnimation 是按顺序执行的
        // 不同于 ParallelAnimation 是并行执行的
        // 如果设置了 loops: Animation.Infinite 则不会触发第二个动画
        SequentialAnimation {
            id: seqAni
            running: true

            NumberAnimation {
                target: rocket
                properties: "x"
                from: 0
                to: 300
                duration: root.duartion * 0.4
            }

            NumberAnimation {
                target: rocket
                properties: "y"
                from: 0
                to: 300
                duration: root.duartion * 0.6
            }
        }
    }

    MouseArea {
        anchors.fill: rocket
        onClicked: {
            seqAni.restart();
        }
    }
}

// Qt help document demo.
//Rectangle {
//    id: rect
//    width: 100; height: 100
//    color: "red"

//    SequentialAnimation {
//        running: true
//        NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
//        NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
//    }
//}
