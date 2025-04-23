import QtQuick
import QtQuick.Layouts

import Icon 1.0
import Example 1.0

Window {
	height: 150
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10

			LargeIconLabel {
				Layout.alignment: Qt.AlignCenter
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				text: "no border"
			}

			LargeIconLabel {
				Layout.alignment: Qt.AlignCenter
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				borderColor: pal.progress
				style: LargeIconLabel.Style.Outlined
				text: "border"
			}

			LargeIconLabel {
				Layout.alignment: Qt.AlignCenter
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				text: "no border"
				title: "the title"
			}

			LargeIconLabel {
				Layout.alignment: Qt.AlignCenter
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				borderColor: pal.progress
				style: LargeIconLabel.Style.Outlined
				text: "border"
				title: "the title"
			}
		}
	}
}
