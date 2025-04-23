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

			EmailField {
				Layout.fillWidth: true
			}
			EmailField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
			}

			EmailField {
				Layout.fillWidth: true
				enabled: false
				text: "abc"
			}
			EmailField {
				Layout.fillWidth: true
				type: TextField.Type.Outlined
				enabled: false
				text: "abc"
			}
		}
	}
}
