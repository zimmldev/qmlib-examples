import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 350
	width: 450

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		SpinBox {
			anchors.centerIn: parent

			realValue: 5.0
			realFrom: 0.
			realTo: 10.
			decimals: 1
		}
	}
}
