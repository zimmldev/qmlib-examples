import QtQuick

import Example 1.0

WindowList {
	title: "Font test"

	model: ListModel {
		ListElement {
			text: "Weight"
			url: "qrc:/qt/qml/FontExample/qml/main-weight.qml"
		}
	}
}
