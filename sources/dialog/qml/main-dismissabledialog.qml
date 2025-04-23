import QtQuick
import QtQuick.Layouts
import QtCore

import Dialog 1.0
import Control 1.0
import Example 1.0

Window {
	height: 400
	width: 800

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		DismissableDialog {
			id: dialog
			title: "The Title"
			identifier: "testidentifier"

			Rectangle {
				color: "red"
				height: 40
				width: 300
			}

			actions: [
				DialogAction { text: "Close" }
			]
		}

		Column {
			anchors.centerIn: parent
			spacing: 10
			Button {
				text: "open"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					dialog.open()
				}
			}
			Button {
				text: "reset"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					settings.setValue(dialog.identifier, false)
				}

				Settings {
					id: settings
					category: "confirmation"
				}
			}
		}
	}
}
