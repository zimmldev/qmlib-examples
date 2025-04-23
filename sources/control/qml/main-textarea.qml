import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 200
	width: 400

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			anchors.margins: 10

			TextArea {
				anchors.left: parent.left
				anchors.right: parent.right
				placeholderText: "placeholder"
			}
		}
	}
}
