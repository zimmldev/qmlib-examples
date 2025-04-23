import QtQuick

import Example 1.0

WindowList {
	title: "Image"

	model: ListModel {
		ListElement {
			text: "avatar"
			url: "qrc:/qt/qml/ImageExample/qml/main-avatar.qml"
		}
		ListElement {
			text: "avatar selector"
			url: "qrc:/qt/qml/ImageExample/qml/main-avatarselector.qml"
		}
		ListElement {
			text: "carousel"
			url: "qrc:/qt/qml/ImageExample/qml/main-carousel.qml"
		}
		ListElement {
			text: "handle"
			url: "qrc:/qt/qml/ImageExample/qml/main-handle.qml"
		}
		ListElement {
			text: "image"
			url: "qrc:/qt/qml/ImageExample/qml/main-image.qml"
		}
		ListElement {
			text: "image list"
			url: "qrc:/qt/qml/ImageExample/qml/main-imagelist.qml"
		}
		ListElement {
			text: "masked image"
			url: "qrc:/qt/qml/ImageExample/qml/main-maskedimage.qml"
		}
		ListElement {
			text: "zoomable image"
			url: "qrc:/qt/qml/ImageExample/qml/main-zoomableimage.qml"
		}
	}
}
