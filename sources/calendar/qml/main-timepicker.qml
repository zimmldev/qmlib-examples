import QtQuick
import QtQuick.Layouts

import Container 1.0
import Calendar 1.0
import Example 1.0
import Control 1.0
import Panel 1.0 as P

Window {
	height: 900
	width: 900

	P.Segments {
		id: formatItem
		Layout.fillWidth: true
		text: "Format"
		current: defFormat
		Segment {
			id: defFormat
			text: "Half"
			value: TimePicker.Format.Half
		}
		Segment {
			text: "Day"
			value: TimePicker.Format.Day
		}
	}

	P.Segments {
		id: layoutItem
		Layout.fillWidth: true
		text: "Layout"
		current: defLayout
		Segment {
			id: defLayout
			text: "Vertical"
			value: TimePicker.Layout.Vertical
		}
		Segment {
			text: "Horizontal"
			value: TimePicker.Layout.Horizontal
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		TimePicker {
			id: timepicker
			format: formatItem.current.value
			layout: layoutItem.current.value
			time: 45000

			onValidate: {
				console.log("USER ENTERED " + timepicker.time)
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
					timepicker.open()
				}
			}
		}
	}
}
