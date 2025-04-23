import QtQuick
import QtQuick.Layouts

import Dialog 1.0
import Control 1.0
import Example 1.0

Window {
	id: window
	height: 400
	width: 800

	SnackBarCreator {
		id: snackBarCreator
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Column {
			anchors.centerIn: parent
			spacing: 10

			Button {
				text: "trigger standard"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter

				onClicked: {
					snackbarNormal.open()
				}
			}

			Button {
				text: "trigger short"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter

				onClicked: {
					snackbarShort.open()
				}
			}

			Button {
				text: "trigger dynamic"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				property int index: 0
				DialogAction {
					id: act
					text: "action"
					action: (function() {
						console.log("Action clicked")

						snackbarShort.close()
					})
				}

				onClicked: {
					snackBarCreator.create({
											   text: "custom " + index,
											   duration: 5000,
											   action: act
										   },
										   window)
					index += 1
				}
			}

			Button {
				text: "trigger dynamic custom position"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				property int index: 0
				DialogAction {
					id: act2
					text: "action"
					action: (function() {
						console.log("Action clicked")

						snackbarShort.close()
					})
				}

				SnackBarCreator {
					id: snackBarCreator2
				}
				onClicked: {
					snackBarCreator.create({
											   text: "custom " + index,
											   duration: 5000,
											   action: act2
										   },
										   window)
					index += 1
				}
			}
		}
	}

	SnackBar {
		id: snackbarNormal
		text: "the text of the snackbar normal\nthe text of the snackbar normal"

		action: DialogAction {
			text: "action"
			action: (function() {
				console.log("Action clicked")

				snackbarNormal.close()
			})
		}
	}

	SnackBar {
		id: snackbarShort
		text: "the text of the snackbar short"
		duration: 500

		action: DialogAction {
			text: "action"
			action: (function() {
				console.log("Action clicked")

				snackbarShort.close()
			})
		}
	}
}

