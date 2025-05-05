#include <font/FontUtils.h>

#include <QFont>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <font/fontexport.h>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);
  QGuiApplication::setApplicationName("ControlExample");
  QGuiApplication::setOrganizationName("zimmldev");
  QGuiApplication::setOrganizationDomain("org.zimmldev");

  QFont font;
  font.setPointSize(16);
  QGuiApplication::setFont(font);

  QQmlApplicationEngine engine;
  const QUrl url(u"qrc:/qt/qml/Example/qml/Entry.qml"_qs);
  engine.setInitialProperties(
      {{"source", "qrc:/qt/qml/ControlExample/qml/main.qml"}});
  engine.load(url);

  QObject::connect(FontUtils::get(), &FontUtils::scaleChanged, [font] {
    QFont f = font;
    f.setPointSizeF(f.pointSizeF() * FontUtils::get()->scale());

    QGuiApplication::setFont(f);
  });

  return QCoreApplication::exec();
}
