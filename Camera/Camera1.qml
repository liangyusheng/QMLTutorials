import QtQuick 2.0
import QtMultimedia 5.0

Item {
  id: root

  VideoOutput
  {
    id: video
    source: camera
  }

  Camera
  {
    id: camera
  }
}
