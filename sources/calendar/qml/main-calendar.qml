import QtQuick
import QtQuick.Layouts

import Container 1.0
import Calendar 1.0
import Control  1.0
import Example 1.0
import Panel 1.0 as P

Window {
	height: 600
	width: 450

	ListItem {
		Layout.fillWidth: true
		Text {
			text: "Selected: <b>" + calendar.date.getDate() + "." + (calendar.date.getMonth() + 1) + "." + calendar.date.getFullYear() + "</b>"
			color: pal.onSurface
		}
	}

	P.Segments {
		id: typeItem
		Layout.fillWidth: true
		text: "type"
		current: def
		Segment {
			id: def
			text: "Single"
			value: Calendar.Type.Single
		}
		Segment {
			text: "Range"
			value: Calendar.Type.Range
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Calendar {
			id: calendar
			anchors.centerIn: parent
			type: typeItem.current.value
		}
	}
}
