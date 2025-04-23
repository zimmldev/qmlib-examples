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

		FullScreenDialog {
			id: smallDialog
			title: "The Title"

			function closeMedium() {
				mediumDialog.close()
			}

			actions: [
				DialogAction {
					text: "Save"
					enabled: !textfield.error
				}
			]

			Text {
				text: "some text for testing the content of the fullscreen dialog. This text should wrap and keep 24 pixel on both side of the page. If everything is fine, you hsould be now reading the second line of text"
				anchors.left: parent.left
				anchors.right: parent.right
				wrapMode: Text.WordWrap
				color: pal.onSurface
			}

			Button {
				text: "Open dialog"
				onClicked: {
					secondDialog.open()
				}
			}

			Dialog {
				id: secondDialog

				title: "Title"
				Text {
					text: "some text for testing the content of the fullscreen dialog."
					anchors.left: parent.left
					anchors.right: parent.right
				}
			}

			TextField {
				id: textfield
				labelText: "label text"
				anchors.left: parent.left
				anchors.right: parent.right
				error: text === ""
			}
		}

		FullScreenDialog {
			id: mediumDialog
			title: "The very very long title too big for header, this text should be elidded so we should read the end of the line"

			Rectangle {
				color: pal.errorContainer
				height: 400
				width: 100
				anchors.horizontalCenter: parent.horizontalCenter
			}
			Rectangle {
				color: pal.progressContainer
				height: 400
				width: 100
				anchors.horizontalCenter: parent.horizontalCenter
			}
			Rectangle {
				color: pal.successContainer
				height: 400
				width: 100
				anchors.horizontalCenter: parent.horizontalCenter
			}
			Rectangle {
				color: pal.primary
				height: 400
				width: 100
				anchors.horizontalCenter: parent.horizontalCenter
			}
			Rectangle {
				color: pal.tertiary
				height: 400
				width: 100
				anchors.horizontalCenter: parent.horizontalCenter
			}
		}

		FullScreenDialog {
			id: bigDialog
			title: "The Title"
			closeAffordance: false

			Rectangle {
				color: pal.errorContainer
				height: 40
				anchors.left: parent.left
				anchors.right: parent.right
			}
			Rectangle {
				color: pal.successContainer
				height: 40
				anchors.left: parent.left
				anchors.right: parent.right
			}
			Rectangle {
				color: pal.progressContainer
				height: 40
				anchors.left: parent.left
				anchors.right: parent.right
			}

			actions: [
				DialogAction { text: "Cancel" }
			]
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
		}
	}
}

