import QtQuick 2.0

Column
{
  spacing: 2

  // 重复 10 次
  Repeater
  {
    model: 10

    Rectangle
    {
      width: 80
      height: 20
      radius: 3

      color: "lightBlue"

      Text
      {
        anchors.centerIn: parent
        text: index + 1
      }

    }
  }
}
