import QtQuick
import QtQuick.Layouts

import Example 1.0
import Container 1.0
import Control 1.0

Window {
	Carousel {
		Layout.fillHeight: true
		Layout.fillWidth: true

		onPressAndHold: function(index) {
			console.log("PRESS AND HOLD " + index)
		}

		content: [
			Rectangle {
				anchors.fill: parent
				color: pal.successContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.errorContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.progressContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.successContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.errorContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.progressContainer
			}
		]
	}

	Carousel {
		Layout.fillHeight: true
		Layout.fillWidth: true

		onPressAndHold: function(index) {
			console.log("PRESS AND HOLD " + index)
		}

		footer: Button {
			text: "+"
			type: Button.Type.Text
			anchors.fill: parent
			onClicked: {
				console.log("CLICKED !!")
			}
		}

		content: [
			Rectangle {
				anchors.fill: parent
				color: pal.successContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.errorContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.progressContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.successContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.errorContainer
			},
			Rectangle {
				anchors.fill: parent
				color: pal.progressContainer
			}
		]
	}
}
