import QtQuick 2.0

Rectangle
{
  id: root
  width: 240
  height: 300

  color: "white"

  ListView
  {
    id: listView
    clip: true
    delegate: listItem
    spacing: 5
    model: 100
    anchors.fill: parent
    anchors.margins: 20
    highlight: highlightItem
    focus: true

    // 高亮组件
    Component
    {
      id: highlightItem

      Rectangle
      {
        width: ListView.view.width
        radius: 3
        color: "lightBlue"
        border.color: Qt.lighter(this.color)
      }
    }

    // list item
    Component
    {
      id: listItem

      // 这里用 Item，非 Rectangle
      Item
      {
        id: item
        width: 180
        height: 50
        // radius: 25

        Text
        {
          text: index + 1
          anchors.centerIn: parent
          font.pixelSize: 15
        }
      }
    }
  }
}
