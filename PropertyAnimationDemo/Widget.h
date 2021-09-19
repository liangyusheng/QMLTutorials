#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>

#include <QPropertyAnimation>
#include <QLabel>
#include <QPalette>
#include <QDebug>

QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

    Q_PROPERTY(int inTime READ inTime WRITE setInTime)

protected:

private:
    Ui::Widget *ui;

    int m_inTime;

    int inTime();
    void setInTime(int time);
};
#endif // WIDGET_H
