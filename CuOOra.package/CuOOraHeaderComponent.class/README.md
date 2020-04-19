| application |
application := WAAdmin register: CuOOraLoginComponent asApplicationAt: 'cuoora'.
application sessionClass: CuOOraSession.


CuOOra removeSoleInstance .
CuOOraSampleLoader new loadExampleIn: CuOOra soleInstance .
