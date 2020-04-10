test
testKillOpinions
	self assert: textblock2 opinions isNotEmpty.
	textblock2 killOpinions .
	self assert: textblock2 opinions isEmpty