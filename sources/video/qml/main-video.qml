import QtQuick
import QtQuick.Layouts

import Video 1.0
import Example 1.0

Window {
	Video {
		Layout.fillHeight: true
		Layout.fillWidth: true

		source: "qrc:/qt/qml/VideoExample/samples/video.mp4"
	}
}
