import QtQuick 2.0
import QtQuick.Particles 2.0

Rectangle {
  id: root
  // width: 640; height: 480
  color: "#1f1f1f"

  ParticleSystem
  {
    id: particle
  }

  Emitter
  {
    id: emitter
    anchors.fill: root
    system: particle
    emitRate: 50
    size: 6
    endSize: 32
  }

  ImageParticle
  {
    source: "qrc:/star.png"
    system: particle
  }
}
