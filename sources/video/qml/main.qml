import QtQuick

import Example 1.0

WindowList {
	title: "Video"

	model: ListModel {
		ListElement {
			text: "video"
			url: "qrc:/qt/qml/VideoExample/qml/main-video.qml"
		}
	}
}
