import QtQuick
import QtQuick.Layouts

import Container 1.0
import Example 1.0

Window {
	height: 600
	width: 400

	GridLayout {
		Layout.fillWidth: true
		Layout.fillHeight: true
		columns: 2

		Card {
			id: first
			height: 150
			width: 150
			Layout.alignment: Qt.AlignCenter

			Rectangle {
				color: pal.error
				anchors.fill: parent
			}

			Rectangle {
				anchors.fill: parent
				color: "blue"
				opacity: 0.2
				visible: first.hovered
			}
		}

		Card {
			Layout.alignment: Qt.AlignCenter
			height: 150
			width: 150

			Rectangle {
				color: pal.error
				height: 20
				width: 20
				anchors.centerIn: parent
			}
		}

		Card {
			type: Card.Type.Elevated
			Layout.alignment: Qt.AlignCenter
			height: 150
			width: 150

			Rectangle {
				color: pal.error
				anchors.fill: parent
			}
		}

		Card {
			type: Card.Type.Elevated
			Layout.alignment: Qt.AlignCenter
			height: 150
			width: 150

			Rectangle {
				color: pal.error
				height: 20
				width: 20
				anchors.centerIn: parent
			}
		}

		Card {
			type: Card.Type.Filled
			Layout.alignment: Qt.AlignCenter
			height: 150
			width: 150

			Rectangle {
				color: pal.error
				anchors.fill: parent
			}
		}

		Card {
			type: Card.Type.Filled
			Layout.alignment: Qt.AlignCenter
			height: 150
			width: 150

			Rectangle {
				color: pal.error
				height: 20
				width: 20
				anchors.centerIn: parent
			}
		}
	}
}

