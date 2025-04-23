import QtQuick
import QtQuick.Layouts

import Gadget 1.0
import Control 1.0
import Example 1.0
import Icon 1.0

Window {
	width: 640
	height: 480

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		ServerError {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
		}
	}
}

