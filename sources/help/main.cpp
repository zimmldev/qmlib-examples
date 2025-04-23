
#include <QFont>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QTimer>

int main(int argc, char *argv[])
{
	QCoreApplication::setApplicationName("HelpTest");
	QGuiApplication::setOrganizationDomain("org.zimmldev");

	QGuiApplication app(argc, argv);

	QQmlApplicationEngine engine;
	const QUrl url(u"qrc:/qt/qml/Example/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/HelpExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
