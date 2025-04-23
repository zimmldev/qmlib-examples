import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 250

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			anchors.margins: 10
			spacing: 0

			Rectangle {
				anchors.left: parent.left
				anchors.right: parent.right
				color: pal.error
				height: 50
				opacity: 0.6
			}

			TabBar {
				TabButton {
					source: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
				}
				TabButton {
					source: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				}
				TabButton {
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					visible: false
				}
				TabButton {
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				}
				TabButton {
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					visible: false
				}
			}

			Rectangle {
				anchors.left: parent.left
				anchors.right: parent.right
				color: pal.error
				height: 50
				opacity: 0.6
			}

			TabBar {
				TabButton {
					text: "A"
					source: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
				}
				TabButton {
					text: "B"
					source: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				}
				TabButton {
					text: "C"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					visible: false
				}
				TabButton {
					text: "D"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				}
				TabButton {
					text: "E"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					visible: false
				}
			}

			Rectangle {
				anchors.left: parent.left
				anchors.right: parent.right
				color: pal.error
				height: 50
				opacity: 0.6
			}

			TabBar {
				TabButton {
					text: "A"
					source: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
					type: TabButton.Type.Secondary
				}
				TabButton {
					text: "B"
					source: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
					type: TabButton.Type.Secondary
				}
				TabButton {
					text: "C"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					type: TabButton.Type.Secondary
					visible: false
				}
				TabButton {
					text: "D"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					type: TabButton.Type.Secondary
				}
				TabButton {
					text: "E"
					source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
					type: TabButton.Type.Secondary
					visible: false
				}
			}

			Rectangle {
				anchors.left: parent.left
				anchors.right: parent.right
				color: pal.error
				height: 50
				opacity: 0.6
			}
		}
	}
}
