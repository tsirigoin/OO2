samples
loadExampleIn: instance
|pedro diego juan tOO1 tTest tSmalltalk pregPedro pregDiego listaTopicos|
instance newUser: 'a' Pass: 'a'.
"Usuarios"
instance newUser: 'pedro@cuoora.com' Pass: 'pedro@cuoora.com'.
pedro := instance user: 'pedro@cuoora.com'.
instance newUser: 'diego@cuoora.com' Pass: 'diego@cuoora.com'.
diego := instance user: 'diego@cuoora.com'.
instance newUser: 'juan@cuoora.com' Pass: 'juan@cuoora.com'.
juan := instance user: 'juan@cuoora.com'.

"Followers"
juan follow: diego.
pedro follow: juan.

"Tópicos:"
instance newTopic: 'OO1' Desc:  'Descripción de topico de ejemplo'.
tOO1 := (instance topics last).
instance newTopic: 'Test de unidad' Desc: 'Descripción de topico de ejemplo'.
tTest := (instance topics last).
instance newTopic: 'Smalltalk' Desc: 'Descripción de topico de ejemplo'.
tSmalltalk := (instance topics last).

"Preguntas"
listaTopicos := OrderedCollection new.
listaTopicos add: tOO1.
listaTopicos add: tTest.
instance newQuestion: '¿Para qué sirve el método SetUp?' 
					Text: 'Texto de pregunta de ejemplo' 
					Topics: listaTopicos
					User: pedro.
pregPedro := (instance questions last).

listaTopicos := OrderedCollection new.
listaTopicos add: tOO1.
listaTopicos add: tSmalltalk.
instance newQuestion: '¿Qué significa #messageNotUnderstood?' 
					Text: 'Texto de pregunta de ejemplo' 
					Topics: listaTopicos
					User: diego.
pregDiego := (instance questions last).

"Respuestas"

instance newAnswer: pregPedro 
			User: diego
			Text: 'Sirve para instanciar los objetos que son evaluados por el test en un único método y que se ejecute siempre antes de cada test.'.

instance newAnswer: pregDiego 
		User: pedro 
		Text: 'Significa que el objeto que recibió el mensaje no encontró ningún método para ejecutar en respuesta.'.