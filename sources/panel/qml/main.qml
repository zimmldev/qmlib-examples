import QtQuick

import Example 1.0

WindowList {
	title: "Panel"

	model: ListModel {
		ListElement {
			text: "buttons"
			url: "qrc:/qt/qml/PanelExample/qml/main-buttons.qml"
		}
		ListElement {
			text: "gallery"
			url: "qrc:/qt/qml/ControlExample/qml/main-gallery.qml"
		}
	}
}
