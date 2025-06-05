#include <QFont>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);
	QGuiApplication::setApplicationName("ContainerExample");
	QGuiApplication::setOrganizationName("zimmldev");
	QGuiApplication::setOrganizationDomain("org.zimmldev");

	QQmlApplicationEngine engine;
	engine.addImportPath(QMLIB_IMPORT_PATH);
	const QUrl url(u"qrc:/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/ContainerExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
