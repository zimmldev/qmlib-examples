import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 250
	width: 600

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10
			columnSpacing: 10
			rowSpacing: 10

			PasswordField {
				Layout.fillWidth: true
			}
			PasswordField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
			}

			PasswordField {
				Layout.fillWidth: true
				enabled: false
				text: "abc"
			}
			PasswordField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				enabled: false
				text: "abc"
			}
		}
	}
}
