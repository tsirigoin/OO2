accessing
netLikes
	"returns the total value of likes + dislikes"

	^ (opinions select: [ :opinion | opinion like ]) size
		- (opinions reject: [ :opinion | opinion like ]) size