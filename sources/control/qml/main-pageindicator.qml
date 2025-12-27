import QtQuick
import QtQuick.Controls as C
import QtQuick.Layouts

import Control 1.0
import Example 1.0
import Panel 1.0 as P

Window {
	height: 300
	width: 300

	P.Segments {
		id: typeItem
		Layout.fillWidth: true
		text: "type"
		current: def
		Segment {
			id: def
			text: "Simple"
			value: PageIndicator.Type.Simple
		}
		Segment {
			text: "Extend"
			value: PageIndicator.Type.Extend
		}
	}

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
		type: typeItem.current.value

		onCurrentIndexChanged: {
			view.currentIndex = currentIndex
		}
	}
}
