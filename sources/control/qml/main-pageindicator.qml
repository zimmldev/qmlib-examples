import QtQuick
import QtQuick.Controls as C
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 300
	width: 300
	C.SwipeView {
		id: view
		Layout.fillWidth: true
		Layout.fillHeight: true
		Rectangle {
			color: pal.success
		}
		Rectangle {
			color: pal.progress
		}
		Rectangle {
			color: pal.error
		}
	}

	PageIndicator {
		Layout.alignment: Qt.AlignHCenter
		currentIndex: view.currentIndex
		count: view.count
		interactive: true

		onCurrentIndexChanged: {
			view.currentIndex = currentIndex
		}
	}
}
