import QtQuick 2.0

Column
{
  spacing: 2

  Repeater
  {
    model: ListModel
    {
      ListElement { name: "Jack"; surfaceColor: "gray" }
      ListElement { name: "John"; surfaceColor: "red" }
      ListElement { name: "Lucy"; surfaceColor: "blue" }
      ListElement { name: "Jenny"; surfaceColor: "green" }
      ListElement { name: "Danny"; surfaceColor: "black" }
    }

    Rectangle
    {
      width: 80
      height: 20
      radius: 3
      color: "lightBlue"

      Text
      {
        text: name
        anchors.centerIn: parent
      }
      // 圆圈
      Rectangle
      {
        width: 12
        height: 12
        radius: 6

        border.color: "gray"
        color: surfaceColor

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 4
      }
    }
  }
}
