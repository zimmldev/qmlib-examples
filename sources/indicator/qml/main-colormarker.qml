import QtQuick
import QtQuick.Layouts

import Indicator 1.0
import Example 1.0

Window {
	height: 150

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			spacing: 5

			Rectangle {
				height: 20
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 10
				color: pal.surfaceContainer

				ColorMarker {
					status: ColorMarker.Status.Ok
				}
			}

			Rectangle {
				height: 20
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 10
				color: pal.surfaceContainer

				ColorMarker {
					status: ColorMarker.Status.Nok
				}
			}

			Rectangle {
				height: 20
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 10
				color: pal.surfaceContainer

				ColorMarker {
					status: ColorMarker.Status.Processing
				}
			}

			Rectangle {
				height: 20
				anchors.left: parent.left
				anchors.right: parent.right
				anchors.margins: 10
				color: pal.surfaceContainer

				ColorMarker {
				}
			}
		}
	}
}
