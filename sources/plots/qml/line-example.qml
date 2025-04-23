import QtQuick
import QtQuick.Layouts

import Plots 1.0
import Example 1.0
import Control 1.0
import Panel 1.0 as P

Window {
	id: mainWindow
	width: 640
	height: 480

	function getModel() {
		if (typeof vectormodel !== "undefined")
			return vectormodel
		return null
	}
	function getLowResModel() {
		if (typeof datamodel !== "undefined")
			return datamodel
		return null
	}

	P.Switch {
		id: logarithmic
		text: "Logarithmic"
	}
	P.Switch {
		id: decimated
		text: "Use decimated"
	}
	Column {
		Layout.fillWidth: true

		GridLayout {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.margins: 20

			columns: 3
			Text {
				text: "axis Visible"
				color: pal.onSurface
				Layout.fillWidth: true
			}
			Switch {
				id: axisXVisibleItem
				checked: true
				Layout.fillWidth: false
			}
			Switch {
				id: axisYVisibleItem
				checked: true
				Layout.fillWidth: false
			}

			Text {
				text: "grid Visible"
				color: pal.onSurface
				Layout.fillWidth: true
			}
			Switch {
				id: gridXVisibleItem
				checked: true
				enabled: axisXVisibleItem.checked
				Layout.fillWidth: false
			}
			Switch {
				id: gridYVisibleItem
				checked: true
				enabled: axisYVisibleItem.checked
				Layout.fillWidth: false
			}

			Text {
				text: "minor grid Visible"
				color: pal.onSurface
				Layout.fillWidth: true
			}
			Switch {
				id: minorGridXVisibleItem
				checked: true
				enabled: axisXVisibleItem.checked
				Layout.fillWidth: false
			}
			Switch {
				id: minorGridYVisibleItem
				checked: true
				enabled: axisYVisibleItem.checked
				Layout.fillWidth: false
			}
		}
	}

	Chart {
		id: chart
		title: "Lines"
		Layout.fillHeight: true
		Layout.fillWidth: true
		useLogarithmicAxis: logarithmic.checked

		gridXVisible: gridXVisibleItem.checked
		axisXVisible: axisXVisibleItem.checked
		minorGridXVisible: minorGridXVisibleItem.checked

		gridYVisible: gridYVisibleItem.checked
		axisYVisible: axisYVisibleItem.checked
		minorGridYVisible: minorGridYVisibleItem.checked

		LineSeries {
			chart: chart
			model: decimated.checked ?
					   getModel().decimated :
					   getModel()
			name: "x"
			xData: 0
			yData: 1
		}
		LineSeries {
			chart: chart
			model: decimated.checked ?
					   getModel().decimated :
					   getModel()
			name: "y"
			xData: 0
			yData: 2
		}
		LineSeries {
			chart: chart
			model: decimated.checked ?
					   getModel().decimated :
					   getModel()
			name: "z"
			xData: 0
			yData: 3
		}
		LineSeries {
			chart: chart
			model: decimated.checked ?
					   getLowResModel().decimated :
					   getLowResModel()
			name: "low res"
			xData: 0
			yData: 1
		}
	}
}
