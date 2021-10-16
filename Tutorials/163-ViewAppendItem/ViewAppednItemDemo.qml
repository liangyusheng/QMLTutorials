import QtQuick 2.0
// for ListModel
import QtQml.Models 2.15

Rectangle {
    id: root
    width: 480; height: 360

    GridView {
        id: view
        model: theModel

        clip: true
        width: 55; height: 55
        anchors.fill: parent
        anchors.margins: 2

        delegate: numberDeletage
    }

    ListModel {
        id: theModel
        property int count: 3
        ListElement {
            number: 0
        }
        ListElement {
            number: 1
        }
        ListElement {
            number: 2
        }
    }

    Component {
        id: numberDeletage

        Rectangle {
            id: rect
            width: 60; height: 60
            radius: 3
            color: Qt.lighter('orange')

            Text {
                anchors.centerIn: rect
                font.pixelSize: 15
                text: index + 1
            }
        }
    }
    /*****************************************************/
    // 添加按钮
    Rectangle {
        id: btn
        width: 80; height: 80
        color: 'red'
        radius: 40
        anchors.margins: 5
        x: root.parent.width - width - 5
        y: root.parent.height - height - 5

        Text {
            anchors.centerIn: parent
            font.pixelSize: 50
            text: qsTr(" + ")
            color: 'white'
        }

        ColorAnimation {
            id: btnAnim
            target: btn
            properties: 'color'
            from: 'red'
            to: 'darkred'
            duration: 180
            loops: 1
        }
        ColorAnimation {
            id: btnAnim2
            target: btn
            properties: 'color'
            // from: 'darkred'
            from: btn.color
            to: 'red'
            duration: 180
            loops: 1
        }

        MouseArea {
            anchors.fill: btn
            onPressed: {
                // btn.color = 'darkred'
                btnAnim.restart()
            }
            onReleased: {
                // btn.color = 'red'
                btnAnim2.restart()
            }
            onClicked: {
                theModel.append({"number": ++theModel.count});
            }
        }
    }
}
