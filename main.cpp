#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
int main(int argc, char *argv[])
{

    QGuiApplication::setApplicationName("MyCVTemplate");
    QGuiApplication::setOrganizationName("MyCVTemplate");
    QGuiApplication app(argc, argv);

    QQuickView view;
    view.engine()->addImportPath("qrc:/qml/imports");
    view.setSource(QUrl("qrc:/qml/MyCVTemplate.qml"));

    if (!view.errors().isEmpty())
        return -1;
    view.show();

    return app.exec();
}
