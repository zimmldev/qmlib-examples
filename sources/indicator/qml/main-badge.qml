import QtQuick
import QtQuick.Layouts

import Indicator 1.0
import Icon 1.0
import Example 1.0
import Control 1.0

Window {
	height: 500
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		GridLayout {
			columns: 2
			anchors.fill: parent
			anchors.margins: 10

			ColorizedIcon {
				source: "qrc:/qt/qml/Control/icons/check.png"
				Layout.alignment: Qt.AlignCenter
				color: pal.onSurface

				Badge {
					type: Badge.Type.Small
				}
			}
			ColorizedIcon {
				source: "qrc:/qt/qml/Control/icons/check.png"
				Layout.alignment: Qt.AlignCenter
				color: pal.onSurface

				Badge {
					type: Badge.Type.Large
					value: 1
				}
			}
			ColorizedIcon {
				source: "qrc:/qt/qml/Control/icons/check.png"
				Layout.alignment: Qt.AlignCenter
				color: pal.onSurface

				Badge {
					type: Badge.Type.Large
					value: 12
				}
			}
			ColorizedIcon {
				source: "qrc:/qt/qml/Control/icons/check.png"
				Layout.alignment: Qt.AlignCenter
				color: pal.onSurface

				Badge {
					type: Badge.Type.Large
					value: 123
				}
			}
			ColorizedIcon {
				source: "qrc:/qt/qml/Control/icons/check.png"
				Layout.alignment: Qt.AlignCenter
				color: pal.onSurface

				Badge {
					type: Badge.Type.Large
					value: 1234
				}
			}
		}
	}
}
