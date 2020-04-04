local m_chance = math.random(0, 2)
appeal = {s=0,n=0,y=0}
n_poemappeal = {0,0,0}
y_poemappeal = {0,0,0}
poemwinner = {'','',''}
savevalue = ''

function ch20script()
	if cl == 1 then
	audioUpdate('2')
	bgUpdate('residential')
		cw('bl', "Es un día normal como otro cualquiera.")
	elseif cl == 2 then
		cw('bl', "Las mañanas suelen ser lo peor, ya que estoy rodeado de parejitas y grupos de amigos que van juntos al insti.")
	elseif cl == 3 then
		cw('bl', "En cambio, yo siempre he ido solo al insti.")
	elseif cl == 4 then
		cw('mc', "...")
	elseif cl == 5 then
		cw('bl', "Pero no tengo ganas de unirme a ningún club.")
	elseif cl == 6 then
		cw('bl', "Soy feliz siendo uno más del montón y dedicando mi tiempo libre a jugar a videojuegos y ver anime.")
	elseif cl == 7 then
		cw('bl', "Siempre me quedará el club de anime, pero no creo que en él vayan a haber muchas chicas...")
	elseif cl == 8 then
	bgUpdate('class')
		cw('bl', "El día pasa como cualquier otro, y se acaba antes de que me dé cuenta.")
	elseif cl == 9 then
		cw('bl', "Después de guardar mis cosas, me quedo embobado mirando a la pared, buscando una pizca de motivación.")
	elseif cl == 10 then
		cw('mc', "Clubes...")
	elseif cl == 11 then
		cw('bl', "La verdad es que no me interesa ninguno.")
	elseif cl == 12 then
		cw('bl', "Además, seguramente la mayoría serán demasiado exigentes para mí.")
	elseif cl == 13 then
		cw('bl', "Supongo que no me queda otra que empezar por el club de anime...")
	elseif cl == 14 then
		cw('m', "¿" .. player .. "?")
	elseif cl == 15 then
	event_initstart('m_glitch1')
	elseif cl == 16 then
	updateMonika('1','a',80)
	sfxplay('s_kill_glitch1s')
		cw('mc', "¿Monika?")
	elseif cl == 17 then
	updateMonika('1','b')
		cw('m', "¡Madre mía, no me esperaba verte aquí!")
	elseif cl == 18 then
	updateMonika('5a')
		cw('m', "Cuánto tiempo, ¿verdad?")
	elseif cl == 19 then
		cw('m', "Ah...")
	elseif cl == 20 then
		cw('mc', "Sí, mucho.")
	elseif cl == 21 then
		cw('bl', "Monika sonríe con dulzura.")
	elseif cl == 22 then
		cw('bl', "Nos conocemos, aunque apenas habláramos, porque estuvimos el año pasado en la misma clase.")
	elseif cl == 23 then
		cw('bl', "Monika era probablemente la chica más popular de la clase. Es inteligente, guapa y está en forma.")
	elseif cl == 24 then
		cw('bl', "Totalmente fuera de mi alcance.")
	elseif cl == 25 then
		cw('bl', "Y verla ahora sonriéndome, me hace sentir un poco...")
	elseif cl == 26 then
		cw('mc', "¿Y para qué has venido aquí?")
	elseif cl == 27 then
	updateMonika('1','a')
		cw('m', "Ah, estaba buscando algunos materiales para mi club.")
	elseif cl == 28 then
	updateMonika('1','d')
		cw('m', "¿Sabes si hay cartulinas por aquí?")
	elseif cl == 29 then
		cw('m', "¿O rotuladores?")
	elseif cl == 30 then
		cw('mc', "Creo que deberías mirar en el armario.")
	elseif cl == 31 then
		cw('mc', "Estás en el club de debate, ¿verdad?")
	elseif cl == 32 then
	updateMonika('5a')
		cw('m', "Ja, ja, ja, en cuanto a eso...")
	elseif cl == 33 then
		cw('m', "En realidad lo he dejado.")
	elseif cl == 34 then
		cw('mc', "¿En serio? ¿Lo has dejado?")
	elseif cl == 35 then
		cw('m', "Exacto...")
	elseif cl == 36 then
	updateMonika('2','e')
		cw('m', "Si te soy sincera, no soporto la dirección de los clubes importantes.")
	elseif cl == 37 then
		cw('m', "En ellos solo se discute sobre los presupuestos, la publicidad y el cómo prepararse para los eventos...")
	elseif cl == 38 then
		cw('m', "Prefiero encargarme de algo que disfrute personalmente y convertirlo en algo especial.")
	elseif cl == 39 then
		cw('mc', "En ese caso, ¿a qué club te has unido?")
	elseif cl == 40 then
	updateMonika('1','b')
		cw('m', "¡En realidad estoy fundando uno nuevo!")
	elseif cl == 41 then
	sfxplay('s_kill_glitch1s')
		cw('m', "¡Un club de literatura!")
	elseif cl == 42 then
		cw('mc', "¿De literatura?...")
	elseif cl == 43 then
		cw('bl', "No suena un poco... ¿soso?")
	elseif cl == 44 then
		cw('mc', "¿Cuántos miembros hay por el momento?")
	elseif cl == 45 then
	updateMonika('5a')
		cw('m', "Mmm...")
	elseif cl == 46 then
		cw('m', "Ja, ja, ja...")
	elseif cl == 47 then
		cw('m', "Me da cierta vergüenza admitirlo, pero por ahora solo somos tres.")
	elseif cl == 48 then
		cw('m', "Es muy difícil conseguir miembros para algo que suena tan aburrido...")
	elseif cl == 49 then
		cw('mc', "Ya me lo imagino...")
	elseif cl == 50 then
	updateMonika('3','d')
		cw('m', "¡Pero para tu información, no es para nada aburrido!")
	elseif cl == 51 then
		cw('m', "La literatura puede ser lo que tú quieras. Lectura, escritura, poesía...")
	elseif cl == 52 then
	updateMonika('3','e')
		cw('m', "Es más, hay una que guarda su colección de mangas en el aula...")
	elseif cl == 53 then
		cw('mc', "¿En serio?...")
	elseif cl == 54 then
	updateMonika('2','k')
		cw('m', "Sí. Gracioso, ¿verdad?")
	elseif cl == 55 then
	updateMonika('2','e')
		cw('m', "No para de decir que el manga también es literatura.")
	elseif cl == 56 then
		cw('m', "Quiero decir, tampoco creo que ella se equivoque...")
	elseif cl == 57 then
		cw('m', "Además, un miembro es un miembro, ¿verdad?")
	elseif cl == 58 then
		cw('bl', "¿Ha dicho «ella»?")
	elseif cl == 59 then
	updateMonika('1','a')
		cw('m', "Oye, " .. player .. "...")
	elseif cl == 60 then
		cw('m', "Por casualidad..., ¿sigues buscando un club al que unirte?")
	elseif cl == 61 then
		cw('mc', "Ah...")
	elseif cl == 62 then
		cw('mc', "Bueno, supongo, pero...")
	elseif cl == 63 then
		cw('m', "En ese caso...")
	elseif cl == 64 then
	updateMonika('5a')
		cw('m', "¿Podrías hacerme un gran favor?")
	elseif cl == 65 then
		cw('m', "No voy a pedirte que te unas, pero...")
	elseif cl == 66 then
		cw('m', "Pero si pudieras aunque sea pasarte por mi club, me harías muy feliz.")
	elseif cl == 67 then
		cw('m', "¿Porfa?")
	elseif cl == 68 then
		cw('mc', "Mmm...")
	elseif cl == 69 then
		cw('bl', "Bueno, supongo que no tengo ninguna razón para negarme...")
	elseif cl == 70 then
		cw('bl', "Además, ¿cómo podría decirle que no a alguien como Monika?")
	elseif cl == 71 then
		cw('mc', "Claro, podría pasarme.")
	elseif cl == 72 then
	updateMonika('1','k')
		cw('m', "¡Aaah, genial!")
	elseif cl == 73 then
	updateMonika('1','b')
		cw('m', "Eres muy majo, ¿sabes, " .. player .. "?")
	elseif cl == 74 then
		cw('mc', "V-vamos, no es para tanto...")
	elseif cl == 75 then
	updateMonika('1','a')
		cw('m', "Entonces, ¿vamos ya?")
	elseif cl == 76 then
		cw('m', "Ya buscaré el material más tarde, tú eres más importante.")

	elseif cl == 77 then
	audioUpdate('0')
	bgUpdate('corridor')
	hideMonika()
		cw('bl', "Y así es como vendí mi alma a Monika y su a irresistible sonrisa.")
	elseif cl == 78 then
		cw('bl', "Sigo tímidamente a Monika por el insti hasta la planta de arriba, una zona usada para las clases y actividades de alumnos de tercero que rara vez visito.")
	elseif cl == 79 then
		cw('bl', "Llena de energía, Monika abre la puerta del aula.")
	
	elseif cl == 80 then
	if autoskip > 0 or m_chance > 0 then
		updateMonika('3','b',-40,0)
	elseif m_chance == 0 then
		updateMonika('g1')
		if branch == '3ds' then
			m_Set.x = math.random(-40, -20)
			m_Set.y = math.random(0, 20)
		else
			m_Set.x = love.math.random(-128, -64)
			m_Set.y = love.math.random(0, 64)
		end
	end
	bgUpdate('club_day2')	
	audioUpdate('3')
		cw('m', "¡He vuelto~!")
	
	elseif cl == 81 then
	updateMonika('3','b',-40,0)
	updateYuri('2','t',200)
	sfxplay('glitch1s')
		cw('Chica 1', "¿Eh?")
	elseif cl == 82 then
		cw('Chica 1', "¿U-un invitado?...")
	elseif cl == 83 then
	updateNatsuki('4','c',80)
		cw('Chica 2', "¿En serio? ¿Tenía que ser un chico?")
	elseif cl == 84 then
		cw('Chica 2', "Vaya manera de cortar el rollo.")
	elseif cl == 85 then
	updateMonika('3','m')
		cw('m', "No seas borde, Natsuki...")
	elseif cl == 86 then
	updateMonika('3','b')
		cw('m', "En cualquier caso, ¡bienvenido al club, " .. player .. "!")
	elseif cl == 87 then
	updateMonika('3','a')
	cw('mc',"...")
	elseif cl == 88 then
		cw('bl', "Me he quedado sin palabras.")
	elseif cl == 89 then
		cw('bl', "Este club...")
	elseif cl == 90 then
		cw('bl', "¡Está lleno de chicas adorables!")
	elseif cl == 91 then
	updateNatsuki('5','c')
		cw('Chica 2', "Déjame adivinar...")
	elseif cl == 92 then
		cw('Chica 2', "Eres el novio de Monika, ¿no?")
	elseif cl == 93 then
		cw('bl', "¿...?")
	elseif cl == 94 then
		cw('mc', "¡No lo soy!")
	elseif cl == 95 then
	updateYuri('2','l')
	cw('Chica 1',"Natsuki...")
	elseif cl == 96 then
		cw('bl', "No conozco a la chica repelente, cuyo nombre parece ser Natsuki.")
	elseif cl == 97 then
		cw('bl', "Probablemente sea de primero, es una enana.")
	elseif cl == 98 then
	updateMonika('2','l')
		cw('bl', "Natsuki,")
	elseif cl == 99 then
	updateMonika('2','b')
		cw('bl', "Yuri,")
	elseif cl == 100 then
	updateMonika('2','a')
	updateYuri('4','a2')
		cw('y', "E-encantada...")
	elseif cl == 101 then
		cw('bl', "Yuri, la cual parece la más madura y tímida de todas, parece tener problemas para seguirle el ritmo a gente como Natsuki.")
	elseif cl == 102 then
		cw('mc', "Sí... Encantado de conoceros.")
	elseif cl == 103 then
	updateMonika('1','a')
		cw('m', "Me encontré a " .. player .. " en un aula y decidió venir a echarle un vistazo al club.")
	elseif cl == 104 then
		cw('m', "¿No os parece genial?")
	elseif cl == 105 then
	updateNatsuki('4','e')
		cw('n', "¡Espera! ¡Monika!")
	elseif cl == 106 then
		cw('n', "¿No te dije que me avisaras con tiempo cuando fueras a traer a alguien nuevo?")
	elseif cl == 107 then
	updateNatsuki('4','q')
		cw('n', "Iba a... bueno, ya sabes...")
	elseif cl == 108 then
	updateMonika('1','e')
		cw('m', "¡Perdón, perdón!")
	elseif cl == 109 then
		cw('m', "No lo había olvidado, es solo que me lo he encontrado de casualidad.")
	elseif cl == 110 then
	updateYuri('1','a')
		cw('y', "En ese caso, debería preparar un poco de té, ¿no?")
	elseif cl == 111 then
	updateMonika('1','b')
		cw('m', "¡Sí, eso estaría genial!")
	elseif cl == 112 then
		cw('m', "¿Por qué no tomas asiento, " .. player .. "?")
	elseif cl == 113 then
	hideAll()
		cw('bl', "Las chicas han juntado algunos pupitres para formar una mesa.")
	elseif cl == 114 then
		cw('bl', "Yuri se dirige a la esquina del aula y abre el armario.")
	elseif cl == 115 then
		cw('bl', "Mientras tanto, Monika y Natsuki se sientan una en frente de la otra.")
	elseif cl == 116 then
		cw('bl', "Aún incómodo, me siento al lado de Monika.")
	elseif cl == 117 then
	updateMonika('1','a',80)
		cw('m', "Bueno, sé que no pretendías venir aquí...")
	elseif cl == 118 then
		cw('m', "Pero nos aseguraremos de que te sientas como en casa, ¿vale?")
	elseif cl == 119 then
	updateMonika('1','j')
		cw('m', "Como presidenta del club de literatura, ¡es mi deber convertir el club en algo divertido y emocionante para todos!")
	elseif cl == 120 then
		cw('mc', "Me sorprende que todavía no haya más gente en el club.")
	elseif cl == 121 then
		cw('mc', "Debe ser difícil empezar un nuevo club.")
	elseif cl == 122 then
	updateMonika('3','b')
		cw('m', "Es una forma de verlo.")
	elseif cl == 123 then
		cw('m', "No hay mucha gente interesada en invertir todo su esfuerzo en empezar algo desde cero...")
	elseif cl == 124 then
		cw('m', "Especialmente cuando es algo que no llama tu atención, como la literatura.")
	elseif cl == 125 then
		cw('m', "Tienes que trabajar duro para convencer a la gente de que puede merecer la pena y ser divertido.")
	elseif cl == 126 then
		cw('m', "Por lo que hace que los eventos escolares, como el festival, sean mucho más importantes.")
	elseif cl == 127 then
	updateMonika('2','k')
		cw('m', "¡Y estoy convencida de que este club llegará a lo más alto antes de graduarnos!")
	elseif cl == 128 then
		cw('m', "¿Verdad, Natsuki?")
	elseif cl == 129 then
	updateNatsuki('4','q',10)
	updateMonika('2','k',150)
		cw('n', "Bueno...")
	elseif cl == 130 then
		cw('n', "Supongo...")
	elseif cl == 131 then
		cw('bl', "Natsuki le da la razón a regañadientes.")
	elseif cl == 132 then
		cw('bl', "Aunque sean tan distintas, comparten el mismo objetivo...")
	elseif cl == 133 then
		cw('bl', "Monika debe haber trabajado muy duro para encontrar a estas dos chicas.")
	elseif cl == 134 then
		cw('bl', "Yuri vuelve a la mesa, con un juego de té.")
	elseif cl == 135 then
		cw('bl', "Con cuidado, coloca una taza de té enfrente de cada uno antes de dejar la tetera en medio.")
	elseif cl == 136 then
	hideNatsuki()
	hideMonika()
	updateYuri('1','a',10)
		cw('mc', "¿Guardas un juego completo de té en esta clase?")
	elseif cl == 137 then
		cw('y', "No te preocupes, los profesores nos han dado permiso.")
	elseif cl == 138 then
		cw('y', "Además, ¿a que una buena taza de té caliente ayuda a leer un buen libro?")
	elseif cl == 139 then
		cw('mc', "Ah... S-supongo...")
	elseif cl == 140 then
	updateMonika('4','a',150)
		cw('m', "Je, je, je. Que no te intimide, Yuri solo quiere impresionarte.")
	elseif cl == 141 then
	updateYuri('3','n')
		cw('y', "¡¿Eh?! N-no...")
	elseif cl == 142 then
		cw('bl', "Ofendida, Yuri mira hacia otro lado.")
	elseif cl == 143 then
	updateYuri('4','b2')
		cw('y', "Me refería a que, bueno...")
	elseif cl == 144 then
		cw('mc', "Yo te creo.")
	elseif cl == 145 then
		cw('mc', "Bueno, acompañar el té con algo de lectura no es algo que suela hacer, pero al menos disfruto del sabor.")
	elseif cl == 146 then
	updateYuri('2','u')
		cw('y', "Me alegro...")
	elseif cl == 147 then
		cw('bl', "Yuri, débilmente, sonríe aliviada.")
	elseif cl == 148 then
	hideMonika()
	updateYuri('1','a',80)
		cw('y', "Y bien, " .. player .. ", ¿qué géneros literarios te gustan?")
	elseif cl == 149 then
		cw('mc', "Em... Pues...")
	elseif cl == 150 then
		cw('bl', "Teniendo en cuenta lo poco que he leído durante estos años, no sé realmente cómo responder a esto.")
	elseif cl == 151 then
		cw('mc', "Manga...")
	elseif cl == 152 then
		cw('bl', "Lo susurro, como bromeando.")
	elseif cl == 153 then
	updateNatsuki('1','c',-50)
		cw('bl', "Natsuki reacciona al instante.")
	elseif cl == 154 then
		cw('bl', "Parece que quiere decir algo, pero no abre la boca.")
	elseif cl == 155 then
	hideNatsuki()
	updateYuri('3','u')
		cw('y', "P-parece que no eres muy aficionado a la lectura...")
	elseif cl == 156 then
		cw('mc', "Bueno, siempre estoy a tiempo de cambiar...")
	elseif cl == 157 then
		cw('bl', "¿Pero qué estoy diciendo?")
	elseif cl == 158 then
		cw('bl', "He hablado sin pensármelo dos veces tras ver esa sonrisa triste de Yuri.")
	elseif cl == 159 then
		cw('mc', "Bueno, ¿y a ti qué te gusta, Yuri?")
	elseif cl == 160 then
	updateYuri('1','l')
		cw('y', "Bueno, pues...")
	elseif cl == 161 then
		cw('bl', "Yuri está trazando círculos con el dedo por los bordes de la taza de té.")
	elseif cl == 162 then
	updateYuri('1','a')
		cw('y', "A mí me encantan las novelas que desarrollan mundos de fantasía profundos y complejos.")
	elseif cl == 163 then
		cw('y', "El nivel de creatividad y esfuerzo tras esas obras me asombra.")
	elseif cl == 164 then
	updateYuri('1','f')
		cw('y', "Y narrar una buena historia en un mundo tan misterioso me resulta igual de asombroso.")
	elseif cl == 165 then
		cw('bl', "Yuri continúa comentando de manera apasionada sus lecturas.")
	elseif cl == 166 then
		cw('bl', "Parecía reservada y tímida cuando la vi por primera vez, pero los libros parecen apasionarla, al contrario que a la mayoría de la gente.")
	elseif cl == 167 then
	updateYuri('2','m')
		cw('y', "Pero bueno, me gustan muchas cosas.")
	elseif cl == 168 then
		cw('y', "Las historias con un profundo componente psicológico también suelen absorberme.")
	elseif cl == 169 then
	updateYuri('2','a')
		cw('y', "¿No te parece increíble cómo un escritor puede aprovechar tan deliberadamente tu propia falta de imaginación para desconcertarte por completo?")
	elseif cl == 170 then
		cw('y', "Pero bueno, últimamente he estado leyendo muchas novelas de terror...")
	elseif cl == 171 then
		cw('mc', "Ah, hace tiempo leí una...")
	elseif cl == 172 then
		cw('bl', "Me agarro a un clavo ardiendo con tal de continuar la conversación.")
	elseif cl == 173 then
		cw('bl', "A este ritmo, parecerá que Yuri está hablando con una piedra.")
	elseif cl == 174 then
	updateMonika('1','j',200)
		cw('m', "Ja, ja, ja. Qué propio de ti, Yuri.")
	elseif cl == 175 then
	updateMonika('1','a')
		cw('m', "Encaja con tu personalidad.")
	elseif cl == 176 then
	updateYuri('1','a')
		cw('y', "¿Ah, sí?")
	elseif cl == 177 then
		cw('y', "Si una historia me hace pensar o consigue transportarme a otro mundo, no puedo dejar de leerla.")
	elseif cl == 178 then
		cw('y', "El terror psicológico suele lograr que veas el mundo desde otro punto de vista, aunque sea solo durante un momento.")
	elseif cl == 179 then
	updateNatsuki('5','q',-40)
		cw('n', "Puaj, odio el terror...")
	elseif cl == 180 then
	updateYuri('1','f')
		cw('y', "¿Y eso?")
	elseif cl == 181 then
	updateNatsuki('5','c')
		cw('n', "Bueno, es solo que...")
	elseif cl == 182 then
		cw('bl', "Natsuki me mira durante una fracción de segundo.")
	elseif cl == 183 then
	updateNatsuki('5','q')
		cw('n', "Olvídalo.")
	elseif cl == 184 then
	updateMonika('1','a')
		cw('m', "Es verdad, a ti te gusta escribir sobre cosas adorables, ¿no, Natsuki?")
	elseif cl == 185 then
	updateNatsuki('1','o')
		cw('n', "¿C-cómo?")
	elseif cl == 186 then
		cw('n', "¿Qué te hace pensar eso?")
	elseif cl == 187 then
	updateMonika('3','b')
		cw('m', "Te dejaste un trocito de papel en la última reunión.")
	elseif cl == 188 then
		cw('m', "Parecía que estabas redactando un poema llamado...")
	elseif cl == 189 then
	updateNatsuki('1','p')
		cw('n', "¡¡No lo digas!!")
	elseif cl == 190 then
		cw('n', "¡Y devuélvemelo!")
	elseif cl == 191 then
	updateMonika('1','j')
		cw('m', "Vaaale~")
	elseif cl == 192 then
	updateMonika('1','a')
		cw('mc', "Natsuki, ¿compones tus propios poemas?")
	elseif cl == 193 then
	updateNatsuki('1','c')
		cw('n', "¿Qué? Ah, bueno, a veces.")
	elseif cl == 194 then
		cw('n', "¿Por qué lo dices?")
	elseif cl == 195 then
		cw('mc', "Porque me parece impresionante.")
	elseif cl == 196 then
		cw('mc', "¿Por qué no compartes algún día uno?")
	elseif cl == 197 then
	updateNatsuki('5','q')
		cw('n', "¡N-no!")
	elseif cl == 198 then
		cw('bl', "Natsuki aparta la mirada.")
	elseif cl == 199 then
		cw('n', "No creo... que te gusten...")
	elseif cl == 200 then
		cw('mc', "Todavía no tienes mucha confianza en ti misma, ¿no?")
	elseif cl == 201 then
	updateYuri('2','f')
		cw('y', "Comprendo cómo se siente Natsuki.")
	elseif cl == 202 then
		cw('y', "Necesita algo más que confianza para compartir ese nivel de escritura.")
	elseif cl == 203 then
	updateYuri('2','k')
		cw('y', "La forma de escritura más pura es la que te describe a ti misma.")
	elseif cl == 204 then
		cw('y', "Debe estar dispuesta a abrirse a sus lectores, exponiendo sus puntos débiles y mostrando las ramas más profundas de su corazón.")
	elseif cl == 205 then
	updateMonika('2','a')
		cw('m', "Yuri, ¿tú también tienes experiencia componiendo?")
	elseif cl == 206 then
		cw('m', "Natsuki se sentiría más cómoda mostrándonos sus poemas si tu compartieras alguno de los tuyos.")
	elseif cl == 207 then
	updateYuri('3','o')
	y "..."
	elseif cl == 208 then
		cw('mc', "Parece que le ocurre lo mismo a Yuri...")
	elseif cl == 209 then
		cw('bl', "Todos permanecemos en silencio durante unos segundos.")
	elseif cl == 210 then
	updateMonika('5a')
		cw('m', "¡Eh, se me acaba de ocurrir una idea!")
	elseif cl == 211 then
		cw('m', "¿Qué os parece esto?")
	elseif cl == 212 then
	updateNatsuki('2','k')
	updateYuri('3','e')
	cw('ny',"¿...?")
	elseif cl == 213 then
		cw('bl', "Natsuki y Yuri miran extrañadas a Monika.")
	elseif cl == 214 then
	updateMonika('2','b')
		cw('m', "¡Volvamos todos a casa y compongamos un poema propio!")
	elseif cl == 215 then
		cw('m', "Y la próxima vez que nos reunamos, lo compartiremos con el resto.")
	elseif cl == 216 then
		cw('m', "¡Así estaremos en igualdad de condiciones!")
	elseif cl == 217 then
	updateMonika('2','a')
	updateNatsuki('5','q')
		cw('n', "E-em...")
	elseif cl == 218 then
	updateYuri('3','v')
	y "..."
	elseif cl == 219 then
	updateMonika('2','m')
	m "Ah..."
	elseif cl == 220 then
		cw('m', "Vaya, a mí me parecía una buena idea...")
	elseif cl == 221 then
	updateYuri('2','l')
		cw('y', "Bueno...")
	elseif cl == 222 then
		cw('y', "Creo que tienes razón, Monika...")
	elseif cl == 223 then
	updateYuri('2','f')
		cw('y', "Deberíamos empezar a buscar actividades en las que podamos participar todos juntos.")
	elseif cl == 224 then
	updateYuri('2','h')
		cw('y', "Después de todo, decidí ocupar el cargo de vicepresidenta por algo...")
	elseif cl == 225 then
		cw('y', "Yo también tengo que hacer todo lo posible para nutrir tanto al club como a sus integrantes.")
	elseif cl == 226 then
	updateYuri('2','a')
		cw('y', "Además, ahora que tenemos un miembro nuevo...")
	elseif cl == 227 then
		cw('y', "Me parece el paso adecuado.")
	elseif cl == 228 then
		cw('y', "¿Tú también estás de acuerdo, " .. player .. "?")
	elseif cl == 229 then
		cw('mc', "Esperad... Aún hay un problema.")
	elseif cl == 230 then
	updateMonika('1','d')
		cw('m', "¿Eh? ¿Cuál?")
	elseif cl == 231 then
		cw('bl', "Ahora que hemos llegado al tema más importante, digo sin rodeos lo que tenía en mente durante todo este tiempo.")
	elseif cl == 232 then
		cw('mc', "¡Nunca he dicho que fuera a unirme a este club!")
	elseif cl == 233 then
		cw('mc', "Puede que Monika me haya convencido para pasarme por aquí, pero nunca le aseguré nada.")
	elseif cl == 234 then
		cw('mc', "Aún tengo que echarle un vistazo a otros clubes y..., em...")
	elseif cl == 235 then
		updateMonika('1','g')
	updateNatsuki('4','g')
	updateYuri('2','e')
		cw('bl', "Pierdo el hilo de lo que iba a decir. Las chicas me miran abatidas.")
	elseif cl == 236 then
	updateMonika('1','p')
		cw('m', "P-pero...")
	elseif cl == 237 then
	updateYuri('2','v')
		cw('y', "Lo siento, pensaba que...")
	elseif cl == 238 then
	updateNatsuki('5','s')
		cw('n', "Jum.")
	elseif cl == 239 then
		cw('mc', "¿Eh?")
	elseif cl == 240 then
		cw('bl', "Las tres intercambian miradas antes de que Monika se gire hacia mí.")
	elseif cl == 241 then
	updateMonika('1','m')
		cw('m', "Supongo que... tendré que contarte la verdad, " .. player .. ".")
	elseif cl == 242 then
		cw('m', "El caso es que...")
	elseif cl == 243 then
	updateMonika('1','p')
		cw('m', "Aún no tenemos los miembros suficientes para formar un club de forma oficial...")
	elseif cl == 244 then
		cw('m', "Necesitamos cuatro...")
	elseif cl == 245 then
		cw('m', "Y lo he intentado todo por tal de conseguir miembros nuevos.")
	elseif cl == 246 then
		cw('m', "Y si no encontramos a uno más antes del festival...")
	elseif cl == 247 then
	mc "..."
	elseif cl == 248 then
		cw('bl', "Estoy... Estoy indefenso ante estas chicas.")
	elseif cl == 249 then
		cw('bl', "¿Cómo voy a poder tomar una decisión en una situación así?")
	elseif cl == 250 then
		cw('bl', "Me sentaría fatal fallarle a todas...")
	elseif cl == 251 then
		cw('bl', "Además, el club parece bastante tranquilo...")
	elseif cl == 252 then
		cw('bl', "Así que si componer poemas es el precio a pagar por pasar todos los días un rato con estas chicas tan guapas...")
	elseif cl == 253 then
		cw('mc', "Decidido.")
	elseif cl == 254 then
		cw('mc', "Ya lo he decidido.")
	elseif cl == 255 then
		cw('mc', "Me uniré al club de literatura.")
	elseif cl == 256 then
	updateMonika('1','e')
	updateYuri('3','f')
	updateNatsuki('1','k')
		cw('bl', "Una a una, sus miradas vuelven a brillar.")
	elseif cl == 257 then
		cw('m', "Cielos, ¿de verdad?")
	elseif cl == 258 then
		cw('m', "¿Lo dices en serio, " .. player .. "?")
	elseif cl == 259 then
		cw('mc', "Sí...")
	elseif cl == 260 then
		cw('mc', "Será divertido.")
	elseif cl == 261 then
	updateYuri('1','m')
		cw('y', "Menudo susto me has dado...")
	elseif cl == 262 then
	updateNatsuki('5','q')
		cw('n', "Si nos hubieras dejado tiradas tras todo esto, me habría cabreado muchísimo.")
	elseif cl == 263 then
		cw('m', "Qué feliz acabas de hacerme, " .. player .. "...")
	elseif cl == 264 then
	updateMonika('1','k')
		cw('m', "¡Ahora podremos convertirnos en un club oficial!")
	elseif cl == 265 then
	updateMonika('1','e')
		cw('m', "Muchas gracias. Eres increíble.")
	elseif cl == 266 then
		cw('m', "Haré todo lo que esté en mi mano para que te lo pases en grande, ¿vale?")
	elseif cl == 267 then
		cw('mc', "Oh... Gracias.")
	elseif cl == 268 then
	hideYuri()
	hideNatsuki()
	updateMonika('3','b',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 269 then
		cw('m', "Y con esto, creo que podemos dar oficialmente por finalizada la reunión de hoy, y con resultados satisfactorios.")
	elseif cl == 270 then
		cw('m', "Que no se os olvide la tarea que os he asignado para esta noche:")
	elseif cl == 271 then
		cw('m', "¡Componed un poema para poder compartirlo con el resto en la siguiente reunión!")
	elseif cl == 272 then
		cw('bl', "Monika vuelve a mirarme una vez más.")
	elseif cl == 273 then
	updateMonika('1','a')
		cw('m', "Tengo ganas de ver cómo te expresas, " .. player .. ".")
	elseif cl == 274 then
	updateMonika('5a')
		cw('m', "Je, je, je~")
	elseif cl == 275 then
		cw('mc', "J-je, sí...")
	elseif cl == 276 then
	hideMonika()
		cw('bl', "¿De verdad voy a poder impresionar a Monika, la más popular de la clase, con mis penosas habilidades de composición?")
	elseif cl == 277 then
		cw('bl', "Ya siento la ansiedad brotando en mi interior.")
	elseif cl == 278 then
		cw('bl', "Mientras las chicas continúan charlando, Yuri recoge el juego de té.")
	elseif cl == 279 then
		cw('mc', "Creo que me voy ya...")
	elseif cl == 280 then
	updateMonika('5a','',80)
		cw('m', "¡Vale!")
	elseif cl == 281 then
		cw('m', "Nos vemos mañana, entonces.")
	elseif cl == 282 then
		cw('m', "¡No puedo esperar!")
	
	elseif cl == 283 then
	bgUpdate('residential')
	hideMonika()
		cw('bl', "Tras eso, salgo del club y vuelvo a casa.")
	elseif cl == 284 then
		cw('bl', "Mi mente está dividida entre las tres chicas durante todo el camino de vuelta:")
	elseif cl == 285 then
	updateNatsuki('4','a',-40)
	bl "Natsuki,"
	elseif cl == 286 then
	updateYuri('1','a',80)
	bl "Yuri,"
	elseif cl == 287 then
	updateMonika('1','a',200)
		cw('bl', "y, por supuesto, Monika.")
	elseif cl == 288 then
		cw('bl', "¿Alcanzaré la felicidad pasando las tardes en el club de literatura?")
	elseif cl == 289 then
		cw('bl', "Quizás hasta tenga la oportunidad de intimar con alguna de las chicas...")
	elseif cl == 290 then
	hideAll()
		cw('bl', "¡Muy bien!")
	elseif cl == 291 then
		cw('bl', "Aprovechando al máximo todas las situaciones que se me presenten en el club, estoy seguro de que la suerte me sonreirá.")
	elseif cl == 292 then
		cw('bl', "Y parece que eso empieza escribiendo un poema esta noche...")
	elseif cl == 293 then
	fadeOut(4)
	elseif cl == 294 then
	cl = 293
	
	elseif cl == 295 then
	audioUpdate('0')
	bgUpdate('black')
	menutext = 'Acabas de desbloquear un poema especial.\n¿Te gustaría leerlo?'
	choices = {'Sí','No'}
	choice_enable()
	elseif cl == 296 then
	if choicepick == 'Sí' then
		changeState('poem_special',sp[1])
	else
		scriptJump(297)
	end
	elseif cl >= 297 then
	cl = 297
	fadeOut(1)
	
	--1: x=80
	--2: x=20 x=140 ..or.. x=10 x=150
	--3: x=0-40 x=80 x=200
	--4: x=0-60 x=30 x=120 x=220
	end
end
