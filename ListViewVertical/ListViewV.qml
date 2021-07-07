import QtQuick 2.0
/*
 * 默认的链表视图只提供了一个个垂直方向的滚动条，但是水平滚动条也是需要
 * 的。链表视图的方向由属性 orientation 控制。它能够被设置为默认值
 * ListView.Vertical 或者 ListView.Horizontal。
 *
 */

Rectangle
{
  width: 300
  height: 80

  ListView
  {
    anchors.fill: parent
    clip: true
    model: 100
    spacing: 5

    delegate: listItem
    //! \See
    orientation: ListView.Horizontal

    Component
    {
      id: listItem
      Rectangle
      {
        width: 50
        height: 50
        color: "lightBlue"
        radius: 3

        Text
        {
          text: index + 1
          anchors.centerIn: parent
        }
      }
    }
  }
}
