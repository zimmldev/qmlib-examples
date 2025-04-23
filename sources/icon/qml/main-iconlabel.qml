import QtQuick
import QtQuick.Layouts

import Icon 1.0
import Example 1.0
import Control 1.0

Window {
	height: 150

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		IconLabel {
			anchors.left: parent.left
			anchors.right: parent.right
			source: "qrc:/qt/qml/IconExample/icons/bug.png"
			color: pal.primary
			text: "no border"
			title: "The title"

			DebugBox {
				color: "red"
			}
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		IconLabel {
			anchors.centerIn: parent
			source: "qrc:/qt/qml/IconExample/icons/bug.png"
			color: pal.primary
			text: "The title"
			stretch: IconLabel.Stretch.Fill
			DebugBox {
				color: "red"
			}
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		IconLabel {
			anchors.centerIn: parent
			color: pal.primary
			text: "no border"

			DebugBox {
				color: "red"
			}
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		IconLabel {
			anchors.centerIn: parent
			source: "qrc:/qt/qml/IconExample/icons/bug.png"
			color: pal.primary
			text: "no border"

			DebugBox {
				color: "red"
			}
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		IconLabel {
			anchors.centerIn: parent
			source: "qrc:/qt/qml/IconExample/icons/bug.png"
			color: pal.primary

			DebugBox {
				color: "red"
			}
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		IconLabel {
			anchors.centerIn: parent
			source: "qrc:/qt/qml/IconExample/icons/bug.png"
			color: pal.primary
			text: "no border"
			title: "The title"

			DebugBox {
				color: "red"
			}
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true
		IconLabel {
			anchors.centerIn: parent
			width: 50

			source: "qrc:/qt/qml/IconExample/icons/bug.png"
			color: pal.primary
			text: "no border"
			title: "The title"

			DebugBox {
				color: "red"
			}
		}
	}

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 3
			anchors.fill: parent
			anchors.margins: 10

			IconLabel {
				Layout.alignment: Qt.AlignCenter
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				text: "no border"
				title: "The title"
			}

			IconLabel {
				Layout.alignment: Qt.AlignCenter
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				borderColor: pal.progress
				text: "border"
				title: "The title"
				style: IconLabel.Style.Outlined
			}
		}
	}
}
