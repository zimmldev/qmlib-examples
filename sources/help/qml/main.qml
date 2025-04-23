import QtQuick

import Example 1.0

WindowList {
	title: "Help test"

	model: ListModel {
		ListElement {
			text: "help button"
			url: "qrc:/qt/qml/HelpExample/qml/main-helpbutton.qml"
		}
		ListElement {
			text: "help item"
			url: "qrc:/qt/qml/HelpExample/qml/main-helpitem.qml"
		}
	}
}
