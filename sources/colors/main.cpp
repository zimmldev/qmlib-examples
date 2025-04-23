#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QtSystemDetection>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	QQmlApplicationEngine engine;
	const QUrl url(u"qrc:/qt/qml/Example/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/ColorsExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
