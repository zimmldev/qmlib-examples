import QtQuick
import QtQuick.Layouts

import Dialog 1.0
import Control 1.0
import Example 1.0

Window {
	id: window
	height: 400
	width: 800

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			spacing: 10

			Banner {
				text: "This is the text of the first banner. We will make it long to test the wrapping of the text."

				actions: [
					DialogAction { text: "Remind me later"	},
					DialogAction { text: "Add names" }
				]
			}

			Banner {
				text: "text of first banner"
			}

			Banner {
				text: "text of first banner"
			}
		}
	}
}

