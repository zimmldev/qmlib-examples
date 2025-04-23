import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Control

import Container 1.0
import Control 1.0 as C
import Example 1.0

Window {
	id: window
	height: 400
	width: 800

	Rectangle {
		id: page
		Layout.fillWidth: true
		Layout.fillHeight: true
		color: pal.surface

		Rectangle {
			anchors.left: parent.left
			width: 10
			color: pal.progress
			y: 0
			height: Control.Overlay.overlay.height - bottomSheetDragable.currentHeight
		}

		Column {
			anchors.centerIn: parent
			spacing: 10
			C.Button {
				text: "open dragable"
				type: C.Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetDragable.open()
				}
			}
			C.Button {
				text: "open not dragable"
				type: C.Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetNotDragable.open()
				}
			}
			C.Button {
				text: "open not modal"
				type: C.Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetNotModal.open()
				}
			}
			C.Button {
				text: "open big"
				type: C.Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetBig.open()
				}
			}
			C.Button {
				text: "open non opaque"
				type: C.Button.Type.Filled
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: {
					bottomSheetNonOpaque.open()
				}
			}
		}

		BottomSheet {
			id: bottomSheetDragable
			C.Button {
				text: "close"
				type: C.Button.Type.Outlined
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: bottomSheetDragable.close()
			}
			Text {
				text: "Content goes here!"
				color: pal.onSurface
			}
			Rectangle {
				width: 100
				height: 200
				anchors.horizontalCenter: parent.horizontalCenter
				color: pal.progress
			}
		}
		BottomSheet {
			id: bottomSheetNotDragable
			dragable: false
			C.Button {
				text: "close"
				type: C.Button.Type.Outlined
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: bottomSheetNotDragable.close()
			}
			Text {
				text: "Content goes here!"
				color: pal.onSurface
				anchors.horizontalCenter: parent.horizontalCenter
			}
			Rectangle {
				width: 100
				height: 200
				anchors.horizontalCenter: parent.horizontalCenter
				color: pal.progress
			}
		}
		BottomSheet {
			id: bottomSheetNotModal
			modal: false
			C.Button {
				text: "close"
				type: C.Button.Type.Outlined
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: bottomSheetNotModal.close()
			}

			Text {
				text: "Content goes here!"
				color: pal.onSurface
				anchors.horizontalCenter: parent.horizontalCenter
			}
			Rectangle {
				width: 100
				height: 200
				anchors.horizontalCenter: parent.horizontalCenter
				color: pal.progress
			}
		}
		BottomSheet {
			id: bottomSheetBig
			modal: false

			C.Button {
				text: "close"
				type: C.Button.Type.Outlined
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: bottomSheetBig.close()
			}

			Text {
				text: "Content goes here!"
				color: pal.onSurface
				anchors.left: parent.left
				anchors.right: parent.right
				horizontalAlignment: Text.AlignLeft
			}

			Rectangle {
				height: 1000
				anchors.left: parent.left
				anchors.right: parent.right
				color: pal.progress
				border.width: 10
				border.color: pal.error

				Column {
					anchors.top: parent.top
					anchors.left: parent.left
					anchors.right: parent.right
					spacing: 10

					C.Button {
						anchors.horizontalCenter: parent.horizontalCenter
						type: C.Button.Type.Filled
						text: "extended"
						onClicked: bottomSheetBig.toggleExtended()
					}
					C.Button {
						anchors.horizontalCenter: parent.horizontalCenter
						type: C.Button.Type.Filled
						text: "normal"
						onClicked: bottomSheetBig.toggleNormal()
					}
					C.Button {
						anchors.horizontalCenter: parent.horizontalCenter
						type: C.Button.Type.Filled
						text: "collapsed"
						onClicked: bottomSheetBig.toggleCollapsed()
					}
				}
			}

			fixed: Text {
				text: "Fixed content goes here!"
				color: pal.onSurface
				anchors.left: parent.left
				anchors.right: parent.right
				horizontalAlignment: Text.AlignRight
			}
		}
		BottomSheet {
			id: bottomSheetNonOpaque
			modal: false
			backgroundOpaque: false
			C.Button {
				text: "close"
				type: C.Button.Type.Outlined
				anchors.horizontalCenter: parent.horizontalCenter
				onClicked: bottomSheetNonOpaque.close()
			}
			Text {
				text: "Content goes here!"
				color: pal.onSurface
				anchors.horizontalCenter: parent.horizontalCenter
			}
			Rectangle {
				width: 100
				height: 1000
				anchors.horizontalCenter: parent.horizontalCenter
				color: pal.progress
				border.width: 10
				border.color: pal.error
			}
		}
	}
}
