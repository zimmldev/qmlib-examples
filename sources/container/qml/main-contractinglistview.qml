import QtQuick
import QtQuick.Layouts

import Container 1.0
import Example 1.0
import Control 1.0

Window {
	height: 400
	width: 800

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		ContractingListView {
			anchors.fill: parent
			minimumHeaderHeight: 100
			header: Rectangle {
				height: 400
				color: pal.progress
				border.color: pal.error
				border.width: 100
				anchors.left: parent.left
				anchors.right: parent.right
			}

			model: 100

			delegate: Rectangle {
				width: ListView.view.width
				color: pal.progress
				border.color: pal.success
				border.width: 10
				height: 50
			}
		}
	}
}

