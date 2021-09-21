import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput Demo")

    TextInputDemo {
        x: 20; y: 20
    }

    TextEditDemo {
        x: 20; y: 100
        width: 400; height: 400
    }
}
