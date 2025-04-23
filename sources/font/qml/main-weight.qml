import QtQuick
import QtQuick.Layouts

import Font 1.0
import Example 1.0
import Panel 1.0

Window {
	width: 640
	height: 480

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Text {
			color: pal.onSurface
			text: "This is a Weight test"
			font.weight: weightItem.value
			anchors.centerIn: parent
		}
	}

	Slider {
		id: weightItem
		text: "Weight"
		from: 100
		to: 1000
		discrete: true
		discreteIntervals: 9
		displayDecimals: 0
	}
}

