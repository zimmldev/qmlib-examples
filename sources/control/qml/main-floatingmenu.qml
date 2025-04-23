import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 700
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingMenu {
			source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			openedText: "Opened" // This text is only displayed when opened
			actions: [
				MenuAction {
					text: "stroke"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					action: (function(){
					})
				},
				MenuAction {
					text: "filled"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
					action: (function(){
					})
				}
			]
		}
	}
}
