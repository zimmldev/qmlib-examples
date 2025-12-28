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
	const QUrl url("qrc:/qml/Entry.qml");

	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/DialogExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
