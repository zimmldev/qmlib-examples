import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 150
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 3
			anchors.fill: parent
			anchors.margins: 10

			Switch {
				Layout.alignment: Qt.AlignCenter
			}
			Switch {
				enabled: false
				Layout.alignment: Qt.AlignCenter
			}
			Switch {
				enabled: false
				checked: true
				Layout.alignment: Qt.AlignCenter
			}
		}
	}
}
