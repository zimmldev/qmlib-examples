import QtQuick
import QtQuick.Layouts
import QtCharts

import Example 1.0

Window {
	id: mainWindow
	width: 640
	height: 480

	ChartView {
		id: chart
		title: "Top-5 car brand shares in Finland"
		Layout.fillHeight: true
		Layout.fillWidth: true
		antialiasing: true

		PieSeries {
			id: pieSeries
			PieSlice {
				label: "Volkswagen"
				value: 13.5
			}
			PieSlice {
				label: "Toyota"
				value: 10.9
			}
			PieSlice {
				label: "Ford"
				value: 8.6
			}
			PieSlice {
				label: "Skoda"
				value: 8.2
			}
			PieSlice {
				label: "Volvo"
				value: 6.8
			}
		}
	}
}
