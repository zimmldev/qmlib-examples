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
			Text {
				text: "grid label Visible"
				color: pal.onSurface
				Layout.fillWidth: true
			}
			Switch {
				id: gridLabelXVisibleItem
				checked: true
				enabled: axisXVisibleItem.checked
				Layout.fillWidth: false
			}
			Switch {
				id: gridLabelYVisibleItem
				checked: true
				enabled: axisYVisibleItem.checked
				Layout.fillWidth: false
			}
		}
	}

	PolarChart {
		id: polarChart
		Layout.fillHeight: true
		Layout.fillWidth: true
		model: getLowResModel()

		gridAngularVisible: gridXVisibleItem.checked
		gridAngularLegendVisible: gridLabelXVisibleItem.checked
		axisAngularVisible: axisXVisibleItem.checked
		minorGridAngularVisible: minorGridXVisibleItem.checked

		gridRadialVisible: gridYVisibleItem.checked
		gridRadialLegendVisible: gridLabelYVisibleItem.checked
		axisRadialVisible: axisYVisibleItem.checked
		minorGridRadialVisible: minorGridYVisibleItem.checked

		SplineSeries {
			chart: polarChart
			model: decimated.checked ?
					   getLowResModel().decimated :
					   getLowResModel()
			name: "spline"
			xData: 0
			yData: 1
		}
		LineSeries {
			chart: polarChart
			model: decimated.checked ?
					   getModel().decimated :
					   getModel()
			name: "line"
			xData: 0
			yData: 1
		}
		ScatterSeries {
			chart: polarChart
			model: decimated.checked ?
					   getModel().decimated :
					   getModel()
			name: "scatter"
			xData: 0
			yData: 2
		}
		AreaSeries {
			chart: polarChart
			model: decimated.checked ?
					   getModel().decimated :
					   getModel()
			name: "area"
			xData: 0
			yData: 3
			opacity: 0.2
		}
	}
}
