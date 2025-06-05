#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QtSystemDetection>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	QQmlApplicationEngine engine;
	engine.addImportPath(QMLIB_IMPORT_PATH);
	const QUrl url(u"qrc:/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/ColorsExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
