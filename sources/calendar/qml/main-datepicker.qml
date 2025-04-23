import QtQuick
import QtQuick.Layouts

import Container 1.0
import Calendar 1.0
import Example 1.0
import Control 1.0
import Panel 1.0 as P

Window {
	height: 800
	width: 500

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		DatePicker {
			id: datepicker

			onValidate: {
				console.log("USER ENTERED " + datepicker.date)
			}
		}

		Column {
			anchors.centerIn: parent
			spacing: 10
			Button {
				text: "open"
				type: Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					datepicker.open()
				}
			}
		}
	}
}
