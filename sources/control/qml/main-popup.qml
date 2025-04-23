import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 300
	width: 300
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Popup {
			id: popup
		}

		Button {
			text: "Open"
			type: Button.Type.Filled
			anchors.centerIn: parent

			onClicked: {
				popup.open()
			}
		}
	}
}
