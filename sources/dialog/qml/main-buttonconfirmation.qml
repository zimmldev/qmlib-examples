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

		Column {
			anchors.centerIn: parent
			spacing: 10
			ButtonConfirmation {
				id: button
				title: "the title"
				text: "open"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				confirmationKey: "testidentifier"

				Rectangle {
					color: "red"
					height: 40
					width: 300
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

			Button {
				text: "reset"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					settings.setValue(button.confirmationKey, false)
				}

				Settings {
					id: settings
					category: "confirmation"
				}
			}
		}
	}
}
