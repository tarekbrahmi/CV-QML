#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include "data.h"
int main(int argc, char *argv[])
{

    QGuiApplication::setApplicationName("MyCVTemplate");
    QGuiApplication::setOrganizationName("MyCVTemplate");
    QGuiApplication app(argc, argv);
    QQuickView view;
    view.engine()->addImportPath("qrc:/qml/imports");
    view.setSource(QUrl("qrc:/qml/MyCVTemplate.qml"));
    view.installEventFilter(new Data());

    if (!view.errors().isEmpty())
        return -1;
    view.show();

    return app.exec();
}
