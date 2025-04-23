import QtQuick
import QtQuick.Layouts
import QtCharts

import Example 1.0

Window {
	id: mainWindow
	width: 640
	height: 480

	ChartView {
		title: "Horizontal Bar series"
		Layout.fillHeight: true
		Layout.fillWidth: true
		antialiasing: true

		HorizontalBarSeries {
			axisY: BarCategoryAxis { categories: ["2007", "2008", "2009", "2010", "2011", "2012" ] }
			BarSet {
				label: "Bob"
				values: [2, 2, 3, 4, 5, 6]
			}
			BarSet {
				label: "Susan"
				values: [5, 1, 2, 4, 1, 7]
			}
			BarSet {
				label: "James"
				values: [3, 5, 8, 13, 5, 8]
			}
		}
	}
}
