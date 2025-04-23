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

		Dialog {
			id: smallDialog
			title: "The Title"

			Rectangle {
				color: "red"
				height: 40
				width: 50
			}

			actions: [
				DialogAction {
					text: "Accept"
					enabled: !textfield.error
				},
				DialogAction { text: "Cancel" }
			]
			TextField {
				id: textfield
				labelText: "label text"
				anchors.left: parent.left
				anchors.right: parent.right
				error: text === ""
			}
		}

		Dialog {
			id: mediumDialog
			title: "The Title"

			Rectangle {
				color: "red"
				height: 40
				width: 400
			}

			function closeMedium() {
				mediumDialog.close()
			}

			actions: [
				DialogAction { text: "Accept" },
				DialogAction { text: "Cancel" }
			]
		}

		Dialog {
			id: bigDialog
			title: "The Title"

			Rectangle {
				color: "red"
				height: 40
				width: 800
			}

			actions: [
				DialogAction { text: "Accept" },
				DialogAction { text: "Cancel" }
			]

			footerLeft: Button {
				text: "more"
				type: Button.Type.Text
			}
		}

		Dialog {
			id: highDialog
			title: "The Title"

			Column {
				anchors.left: parent.left
				anchors.right: parent.right
				spacing: 10
				Repeater {
					model: 100
					delegate: Rectangle {
						anchors.left: parent.left
						anchors.right: parent.right
						height: 50
						color: pal.success
					}
				}
			}

			actions: [
				DialogAction { text: "Accept" },
				DialogAction { text: "Cancel" }
			]

			footerLeft: Button {
				text: "more"
				type: Button.Type.Text
			}
		}

		Dialog {
			id: wideDialog
			title: "The Title"

			Row {
				height: 50
				spacing: 10
				Repeater {
					model: 100
					delegate: Rectangle {
						anchors.top: parent.top
						anchors.bottom: parent.bottom
						width: 50
						color: pal.success
					}
				}
			}

			actions: [
				DialogAction { text: "Accept" },
				DialogAction { text: "Cancel" }
			]

			footerLeft: Button {
				text: "more"
				type: Button.Type.Text
			}
		}

		Column {
			anchors.centerIn: parent
			spacing: 10
			Button {
				text: "small"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					smallDialog.open()
				}
			}
			Button {
				text: "medium"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					mediumDialog.open()
				}
			}
			Button {
				text: "big"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bigDialog.open()
				}
			}
			Button {
				text: "high"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					highDialog.open()
				}
			}
			Button {
				text: "wide"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					wideDialog.open()
				}
			}
		}
	}
}

