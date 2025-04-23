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

		Rectangle {
			anchors.fill: parent
			color: pal.progress
		}
		Column {
			anchors.fill: parent
			Text {
				anchors.horizontalCenter: parent.horizontalCenter
				text: ">> " + searchBar.text + " <<"
				color: pal.onSurface
			}
			SearchResult {
				bar: SearchBar {
					id: searchBar
				}
				anchors.right: parent.right
				anchors.left: parent.left
				model: 50
				delegate: Rectangle {
					width: Window.width
					color: pal.error
					height: 20
				}
			}
		}
	}
}
