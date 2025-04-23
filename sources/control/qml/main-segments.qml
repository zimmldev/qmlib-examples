import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 350
	width: 400

	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Column {
			anchors.fill: parent
			anchors.margins: 10
			spacing: 5
			
			Segments {
				anchors.horizontalCenter: parent.horizontalCenter

				Segment {
					text: "A"
				}
				Segment {
					text: "B"
				}
				Segment {
					text: "C"
				}
			}

			Segments {
				anchors.horizontalCenter: parent.horizontalCenter

				Segment {
					text: "choice A"
				}
				Segment {
					text: "choice B"
				}
				Segment {
					text: "choice C"
				}
			}

			Segments {
				anchors.horizontalCenter: parent.horizontalCenter

				Segment {
					text: "choice A"
				}
				Segment {
					text: "choice B"
					enabled: false
				}
				Segment {
					text: "choice C"
				}
			}

			Segments {
				anchors.horizontalCenter: parent.horizontalCenter

				Segment {
					text: "choice A"
				}
				Segment {
					text: "choice B"
					enabled: false
				}
				Segment {
					text: "choice C"
					enabled: false
				}
			}
			
			Segments {
				anchors.horizontalCenter: parent.horizontalCenter
				enabled: false

				Segment {
					text: "choice A"
				}
				Segment {
					text: "choice B"
				}
				Segment {
					text: "choice C"
				}
			}
			Segments {
				anchors.horizontalCenter: parent.horizontalCenter

				Segment {
					text: "A"
				}
				Segment {
					text: "choice B"
				}
				Segment {
					text: "choice C1"
				}
			}
		}
	}
}
