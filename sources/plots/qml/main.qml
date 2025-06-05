import QtQuick

import Example 1.0

WindowList {
	title: "Map test"
	model: ListModel {
                ListElement {
                        text: "Gradient"
                        url: "qrc:/qt/qml/PlotsExample/qml/gradient-example.qml"
                }
                ListElement {
                        text: "Gradient Chart"
                        url: "qrc:/qt/qml/PlotsExample/qml/gradientchart-example.qml"
                }
		ListElement {
			text: "Pie"
			url: "qrc:/qt/qml/PlotsExample/qml/pie-example.qml"
		}
		ListElement {
			text: "Line"
			url: "qrc:/qt/qml/PlotsExample/qml/line-example.qml"
		}
		ListElement {
			text: "Spline"
			url: "qrc:/qt/qml/PlotsExample/qml/spline-example.qml"
		}
		ListElement {
			text: "Stacked"
			url: "qrc:/qt/qml/PlotsExample/qml/stacked-example.qml"
		}
		ListElement {
			text: "scatter"
			url: "qrc:/qt/qml/PlotsExample/qml/scatter-example.qml"
		}
		ListElement {
			text: "Bar"
			url: "qrc:/qt/qml/PlotsExample/qml/bar-example.qml"
		}
		ListElement {
			text: "Stacked bar"
			url: "qrc:/qt/qml/PlotsExample/qml/stackedbar-example.qml"
		}
		ListElement {
			text: "Percent bar"
			url: "qrc:/qt/qml/PlotsExample/qml/percentbar-example.qml"
		}
		ListElement {
			text: "Horizontal bar"
			url: "qrc:/qt/qml/PlotsExample/qml/horizontalbar-example.qml"
		}
		ListElement {
			text: "Horizontal stacked bar"
			url: "qrc:/qt/qml/PlotsExample/qml/horizontalstackedbar-example.qml"
		}
		ListElement {
			text: "Horizontal percent bar"
			url: "qrc:/qt/qml/PlotsExample/qml/horizontalpercentbar-example.qml"
		}
		ListElement {
			text: "Donuts"
			url: "qrc:/qt/qml/PlotsExample/qml/donuts-example.qml"
		}
		ListElement {
			text: "Polar"
			url: "qrc:/qt/qml/PlotsExample/qml/polar-example.qml"
		}
	}
}
