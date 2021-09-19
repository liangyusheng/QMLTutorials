#include "Widget.h"
#include "ui_Widget.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
    , m_inTime(0)
{
    ui->setupUi(this);
    this->setFixedSize(680, 460);

    auto *l = new QLabel(this);
    auto map = QPixmap(":/earth.png");
    l->setPixmap(map);
    l->setFixedSize(map.size());

    QPropertyAnimation *animation = new QPropertyAnimation(l, "geometry");
    animation->setDuration(3000);
    // 设置为弹跳模式
    animation->setEasingCurve(QEasingCurve::OutBounce);
    animation->setStartValue(QRect(0, 0, 0, 0));
    animation->setEndValue(QRect(this->width() - l->width(), this->height() - l->height(), l->width(), l->height()));
    // 循环次数
    // animation->setLoopCount(-1);
    animation->start();
}

Widget::~Widget()
{
    delete ui;
}

int Widget::inTime()
{
    return 1;
}

void Widget::setInTime(int time)
{
    this->m_inTime = time;
}
