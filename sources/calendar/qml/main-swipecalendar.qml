import QtQuick
import QtQuick.Layouts

import Container 1.0
import Calendar 1.0
import Example 1.0

Window {
	height: 600
	width: 450

	ListItem {
		Layout.fillWidth: true
		Text {
			text: "Selected: <b>" + calendar.selected.getDate() + "." + (calendar.selected.getMonth() + 1) + "." + calendar.selected.getFullYear() + "</b>"
			color: pal.onSurface
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		SwipeCalendar {
			id: calendar
			anchors.centerIn: parent
		}
	}
}
