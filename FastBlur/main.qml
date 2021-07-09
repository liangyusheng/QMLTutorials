import QtQuick 2.12
import QtQuick.Window 2.12

Window {
  visible: true
  width: 640
  height: 480
  title: qsTr("模糊")

  FastBlur1 { width: parent.width; height: parent.height }
}
