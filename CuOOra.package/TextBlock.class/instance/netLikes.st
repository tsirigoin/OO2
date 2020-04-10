as yet unclassified
netLikes
	"returns the total value of likes + dislikes"

	^ (opinions select: [ :opinion | opinion like equalsTrue ]) size
		- (opinions select: [ :opinion | opinion like not equalsTrue  ]) size