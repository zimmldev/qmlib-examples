import QtQuick

import Example 1.0

WindowList {
	title: "Icon"

	model: ListModel {
		ListElement {
			text: "colorized icon"
			url: "qrc:/qt/qml/IconExample/qml/main-colorizedicon.qml"
		}
		ListElement {
			text: "icon label"
			url: "qrc:/qt/qml/IconExample/qml/main-iconlabel.qml"
		}
		ListElement {
			text: "large icon label"
			url: "qrc:/qt/qml/IconExample/qml/main-largeiconlabel.qml"
		}
	}
}
