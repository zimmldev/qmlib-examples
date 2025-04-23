import QtQuick
import QtQuick.Layouts

import Example 1.0
import Effects 1.0
import Panel 1.0 as P
import Control 1.0

Window {
	width: 640
	height: 480

	P.Slider {
		id: radiusItem
		Layout.fillWidth: true
		text: "radius " + value
		from: 0
		to: 100
		value: 10.
		discrete: true
	}
	P.Slider {
		id: qualityItem
		Layout.fillWidth: true
		text: "quality " + value
		from: 0
		to: 20
		value: 3
		discrete: true
		discreteIntervals: 20
	}
	P.Slider {
		id: verticalOffsetItem
		Layout.fillWidth: true
		text: "vertical offset " + value
		from: -50.
		to: 50.
		value: 0.
	}
	P.Slider {
		id: horizontalOffsetItem
		Layout.fillWidth: true
		text: "horizontal offset " + value
		from: -50.
		to: 50.
		value: 0.
	}
	P.Button {
		buttonText: "reset"
		type: Button.Type.Outlined
		onClicked: {
			radiusItem.value = 10.
			verticalOffsetItem.value = 0.
			horizontalOffsetItem.value = 0.
			qualityItem.value = 3
		}
	}

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Item {
			anchors.fill: parent

			Rectangle {
				anchors.fill: parent
				color: pal.surface
			}

			Rectangle {
				id: shadowedRectangle
				anchors.centerIn: parent
				color: pal.primary
				height: 100
				width: 100
				radius: 40
			}

			DropShadow {
				anchors.fill: shadowedRectangle
				source: shadowedRectangle
				offset: Qt.point(horizontalOffsetItem.value, verticalOffsetItem.value)
				radius: radiusItem.value
				quality: qualityItem.value
				color: pal.outline
			}
		}
	}
}
