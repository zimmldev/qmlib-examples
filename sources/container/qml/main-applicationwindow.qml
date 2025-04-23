import QtQuick
import QtQuick.Layouts

import Image 1.0
import Container 1.0
import Control 1.0
import Example 1.0

Window {
	id: window
	height: 400
	width: 800

	ListItem {
		Text {
			text: "Fullscreen " + fullscreen
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Button {
			type: Button.Type.Outlined
			text: "toggle"
			onClicked: {
				toggleFullscreen()
			}
			anchors.centerIn: parent
		}
	}
}

