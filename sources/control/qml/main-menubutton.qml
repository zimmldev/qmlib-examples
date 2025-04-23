import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 500
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		MenuButton {
			anchors.centerIn: parent
			actions: [
				MenuAction {
					text: "parameters"
					source: "qrc:/qt/qml/Control/icons/settings.png"
				},
				MenuAction {
					text: "visibility"
					source: "qrc:/qt/qml/Control/icons/visibility.png"
				}
			]
		}
	}
}
