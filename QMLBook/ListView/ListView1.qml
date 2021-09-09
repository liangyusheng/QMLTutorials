import QtQuick 2.0

Rectangle
{
  width: 80
  height: 300
  color: "white"

  // 可以滑动
  ListView
  {
    anchors.fill: parent
    anchors.margins: 20
    // 置clip属性为true，来激活裁剪功能
    clip: true
    model: 100

    delegate: numberDelegate
    spacing: 5
  }

  Component
  {
    id: numberDelegate

    Rectangle
    {
      width: 40
      height: 40
      color: "lightGreen"

      Text
      {
        anchors.centerIn: parent
        font.pixelSize: 15
        text: index + 1
      }
    }
  }
}
