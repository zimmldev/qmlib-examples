import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Animation 1.0
import Example 1.0
import Icon 1.0
import Animation 1.0

Window {
	height: 500

	Rectangle {
		Layout.fillWidth: true
		Layout.fillHeight: true

		color: pal.progress
		MouseArea {
			id: mouseArea
			anchors.fill: parent
		}

		PressAnimation {
			source: mouseArea
		}
	}

	ItemDelegate {
		id: item
		Layout.fillWidth: true
		Layout.fillHeight: true

		background: Rectangle {
			color: pal.error

			PressAnimation {
				source: item
			}
		}
	}
}
