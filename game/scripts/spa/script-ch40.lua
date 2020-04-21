local gtext120 = glitchtext(120)
local endx = 100
if branch == '3ds' then
	endx = 25
end

clearall = 0
for i = 1, 9 do
	if persistent.clear[i] == 1 then
		clearall = clearall + 1
	end
end

function ch40script()
	if cl == 1 then
	bgUpdate('residential')
	audioUpdate('2')
	if persistent.chr.m == 1 then scriptJump(500) end
		cw('bl', "Es un día normal como otro cualquiera.")
	elseif cl == 2 then
		cw('bl', "Como siempre, estoy rodeado de parejitas y grupos de amigos que van juntos al insti.")
	elseif cl == 3 then
		cw('bl', "Siempre me digo que ya va siendo hora de conocer chicas o algo...")
	elseif cl == 4 then
	updateSayori('1','a',80)
		cw('s', "Oye, " .. player .. "...")
	elseif cl == 5 then
		cw('bl', "Bueno, conozco a una...")
	elseif cl == 6 then
		cw('bl', "Esa chica es Sayori, mi vecina y mejor amiga desde que éramos niños.")
	elseif cl == 7 then
		cw('bl', "Solíamos caminar juntos hacia el colegio cada día...")
	elseif cl == 8 then
		cw('bl', "Y hace poco, retomamos ese hábito.")
	elseif cl == 9 then
		cw('s', "" .. player .. ", ¿no estás orgulloso de mí?")
	elseif cl == 10 then
		cw('mc', "¿Eh? ¿Por qué?")
	elseif cl == 11 then
	updateSayori('1','c')
		cw('s', "Ya sabes...")
	elseif cl == 12 then
		cw('s', "¡Por no haberme quedado dormida!")
	elseif cl == 13 then
		cw('mc', "Bueno, ya llevas un tiempo haciéndolo...")
	elseif cl == 14 then
		cw('s', "¡Oye!")
	elseif cl == 15 then
	updateSayori('4','h')
		cw('s', "¡Pero nunca dijiste nada al respecto!")
	elseif cl == 16 then
		cw('s', "Y eso que vamos juntos al insti cada día...")
	elseif cl == 17 then
		cw('mc', "S-sí...")
	elseif cl == 18 then
		cw('mc', "Pensaba que ya lo dábamos por entendido.")
	elseif cl == 19 then
		cw('mc', "Me daba vergüenza decirlo en alto.")
	elseif cl == 20 then
	updateSayori('1','d')
		cw('s', "Porfiii...")
	elseif cl == 21 then
		cw('s', "Que me motiva...")
	elseif cl == 22 then
		cw('mc', "Venga, vale...")
	elseif cl == 23 then
		cw('mc', "Estoy orgulloso de ti, Sayori.")
	elseif cl == 24 then
	updateSayori('1','q')
		cw('s', "Je, je, je~")
	elseif cl == 25 then
	hideSayori()
		cw('bl', "Cruzamos la calle juntos y vamos de camino al instituto.")
	elseif cl == 26 then
		cw('bl', "A medida que nos acercamos, las calles empiezan a llenarse de otros alumnos que también van de camino.")
	elseif cl == 27 then
	updateSayori('3','a',80)
		cw('s', "Por cierto, " .. player .. "...")
	elseif cl == 28 then
		cw('s', "¿Has decidido ya a qué club unirte?")
	elseif cl == 29 then
		cw('mc', "¿Unirme a un club?")
	elseif cl == 30 then
		cw('mc', "Ya te lo he dicho, no me...")
	elseif cl == 31 then
		cw('bl', "Empiezo a soltar el mismo rollo de siempre: no me interesa unirme a ningún club.")
	elseif cl == 32 then
		cw('bl', "Pero algo me dice que Sayori ahora se lo tomaría mucho peor.")
	elseif cl == 33 then
		cw('bl', "Después de todo...")
	elseif cl == 34 then
		cw('bl', "¿Cómo voy a decirle que los clubes son una pérdida de tiempo cuando va a empezar uno por su cuenta?...")
	elseif cl == 35 then
		cw('mc', "Pues la verdad es que... sí.")
	elseif cl == 36 then
		cw('mc', "Creo que he decidido a qué club unirme.")
	elseif cl == 37 then
	updateSayori('1','m')
		cw('s', "¡¿De verdad?!")
	elseif cl == 38 then
	updateSayori('1','r')
		cw('s', "¿Cuál? ¡Dímelo!")
	elseif cl == 39 then
		cw('mc', "Mmm...")
	elseif cl == 40 then
		cw('mc', "Creo que mejor dejarlo como una sorpresa.")
	elseif cl == 41 then
	updateSayori('5d')
		cw('s', "Jo...")
	elseif cl == 42 then
		cw('s', "Eres malo.")
	elseif cl == 43 then
		cw('mc', "Paciencia, muy pronto lo descubrirás.")
	elseif cl == 44 then
		cw('bl', "Solía preguntarme por qué me dejo regañar por una chica tan despreocupada.")
	elseif cl == 45 then
		cw('bl', "Pero he empezado a darme cuenta de que, por así decirlo, le tengo envidia.")
	elseif cl == 46 then
		cw('bl', "Cuando Sayori se propone algo, puede lograr grandes cosas.")
	elseif cl == 47 then
		cw('bl', "Por eso siento que debería hacer algo especial por ella.")
	
	elseif cl == 48 then
	hideSayori()
	bgUpdate('class')
		cw('bl', "El día pasa como cualquier otro, y se acaba antes de que me dé cuenta.")
	elseif cl == 49 then
		cw('bl', "Tras guardar mis cosas, me levanto, tratando de reunir motivación.")
	elseif cl == 50 then
		cw('mc', "Veamos...")
	
	elseif cl == 51 then
	bgUpdate('corridor')
	audioUpdate('0')
		cw('bl', "Recuerdo la numeración del aula del club por un panfleto que vi.")
	elseif cl == 52 then
		cw('bl', "Me paseo por el instituto hasta la planta de arriba, una zona usada para las clases y actividades de alumnos de tercero que rara vez visito.")
	elseif cl == 53 then
		cw('bl', "No tardo mucho en encontrar el aula.")
	elseif cl == 54 then
		cw('bl', "Tímidamente, abro la puerta que hay frente a mí.")
	elseif cl == 55 then
	bgUpdate('club')
	audioUpdate('3')
		cw('mc', "¿Hola?...")
	elseif cl == 56 then
	updateSayori('1','m',80)
		cw('s', "¡Ah!")
	elseif cl == 57 then
		cw('s', "¡¿" .. player .. "?!...")
	elseif cl == 58 then
	updateSayori('1','c')
		cw('s', "¿Q-qué haces aquí?")
	elseif cl == 59 then
		cw('mc', "Bueno, había pensado...")
	elseif cl == 60 then
		cw('bl', "¿Eh? Echo un vistazo al aula.")
	elseif cl == 61 then
	updateNatsuki('3','a',-40)
		cw('Chica 2', "Jum.")
	elseif cl == 62 then
		cw('Chica 2', "Conque tú eres ese tal " .. player .. " del cual Sayori siempre habla.")
	elseif cl == 63 then
	updateYuri('2','t',200)
		cw('Chica 1', "¡G-gracias por pasarte!")
	elseif cl == 64 then
	updateYuri('2','m')
		cw('Chica 1', "Encantada de conocerte, " .. player .. ".")
	elseif cl == 65 then
		cw('Chica 1', "Somos el club de literatura.")
	elseif cl == 66 then
	updateYuri('3','v')
		cw('Chica 1', "¡E-espero que disfrutes de tu visita!")
	elseif cl == 67 then
	updateNatsuki('3','g')
		cw('Chica 2', "Venga ya, Yuri...")
	elseif cl == 68 then
		cw('Chica 2', "No tienes por qué ser tan formal.")
	elseif cl == 69 then
		cw('Chica 2', "Va a pensarse que somos muy estrictas o algo así...")
	elseif cl == 70 then
	updateYuri('3','q')
		cw('y', "Ah...")
	elseif cl == 71 then
		cw('y', "Natsuki...")
	elseif cl == 72 then
		cw('bl', "La chica alta, cuyo nombre parece ser Yuri, aparenta ser más tímida que el resto.")
	elseif cl == 73 then
		cw('bl', "En cambio, la chica llamada Natsuki, a pesar de su tamaño, parece ser la más autoritaria.")
	elseif cl == 74 then
		cw('mc', "Bueno, encantado de conoceros.")
	elseif cl == 75 then
		cw('mc', "Espero que nos llevemos bien.")
	elseif cl == 76 then
	updateSayori('1','n')
		cw('s', "E-espera un momento...")
	elseif cl == 77 then
		cw('s', "" .. player .. ", no me digas que...")
	elseif cl == 78 then
		cw('s', "Que vas a...")
	elseif cl == 79 then
		cw('mc', "Así es.")
	elseif cl == 80 then
		cw('mc', "El club al que decidí unirme era el tuyo, Sayori.")
	elseif cl == 81 then
		cw('mc', "El club de literatura.")
	elseif cl == 82 then
		cw('bl', "A Sayori se le ilumina la mirada.")
	elseif cl == 83 then
	updateSayori('1','n')
		cw('s', "No me lo creo...")
	elseif cl == 84 then
	updateSayori('1','s')
		cw('s', "¡No me lo creo!")
	elseif cl == 85 then
	updateSayori('4','s')
		cw('s', "¡Aaaaaaaaah!")
	elseif cl == 86 then
		cw('bl', "Sayori me abraza y no deja de saltar.")
	elseif cl == 87 then
		cw('mc', "O-oye...")
	elseif cl == 88 then
	updateNatsuki('3','y')
		cw('n', "Je, je, je.")
	elseif cl == 89 then
		cw('n', "Bueno, si a Sayori le hace tanta ilusión, seguro que no estará tan mal tenerte por aquí.")
	elseif cl == 90 then
	updateNatsuki('3','a')
	updateYuri('1','s')
		cw('y', "Por no decir que ahora somos cuatro.")
	elseif cl == 91 then
		cw('y', "Eso significa que ya podemos convertirnos en un club oficial.")
	elseif cl == 92 then
	updateSayori('1','x')
		cw('s', "¡No sé qué decir!")
	elseif cl == 93 then
		cw('s', "¡Tenemos que celebrarlo!")
	elseif cl == 94 then
	updateYuri('1','m')
		cw('y', "Je, je.")
	elseif cl == 95 then
		cw('y', "Qué día tan apropiado para ello, ¿verdad?")
	elseif cl == 96 then
	updateYuri('1','a')
	updateSayori('1','r')
		cw('s', "¡Sííí!")
	elseif cl == 97 then
	updateNatsuki('1','x')
		cw('s', "Después de todo, Natsuki ha decidido...")
	elseif cl == 98 then
	updateNatsuki('1','w')
		cw('n', "¡Oye, no arruines la sorpresa!")
	elseif cl == 99 then
	updateSayori('5a')
		cw('s', "Je, je, je, perdón...")
	elseif cl == 100 then
	updateNatsuki('1','k')
		cw('n', "Sentaos todos en la mesa, ¿vale?")
	elseif cl == 101 then
	updateYuri('1','a')
		cw('y', "¿Qué tal si preparo algo de té?")
	elseif cl == 102 then
	hideSayori()
	hideNatsuki()
	hideYuri()
		cw('bl', "Las chicas han juntado algunos pupitres para formar una mesa.")
	elseif cl == 103 then
		cw('bl', "Natsuki y Yuri se van a la esquina de la clase, donde Natsuki coge una bandeja envuelta y Yuri abre el armario.")
	elseif cl == 104 then
		cw('bl', "Me sigo sintiendo raro, pero me siento al lado de Sayori.")
	elseif cl == 105 then
		cw('bl', "Natsuki vuelve orgullosa a la mesa, con la bandeja en sus manos.")
	elseif cl == 106 then
	updateNatsuki('2','z',150)
		cw('n', "Vaaale, ¿estáis listos?")
	elseif cl == 107 then
		cw('n', "¡Tachááán!")
	elseif cl == 108 then
	updateSayori('4','m',10)
		cw('s', "¡Ualaaaaaa!")
	elseif cl == 109 then
		cw('bl', "Natsuki levanta el envoltorio de la bandeja, revelando una docena de pastelillos blancos y esponjosos con forma de gatito.")
	elseif cl == 110 then
		cw('bl', "Ha hecho los bigotes con glaseado y las orejas con pepitas de chocolate.")
	elseif cl == 111 then
	updateSayori('4','r')
		cw('s', "¡Qué cosa más cuquiiii!")
	elseif cl == 112 then
		cw('mc', "Vaya, qué pasada.")
	elseif cl == 113 then
	updateNatsuki('2','d')
		cw('n', "Je, je, je. Bueno, no es para tanto.")
	elseif cl == 114 then
		cw('n', "¡Daos prisa y coged uno!")
	elseif cl == 115 then
		cw('bl', "Sayori es la primera en coger uno, y yo la sigo.")
	elseif cl == 116 then
	updateSayori('4','q')
		cw('s', "¡Está delicioso!")
	elseif cl == 117 then
		cw('bl', "Sayori, además de haberse manchado ya la cara con el glaseado, habla con la boca llena.")
	elseif cl == 118 then
		cw('bl', "Giro el pastelillo con los dedos, buscando el mejor ángulo para darle un bocado.")
	elseif cl == 119 then
	hideSayori()
	updateNatsuki('1','c',80)
		cw('bl', "Natsuki está callada.")
	elseif cl == 120 then
		cw('bl', "No puedo evitar darme cuenta de las miradas que me echa.")
	elseif cl == 121 then
		cw('bl', "¿Estará esperando a que le dé un bocado?")
	elseif cl == 122 then
		cw('bl', "Finalmente se lo doy.")
	elseif cl == 123 then
		cw('bl', "El glaseado está dulce y sabroso. Me pregunto si de verdad lo ha hecho ella.")
	elseif cl == 124 then
		cw('mc', "Esto está muy bueno.")
	elseif cl == 125 then
		cw('mc', "Gracias, Natsuki.")
	elseif cl == 126 then
	updateNatsuki('4','2c')
		cw('n', "B-bueno, ¡por supuesto que lo está!")
	elseif cl == 127 then
		cw('n', "¡Soy una profesional, después de todo!")
	elseif cl == 128 then
	updateNatsuki('4','2a')
		cw('n', "No hace falta que me lo agradezcas...")
	elseif cl == 129 then
	hideNatsuki()
		cw('bl', "Mientras Natsuki se hace la dura, Yuri vuelve con un juego de té.")
	elseif cl == 130 then
		cw('bl', "Cuidadosamente, coloca una taza frente a cada uno de nosotros antes de poner la tetera al lado de la bandeja de pastelillos.")
	elseif cl == 131 then
	updateYuri('1','a',80)
		cw('mc', "¿Guardas un juego completo de té en esta clase?")
	elseif cl == 132 then
		cw('y', "No te preocupes, los profesores nos han dado permiso.")
	elseif cl == 133 then
		cw('y', "Además, ¿a que una buena taza de té caliente ayuda a leer un buen libro?")
	elseif cl == 134 then
		cw('mc', "Ah... S-supongo...")
	elseif cl == 135 then
	updateNatsuki('2','y',-40)
		cw('n', "Je, je, je. ¿Ya estás intentando impresionar a nuestro nuevo miembro, Yuri?")
	elseif cl == 136 then
	updateYuri('3','n')
		cw('y', "¡¿Eh?! N-no...")
	elseif cl == 137 then
	hideNatsuki()
		cw('bl', "Ofendida, Yuri mira hacia otro lado.")
	elseif cl == 138 then
	updateYuri('4','b2')
		cw('y', "Me refería a que, bueno...")
	elseif cl == 139 then
		cw('mc', "Yo te creo.")
	elseif cl == 140 then
		cw('mc', "Bueno, acompañar el té con algo de lectura no es algo que suela hacer, pero al menos disfruto del sabor.")
	elseif cl == 141 then
	updateYuri('2','u')
		cw('y', "Me alegro...")
	elseif cl == 142 then
		cw('bl', "Yuri, débilmente, sonríe aliviada.")
	elseif cl == 143 then
	updateYuri('1','a')
		cw('y', "Y bien, " .. player .. ", ¿qué géneros literarios te gustan?")
	elseif cl == 144 then
		cw('mc', "Em... Pues...")
	elseif cl == 145 then
		cw('bl', "Teniendo en cuenta lo poco que he leído durante estos años, no sé realmente cómo responder a esto.")
	elseif cl == 146 then
		cw('mc', "Manga...")
	elseif cl == 147 then
	updateNatsuki('1','c',-50)
		cw('bl', "Lo susurro, como bromeando y Natsuki reacciona al instante.")
	elseif cl == 148 then
		cw('bl', "Parece que quiere decir algo, pero no abre la boca.")
	elseif cl == 149 then
	hideNatsuki()
	updateYuri('3','u')
		cw('y', "P-parece que no eres muy aficionado a la lectura...")
	elseif cl == 150 then
		cw('mc', "Bueno, siempre estoy a tiempo de cambiar...")
	elseif cl == 151 then
		cw('bl', "¿Pero qué estoy diciendo?")
	elseif cl == 152 then
		cw('bl', "He hablado sin pensármelo dos veces tras ver esa sonrisa triste de Yuri.")
	elseif cl == 153 then
		cw('mc', "Bueno, ¿y a ti qué te gusta, Yuri?")
	elseif cl == 154 then
	updateYuri('1','l')
		cw('y', "Bueno, pues...")
	elseif cl == 155 then
		cw('bl', "Yuri está trazando círculos con el dedo por los bordes de la taza de té.")
	elseif cl == 156 then
	updateYuri('1','a')
		cw('y', "A mí me encantan las novelas que desarrollan mundos de fantasía profundos y complejos.")
	elseif cl == 157 then
		cw('y', "El nivel de creatividad y esfuerzo tras esas obras me asombra.")
	elseif cl == 158 then
	updateYuri('1','f')
		cw('y', "Y narrar una buena historia en un mundo tan misterioso me resulta igual de asombroso.")
	elseif cl == 159 then
		cw('bl', "Yuri continúa comentando de manera apasionada sus lecturas.")
	elseif cl == 160 then
		cw('bl', "Parecía reservada y tímida cuando la vi por primera vez, pero los libros parecen apasionarla, al contrario que a la mayoría de la gente.")
	elseif cl == 161 then
	updateYuri('2','m')
		cw('y', "Pero bueno, me gustan muchas cosas.")
	elseif cl == 162 then
	updateYuri('2','a')
		cw('y', "No te sientas intimidado si no lees mucho, ¿vale?")
	elseif cl == 163 then
		cw('y', "Seguro que encontramos algo en común.")
	elseif cl == 164 then
	updateYuri('2','a',150)
	updateNatsuki('2','c',10)
		cw('n', "Eh, Yuri...")
	elseif cl == 165 then
	updateYuri('2','f')
	y "¿Eh?"
	elseif cl == 166 then
	updateNatsuki('2','h')
		cw('n', "Bueno, em... Ejem, lo que antes ha dicho...")
	elseif cl == 167 then
		cw('mc', "¿Manga?")
	elseif cl == 168 then
	updateYuri('2','i')
		cw('y', "Es verdad...")
	elseif cl == 169 then
		cw('y', "Natsuki suele leer manga en el cl...")
	elseif cl == 170 then
	updateNatsuki('1','r')
		cw('n', "¡¡C-calla!!")
	elseif cl == 171 then
		cw('bl', "Por alguna razón, a Natsuki le avergüenza admitirlo.")
	elseif cl == 172 then
	updateNatsuki('1','q')
		cw('n', "Además...")
	elseif cl == 173 then
		cw('n', "El manga... ¡también cuenta como literatura! ¡¿Vale?!")
	elseif cl == 174 then
	updateNatsuki('1','w')
		cw('n', "Por lo que... Si " .. player .. " quiere leer manga, ¡ni se te ocurra impedírselo ni nada por el estilo!")
	elseif cl == 175 then
	updateYuri('1','l')
	y "Natsuki..."
	elseif cl == 176 then
		cw('y', "Jamás haría algo así.")
	elseif cl == 177 then
	updateYuri('1','i')
		cw('y', "Aunque tampoco estaría mal diversificarnos un poco...")
	elseif cl == 178 then
		cw('y', "Podría aprovechar esta oportunidad para leer algo diferente.")
	elseif cl == 179 then
	updateYuri('1','s')
		cw('y', "¿No crees, " .. player .. "?")
	elseif cl == 180 then
	updateSayori('1','l',-40)
	updateNatsuki('1','w',80)
	updateYuri('1','s',200)
		cw('s', "P-puede...")
	elseif cl == 181 then
		cw('bl', "Sintiendo la tensión, Sayori entra en la conversación.")
	elseif cl == 182 then
	updateSayori('1','x')
		cw('s', "¡Podríamos probar todos algo nuevo!")
	elseif cl == 183 then
	updateSayori('1','l')
		cw('s', "Creo que podría ser divertido...")
	elseif cl == 184 then
	updateSayori('1','c')
		cw('s', "¡Además, eso nos ayudará a conocernos mejor!")
	elseif cl == 185 then
	updateSayori('1','l')
		cw('s', "O sea...")
	elseif cl == 186 then
		cw('s', "Esa es la clase de cosas que se hacen en los clubes de literatura, ¿no?...")
	elseif cl == 187 then
	updateYuri('1','v')
	y "..."
	elseif cl == 188 then
		cw('y', "Y-yo no me voy a negar...")
	elseif cl == 189 then
	updateNatsuki('2','j')
		cw('n', "Ni yo...")
	elseif cl == 190 then
		cw('n', "La presidenta siempre tiene razón.")
	elseif cl == 191 then
	updateSayori('1','q')
		cw('s', "Je, je, je...")
	elseif cl == 192 then
	updateNatsuki('2','c')
		cw('n', "Supongo que entonces me toca probar con una novela o algo así, ¿no?...")
	elseif cl == 193 then
		cw('mc', "Bueno, ya somos dos...")
	elseif cl == 194 then
		cw('mc', "No me importaría hacerlo siempre y cuando no sea el único.")
	elseif cl == 195 then
	hideSayori()
	updateNatsuki('2','y',10)
	updateYuri('1','v',150)
		cw('n', "En cuanto a Yuri...")
	elseif cl == 196 then
	updateYuri('2','n')
		cw('y', "¿Eh?")
	elseif cl == 197 then
		cw('y', "¿T-tengo que leer manga?...")
	elseif cl == 198 then
	updateNatsuki('4','i')
		cw('n', "Ains...")
	elseif cl == 199 then
	updateNatsuki('4','h')
		cw('n', "¡Pero si has sido tú la que ha sugerido que nos diversificáramos!")
	elseif cl == 200 then
		cw('n', "Deberías tener la mente un poco más abierta...")
	elseif cl == 201 then
	updateNatsuki('4','u')
		cw('n', "Es un tanto hiriente...")
	elseif cl == 202 then
	updateYuri('2','t')
		cw('y', "¿Hiriente?...")
	elseif cl == 203 then
	updateYuri('2','v')
		cw('y', "N-no me había dado cuenta...")
	elseif cl == 204 then
	y "..."
	elseif cl == 205 then
		cw('bl', "Con una expresión de culpa, Yuri se queda pensativa.")
	elseif cl == 206 then
	updateYuri('2','w')
		cw('y', "Siento haberle faltado el respeto a tus intereses, Natsuki.")
	elseif cl == 207 then
		cw('y', "S-si a ti te gusta, entonces estoy segura de que es literatura completamente válida...")
	elseif cl == 208 then
	updateNatsuki('5','q')
		cw('n', "¿Lo dices por decir?...")
	elseif cl == 209 then
		cw('y', "No...")
	elseif cl == 210 then
		cw('y', "Me he percatado de mi error.")
	elseif cl == 211 then
	updateYuri('2','t')
		cw('y', "Por lo que si estás considerando empezar una novela...")
	elseif cl == 212 then
	updateYuri('2','u')
		cw('y', "Mostraré mi gratitud empezando un manga...")
	elseif cl == 213 then
	updateNatsuki('1','l')
		cw('n', "¡¿De verdad?!")
	elseif cl == 214 then
	updateNatsuki('1','2c')
		cw('n', "E-ejem...")
	elseif cl == 215 then
		cw('n', "Me... alegra que hagas eso por mí, Yuri.")
	elseif cl == 216 then
	updateNatsuki('2','c')
		cw('n', "Cuenta conmigo para encontrar alguno que de verdad te guste, ¿vale?")
	elseif cl == 217 then
	updateYuri('1','m')
		cw('y', "Lo mismo digo...")
	elseif cl == 218 then
	updateYuri('1','h')
		cw('y', "A lo mejor me paso por la librería después del club.")
	elseif cl == 219 then
	updateNatsuki('1','q')
		cw('n', "¿T-tú... sola?")
	elseif cl == 220 then
	updateYuri('3','q')
		cw('y', "E-em...")
	elseif cl == 221 then
	updateYuri('4','a2')
		cw('y', "¿Te gustaría... acompañarme?")
	elseif cl == 222 then
	updateNatsuki('5','s')
		cw('n', "Em...")
	elseif cl == 223 then
		cw('n', "Si no te importa...")
	elseif cl == 224 then
	updateYuri('3','t')
		cw('y', "¡En absoluto!")
	elseif cl == 225 then
		cw('y', "Siempre voy sola, así que...")
	elseif cl == 226 then
		cw('n', "Yo igual...")
	elseif cl == 227 then
	updateSayori('4','s',-50)
		cw('s', "¡Qué monas~!")
	elseif cl == 228 then
		cw('mc', "Sayori, cierra el pico...")
	elseif cl == 229 then
	hideSayori()
	updateNatsuki('2','j')
		cw('n', "Yo también te enseñaré algún manga, ¿vale?")
	elseif cl == 230 then
	updateYuri('1','a')
		cw('y', "Vale.")
	elseif cl == 231 then
		cw('y', "Lo esperaré con ansias.")
	elseif cl == 232 then
	hideNatsuki()
	hideYuri()
		cw('bl', "Natsuki y Yuri empiezan a limpiar.")
	elseif cl == 233 then
	updateSayori('1','q',80)
		cw('s', "Je, je, je~")
	elseif cl == 234 then
	updateSayori('1','x')
		cw('s', "Parece que la reunión ha terminado, ¿no?")
	elseif cl == 235 then
		cw('mc', "Sí, eso parece...")
	elseif cl == 236 then
		cw('mc', "Me alegra ver que todas se llevan bien.")
	elseif cl == 237 then
	updateSayori('1','q')
		cw('s', "¿A que sí?")
	elseif cl == 238 then
	updateSayori('1','d')
		cw('s', "Creo que tú también les caes bien, " .. player .. ".")
	elseif cl == 239 then
		cw('mc', "¿Tú crees?...")
	elseif cl == 240 then
		cw('mc', "Bueno, todo el mundo siempre parece llevarse algo mejor contigo cerca, Sayori.")
	elseif cl == 241 then
	updateSayori('1','y')
		cw('s', "Oooh, " .. player .. "...")
	elseif cl == 242 then
		cw('s', "¡No me digas cosas así, que me da vergüenza!")
	elseif cl == 243 then
		cw('mc', "Je, en fin.")
	elseif cl == 244 then
		cw('mc', "Me sorprendió que me dijeras que ibas a empezar un club...")
	elseif cl == 245 then
		cw('mc', "Pero veo que no te va nada mal.")
	elseif cl == 246 then
	updateSayori('1','r')
		cw('s', "¡Lo convertiremos en el mejor club del mundo!")
	elseif cl == 247 then
	updateSayori('1','x')
		cw('s', "Contigo aquí, ahora cada día será de lo más divertido.")
	elseif cl == 248 then
	audioUpdate('0')
	updateSayori('1','a')
		cw('s', "Oye, " .. player .. "...")
	elseif cl == 249 then
		cw('s', "No sé qué hacer para agradecértelo, de verdad.")
	elseif cl == 250 then
		cw('s', "Es decir, no podría alegrarme más el que te hayas unido al club y tal...")
	elseif cl == 251 then
		cw('s', "Pero es que sabía que ibas a hacerlo.")
	elseif cl == 252 then
	updateSayori('1','q')
		cw('s', "Je, je, je~")
	elseif cl == 253 then
	updateSayori('1','a')
		cw('s', "De hecho, quería decirte algo más.")
	
	elseif cl >= 254 and cl < 500 then
		if clearall >= 9 then
			ch40_clearall()
		else
			ch40_clearnormal()
		end
	elseif cl == 500 then
	audioUpdate('0')
	menutext = "Por favor, deja de jugar con mis sentimientos.\nNo quiero volver."
	choice_enable('dialog')
	elseif cl == 501 then
	persistent.chr.m = 3
	savepersistent()
	scriptJump(1)
	elseif cl == 502 then
	event_initstart('beforecredits')
	pause(41,'disable')
	elseif cl == 503 then
	event_end('next')
	elseif cl == 504 then
	audioUpdate('0')
	changeState('credits',1)
	elseif cl == 508 then
	audioUpdate('0')
	changeState('poem_special',12)
	elseif cl == 509 then
	audioUpdate('0')
	changeState('poem_special',13)
	end
end

function ch40_clearnormal()
	if cl == 254 then
	updateSayori('1','a')
		cw('s', "Quería darte las gracias por haberte deshecho de Monika.")
	elseif cl == 255 then
	event_initstart('show_dark')
	updateSayori('1','b')
	audioUpdate('heartbeat')
		cw('s', "Sí...")
	elseif cl == 256 then
		cw('s', "Sé todo lo que hizo.")
	elseif cl == 257 then
	updateSayori('1','x')
		cw('s', "Puede que sea porque ahora soy la presidenta.")
	elseif cl == 258 then
		cw('s', "Pero lo sé todo, " .. player .. ".")
	elseif cl == 259 then
	updateSayori('1','q')
		cw('s', "Je, je, je~")
	elseif cl == 260 then
	updateSayori('1','d')
		cw('s', "Sé lo mucho que te esforzaste por hacernos a todas felices.")
	elseif cl == 261 then
		cw('s', "Sé todas las cosas horribles que hizo Monika para hundirnos...")
	elseif cl == 262 then
	updateSayori('1','b')
		cw('s', "Pero ya nada de eso importa.")
	elseif cl == 263 then
		cw('s', "Ahora solo estamos nosotros.")
	elseif cl == 264 then
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 265 then
	bgUpdate('cg/monika_bg_glitch')
	pause(0.25)
	elseif cl == 266 then
		cw('s', "Ahora solo estamos nosotros.")
	elseif cl == 267 then
	bgUpdate('club')
	updateSayori('1','d')
		cw('s', "Y me has hecho la chica más feliz de todo el mundo.")
	elseif cl == 268 then
		cw('s', "No puedo esperar a pasar todos los días así...")
	elseif cl == 269 then
		cw('s', "Contigo.")
	elseif cl == 270 then
	bgUpdate('cg/monika_bg_glitch')
	sfxplay('s_kill_glitch1s')
	updateSayori('1','q')
		cw('s', "Eternamente...")
	elseif cl == 271 then
	updateSayori('f_1a')
	s "E"
	elseif cl == 272 then
	s "t"
	elseif cl == 273 then
	s "e"
	elseif cl == 274 then
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 275 then
	s "r"
	elseif cl == 276 then
	s "n"
	elseif cl == 277 then
	s "a"
	elseif cl == 278 then
	audioUpdate('0')
	menutext = 'No...'
	choice_enable('dialog')
	elseif cl == 279 then
	updateSayori('end-glitch1','',endx)
		cw('s', "¿Eh?...")
	elseif cl == 280 then
		cw('s', "¿Q-qué está pasando?...")
	elseif cl == 281 then
	menutext = "No voy a dejar que le hagas daño."
	choice_enable('dialog')
	elseif cl == 282 then
	updateSayori('end-glitch2','',endx)
		cw('s', "¿Quién...?")
	elseif cl == 283 then
		cw('s', "D-duele...")
	elseif cl == 284 then
	sfxplay('s_kill_glitch1s')
	pause(0.35)
	elseif cl == 285 then
	hideAll()
		cw('s', "Ah...")
	elseif cl == 286 then
	menutext = "Lo siento, al final estaba equivocada..."
	choice_enable('dialog')
	elseif cl == 287 then
	menutext = "No hay felicidad después de todo."
	choice_enable('dialog')
	elseif cl == 288 then
	menutext = "Hasta siempre, Sayori."
	choice_enable('dialog')
	elseif cl == 289 then
	menutext = "Hasta siempre, "..player.."."
	choice_enable('dialog')
	elseif cl == 290 then
	menutext = "Hasta siempre, club de literatura."
	choice_enable('dialog')
	elseif cl == 291 then
	cw('s',gtext120,'nw')
	elseif cl == 292 then
	sfxplay('s_kill_glitch1s')
	pause(0.35)
	elseif cl == 293 then
	bgUpdate('black')
	pause(3,'disable')
	elseif cl == 294 then
	event_end('next')
	elseif cl >= 295 then
	scriptJump(502)
	end
end

function ch40_clearall()
	if cl == 254 then
		cw('s', "Me gustaría agradecerte todo el tiempo que has pasado con nosotras.")
	elseif cl == 255 then
	audioUpdate('monika-end')
	updateSayori('2','d')
		cw('s', "Te esforzaste mucho por tal de hacernos a todas felices.")
	elseif cl == 256 then
		cw('s', "Nos animaste en tiempos difíciles.")
	elseif cl == 257 then
		cw('s', "Y nos ayudaste a llevarnos bien.")
	elseif cl == 258 then
	updateSayori('1','a')
		cw('s', "¿Lo entiendes, " .. player .. "?")
	elseif cl == 259 then
		cw('s', "Como soy la presidenta, ahora lo entiendo todo.")
	elseif cl == 260 then
	updateSayori('1','q')
		cw('s', "No querías perderte ni un solo diálogo del juego, ¿verdad?")
	elseif cl == 261 then
	updateSayori('1','a')
		cw('s', "Guardaste y cargaste la partida infinidad de veces por tal de asegurarte de que podías pasar el rato con todas nosotras.")
	elseif cl == 262 then
		cw('s', "Solo a alguien a quien le importara tanto el club de literatura llegaría tan lejos.")
	elseif cl == 263 then
		cw('s', "Pero...")
	elseif cl == 264 then
	updateSayori('4','d')
		cw('s', "Es lo que siempre quise.")
	elseif cl == 265 then
		cw('s', "Que todos fuéramos felices y nos preocupáramos los unos de los otros.")
	elseif cl == 266 then
	updateSayori('4','q')
		cw('s', "Ja, ja, ja...")
	elseif cl == 267 then
	updateSayori('1','t')
		cw('s', "Es algo triste, ¿sabes?")
	elseif cl == 268 then
		cw('s', "Después de todo lo que has hecho por nosotras, no puedo ofrecerte mucho a cambio.")
	elseif cl == 269 then
		cw('s', "Ya que has llegado al final del juego.")
	elseif cl == 270 then
	updateSayori('1','y')
		cw('s', "Así que...")
	elseif cl == 271 then
		cw('s', "Nos toca despedirnos.")
	elseif cl == 272 then
	updateSayori('1','d')
		cw('s', "Gracias por jugar a Doki Doki Literature Club.")
	elseif cl == 273 then
		cw('s', "Te echaré de menos, " .. player .. ".")
	elseif cl == 274 then
		cw('s', "Ven a visitarnos algún día, ¿vale?")
	elseif cl == 275 then
		cw('s', "Siempre estaremos aquí por ti.")
	elseif cl == 276 then
	updateSayori('1','t')
		cw('s', "Que sepas que...")
	elseif cl == 277 then
	event_initstart('wipe','black')
	elseif cl == 278 then
		cw('s', "Te queremos.")
	elseif cl == 279 then
	audioUpdate('0')
	pause(3,'disable')
	elseif cl >= 280 then
	scriptJump(502)
	end
end
