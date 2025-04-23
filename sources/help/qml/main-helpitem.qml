import QtQuick
import QtQuick.Layouts
import QtCore

import Icon 1.0
import Help 1.0
import Panel 1.0 as P
import Control 1.0 as C
import Colors 1.0
import Example 1.0

Window {
	property var highlight: segmentC

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		ColumnLayout {
			anchors.fill: parent

			P.Section {
				id: buttonSection
				title: "Button section"
				Layout.fillWidth: true
				P.Button {
					text: "Reset the help"
					buttonText: "button"
					type: C.Button.Type.Filled
					onClicked: {
						settings.setValue("example", false)
					}

					Settings {
						id: settings
						category: "help"
					}
				}
				P.Button {
					text: "This is another button"
					buttonText: "button"
					type: C.Button.Type.Outlined
				}
			}

			P.Section {
				title: "Switch section"
				Layout.fillWidth: true
				P.Switch {
					text: "This is a switch"
				}
				P.Switch {
					text: "This is another switch"
				}
			}
			P.Section {
				id: segmentSection
				title: "Segment section"
				Layout.fillWidth: true
				P.Segments {
					text: "This is a segment"
					C.Segment {
						text: "A"
					}
					C.Segment {
						text: "B"
					}
					C.Segment {
						text: "C"
					}
				}
				P.Segments {
					id: segments
					text: "This is another segment"
					C.Segment {
						text: "A"
					}
					C.Segment {
						text: "B"
					}
					C.Segment {
						id: segmentC
						text: "C"
					}
				}
			}
		}

		Help {
			identifier: "example"
			model: [
				{
					element: highlight,
					text: "This is an example of help. The text is now too long to remain on a single line. Does it wrap now correctly ? "
				},
				{
					element: segmentSection,
					text: "Second help"
				}
			]
		}
	}
}
