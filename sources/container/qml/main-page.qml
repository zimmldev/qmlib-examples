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

		Page {
			anchors.fill: parent

			header: TopAppBar {
				text: "page title"
				leadingIcon: "qrc:/qt/qml/ContainerExample/icons/circle-stroke.png"
				trailingIcon: "qrc:/qt/qml/ContainerExample/icons/square-stroke.png"
			}

			Rectangle {
				color: pal.surfaceContainer
				border.color: pal.surfaceContainerHighest
				border.width: 4
				anchors.fill: parent
			}
		}
	}
}

