import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 150

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Column {
			anchors.centerIn: parent
			spacing: 10

			SwipeButton {
				anchors.horizontalCenter: parent.horizontalCenter
				text: "test"
			}

			SwipeButton {
				anchors.horizontalCenter: parent.horizontalCenter
				text: "test"
				source: "qrc:/qt/qml/Control/icons/more-vertical.png"
			}

			SwipeButton {
				anchors.horizontalCenter: parent.horizontalCenter
				text: "test"
				color: pal.error
				width: 300
			}
		}
	}
}
