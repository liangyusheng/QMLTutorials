import QtQuick 2.0

Column
{
  id: root
  spacing: 2

  Repeater
  {
    model: ["ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SIVEN", "EIGHT", "NINE", "TEN"]
    Rectangle
    {
      width: 80
      height: 20
      radius: 3
      color: "lightgray"

      Text
      {
        text: modelData
        anchors.centerIn: parent
      }
    }
  }
}
