import QtQuick
import QtQuick.Layouts
import QtCharts

import Plots 1.0
import Example 1.0
import Panel 1.0

Window {
	id: mainWindow
	width: 640
	height: 480

	function getModel() {
		if (typeof vectormodel !== "undefined")
			return vectormodel
		return null
	}

	Switch {
		id: showXAxisItem
		text: "show X axis"
	}
	Switch {
		id: showYAxisItem
		text: "show Y axis"
	}
	Switch {
		id: showLegendItem
		text: "show legend"
	}
	Switch {
		id: showLower
		text: "show lower"
		checked: true
	}

	Chart {
		id: chart
		title: "Scatters"
		Layout.fillHeight: true
		Layout.fillWidth: true

		legend.visible: showLegendItem.checked
		axisXVisible: showXAxisItem.checked
		axisYVisible: showYAxisItem.checked

		GradientAreaSeries {
			chart: chart
			model: getModel()
			xData: 0
			areaColor: "blue"
			yDataUpper: 1
			yDataLower: 2
			hasLower: showLower.checked
		}
	}

	Item {
		height: 20
		Layout.fillWidth: true
	}
}
