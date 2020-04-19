| application |
application := WAAdmin register: CuOOraHeaderComponent asApplicationAt: 'cuoora'.
application sessionClass: CuOOraSession.


CuOOra removeSoleInstance .
CuOOraSampleLoader new loadExampleIn: CuOOra soleInstance .
