import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 700
	width: 400
	
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		DrawArea {
			anchors.fill: parent
			anchors.margins: 20
		}
	}
}
