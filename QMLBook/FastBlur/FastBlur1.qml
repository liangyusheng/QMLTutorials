import QtGraphicalEffects 1.0
import QtQuick 2.0

Rectangle
{
  id: root
  color: "BLACK"

  Row
  {
    anchors.centerIn: root
    spacing: 20

    Image
    {
      id: sourceImage
      source: "qrc:/dog.png"
      width: 200; height: 200
    }

    FastBlur
    {
      id: bluredImage
      width: 200; height: 200
      source: sourceImage

      property bool moHuLe: false

      // 半径 == 模糊度
      radius: moHuLe ? 120 : 0

      Behavior on radius
      {
        NumberAnimation
        {
          duration: 1000
        }
      }

      MouseArea
      {
        anchors.fill: parent

        onClicked:
        {
          bluredImage.moHuLe = !bluredImage.moHuLe
        }
      }

      Text
      {
        text: "点击该图片"
        color: "lightBlue"
        x: parent.width / 2 - this.width / 2
        y: parent.height + 10
      }
    }
  }
}
