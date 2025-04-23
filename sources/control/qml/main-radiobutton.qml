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

		RadioButtons {
			anchors.centerIn: parent
			RadioButton {
				text: "A"
			}
			RadioButton {
				text: "answer B"
				enabled: false
			}
			RadioButton {
				text: "answer C"
				enabled: false
				checked: true
			}
			RadioButton {
				text: "answer D"
			}
			RadioButton {
				enabled: false
			}
		}
	}
}
