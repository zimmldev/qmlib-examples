import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 350
	width: 450

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 3
			anchors.fill: parent
			anchors.margins: 10

			CheckBox {
				Layout.alignment: Qt.AlignCenter
			}
			CheckBox {
				Layout.alignment: Qt.AlignCenter
				enabled: false
			}
			CheckBox {
				Layout.alignment: Qt.AlignCenter
				enabled: false
				checked: true
			}
			CheckBox {
				text: "checkbox"
				Layout.alignment: Qt.AlignCenter
			}
			CheckBox {
				text: "checkbox"
				enabled: false
				Layout.alignment: Qt.AlignCenter
			}
		}
	}
}
