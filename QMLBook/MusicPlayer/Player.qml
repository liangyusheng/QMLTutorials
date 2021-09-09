import QtQuick 2.0
import QtMultimedia 5.0

Item {
  id: root

  MediaPlayer
  {
    id: player
    source: "qrc:/song.mp3"

    onPositionChanged:
    {
      tip.text = position
    }
  }
  
  VideoOutput
  {
    id: output
    width: root.width
    height: root.height - 150
    source: player
  }

  //  Component.onCompleted:
  //  {
  //    console.log("playing...")
  //    player.play()
  //  }

  // 进度提示
  Text
  {
    id: tip
    x: output.width / 2 - this.width / 2
    y: output.height + 15
    color: "Blue"
    font.pixelSize: 16
  }

  // 播放按钮
  Rectangle
  {
    id: playButton
    parent: root
    radius: 3
    color: "darkGray"
    width: 80
    height: 30
    visible: true

    x: output.width / 2 - this.width / 2
    y: output.height + 55

    MouseArea
    {
      anchors.fill: playButton
      onClicked:
      {
        player.play()
        text.text = text.text == "点击播放" ? "播放中..." : "点击播放"
        text.text == "播放中..." ? player.play() : player.pause()
      }
    }

    Text
    {
      id: text
      text: qsTr("点击播放")
      anchors.centerIn: playButton
      font.pixelSize: 16
    }
  }
}
