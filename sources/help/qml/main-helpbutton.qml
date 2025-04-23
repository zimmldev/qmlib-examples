import QtQuick
import QtQuick.Layouts

import Help 1.0
import Example 1.0

Window {
	height: 300
	width: 200

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		HelpButton {
			anchors.centerIn: parent
			title: "Title of the help"
			Text {
				text: "Explain what this is done for"
				color: pal.onSurface
			}
		}
	}
}
