#include <font/FontUtils.h>

#include <QFont>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);
	QGuiApplication::setApplicationName("FontExample");
	QGuiApplication::setOrganizationName("zimmldev");
	QGuiApplication::setOrganizationDomain("org.zimmldev");

	int id = QFontDatabase::addApplicationFont(":/font/Roboto.ttf");

	QString family = QFontDatabase::applicationFontFamilies(id).at(0);
	QFont font(family, 16);

	QGuiApplication::setFont(font);

	QQmlApplicationEngine engine;
	engine.addImportPath(QMLIB_IMPORT_PATH);
	const QUrl url(u"qrc:/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/FontExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
