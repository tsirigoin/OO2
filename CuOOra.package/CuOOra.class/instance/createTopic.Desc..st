as yet unclassified
createTopic: aTopicName Desc: aDescription
	"crea una nueva instancia de Topic con aTopicName y aDescription"

	topics add: [ Topic newName: aTopicName Desc: aDescription ]