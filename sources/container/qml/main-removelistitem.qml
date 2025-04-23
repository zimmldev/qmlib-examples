import QtQuick
import QtQuick.Layouts

import Image 1.0
import Container 1.0
import Control 1.0
import Example 1.0

Window {
	height: 400
	width: 800

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			spacing: 10
			RemoveListItem {
				text: "headline"
				Text {
					text: "leading"
					color: pal.onSurface
					anchors.verticalCenter: parent.verticalCenter
				}

				Avatar {
					text: "aa"
					source: "qrc:/qt/qml/ContainerExample/icons/triangle-filled.png"
				}

				trailingItem: Text {
					text: "trailing"
					color: pal.onSurface
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			RemoveListItem {
				text: "headline"
				supportingText: "supporting text"
				Avatar {
					text: "aa"
					source: "qrc:/qt/qml/ContainerExample/icons/triangle-filled.png"
				}
			}
			RemoveListItem {
				text: "headline"
				supportingText: "multiline supporting text for supporting text"
				Avatar {
					text: "aa"
					source: "qrc:/qt/qml/ContainerExample/icons/triangle-filled.png"
				}
				trailingItem: Text {
					text: "trailing"
					color: pal.onSurface
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			RemoveListItem {
				text: "now test with a very long headline"
				Avatar {
					text: "aa"
					source: "qrc:/qt/qml/ContainerExample/icons/triangle-filled.png"
				}
			}
			RemoveListItem {
				text: "now test with a very long headline"
				Avatar {
					text: "aa"
					source: "qrc:/qt/qml/ContainerExample/icons/triangle-filled.png"
				}
				trailingItem: Text {
					text: "trailing"
					color: pal.onSurface
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			RemoveListItem {
				text: "And finaly an highlighted element"
				highlight: true
				Avatar {
					text: "aa"
					source: "qrc:/qt/qml/ContainerExample/icons/triangle-filled.png"
				}
				trailingItem: Text {
					text: "trailing"
					color: pal.onSurface
					anchors.verticalCenter: parent.verticalCenter
				}
			}
		}
	}
}

