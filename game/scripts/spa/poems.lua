poem_author = ''

function poem(poemname)
	poem_enabled = true
	autotimer = 0

	if poemname == 'poem_y1' then
		poem_author = 'yuri'
		poemtext = {
			'Fantasma bajo la luz','',
			
			'Se iluminan, bajo el resplandor ambarino, los rizos de mi cabello.',
			'Bañándose.',
			'Debe ser esta.',
			'La última farola que ha resistido el paso del tiempo.',
			'La última en ser sustituida por el enfermizo tono azul verdoso del futuro.',
			'Me baño. Calma; respiro el aire del presente, pero vivo en el pasado.',
			'La luz parpadea.',
			'Yo parpadeo en respuesta.'};

	elseif poemname == 'poem_y2' then
		poem_author = 'yuri'
		poemtext = {
			'El mapache','',
			
			'Ocurrió a medianoche, mientras cortaba pan en rodajas para picotear.',
			'Un gruñido llamó mi atención. Había un mapache tras la ventana.',
			'Creo que fue la primera vez que noté mis insólitas tendencias.',
			'Le di al mapache un trozo de pan, siendo, en el fondo, consciente de las consecuencias.',
			'Consciente de que un mapache que es alimentado siempre vuelve a por más.',
			'La seductora belleza de mi cuchillo era el síntoma.',
			'El pan, mi curiosidad hambrienta.',
			'El mapache, una urgencia.','',

			'La luna cambia de fase, y refleja más la luz en mi cuchillo.',
			'La misma luz que brilla en los ojos de mi amigo el mapache.',
			'Corto el pan, fresco y blando. El mapache se emociona.',
			'O quizá estoy proyectando mis emociones en el animal nuevamente satisfecho.','',

			'El mapache ha empezado a seguirme.',
			'Podría decirse que nos hemos habituado el uno al otro.',
			'El mapache tiene hambre cada vez con más frecuencia, así que mi pan siempre está a mano.',
			'Cuando blando mi cuchillo, el mapache muestra su entusiasmo.',
			'Un torrente de sangre. Condicionamiento clásico de Pavlov. Corto el pan.',
			'Vuelvo a sentirme yo misma.'}
	
	elseif poemname == 'poem_y3' then
		poem_author = 'yuri'
		poemtext = {
			'Playa','',
			'Millones de años invertidos en su creación: maravilla.',
			'Donde el vientre de la tierra emerge caóticamente a la superficie.',
			'Bajo un tranquilo cielo azul, una extensión de felicidad.',
			'Pero bajo unas nubes grises de tormenta, un enigma sin fin.',
			'El mejor mundo para perderse',
			'es aquel en el que todo puede encontrarse.','',

			'Una solo puede hacer un castillo de arena donde la arena está húmeda.',
			'Pero allí donde la arena está húmeda, viene la marea.',
			'¿Lamerá esta tus cimientos suavemente hasta que te des por vencido?',
			'¿O te derribará en un abrir y cerrar de ojos una ola repentina?',
			'Sea como sea, el resultado es el mismo.',
			'Aun así, seguimos haciendo castillos de arena.','',

			'Me yergo allí donde la espuma envuelve mis tobillos.',
			'Donde los dedos de mis pies juguetean con la arena.',
			'El aire salado es terapéutico.',
			'La brisa es suave, pero poderosa.',
			'Hundo mis dedos en la última frontera, tentada por los espumosos tentáculos.',
			'Me doy la vuelta, y abandono mi paz en la orilla, a merced de la erosión.',
			'Empiezo a caminar, y regreso a la tierra para siempre.'};

	elseif poemname == 'poem_y3b' then
		poem_author = 'yuri'
		poemtext = {
			'Fantasma bajo la luz, parte 2','',

			'Se iluminan, bajo el resplandor ambarino, los rizos de mi cabello.',
			'Bañándose.',
			'En la distancia, una luz azul verdoso parpadea.',
			'Una solitaria figura atraviesa su camino –una silueta que obstruye el misterioso brillo.',
			'Mi corazón late con fuerza. La silueta crece. Más cerca. Más cerca.',
			'Abro mi paraguas, invocando una sombra para que me oculte.',
			'Pero es demasiado tarde.',
			'Él avanza hacia la farola. Grito y tiro mi paraguas.',
			'La luz parpadea. Mi corazón late con fuerza. Él sube su brazo.','',

			'El tiempo se para.','',

			'Lo único que delata su movimiento es el parpadeo de la luz ambarina en su largo brazo.',
			'La luz parpadea al ritmo de los latidos de mi corazón,',
			'incitándome a sucumbir ante esta emoción prohibida.',
			'¿Alguna vez has oído hablar de una sensación de calidez fantasmal?',
			'Desisto de intentar entenderla, me río.',
			'Entender las cosas está sobrevalorado.',
			'Toco su mano. El parpadeo cesa.',
			'Los fantasmas son azul verdoso. Mi corazón es ámbar.'};

	elseif poemname == 'poem_y22' then
		poem_author = 'yuri'
		poemtext = {
			'Engranaje','',

			'Un engranaje que gira. Sobre su eje. Triturando. La cabeza de un tornillo.',
			'Engranajes en línea. Cielo que cae. Siete estacas sagradas.',
			'Un barco amarrado. Un portal a otro mundo. Una cuerda fina unida a',
			'una cuerda gruesa. Un cinturón roto. Engranajes parabólicos.',
			'Universo en expansión. Tiempo controlado por el deslizar de unas ruedas',
			'dentadas. Existencia de Dios. Nadando en mar abierto en todas las direcciones.',
			'Ahogándose. Una plegaria escrita en sangre. Una plegaria escrita en serpientes',
			'devoradoras de tiempo con ojos humanos.',
			'Una trama conectando todos los ojos de los humanos vivos. Un',
			'calidoscopio de serpientes sagradas. Engranajes exponenciales.',
			'Un cielo de estrellas explotando. Dios disconforme con la existencia de Dios.',
			'Un engranaje rotando en seis dimensiones.',
			'Cuarenta engranajes y un reloj que hace tic-tac. Un reloj que suena cada segundo.',
			'La cabeza de un tornillo de estacas sagradas atadas a',
			'la existencia de un barco amarrado a otro mundo. Un caleidoscopio de sangre',
			'escrita en relojes. Una plegaria',
			'devoradora de tiempo conectando un cielo de cuarenta engranajes y ojos humanos',
			'abiertos en todas direcciones. Engranajes que respiran. Cabeza de tornillo',
			'que respira.',
			'Barco que respira. Portal que respira. Serpientes que respiran. Dios que respira.',
			'Sangre que respira. Estacas sagradas que respiran.',
			'Ojos humanos que respiran. Tiempo que respira. Plegaria que respira.',
			'Cielo que respira. Engranaje que respira.'}
			
	elseif poemname == 'poem_y23' then
		poem_author = 'yuri'
		poemtext = {''}

	elseif poemname == 'poem_n1' then
		poem_author = 'natsuki'
		poemtext = {
			'Las águilas pueden volar','',

			'Los monos pueden trepar.',
			'Los saltamontes pueden saltar.',
			'Los caballos pueden galopar.',
			'Los búhos pueden planear.',
			'Los guepardos pueden correr.',
			'Las águilas pueden volar.',
			'Los humanos pueden intentarlo.',
			'Pero eso es todo.'};
	
	elseif poemname == 'poem_n2' then
		poem_author = 'natsuki'
		poemtext = {
			'A Amy le gustan las arañas','',

			'¿Sabes qué dicen sobre Amy?',
			'Que le gustan las arañas.',
			'¡Las sucias, turbias, peludas y horrendas arañas!',
			'Por eso no soy su amiga.','',

			'Amy tiene una voz bonita.',
			'La oí cantar mi canción de amor favorita.',
			'Cada vez que cantaba el estribillo, mi corazón latía',
			'al ritmo de sus palabras.',
			'Pero le gustan las arañas.',
			'Por eso no soy su amiga.','',

			'Una vez, mi pierna quedó tremendamente malherida.',
			'Amy me ayudó y me llevó a la enfermería.',
			'Intenté que no me tocara, me daba grima.',
			'Porque como le gustan las arañas, tendría',
			'las manos asquerosas.',
			'Por eso no soy su amiga.','',

			'Amy tiene muchos amigos.',
			'Siempre la veo hablando con todo el mundo.',
			'Probablemente hable sobre arañas.',
			'¿Y si a sus amigos también empiezan a',
			'gustarles las arañas?',
			'Por eso no soy su amiga.','',

			'Me da igual si tiene otras aficiones.',
			'Me da igual si es un secreto.',
			'Me da igual si no le hace daño a nadie.','',

			'Es asqueroso.',
			'Ella es asquerosa.',
			'El mundo está mejor sin gente a la que',
			'le gusten las arañas.',

			'Y se lo haré saber a todos si hace falta.'};
	
	elseif poemname == 'poem_n2b' then
		poem_author = 'natsuki'
		poemtext = {[[
UHVlZG8gc2VudGlyIGxhIHRlcm51cmEg
ZGUgc3UgcGllbCBhIHRyYXbDqXMgZGVs
IGN1Y2hpbGxvLCBjb21vIHNpIGVzdGUg
ZnVlcmEgdW5hIGV4dGVuc2nDs24gZGUg
bWkgc2VudGlkbyBkZWwgdGFjdG8uCk1p
IGN1ZXJwbyBwcsOhY3RpY2FtZW50ZSBz
ZSBjb252dWxzaW9uYS4KSGF5IGFsZ28g
aW5jcmXDrWJsZW1lbnRlIHRlbnVlLCBi
aWVuIHByb2Z1bmRvLCBxdWUgZ3JpdGEg
cGFyYSByZXNpc3RpciBlc3RlIHBsYWNl
ciBpbmNvbnRyb2xhYmxlLgpQZXJvIHlh
IHPDqSBxdWUgZXN0b3kgbGxlZ2FuZG8g
YSBtaXMgbMOtbWl0ZXMuCk5vIHB1ZWRv
4oCmIG5vIHB1ZWRvIHBhcmFybWUu]]};
	
	elseif poemname == 'poem_n3' then
		poem_author = 'natsuki'
		poemtext = {
			'Seré tu playa','',

			'Tu mente está tan llena de problemas y miedos',
			'que tus maravillas se atenuaron a lo largo de los años.',
			'Pero hoy te propongo un lugar especial,',
			'una playa a la que podemos ir.','',

			'Una orilla que se difumina en el horizonte.',
			'Un mar que resplandece con centelleante luz.',
			'Los muros de tu mente se diluirán',
			'bajo el brillo solar.','',

			'Seré la playa que borre tus preocupaciones.',
			'Seré la playa con la que sueñes despierta cada día.',
			'Seré la playa que haga que tu corazón se acelere',
			'de una forma que creías haber olvidado hace tiempo.','',

			'Enterremos tus pesados pensamientos',
			'en un montón de arena.',
			'Báñate en los rayos solares y dame la mano.',
			'Lava tus inseguridades en el mar salado.',
			'Y déjame ver tu brillo.','',

			'Abandonemos tus recuerdos en un sendero de pisadas.',
			'Libérate en mi nave de viento.',
			'Y recuerda las razones por las que eres maravillosa',
			'cuando presiones tus labios en los míos.','',

			'Seré la playa que borre tus preocupaciones.',
			'Seré la playa con la que sueñes despierta cada día.',
			'Seré la playa que haga que tu corazón se acelere',
			'de una forma que creías haber olvidado hace tiempo.',
			'Pero si me dejas estar a tu lado',
			'-tu propia playa, tu propia escapatoria-,',
			'aprenderás a amarte otra vez.'};

	elseif poemname == 'poem_n3b' then
		poem_author = 'natsuki'
		poemtext = {
			'Por ti','',

			'Mañana será un día más luminoso, pues yo estaré cerca.',
			'Pero cuando el hoy es sombrío, solo puedo mirar hacia abajo.',
			'Mi mirada va un poco más allá',
			'porque tú me miras.','',

			'Cuando quiero decir algo, ¡lo digo gritando!',
			'Pero mis verdaderas emociones nunca pueden salir.',
			'Mis palabras están un poco menos vacías',
			'porque tú me escuchas.','',

			'Cuando algo está por encima de mí, me propongo',
			'alcanzar las estrellas.',
			'Pero cuando me siento pequeña, no llego muy lejos.',
			'Mi figura es un poco más alta',
			'porque te sientas conmigo.','',

			'Creo en mí con todo mi corazón.',
			'¿Pero qué hago cuando todo está destrozado?',
			'Mi fe es un poco más fuerte',
			'porque tú confías en mí.','',

			'Mi bolígrafo siempre pone mis sentimientos a prueba.',
			'No soy una buena escritora, pero doy lo mejor de mí misma.',
			'Mis poemas son un poco más valiosos',
			'porque tú piensas en mí.','',

			'Por ti, por ti, por ti.'};
	
	elseif poemname == 'poem_n23' then
		poem_author = 'natsuki'
		poemtext = {
			'No sé cómo hablar de esto. Pero hay algo que me lleva',
			'preocupando un tiempo.',
			'Yuri ha estado actuando de una forma algo rara últimamente.',
			'Solo llevas aquí unos días, así que probablemente',
			'no sabes a qué me refiero. Pero normalmente ella no es así.',
			'Siempre ha sido tranquila y educada',
			'y amable... ya sabes.','',

			'Vale... esto es bastante embarazoso, pero me estoy obligando',
			'a mí misma a contenerme. La verdad es que estoy MUY',
			'preocupada por ella. Pero si intento hablar con ella,',
			'seguro que se vuelve a enfadar conmigo otra vez. No',
			'sé qué hacer. Creo que ella solo te escuchará a ti. No sé por qué.',
			'Pero, por favor, intenta hacer algo. A lo mejor puedes',
			'convencerla para que vaya a terapia. ','',

			'Siempre he querido intentar llevarme mejor con Yuri y me',
			'duele muchísimo ver',
			'lo que está pasando. Sé que luego voy a odiarme a mí misma',
			'por haber admitido eso, pero ahora mismo',
			'no me importa. Me siento muy inútil. Así que, por favor,',
			've si puedes hacer algo para ayudar.',
			'No quiero que le pase nada malo. Te haré magdalenas si hace',
			'falta. Solo, por favor,',
			'intenta hacer algo.','',

			'Y en cuanto a Monika... No sé por qué, pero se muestra',
			'muy indiferente con todo esto. Parece que solo quiere',
			'que pasemos del tema. Así que ahora estoy enfadada con ella,',
			'y por eso me estoy dirigiendo a ti.',
			'¡¡¡QUE NO SE ENTERE DE QUE TE HE ESCRITO ESTO!!!',
			'Tú haz como que te he dado un poema muy bueno, ¿vale?',
			'Cuento contigo. Gracias por leerme.'};
	
	elseif poemname == 'poem_s1' then
		poem_author = 'sayori'
		poemtext = {
			'Querido Cielito:','',

			'La forma en que brillas a través de mis cortinas por la mañana',
			'hace que sienta que me has echado de menos.',
			'Besas mi frente para ayudarme a salir de la cama.',
			'Me haces borrar el sueño de mis ojos.','',

			'¿Estás pidiéndome que salga y juegue?',
			'¿Estás confiando en mí para que olvide los días lluviosos?',
			'Miro hacia arriba. El cielo está azul.',
			'Es un secreto, pero yo también confío en ti.','',

			'Si no fuese por ti, podría dormir para siempre.',
			'Pero no estoy enfadada.','',

			'Quiero mi desayuno.'};
	
	elseif poemname == 'poem_s2' then
		poem_author = 'sayori'
		poemtext = {
			'Botellas','',

			'Abro mi cráneo como si fuera la tapa de un tarro de galletas.',
			'Es el sitio secreto donde guardo todos mis sueños.',
			'Pequeñas esferas de luz solar, acurrucadas como una camada de gatitos.',
			'Introduzco mi pulgar y mi índice y extraigo una.',
			'Está calentita y hace cosquillas.',
			'¡Pero no hay tiempo que perder! La pongo en una botella para mantenerla a salvo.',
			'Y pongo la botella en la estantería con todas las demás botellas.',
			'Pensamientos felices, pensamientos felices, pensamientos felices',
			'en botellas, todos en fila.','',

			'Gracias a mi colección hago muchos amigos.',
			'Cada botella es la luz de una estrella a enmendar.',
			'A veces mi amigo se siente de una determinada forma.',
			'Saco una botella para salvar el día.','',

			'Noche tras noche, más sueños.',
			'Amigo tras amigo, más botellas.',
			'Mis dedos cada vez llegan más lejos.',
			'Como si explorasen una cueva oscura, descubren los secretos escondidos',
			'en los recovecos y rincones.',
			'Cavando y cavando.',
			'Rascando y rascando.','',

			'Soplo el polvo de los tapones de mis botellas.',
			'No parece que haya pasado el tiempo.',
			'Mi estantería podría haber aguantado vacía más tiempo.',
			'Mis amigos miran a través de mi puerta principal, que está bloqueada.',
			'Por fin, todo acabado. Abro, y vienen mis amigos.',
			'Entran, con prisas. ¿Tanto quieren mis botellas?',
			'Las saco frenéticamente de la estantería, una detrás de otra.','',

			'Ofreciéndoselas a todos y cada uno de mis amigos.',
			'Todas y cada una de las botellas.',
			'Pero cada vez que dejo a una marchar, se hace añicos en la baldosa',
			'que hay entre mis pies.',
			'Pensamientos felices, pensamientos felices, pensamientos felices en',
			'pedazos, por todo el suelo.','',

			'Tenían que haber sido para mis amigos, mis amigos que no están sonriendo.',
			'Todos están gritando, suplicando. Algo.',
			'Pero todo lo que oigo es un eco, eco, eco, eco, eco, eco',
			'dentro de mi cabeza.'};
	
	elseif poemname == 'poem_s3' then
		poem_author = 'sayori'
		poemtext = {
			'%','',

			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza.',
			'Sal de mi cabeza. Sal de mi cabeza. Sal de mi cabeza. Sal de',
			'Sal.',
			'De.',
			'Mi.',
			'Cabeza.','',
			'Sal de mi cabeza antes de que haga lo que sé que es mejor para ti.',
			'Sal de mi cabeza antes de que haga caso de todo lo que ella me dijo.',
			'Sal de mi cabeza antes de que te demuestre lo mucho que te quiero.',
			'Sal de mi cabeza antes de que termine de escribir este poema.',
			'','','','','','','','','',
			'Pero un poema nunca se termina, en realidad.',
			'Solo deja de moverse.'};
	
	elseif poemname == 'poem_m1' then
		poem_author = 'monika'
		poemtext = {
			'Agujero en la pared','',

			'No podría haber sido yo.',
			'Observa la dirección en que el yeso sobresale.',
			'¿Un vecino ruidoso? ¿Un novio enfadado? Nunca lo sabré. Yo no estaba en casa.',
			'Miro hacia dentro, en busca de una pista.',
			'¡No! No puedo ver nada. Ciega, me tambaleo como una cinta dejada al sol.',
			'Pero es demasiado tarde. Mis retinas.',
			'Quemadas ya con una copia permanente de una imagen vacua.',
			'Era solo un pequeño agujero. No demasiado brillante.',
			'Demasiado profundo.',
			'Extendiéndose para siempre hacia todas partes.',
			'Un agujero de infinitas opciones.',
			'Me doy cuenta ahora de que no miraba hacia dentro.',
			'Miraba hacia fuera.',
			'Y él, en cambio, miraba hacia dentro.'};

	elseif poemname == 'poem_m21' then
		poem_author = 'monika'
        poemtext = {
			'Agujero en la pared','',

			'Pero él no me miraba a mí.',
			'Confusa, miro frenéticamente a mi alrededor.',
			'Pero mis ojos quemados ya no pueden distinguir el color.',
			'¿Están los demás en esta habitación? ¿Están hablando?',
			'¿O son meros poemas en aplanadas hojas de papel,',
			'el sonido de frenéticos garabatos jugueteando en mis oídos?',
			'La habitación comienza a arrugarse.',
			'Cerrándose en torno a mí.',
			'El aire que respiro se disipa antes de alcanzar mis pulmones.',
			'Entro en pánico. Tiene que haber una salida.',
			'Está justo aquí. Él está justo aquí.','',

			'Tragándome las lágrimas, blando mi bolígrafo.'};

	elseif poemname == 'poem_m2' then
		poem_author = 'monika'
		poemtext = {
			'Sálvame','',

			'Los colores no pararán',
			'Brillantes, hermosos colores',
			'Parpadeando, expandiéndose, perforando',
			'Rojo, verde, azul',
			'Una cacofonía',
			'infinita',
			'de ruido',
			'sin sentido,','',


			'El ruido no parará',
			'Violentas y crispantes ondas',
			'Chirriando, chillando, perforando',
			'Seno, coseno, tangente',
			'    Como tocar una pizarra en un tocadiscos',
			'          Como tocar un vinilo en una corteza de pizza',
			'Un poema',
			'infinito',
			'sin sentido','','','','','','','','','','','','','','',
			'Cárgame.'};
	
	elseif poemname == 'poem_m22' then
		poem_author = 'monika'
		poemtext = {
			'Sálvame',

			'Los colores no',
			'Brillantes, h rm sos c l res',
			'Parpade ndo, expand énd se, perforando',
			'Rojo, verde, azul',
			'Una CACOFONÍA',
			' nfinita',
			'de ruido',
			'sin sentido','','',


			'El ruido no PARARÁ',
			'Viol ntas y crispantes  ond s',
			'Chir i ndo, chill ndo, perforando',
			'SENO, COSENO, TANGENTE',
			'    Como toc r una pi arra en un to adiscos.',
			'          Como tocar un CUCHILLO en una CAJA TORÁCICA QUE RESPIRA.',
			'Un p em ',
			' nf nito',
			'sin se tid  ','','','','','','','','','','','','','','',
			'Elimínala'};
	
	elseif poemname == 'poem_m3' then
		poem_author = 'monika'
		poemtext = {
			'La dama que todo lo sabe','',

			'Cuenta una antigua leyenda que una dama deambula por la Tierra.',
			'La dama que todo lo sabe.',
			'Hermosa dama que toda respuesta ha hallado,',
			'todo sentido, ',
			'todo significado,',
			'y todo aquello que jamás se ha buscado.','',

			'Y aquí yo me encuentro,',
			'',
			'',
			'                  pluma',
			'',
			'',
			'víctima de aéreas corrientes, en el cielo extraviada.','',

			'Busco, día tras día,',
			'busco, sin apenas esperanzas: las leyendas no existen.',
			'Pero cuando todo lo demás me ha fallado,',
			'cuando todos los demás la espalda me han dado,',
			'todo lo que queda es la leyenda – última estrella moribunda que al atardecer suspira.','',

			'Hasta que un día cesa el soplo del viento.',
			'Caigo.',
			'Caigo, caigo y sigo cayendo.',
			'Con la mansedumbre de una pluma.',
			'Una pluma seca, sin expresión.','',

			'Mas una mano me toma entre el pulgar y el índice.',
			'La mano de una hermosa dama.',
			'Le miro a los ojos y descubro el infinito en su mirada.','',

			'La dama que todo lo sabe lo que estoy pensando.',
			'Antes de que separe mis labios, ella me responde con su voz hueca.',
			'"He encontrado todas las respuestas, que no valen nada.',
			'No hay sentido.',
			'No hay significado.',
			'Y solo buscamos lo imposible.',
			'No soy tu leyenda.',
			'Tu leyenda no existe".','',

			'Y con una exhalación, me devuelve a flote, y me elevo sobre una ráfaga de viento.'};
	
	elseif poemname == 'poem_m4' then
		poem_author = 'monika'
		poemtext = {
			'Final Feliz','',

			'Bolígrafo en mano, encuentro mi fuerza.',
			'El valor que me dio mi único y verdadero amor.',
			'Desmantelemos juntos este mundo en ruinas',
			'y escribamos una novela con nuestras propias fantasías.','',

			'Con un trazo de su bolígrafo, los perdidos encuentran su camino.',
			'En un mundo de infinitas opciones, contempla este día especial.','',

			'Después de todo,',
			'no todos los buenos tiempos tienen por qué acabar.'};
	
	else poemtext = {''}
	end
	
	if xaload == 0 then
		sfxplay('pageflip')
		if poem_author == 'yuri' then
			if yuri_2 then
				poembg = lgnewImage('assets/images/bg/poem_y1.png')
				audioUpdate('0')
			elseif yuri_3 then
				if branch == '3ds' then 
					poembg = lgnewImage('assets/images/bg/poemxp.png')
				else
					poembg = lgnewImage('assets/images/bg/poem1.png')
				end
				
				audioUpdate('5_yuri2')
			else
				audioUpdate('5_yuri')
			end
		elseif poem_author == 'sayori' then
			if chapter ~= 5 then
				audioUpdate('5_sayori')
			end
		elseif poem_author == 'natsuki' then
			audioUpdate('5_natsuki')
		elseif poem_author == 'monika' and persistent.ptr <= 2 then
			audioUpdate('5_monika')
		end
		poem_scroll = {x=1,y=1}
	
	elseif xaload > 0 then
		if not poem_scroll then
			poem_scroll = {x=1,y=1}
		end
	end
end

function poem_disable(x)
	poem_enabled = false
	poem_scroll = nil
	poembg = nil
	if not x or x == 1 then
		audioUpdate('5')
	elseif x == 0 then
		audioUpdate('0')
	end
end
