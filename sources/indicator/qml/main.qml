import QtQuick

import Example 1.0

WindowList {
	title: "Indicator"

	model: ListModel {
		ListElement {
			text: "Badge"
			url: "qrc:/qt/qml/IndicatorExample/qml/main-badge.qml"
		}
		ListElement {
			text: "Color marker"
			url: "qrc:/qt/qml/IndicatorExample/qml/main-colormarker.qml"
		}
		ListElement {
			text: "Needle"
			url: "qrc:/qt/qml/IndicatorExample/qml/main-needle.qml"
		}
		ListElement {
			text: "Progress indicator"
			url: "qrc:/qt/qml/IndicatorExample/qml/main-progressindicator.qml"
		}
		ListElement {
			text: "Progress overlay"
			url: "qrc:/qt/qml/IndicatorExample/qml/main-progressoverlay.qml"
		}
	}
}
