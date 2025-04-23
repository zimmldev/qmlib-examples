import QtQuick

import Example 1.0

WindowList {
	title: "Animation"

	model: ListModel {
		ListElement {
			text: "Press animation"
			url: "qrc:/qt/qml/AnimationExample/qml/main-pressanimation.qml"
		}
	}
}
