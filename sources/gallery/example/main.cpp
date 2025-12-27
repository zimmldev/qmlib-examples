#include <QFont>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);
	QGuiApplication::setApplicationName("Gallery");
	QGuiApplication::setOrganizationName("zimmldev");
	QGuiApplication::setOrganizationDomain("org.zimmldev");

	QQmlApplicationEngine engine;
	const QUrl url("qrc:/qml/Entry.qml");

	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/Gallery/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
