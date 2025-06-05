#include <QFont>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);
	QGuiApplication::setApplicationName("CalendarExample");
	QGuiApplication::setOrganizationName("zimmldev");
	QGuiApplication::setOrganizationDomain("org.zimmldev");

	QFont font;
	font.setPointSize(16);
	QGuiApplication::setFont(font);

	QQmlApplicationEngine engine;
	engine.addImportPath(QMLIB_IMPORT_PATH);
	const QUrl url(u"qrc:/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/CalendarExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
