import QtQuick
import QtQuick.Layouts
import QtCharts

import Example 1.0

Window {
	id: mainWindow
	width: 640
	height: 480

	ChartView {
		title: "NHL All-Star Team Players"
		Layout.fillHeight: true
		Layout.fillWidth: true
		antialiasing: true

		ValueAxis {
			id: valueAxis
			min: 2000
			max: 2011
			tickCount: 12
			labelFormat: "%.0f"
		}

		AreaSeries {
			name: "Russian"
			color: "#FFD52B1E"
			borderColor: "#FF0039A5"
			borderWidth: 3
			axisX: valueAxis
			upperSeries: LineSeries {
				XYPoint {
					x: 2000
					y: 1
				}
				XYPoint {
					x: 2001
					y: 1
				}
				XYPoint {
					x: 2002
					y: 1
				}
				XYPoint {
					x: 2003
					y: 1
				}
				XYPoint {
					x: 2004
					y: 1
				}
				XYPoint {
					x: 2005
					y: 0
				}
				XYPoint {
					x: 2006
					y: 1
				}
				XYPoint {
					x: 2007
					y: 1
				}
				XYPoint {
					x: 2008
					y: 4
				}
				XYPoint {
					x: 2009
					y: 3 }

				XYPoint {
					x: 2010
					y: 2
				}
				XYPoint {
					x: 2011
					y: 1
				}
			}
		}
	}
}
