import QtQuick 2.0
import QtQml 2.3

Item {
    width: 300; height: 480

    ListView {
        id: listView
        anchors.fill: parent
        spacing: 3

        delegate: detailsDelegate
        model: planets
    }

    ListModel {
        id: planets
        ListElement {
            name: "Mercury"; imageSource: "qrc:/Mercury.jpeg"
        }
        ListElement {
            name: "Mars"; imageSource: "qrc:/Mars.jpeg"
        }
        ListElement {
            name: "Earth"; imageSource: "qrc:/Earth.jpeg"
        }
        ListElement {
            name: "Venus"; imageSource: "qrc:/Venus.jpeg"
        }
    }

    Component {
        id: detailsDelegate

        Item {
            id: wrapper
            width: listView.width
            height: 100

            Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top

                height: 100
                color: "#ffaa00"

                Text {
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: parent.height - 4
                    text: name
                    color: 'blue'
                }
            }

            Rectangle {
                id: image
                color: "black"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 2
                anchors.topMargin: 2

                width: 95; height: 95

                Image {
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: imageSource
                }
            }

            // MouseArea {
            //     anchors.fill: parent
            //     onClicked: {
            //         parent.state = "expanded"
            //     }
            // }
        }
    }
}
