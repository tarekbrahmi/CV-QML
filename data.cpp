#include "data.h"
#include <QEvent>
#include <QMouseEvent>

bool Data::eventFilter(QObject *o, QEvent *event)
{
    {
        if (event->type() == QEvent::MouseMove ) {

            QMouseEvent *mouseEvent = static_cast<QMouseEvent*>(event);
            QObject *santaimage = o->findChild<QObject*>("santaimage");
            if(santaimage){
                santaimage->setProperty("x",mouseEvent->pos().x());
                santaimage->setProperty("y",mouseEvent->pos().y()+5);
            }
            return true;
        }
        return false;
    }
}

