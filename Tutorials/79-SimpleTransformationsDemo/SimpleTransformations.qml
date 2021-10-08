import QtQuick 2.0

Item {
    id: root

    property string img: "qrc:/linux.png"

    Image {
        id: img1
        source: img
        width: 150; height: 150
        x: 20; y: 20
    }

    // for img1
    MouseArea {
        anchors.fill: img1
        onClicked: {
            img1.y = 80
            img1.scale = 1.5
        }
    }

    Image {
        id: img2
        source: img
        width: img1.width; height: img1.height
        x: img1.width + 20 + 20; y: 20
    }

    // for img2
    MouseArea {
        anchors.fill: img2
        onClicked: {
            img2.y += 150
        }
    }

    Image {
        id: img3
        source: img
        width: img1.width; height: img1.height
        x: img1.width + img1.width + 20 + 20 + 20; y: 20
    }

    // for img3
    MouseArea {
        anchors.fill: img3
        onClicked: {
            // 每次旋转 45 度
            img3.rotation -= 45
        }
    }
}
