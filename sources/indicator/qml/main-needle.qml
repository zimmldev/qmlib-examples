import QtQuick
import QtQuick.Layouts

import Indicator 1.0
import Example 1.0
import Panel 1.0 as P

Window {
	height: 150


	P.Slider {
		id: valueItem
		Layout.fillWidth: true
		text: "value " + value.toFixed(1)
		from: 0
		to: 100
		value: 30
	}

	P.Slider {
		id: yearBestItem
		Layout.fillWidth: true
		text: "year best " + value.toFixed(1)
		from: 0
		to: 100
		value: 60
	}

	P.Slider {
		id: personalBestItem
		Layout.fillWidth: true
		text: "personal best " + value.toFixed(1)
		from: 0
		to: 100
		value: 90
	}
	P.Slider {
		id: angleItem
		Layout.fillWidth: true
		text: "angle " + value.toFixed(1)
		from: 0
		to: 360
		value: 235
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		Needle {
			id: needle
			anchors.centerIn: parent
			value: valueItem.value
			yearBest: yearBestItem.value
			personalBest: personalBestItem.value
			angle: angleItem.value
		}
	}
}
