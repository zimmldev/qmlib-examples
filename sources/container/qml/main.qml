import QtQuick

import Example 1.0

WindowList {
	title: "Container"

	model: ListModel {
		ListElement {
			text: "application window"
			url: "qrc:/qt/qml/ContainerExample/qml/main-applicationwindow.qml"
		}
		ListElement {
			text: "bottom sheet"
			url: "qrc:/qt/qml/ContainerExample/qml/main-bottomsheet.qml"
		}
		ListElement {
			text: "contracting layout"
			url: "qrc:/qt/qml/ContainerExample/qml/main-contractinglayout.qml"
		}
		ListElement {
			text: "contracting list view"
			url: "qrc:/qt/qml/ContainerExample/qml/main-contractinglistview.qml"
		}
		ListElement {
			text: "divider"
			url: "qrc:/qt/qml/ContainerExample/qml/main-divider.qml"
		}
		ListElement {
			text: "card"
			url: "qrc:/qt/qml/ContainerExample/qml/main-card.qml"
		}
		ListElement {
			text: "carousel"
			url: "qrc:/qt/qml/ContainerExample/qml/main-carousel.qml"
		}
		ListElement {
			text: "grid list"
			url: "qrc:/qt/qml/ContainerExample/qml/main-gridlist.qml"
		}
		ListElement {
			text: "list item"
			url: "qrc:/qt/qml/ContainerExample/qml/main-listitem.qml"
		}
		ListElement {
			text: "list view"
			url: "qrc:/qt/qml/ContainerExample/qml/main-listview.qml"
		}
		ListElement {
			text: "swipe list item"
			url: "qrc:/qt/qml/ContainerExample/qml/main-swipelistitem.qml"
		}
		ListElement {
			text: "page"
			url: "qrc:/qt/qml/ContainerExample/qml/main-page.qml"
		}
		ListElement {
			text: "remove list item"
			url: "qrc:/qt/qml/ContainerExample/qml/main-removelistitem.qml"
		}
		ListElement {
			text: "top app bar"
			url: "qrc:/qt/qml/ContainerExample/qml/main-topappbar.qml"
		}
	}
}
