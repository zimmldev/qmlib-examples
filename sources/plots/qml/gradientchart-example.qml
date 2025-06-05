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

	GradientChart {
		id: chart
		title: "Scatters"
		Layout.fillHeight: true
		Layout.fillWidth: true

		legend.visible: showLegendItem.checked
		axisXVisible: showXAxisItem.checked
		axisYVisible: showYAxisItem.checked

		model: getModel()
		xData: 0
		yDataUpper: 3
		yDataLower: 2
		borderColor: "red"
		areaColor: "green"
		borderWidth: 3
		hasLower: showLower.checked
	}

	Item {
		height: 20
		Layout.fillWidth: true
	}
}
