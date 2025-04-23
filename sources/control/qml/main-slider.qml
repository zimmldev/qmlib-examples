import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 800
	width: 400

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			spacing: 10

			Slider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
			}

			Slider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				showValue: false
			}

			Slider {
				id: discreteSlider
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				discrete: true
			}

			Text {
				anchors.horizontalCenter: parent.horizontalCenter
				text: discreteSlider.value
				color: pal.onSurface
			}

			Slider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				discrete: true
				enabled: false
			}

			Slider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				enabled: false
			}

			Slider {
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

			Slider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				enabled: false
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

			Slider {
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 20
				type: Slider.Centered
			}
		}
	}
}
