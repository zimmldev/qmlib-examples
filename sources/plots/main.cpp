#include <plots/ChartModel.h>
#include <plots/DoubleChartModel.h>
#include <plots/VectorChartModel.h>

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtMath>

int main(int argc, char *argv[])
{
	QApplication app(argc, argv);

	plots::VectorChartModel vectormodel(3);
	QVector<QPair<double, QVector<double>>> vector;

	for (int i = 0; i < 5000; i++)
	{
		QVector<double> v(
			{2 + sin(qDegreesToRadians(static_cast<double>(i))),
			 2 + cos(qDegreesToRadians(static_cast<double>(i))),
			 2 + qAbs(qMax(
					 -10.,
					 qMin(10.,
						  tan(qDegreesToRadians(static_cast<double>(i))))))});
		vector.append(qMakePair(i, v));
	}
	vectormodel.appendData(vector);
	vectormodel.setMaxPoint(100);

	plots::DoubleChartModel datamodel;
	QVector<QPair<double, double>> data;
	for (int i = 0; i < 50; i++)
	{
		data.append(qMakePair(
			i * 100,
			1.5 + sin(qDegreesToRadians(static_cast<double>(i * 30)))));
	}
	datamodel.appendData(data);

	QQmlApplicationEngine engine;
	engine.rootContext()->setContextProperty("datamodel", &datamodel);
	engine.rootContext()->setContextProperty("vectormodel", &vectormodel);

	engine.addImportPath(QMLIB_IMPORT_PATH);
	const QUrl url(u"qrc:/qml/Entry.qml"_qs);
	engine.setInitialProperties(
		{{"source", "qrc:/qt/qml/PlotsExample/qml/main.qml"}});
	engine.load(url);

	return QCoreApplication::exec();
}
