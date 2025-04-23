import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0
import Image 1.0

Window {
	height: 300
	width: 400

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true
		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			anchors.margins: 10

			spacing: 20

			NavigationBar {
				NavigationButton {
					text: "label"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
				}
				NavigationButton {
					text: "B"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/square-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				}
				Item {
					implicitHeight: parent.height
					width: 100
					Rectangle {
						anchors.left: parent.left
						anchors.right: parent.right
						anchors.verticalCenter: parent.verticalCenter
						height: 2 * parent.height
						color: pal.secondaryContainer
						border.color: pal.primary
						border.width: 2
					}
				}
				NavigationButton {
					text: "C"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				}
				NavigationButton {
					text: "D"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				}
			}

			NavigationBar {
				NavigationButton {
					text: "A"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
				}
				NavigationButton {
					text: "B"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/square-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				}
				NavigationButton {
					text: "C"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				}
				NavigationButton {
					text: "D"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				}
			}

			NavigationBar {
				NavigationButton {
					text: "A"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/circle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/circle-stroke.png"
				}
				NavigationButton {
					text: "B"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/square-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/square-stroke.png"
				}
				NavigationButton {
					text: "C"
					iconChecked: "qrc:/qt/qml/ControlExample/icons/triangle-filled.png"
					iconUnchecked: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
				}
				NavigationButton {
					text: "D"
					Avatar {
						text: "AA"
						anchors.centerIn: parent
					}
				}
			}
		}
	}
}
