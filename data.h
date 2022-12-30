#ifndef DATA_H
#define DATA_H
#include <QObject>
class Data : public QObject
{
    Q_OBJECT
public:
    explicit Data(QObject *parent = nullptr):QObject(parent){}
public:
    // QObject interface
    bool eventFilter(QObject *watched, QEvent *event);
};

#endif // DATA_H
