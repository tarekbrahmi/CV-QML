#include <QGuiApplication>
#include <QQmlApplicationEngine>
//QQmlApplicationEngine
#include <QQuickView>
#include "data.h"
int main(int argc, char *argv[])
{

    QGuiApplication::setApplicationName("MyCVTemplate");
    QGuiApplication::setOrganizationName("MyCVTemplate");
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/qml/MyCVTemplate.qml"));
    app.installEventFilter(new Data());
    engine.addImportPath("qrc:/qml/imports");
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.load(url);


    return app.exec();
}
