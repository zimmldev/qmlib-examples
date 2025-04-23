import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 1200
	width: 600

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10
			columnSpacing: 10
			rowSpacing: 10

			SearchBar {
				Layout.fillWidth: true
			}
		}
	}
}
