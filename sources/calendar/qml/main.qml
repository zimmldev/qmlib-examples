import QtQuick

import Example 1.0

WindowList {
	title: "Calendar test"

	model: ListModel {
		ListElement {
			text: "calendar"
			url: "qrc:/qt/qml/CalendarExample/qml/main-calendar.qml"
		}
		ListElement {
			text: "date input"
			url: "qrc:/qt/qml/CalendarExample/qml/main-dateinput.qml"
		}
		ListElement {
			text: "date picker"
			url: "qrc:/qt/qml/CalendarExample/qml/main-datepicker.qml"
		}
		ListElement {
			text: "day"
			url: "qrc:/qt/qml/CalendarExample/qml/main-day.qml"
		}
		ListElement {
			text: "swipe calendar"
			url: "qrc:/qt/qml/CalendarExample/qml/main-swipecalendar.qml"
		}
		ListElement {
			text: "time line"
			url: "qrc:/qt/qml/CalendarExample/qml/main-timeline.qml"
		}
		ListElement {
			text: "time picker"
			url: "qrc:/qt/qml/CalendarExample/qml/main-timepicker.qml"
		}
	}
}
