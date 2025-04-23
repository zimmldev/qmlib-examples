import QtQuick
import QtQuick.Layouts

import Container 1.0
import Calendar 1.0
import Example 1.0
import Panel 1.0 as P

Window {
	height: 400
	width: 450

	P.Switch {
		id: sideBySideItem
		text: "Side by side"
		checked: true
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Day {
			sideBySide: sideBySideItem.checked
			anchors.fill: parent
			anchors.margins: 10

			onClicked: function(uid) {
				console.log("CLICKED ON " + uid)
			}

			model: ListModel {
				ListElement {
					from: 0
					to: 10800
					title: "event 1"
					color: "cyan"
					uid: "e1"
					detail: "detail"
				}
				ListElement {
					from: 900
					to: 3600
					title: "event 2"
					color: "magenta"
					uid: "e2"
					detail: "detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail"
				}
				ListElement {
					from: 1800
					to: 3600
					title: "event 3"
					color: "red"
					uid: "e3"
				}
				ListElement {
					from: 7200
					to: 10800
					title: "event 4"
					color: "blue"
					uid: "e4"
				}
				ListElement {
					from: 18000
					to: 36000
					title: "event 5"
					color: "green"
					uid: "e5"
				}
				ListElement {
					from: 54000
					to: 72000
					title: "event 6"
					color: "yellow"
					uid: "e6"
				}
			}
		}
	}
}
