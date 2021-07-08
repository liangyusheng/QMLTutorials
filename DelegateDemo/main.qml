import QtQuick 2.12
import QtQuick.Window 2.12

Window {
  id: window
  visible: true
  width: 640
  height: 480
  title: qsTr("Hello World")

  Demo1
  {
    width: 150
    height: 350

    x: window.width / 2 - this.width / 2
    y: 30
  }
}
