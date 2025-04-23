import QtQuick
import QtQuick.Layouts

import Container 1.0
import Example 1.0
import Control 1.0

Window {
	height: 400
	width: 800

	Column {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Rectangle {
			color: pal.error
			height: 40
			anchors.left: parent.left
			anchors.right: parent.right
		}

		Divider {
		}

		Rectangle {
			color: pal.success
			height: 40
			anchors.left: parent.left
			anchors.right: parent.right
		}

		Divider {
		}

		Rectangle {
			color: pal.progress
			height: 40
			anchors.left: parent.left
			anchors.right: parent.right
		}
	}
}

