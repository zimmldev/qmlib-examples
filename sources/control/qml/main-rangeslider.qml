import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 200
	width: 400

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			spacing: 10

			RangeSlider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
			}

			RangeSlider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				showValue: false
			}

			RangeSlider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				enabled: false
			}

			RangeSlider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				track: Rectangle {
					anchors.fill: parent
					gradient: Gradient {
						orientation: Gradient.Horizontal
						GradientStop { position: 0.0; color: "red" }
						GradientStop { position: 0.5; color: "yellow" }
						GradientStop { position: 1.0; color: "green" }
					}
				}
			}
		}
	}
}
