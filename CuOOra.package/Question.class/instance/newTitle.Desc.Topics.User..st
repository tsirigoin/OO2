instance creation
newTitle: aTitle Desc: aDescription Topics: someTopics User: anUser
	"sets aTitle, aDesc and someTopics"

	title := aTitle.
	textblock := aDescription.
	topics addAll: someTopics.
	user := anUser