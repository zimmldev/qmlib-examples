#include <QFont>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);
	QGuiApplication::setApplicationName("AnimationExample");
	QGuiApplication::setOrganizationName("zimmldev");
	QGuiApplication::setOrganizationDomain("org.zimmldev");

	QQmlApplicationEngine engine;
	engine.addImportPath("/tmp/qml");
	const QUrl url(u"qrc:/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/AnimationExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
