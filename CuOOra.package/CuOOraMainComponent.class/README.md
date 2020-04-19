| application |
application := WAAdmin register: CuOOraMainComponent asApplicationAt: 'cuoora'.
application sessionClass: CuOOraSession.


CuOOra removeSoleInstance .
CuOOraSampleLoader new loadExampleIn: CuOOra soleInstance .