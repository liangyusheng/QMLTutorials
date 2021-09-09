import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
  id: window
  visible: true
  width: 640
  height: 480
  title: qsTr("Application Window")

  // 菜单设置
  menuBar: MenuBar {
    Menu {
      title: qsTr("&File")
      Action {
        text: qsTr("&New...")
        onTriggered: {
          console.log("New")
        }
      }
      Action {
        text: qsTr("&Open...")
        onTriggered: {
          console.log("Open")
        }
      }
      Action {
        text: qsTr("&&Save...")
        onTriggered: {
          console.log("Save")
        }
      }
      Action {
        text: qsTr("关闭")
        onTriggered: {
          window.close()
        }
      }
    }
    Menu {
      title: qsTr("&Settings")
      Action {
        text: qsTr("颜色")
        onTriggered: {
          console.log("颜色")
        }
      }
      Action {
        text: qsTr("大小")
        onTriggered: {
          console.log("大小")
        }
      }
    }

    Menu {
      title: qsTr("&About")
      Action {
        text: qsTr("关于")
        onTriggered: {
          console.log("关于")
        }
      }
    }
  }

  // 页脚设置
  footer: ToolBar {

      ToolButton {
        text: qsTr("⋮")
        onClicked: {
          console.log("更多...")
        }
      }
    }
}
