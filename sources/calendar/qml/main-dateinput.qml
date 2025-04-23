import QtQuick
import QtQuick.Layouts

import Container 1.0
import Calendar 1.0
import Example 1.0

Window {
	height: 700
	width: 600

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		DateInput {
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.top: parent.top
			anchors.margins: 20
		}
	}
}
