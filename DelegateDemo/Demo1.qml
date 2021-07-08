import QtQuick 2.0

Rectangle
{
  id: root

  ListView
  {
    id: listView
    clip: true
    spacing: 5
    model: 6
    anchors.fill: root

    delegate: item
    focus: true

    Component
    {
      id: item

      Rectangle
      {
        id: rect
        radius: 3

        // 设置选中颜色
        color: ListView.isCurrentItem ? "lightGray" : "lightBlue"
        border.color: ListView.isCurrentItem ? "gray" : Qt.lighter("lightBlue")

        width: ListView.isCurrentItem ? 106 : 100
        height: ListView.isCurrentItem ? 40 : 40
        // 始终使 item 居中，移动时亦可
        x: root.width / 2 - this.width / 2

        // 鼠标点击选中
        // 学艺不精，还不能实现
        //        MouseArea
        //        {
        //          width: parent.width
        //          height: parent.height

        //          onClicked:
        //          {
        //            console.log(index)

        //            rect.color = "lightGray"
        //          }
        //        }

        Text
        {
          id: txt
          text: index + 1
          font.bold: true
          font.pixelSize: 16
          anchors.centerIn: parent
        }
      }
    }
  }
}
