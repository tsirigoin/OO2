accessing
answersNotSame
	^ answers reject: [ :each | each user = self user ]