import QtQuick
import QtQuick.Layouts

import Dialog 1.0
import Control 1.0
import Example 1.0

Window {
	height: 400
	width: 800

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Rectangle {
			id: rect
			anchors.fill: parent
			color: "transparent"
		}

		Timer {
			id: timer
			interval: 2000
			repeat: false
			running: false

			onTriggered: {
				rect.color = "transparent"
			}
		}

		ValidationDialog {
			id: dialog
			title: "The Title"

			Rectangle {
				color: "red"
				height: 40
				width: 50
			}

			onAccepted: {
				rect.color = pal.success
				timer.start()
			}

			onCanceled: {
				rect.color = pal.error
				timer.start()
			}
		}

		Column {
			anchors.centerIn: parent
			spacing: 10
			Button {
				text: "open dialog"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					dialog.open()
				}
			}
		}
	}
}

