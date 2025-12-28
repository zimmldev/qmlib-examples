import QtQuick
import QtQuick.Layouts

import Gadget 1.0
import Control 1.0
import Example 1.0
import Icon 1.0

Window {
	width: 640
	height: 480

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		FormatDialog {
			id: item

			formats: [
				{ title: "Instagram", width: 100, height: 100 },
				{ title: "Facebook", width: 20, height: 100 }
			]
		}

		Button {
			type: Button.Type.Filled
			text: "open"

			anchors.centerIn: parent
			onClicked: {
				item.open()
			}
		}
	}
}

