import QtQuick 2.0
import QtQuick.Particles 2.0

Rectangle
{
  id: root
  color: "black"

  ParticleSystem
  {
    id: particleSys
  }

  Emitter
  {
    id: emitter
    system: particleSys
    anchors.fill: parent

    emitRate: 20
    lifeSpan: 2000
    size: 5
    endSize: 32

    rotation: 0
  }

  ImageParticle
  {
    source: "qrc:/star.png"
    system: particleSys
    // 使用金色初始化粒子颜色
    // 颜色变化范围 +- 20%
    color: '#FFD700'
    colorVariation: 0.2

    // 旋转变化 +- 15°
    rotationVariation: 15
    // 每秒 30°
    rotationVelocity: 30
    // 旋转速度 +- 15
    rotationVelocityVariation: 15
    // entryEffect: ImageParticle.Loading
  }
}
