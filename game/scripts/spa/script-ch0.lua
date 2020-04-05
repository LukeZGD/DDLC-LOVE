function ch0script()
	--ch0-main
	if cl == 1 then
		bgUpdate('residential')
		audioUpdate('2')
		cw('???', "¡¡Eeeeeeeeeeh!!")
	elseif cl == 2 then  
		cw('bl', "Veo a lo lejos corriendo hacia mí e intentando llamar mi atención a una chica muy pesada que está dando la nota agitando los brazos.")
	elseif cl == 3 then
		cw('bl', "Esa chica es Sayori, mi vecina y mejor amiga desde que éramos niños.")
	elseif cl == 4 then
		cw('bl', "Es la típica amiga con la que no te ves quedando, pero lo hacéis porque os conocéis desde hace tiempo.")
	elseif cl == 5 then
		cw('bl', "Solíamos caminar juntos hacia el colegio, pero desde que empezamos el instituto se queda dormida cada vez con más frecuencia y ya estoy muy cansado de esperarla.")
	elseif cl == 6 then
		cw('bl', "Pero para perseguirme así, casi mejor salgo corriendo.")
	elseif cl == 7 then
		cw('bl', "Aun con todo, me paro frente al paso de peatones, suspiro y dejo que Sayori me alcance.")
	elseif cl == 8 then
		updateSayori('4','p',80)
		cw('s', "...")
	elseif cl == 9 then 
		cw('s', "¡Me he vuelto a quedar dormida!")
	elseif cl == 10 then 
		cw('s', "¡Pero esta vez te he pillado a tiempo!")
	elseif cl == 11 then
		cw('mc', "¿Y no crees que ha sido porque he decidido pararme y esperarte?")
	elseif cl == 12 then
		updateSayori('5c')
		cw('s', "¡Eeeeeeeh, lo dices como si pensaras en ignorarme!")
	elseif cl == 13 then 
		cw('s', "¡Eres cruel, " .. player .. "!")
	elseif cl == 14 then
		cw('mc', "No quiero que la gente piense que somos pareja o algo así al verte hacer tonterías.")
	elseif cl == 15 then
		updateSayori('1','a')
		cw('s', "Vaaale...")
	elseif cl == 16 then 
		cw('s', "Pero aún así, me has esperado.")
	elseif cl == 17 then
		cw('s', "Parece que no puedes ser borde conmigo ni queriendo.")
	elseif cl == 18 then
		cw('mc', "Lo que tú digas...")
	elseif cl == 19 then
		updateSayori('1','q')
		cw('s', "Je, je, je~")
	elseif cl == 20 then
		hideSayori()
		cw('bl', "Cruzamos la calle juntos y vamos de camino al instituto.")
	elseif cl == 21 then
		cw('bl', "A medida que nos acercamos, las calles empiezan a llenarse de otros alumnos que también van de camino.")
	elseif cl == 22 then
		updateSayori('3','a',80)
		cw('s', "" .. player .. "...")
	elseif cl == 23 then 
		cw('s', "¿Has decidido ya a qué club unirte?")
	elseif cl == 24 then
		cw('mc', "¿Unirme a un club?")
	elseif cl == 25 then
		cw('mc', "Ya te lo dije, no me interesa nada unirme a un club.")
	elseif cl == 26 then 
		cw('mc', "Aunque tampoco he comprobado los que hay.")
	elseif cl == 27 then
		updateSayori('4','h')
		cw('s', "¿Eh? ¡Tienes que estar de broma!")
	elseif cl == 28 then
		cw('s', "¡Me dijiste que este año te unirías a un club!")
	elseif cl == 29 then
		cw('bl', "¿...?")
	elseif cl == 30 then
		cw('bl', "A lo mejor lo dije en alguna de nuestras conversaciones en las que le sigo el rollo sin prestar mucha atención.")
	elseif cl == 31 then
		cw('bl', "A Sayori le gusta preocuparse demasiado por mí, cuando soy perfectamente feliz siendo del montón mientras paso mi tiempo libre jugando a videojuegos y viendo anime.")
	elseif cl == 32 then
		updateSayori('4','j')
		cw('s', "¡Oye!")
	elseif cl == 33 then
		cw('s', "Hablaba de lo mucho que me preocupa que no aprendas a socializar y no sepas desenvolverte cuando vayas a la universidad.")
	elseif cl == 34 then
		cw('s', "¡Sabes que tu felicidad es muy importante para mí!")
	elseif cl == 35 then
		cw('s', "Y yo sé que eres feliz, ¡pero pensar que a este paso te convertirás en un «nini» por no saber desenvolverte en el mundo real me deja hecha polvo!")
	elseif cl == 36 then
		updateSayori('4','g')
		cw('s', "Confías en mí, ¿verdad?")
	elseif cl == 37 then
		cw('s', "Deja de preocuparme...")
	elseif cl == 38 then 
		cw('mc', "De acuerdo, de acuerdo...")
	elseif cl == 39 then
		cw('mc', "Bueno, si te hace ilusión, ojearé los clubs que haya disponibles.")
	elseif cl == 40 then 
		cw('mc', "Pero no prometo nada.")
	elseif cl == 41 then
		updateSayori('1','h')
		cw('s', "¿Me prometes que por lo menos lo intentarás?")
	elseif cl == 42 then
		cw('mc', "Bueno, supongo que eso sí puedo prometértelo.")
	elseif cl == 43 then
		updateSayori('4','r')
		cw('s', "¡Yupiii!")
	elseif cl == 44 then
		cw('bl', "¿Por qué me dejo manipular por una chica tan despreocupada?")
	elseif cl == 45 then
		cw('bl', "Es más, incluso me sorprende dejarme convencer por ella.")
	elseif cl == 46 then
		cw('bl', "Supongo que el verla tan angustiada por mí hace que me sea inevitable no ceder un poco, aunque lo exagere todo en su cabeza.")
	elseif cl == 47 then
		hideSayori()
		bgUpdate('class')
		cw('bl', "El día pasa como cualquier otro y se acaba antes de que me dé cuenta.")
	elseif cl == 48 then
		cw('bl', "Después de guardar mis cosas, me quedo embobado mirando a la pared, buscando una pizca de motivación.")
	elseif cl == 49 then
		cw('mc', "Clubes...")
	elseif cl == 50 then
		cw('bl', "Sayori quiere que busque algún club.")
	elseif cl == 51 then
		cw('bl', "Supongo que no me queda otra que empezar por el club de anime...")
	elseif cl == 52 then
		cw('s', "¿Holaaa?")
	elseif cl == 53 then
		updateSayori('1','b',80)
		cw('mc', "Sayori...")
	elseif cl == 54 then
		cw('bl', "Sayori debió entrar en el aula mientras estaba en mi mundo.")
	elseif cl == 55 then
		cw('bl', "Miro a mi alrededor y me doy cuenta de que soy el único que queda en clase.")
	elseif cl == 56 then
		updateSayori('1','a')
		cw('s', "Pensé que te pillaría saliendo del aula, pero te he visto sentado y pensativo, así que he entrado.")
	elseif cl == 57 then
		cw('s', "Si te digo la verdad... ¡Estoy impresionada! ¡Algunas veces eres peor que yo!")
	elseif cl == 58 then
		cw('mc', "No tienes por qué esperarme si vas a llegar tarde a tu club.")
	elseif cl == 59 then
		updateSayori('1','y')
		cw('s', "Bueno, pensé que podrías necesitar un empujoncito, ya sabes...")
	elseif cl == 60 then
		cw('mc', "¿Cómo?")
	elseif cl == 61 then
		updateSayori('1','a')
		cw('s', "¡Pues que podrías unirte a mi club!")
	elseif cl == 62 then
		cw('mc',"Sayori...")
	elseif cl == 63 then
		updateSayori('4','r')
		cw('s', "¿Sí?")
	elseif cl == 64 then
		cw('mc', "Ni de coña voy a unirme a tu club.")
	elseif cl == 65 then
		updateSayori('5d','')
		cw('s', "¡¿Eeeeeeeeh?! ¡Serás cretino!")
	elseif cl == 66 then
		cw('bl', "Sayori es la vicepresidenta del club de literatura.")
	elseif cl == 67 then
		cw('bl', "Jamás habría pensado que le gustara la literatura.")
	elseif cl == 68 then
		cw('bl', "De hecho, estoy seguro al 99% de que lo hizo porque pensaba que sería divertido ayudar a empezar un nuevo club.")
	elseif cl == 69 then
		cw('bl', "Puesto que ella fue la primera en mostrar interés tras la fundadora del club, se quedó con el título de «vicepresidenta».")
	elseif cl == 70 then
		cw('bl', "Por descontado, mi interés por la literatura es incluso menor.")
	elseif cl == 71 then
		cw('mc', "Sí. Me voy al club de anime.")
	elseif cl == 72 then
		updateSayori('1','g')
		cw('s', "Porfiii...")
	elseif cl == 73 then
		cw('mc', "¿Pero por qué te importa tanto?")
	elseif cl == 74 then
		updateSayori('5b','')
		cw('s', "Bueno...")
	elseif cl == 75 then
		cw('s', "Es que ayer le dije al resto del club que traería a un nuevo miembro...")
	elseif cl == 76 then
		cw('s', "Y Natsuki preparó unos pastelillos y todo...")
	elseif cl == 77 then 
		cw('s', "Je, je, je...")
	elseif cl == 78 then
		cw('mc', "¡No hagas promesas que no puedas cumplir!")
	elseif cl == 79 then
		cw('bl', "No sé si Sayori es tonta de remate o muy astuta habiendo planeado todo esto ella solita.")
	elseif cl == 80 then 
		cw('bl', "Suelto un largo suspiro.")
	elseif cl == 81 then
		cw('mc', "Está bien... Me pasaré a por un pastelillo, ¿vale?")
	elseif cl == 82 then
		updateSayori('4','r')
		cw('s', "¡Bien! ¡Toma ya!")
	elseif cl == 83 then
		hideSayori()
		bgUpdate('corridor')
		audioUpdate('0')
		cw('bl', "Y así es como vendí mi alma por un pastelillo.")
	elseif cl == 84 then
		cw('bl', "Cabizbajo, sigo a Sayori por el colegio hasta la planta de arriba, una zona usada para las clases y actividades de alumnos de tercero que rara vez visito.")
	elseif cl == 85 then 
		cw('bl', "Sayori abre la puerta del aula con mucho entusiasmo.")
	elseif cl == 86 then
		bgUpdate('club')
		audioUpdate('3')
		updateSayori('4','a',-50)
		cw('s', "¡Escuchadme todas! ¡Ha llegado el miembro nuevo!")
	elseif cl == 87 then
		cw('mc',"Te he dicho que no me llames miembro nue...")
	elseif cl == 88 then
		hideSayori()
		cw('bl', "¿Eh? Echo un vistazo al aula.")
	elseif cl == 89 then
		updateYuri('1','a',80)
		cw('Chica 1', "Bienvenido al club de literatura. Es un placer conocerte.")
	elseif cl == 90 then 
		cw('Chica 1', "Sayori siempre comenta cosas buenas sobre ti.")
	elseif cl == 91 then
		updateNatsuki('4','c',10)
		updateYuri('1','a',150)
		cw('Chica 2', "¿En serio? ¿Tenía que ser un chico?")
	elseif cl == 92 then 
		cw('Chica 2', "Vaya manera de cortar el rollo.")
	elseif cl == 93 then
		updateMonika('1','k',-40)
		updateNatsuki('4','c',80)
		updateYuri('1','a',200)
		cw('Chica 3', "¡Oh, " .. player .. "! ¡Qué sorpresa!")
	elseif cl == 94 then 
		cw('Chica 3', "¡Bienvenido al club!")
	elseif cl == 95 then
		updateMonika('1','a')
		cw('mc',"...")
	elseif cl == 96 then 
		cw('bl', "Me he quedado sin palabras.")
	elseif cl == 97 then 
		cw('bl', "Este club...")
	elseif cl == 98 then
		cw('bl', "¡Está lleno de chicas adorables!")
	elseif cl == 99 then
		hideMonika()
		hideYuri()
		updateNatsuki('2','c')
		cw('Chica 2', "¿Qué miras?")
	elseif cl == 100 then 
		cw('Chica 2', "Si quieres decir algo, dilo.")
	elseif cl == 101 then
		cw('mc', "P-perdón...")
	elseif cl == 102 then
		updateYuri('2','l',200)
		cw('Chica 1', "Natsuki...")
	elseif cl == 103 then
		updateNatsuki('5','s')
		cw('Chica 2', "Jum.")
	elseif cl == 104 then
		cw('bl', "No conozco a la chica repelente, cuyo nombre parece ser Natsuki.")
	elseif cl == 105 then
		cw('bl', "Probablemente sea de primero, es una enana.")
	elseif cl == 106 then
		cw('bl', "Según Sayori, es quien preparó los pastelillos.")
	elseif cl == 107 then
		updateSayori('2','q',-40)
		cw('s', "Puedes ignorarla cuando se pone así~")
	elseif cl == 108 then
		cw('bl', "Sayori me susurra eso al oído y se gira hacia el resto.")
	elseif cl == 109 then
		updateSayori('1','x')
		cw('s', "¡En fin! Ella es Natsuki, siempre llena de energía.")
	elseif cl == 110 then 
		cw('s', "Y ella es Yuri, ¡la más lista del club!")
	elseif cl == 111 then
		updateYuri('4','b2')
		cw('y',"N-no digas eso...")
	elseif cl == 112 then
		cw('bl', "Yuri, que parece la más adulta y tímida de todas, parece tener problemas para seguirle el ritmo a personas como Sayori y Natsuki.")
	elseif cl == 113 then
		cw('mc', "Oh... Encantado de conoceros.")
	elseif cl == 114 then
		hideYuri()
		hideNatsuki()
		updateSayori('1','a')
		cw('s', "Parece que ya conoces a Monika, ¿verdad?")
	elseif cl == 115 then
		updateMonika('2','a',80)
		cw('m', "Así es.")
	elseif cl == 116 then 
		cw('m', "Me alegro de verte otra vez, " .. player .. ".")
	elseif cl == 117 then
		updateMonika('5a','')
		cw('bl', "Monika me sonríe con dulzura.")
	elseif cl == 118 then
		cw('bl', "Nos conocemos, aunque apenas habláramos, porque estuvimos el año pasado en la misma clase.")
	elseif cl == 119 then
		cw('bl', "Monika era probablemente la chica más popular de la clase. Es inteligente, guapa y está en forma.")
	elseif cl == 120 then 
		cw('bl', "Totalmente fuera de mi alcance.")
	elseif cl == 121 then
		cw('bl', "Y verla ahora sonriéndome, me hace sentir un poco...")
	elseif cl == 122 then
		cw('mc', "Y-yo también, Monika.")
	elseif cl == 123 then
		hideMonika()
		updateSayori('4','x')
		cw('s', "¡Venga, siéntate, " .. player .. "! Te hemos hecho un hueco en la mesa. Puedes sentarte al lado de Monika o a mi lado.")
	elseif cl == 124 then 
		cw('s', "¡Voy a por los pastelillos!")
	elseif cl == 125 then
		updateNatsuki('1','b',80)
		cw('n', "¡Oye! ¡Soy yo quien los hizo y seré yo quien vaya a por ellos!")
	elseif cl == 126 then
		updateSayori('5a','')
		cw('s', "Perdona, me he emocionado un poco...")
	elseif cl == 127 then
		updateYuri('1','a',200)
		cw('y', "¿Qué os parece si yo preparo algo de té?")
	elseif cl == 128 then
		hideSayori()
		hideYuri()
		hideNatsuki()
		cw('bl', "Las chicas han juntado algunos pupitres para formar una mesa.")
	elseif cl == 129 then
		cw('bl', "Como dijo Sayori, han ampliado el espacio para que quedase un hueco entre Sayori y Monika.")
	elseif cl == 130 then
		cw('bl', "Natsuki y Yuri se van a la esquina de la clase, donde Natsuki coge una bandeja envuelta y Yuri abre el armario.")
	elseif cl == 131 then
		cw('bl', "Me sigo sintiendo raro, pero me siento al lado de Sayori.")
	elseif cl == 132 then
		cw('bl', "Natsuki vuelve orgullosa a la mesa, con la bandeja en sus manos.")
	elseif cl == 133 then
		updateNatsuki('2','z',80)
		cw('n', "Vaaale, ¿estáis listos?")
	elseif cl == 134 then
		cw('n',"¡Tachááán!")
	elseif cl == 135 then
		updateSayori('4','m',-40)
		updateMonika('2','d',200)
		cw('s', "¡Ualaaaaaa!")
	elseif cl == 136 then
		cw('bl', "Natsuki levanta el envoltorio de la bandeja, revelando una docena de pastelillos blancos y esponjosos con forma de gatito.")
	elseif cl == 137 then
		cw('bl', "Ha hecho los bigotes con glaseado y las orejas con pepitas de chocolate.")
	elseif cl == 138 then
		updateSayori('4','r')
		cw('s', "¡Qué cosa más cuquiiii!")
	elseif cl == 139 then
		updateMonika('2','b')
		cw('m', "¡No tenía ni idea de que fueses tan buena preparando pastelillos, Natsuki!")
	elseif cl == 140 then
		updateNatsuki('2','d')
		cw('n', "Je, je, je. Bueno, no es para tanto.")
	elseif cl == 141 then 
		cw('n', "¡Daos prisa y coged uno!")
	elseif cl == 142 then
		cw('bl', "Sayori coge el primero, luego Monika y, por último, yo.")
	elseif cl == 143 then
		updateSayori('4','q')
		cw('s', "¡Está delicioso!")
	elseif cl == 144 then
		cw('bl', "Sayori, además de haberse manchado ya la cara con el glaseado, habla con la boca llena.")
	elseif cl == 145 then
		cw('bl', "Giro el pastelillo con los dedos, buscando el mejor ángulo para darle un bocado.")
	elseif cl == 146 then
		hideSayori()
		hideMonika()
		updateNatsuki('1','c')
		cw('bl', "Natsuki está callada.")
	elseif cl == 147 then
		cw('bl', "No puedo evitar darme cuenta de las miradas que me echa.")
	elseif cl == 148 then 
		cw('bl', "¿Estará esperando a que le dé un bocado?")
	elseif cl == 149 then 
		cw('bl', "Finalmente se lo doy.")
	elseif cl == 150 then
		cw('bl', "El glaseado está dulce y sabroso. Me pregunto si de verdad lo ha hecho ella.")
	elseif cl == 151 then
		cw('mc', "Esto está muy bueno.")
	elseif cl == 152 then 
		cw('mc', "Gracias, Natsuki.")
	elseif cl == 153 then
		updateNatsuki('5','h')
		cw('n', "¿P-por qué me das las gracias? ¡Ni que...!")
	elseif cl == 154 then 
		cw('bl', "(¿No he escuchado yo esto antes...?)")
	elseif cl == 155 then
		updateNatsuki('5','s')
		cw('n', "Los hubiera preparado para ti precisamente o algo.")
	elseif cl == 156 then
		cw('mc', "¿Cómo? Pensaba que sí. Sayori dijo...")
	elseif cl == 157 then
		updateNatsuki('1','2c')
		cw('n', "¡Bueno, puede ser!")
	elseif cl == 158 then 
		cw('n', "Pero no son para, y-ya sabes... ¡para ti! Tonto...")
	elseif cl == 159 then
		cw('mc', "Vale, vale...")
	elseif cl == 160 then
		hideNatsuki()
		cw('bl', "Desisto ante la absurda lógica de Natsuki y abandono la conversación.")
	elseif cl == 161 then 
		cw('bl', "Yuri vuelve a la mesa, con un juego de té.")
	elseif cl == 162 then
		cw('bl', "Cuidadosamente, coloca una taza frente a cada uno de nosotros antes de poner la tetera al lado de la bandeja de pastelillos.")
	elseif cl == 163 then
		updateYuri('1','a',10)
		cw('mc', "¿Guardas un juego completo de té en esta clase?")
	elseif cl == 164 then
		cw('y', "No te preocupes, los profesores nos han dado permiso.")
	elseif cl == 165 then
		cw('y', "Además, ¿a que una buena taza de té caliente ayuda a leer un buen libro?")
	elseif cl == 166 then
		cw('mc', "Ah... S-supongo...")
	elseif cl == 167 then
		updateMonika('4','a',150)
		cw('m', "Je, je, je. Que no te intimide, Yuri solo quiere impresionarte.")
	elseif cl == 168 then
		updateYuri('3','n')
		cw('y',"¡¿Eh?! N-no...")
	elseif cl == 169 then
		cw('bl', "Ofendida, Yuri mira hacia otro lado.")
	elseif cl == 170 then
		updateYuri('4','b2')
		cw('y', "Me refería a que, bueno...")
	elseif cl == 171 then 
		cw('mc', "Yo te creo.")
	elseif cl == 172 then
		cw('mc', "Bueno, acompañar el té con algo de lectura no es algo que suela hacer, pero al menos disfruto del sabor.")
	elseif cl == 173 then
		updateYuri('2','u')
		cw('y', "Me alegro...")
	elseif cl == 174 then 
		cw('bl', "Yuri, débilmente, sonríe aliviada.")
	elseif cl == 175 then
		cw('bl', "Monika arquea una ceja y luego me sonríe.")
	elseif cl == 176 then
		hideYuri()
		updateMonika('1','a',80)
		cw('m', "Y bien, ¿qué te hizo pensar en tu entrada a este club?")
	elseif cl == 177 then 
		cw('mc', "Em...")
	elseif cl == 178 then 
		cw('bl', "Me temía esta pregunta.")
	elseif cl == 179 then
		cw('bl', "Algo me dice que no debería contarle que vine aquí casi arrastrado por Sayori.")
	elseif cl == 180 then
		cw('mc', "Bueno, aún no me había unido a ningún club y Sayori parecía muy entusiasmada con este, así que...")
	elseif cl == 181 then 
		updateMonika('1','j')
		cw('m', "¡Está bien! ¡Que no te dé cosa!")
	elseif cl == 182 then
		updateMonika('1','b')
		cw('m', "Nos aseguraremos de que te sientas como en casa, ¿vale?")
	elseif cl == 183 then
		cw('m', "Como presidenta del club de literatura, ¡es mi deber convertir el club en algo divertido y emocionante para todos!")
	elseif cl == 184 then 
		updateMonika('1','a')
		cw('mc', "Monika, estoy sorprendido.")
	elseif cl == 185 then 
		cw('mc', "¿Cómo decidiste formar tu propio club?")
	elseif cl == 186 then
		cw('mc', "Seguramente podrías ser miembro de la junta de cualquier club importante.")
	elseif cl == 187 then 
		cw('mc', "¿No fuiste la líder del club de debate el año pasado?")
	elseif cl == 188 then 
		updateMonika('5a','')
		cw('m', "Ja, ja, ja... Bueno...")
	elseif cl == 189 then
		cw('m', "Si te soy sincera, no soporto la dirección de los clubes importantes.")
	elseif cl == 190 then
		cw('m', "En ellos solo se discute sobre los presupuestos, la publicidad y el cómo prepararse para los eventos...")
	elseif cl == 191 then
		cw('m', "Prefiero encargarme de algo que disfrute personalmente y convertirlo en algo especial.")
	elseif cl == 192 then
		updateMonika('1','b',80)
		cw('m', "Y si anima a otras personas a meterse en el mundo de la literatura, ¡entonces estaré cumpliendo ese sueño!")
	elseif cl == 193 then
		updateMonika('1','a')
		updateSayori('3','q',-40)
		cw('s', "¡Monika es una auténtica líder!")
	elseif cl == 194 then
		updateYuri('1','a',200)
		cw('bl', "Yuri asiente.")
	elseif cl == 195 then
		hideSayori()
		hideYuri()
		cw('mc', "Pues me sorprende que no haya más gente en el club.")
	elseif cl == 196 then 
		cw('mc', "Debe ser difícil empezar un nuevo club.")
	elseif cl == 197 then
		updateMonika('3','b')
		cw('m', "Es una forma de verlo.")
	elseif cl == 198 then
		cw('m', "No hay mucha gente interesada en invertir todo su esfuerzo en empezar algo desde cero…")
	elseif cl == 199 then
		cw('m', "Especialmente cuando es algo que no llama tu atención, como la literatura.")
	elseif cl == 200 then
		cw('m', "Tienes que trabajar duro para convencer a la gente de que puede merecer la pena y ser divertido.")
	elseif cl == 201 then
		cw('m', "Por lo que hace que los eventos escolares, como el festival, sean mucho más importantes.")
	elseif cl == 202 then
		updateMonika('2','k')
		cw('m', "¡Y estoy convencida de que este club llegará a lo más alto antes de graduarnos!")
	elseif cl == 203 then 
		cw('m', "¿Verdad, chicas?")
	elseif cl == 204 then
		updateSayori('4','r',10)
		updateMonika('2','a',150)
		cw('s', "¡Sííí!")
	elseif cl == 205 then
		updateYuri('1','a',-40)
		updateSayori('4','r',80)
		updateMonika('2','a',200)
		cw('y', "Vamos a darlo todo.")
	elseif cl == 206 then
		updateNatsuki('4','d',-60)
		updateYuri('1','a',30)
		updateSayori('4','r',120)
		updateMonika('2','a',220)
		cw('n', "¡Por supuesto!")
	elseif cl == 207 then
		cw('bl', "Todas coinciden con entusiasmo.")
	elseif cl == 208 then 
		cw('bl', "Aunque sean tan distintas, comparten el mismo objetivo...")
	elseif cl == 209 then
		cw('bl', "Monika ha debido de trabajar muy duro para encontrar a estas tres chicas.")
	elseif cl == 210 then
		cw('bl', "Tal vez por eso se alegran tanto de que un miembro nuevo entre en el club.")
	elseif cl == 211 then
		cw('bl', "Aunque no sé si podré mostrar su mismo interés por la literatura…")
	elseif cl == 212 then
		hideMonika()
		hideNatsuki()
		hideSayori()
		updateYuri('1','a',80)
		cw('y', "Y bien, " .. player .. ", ¿qué géneros literarios te gustan?")
	elseif cl == 213 then
		cw('mc', "Em... Pues...")
	elseif cl == 214 then
		cw('bl', "Teniendo en cuenta lo poco que he leído durante estos años, no sé realmente cómo responder a esto.")
	elseif cl == 215 then
		cw('mc', "Manga…")
	elseif cl == 216 then
		cw('bl', "Lo susurro, como bromeando.")
	elseif cl == 217 then
		updateNatsuki('1','c',-50)
		cw('bl', "Natsuki reacciona al instante.")
	elseif cl == 218 then
		cw('bl', "Parece que quiere decir algo, pero no abre la boca.")
	elseif cl == 219 then
		hideNatsuki()
		updateYuri('3','u')
		cw('y', "P-parece que no eres muy aficionado a la lectura...")
	elseif cl == 220 then
		cw('mc', "Bueno, siempre estoy a tiempo de cambiar...")
	elseif cl == 221 then
		cw('bl', "¿Pero qué estoy diciendo?")
	elseif cl == 222 then
		cw('bl', "He hablado sin pensármelo dos veces tras ver esa sonrisa triste de Yuri.")
	elseif cl == 223 then
		cw('mc', "Bueno, ¿y a ti qué te gusta, Yuri?")
	elseif cl == 224 then
		updateYuri('1','l')
		cw('y', "Bueno, pues...")
	elseif cl == 225 then
		cw('bl', "Yuri está trazando círculos con el dedo por los bordes de la taza de té.")
	elseif cl == 226 then
		updateYuri('1','a')
		cw('y', "A mí me encantan las novelas que desarrollan mundos de fantasía profundos y complejos.")
	elseif cl == 227 then
		cw('y', "El nivel de creatividad y esfuerzo tras esas obras me asombra.")
	elseif cl == 228 then
		updateYuri('1','f')
		cw('y', "Y narrar una buena historia en un mundo tan misterioso me resulta igual de asombroso.")
	elseif cl == 229 then
		cw('bl', "Yuri continúa comentando de manera apasionada sus lecturas.")
	elseif cl == 230 then
		cw('bl', "Parecía reservada y tímida cuando la vi por primera vez, pero los libros parecen apasionarla, al contrario que a la mayoría de la gente.")
	elseif cl == 231 then
		updateYuri('2','m')
		cw('y', "Pero bueno, me gustan muchas cosas.")
	elseif cl == 232 then
		cw('y', "Las historias con un profundo componente psicológico también suelen absorberme.")
	elseif cl == 233 then
		updateYuri('2','a')
		cw('y', "¿No te parece increíble cómo un escritor puede aprovechar tan deliberadamente tu propia falta de imaginación para desconcertarte por completo?")
	elseif cl == 234 then
		cw('y', "Pero bueno, últimamente he estado leyendo muchas novelas de terror...")
	elseif cl == 235 then
		cw('mc', "Ah, hace tiempo leí una...")
	elseif cl == 236 then
		cw('bl', "Me agarro a un clavo ardiendo con tal de continuar la conversación.")
	elseif cl == 237 then
		cw('bl', "A este ritmo, parecerá que Yuri está hablando con una piedra.")
	elseif cl == 238 then
		updateMonika('1','d',200)
		cw('m',"¿De verdad? Yuri, no me esperaba eso de ti.")
	elseif cl == 239 then
		cw('m', "Con lo amable que eres...")
	elseif cl == 240 then
		updateYuri('1','a')
		cw('y', "Sabía que dirías eso.")
	elseif cl == 241 then
		cw('y',"Pero no me puedo resistir a una historia que me haga pensar o me haga viajar a otro mundo.")
	elseif cl == 242 then
		cw('y', "El terror psicológico suele lograr que veas el mundo desde otro punto de vista, aunque sea solo durante un momento.")
	elseif cl == 243 then
		updateNatsuki('5','q',-40)
		cw('n', "Puaj, odio el terror...")
	elseif cl == 244 then
		updateYuri('1','f')
		cw('y', "¿Y eso?")
	elseif cl == 245 then
		updateNatsuki('5','c')
		cw('n', "Bueno, es solo que…")
	elseif cl == 246 then
		cw('bl', "Natsuki me mira durante una fracción de segundo.")
	elseif cl == 247 then
		updateNatsuki('5','q')
		cw('n', "Olvídalo.")
	elseif cl == 248 then
		updateMonika('1','a')
		cw('m', "Es verdad, a ti te gusta escribir sobre cosas adorables, ¿no, Natsuki?")
	elseif cl == 249 then
		updateNatsuki('1','o') 
		cw('n', "¿C-cómo?")
	elseif cl == 250 then
		cw('n', "¿Qué te hace pensar eso?")
	elseif cl == 251 then
		updateMonika('3','b')
		cw('m', "Te dejaste un trocito de papel en la última reunión.")
	elseif cl == 252 then
		cw('m', "Parecía que estabas redactando un poema llamado…")
	elseif cl == 253 then
		updateNatsuki('1','p') 
		cw('n', "¡¡No lo digas!!")
	elseif cl == 254 then
		cw('n', "¡Y devuélvemelo!")
	elseif cl == 255 then
		updateMonika('1','j')
		cw('m', "Vaaale~")
	elseif cl == 256 then
		hideMonika()
		hideYuri()
		updateNatsuki('1','r',30)
		updateSayori('4','q',-60)
		cw('s', "Je, je, je, tus pastelillos, tus poemas...")
	elseif cl == 257 then
		cw('s', "Todo lo que haces es tan adorable como tú.")
	elseif cl == 258 then
		updateSayori('4','q',0)
		updateNatsuki('1','r')
		cw('bl', "Sayori se escabulle detrás de Natsuki y le pone la mano sobre los hombros.")
	elseif cl == 259 then
		updateNatsuki('1','v')
		cw('n', "¡¡No soy adorable!!")
	elseif cl == 260 then
		hideSayori()
		updateNatsuki('1','v',80)
		cw('mc', "Natsuki, ¿compones tus propios poemas?")
	elseif cl == 261 then
		updateNatsuki('1','c')
		cw('n', "¿Qué? Ah, bueno, a veces.")
	elseif cl == 262 then
		cw('n', "¿Por qué lo dices?")
	elseif cl == 263 then
		cw('mc', "Porque me parece impresionante.")
	elseif cl == 264 then
		cw('mc', "¿Por qué no compartes algún día uno?")
	elseif cl == 265 then
		updateNatsuki('5','q')
		cw('n', "¡N-no!")
	elseif cl == 266 then
		cw('bl', "Natsuki aparta la mirada.")
	elseif cl == 267 then
		cw('n', "No creo... que te gusten…")
	elseif cl == 268 then
		cw('mc', "Todavía no tienes mucha confianza en ti misma, ¿no?")
	elseif cl == 269 then
		updateYuri('2','f',-40)
		cw('y', "Comprendo cómo se siente Natsuki.")
	elseif cl == 270 then
		cw('y', "Necesita algo más que confianza para compartir ese nivel de escritura.")
	elseif cl == 271 then
		updateYuri('2','l')
		cw('y', "La forma de escritura más pura es la que te describe a ti misma.")
	elseif cl == 272 then
		cw('y', "Debe estar dispuesta a abrirse a sus lectores, exponiendo sus puntos débiles y mostrando las ramas más profundas de su corazón.")
	elseif cl == 273 then
		hideNatsuki()
		updateMonika('2','a',200)
		cw('m', "Yuri, ¿tú también tienes experiencia componiendo?")
	elseif cl == 274 then
		cw('m', "Natsuki se sentiría más cómoda mostrándonos sus poemas si tu compartieras alguno de los tuyos.")
	elseif cl == 275 then
		updateYuri('3','o')
		cw('y',"...")
	elseif cl == 276 then
		cw('mc', "Parece que le ocurre lo mismo a Yuri...")
	elseif cl == 277 then
		updateSayori('2','g',80)
		cw('s', "Jooo... Quería leer sus poemas...")
	elseif cl == 278 then
		hideMonika()
		hideSayori()
		hideYuri()
		cw('bl', "Todos permanecemos en silencio durante unos segundos.")
	elseif cl == 279 then
		updateMonika('5a','',80)
		cw('m', "¡Vale!")
	elseif cl == 280 then
		cw('m', "Chicos, tengo una idea.")
	elseif cl == 281 then
		updateYuri('3','e',-40)
		updateNatsuki('2','c',200)
		cw('ny',"¿...?")
	elseif cl == 282 then
		cw('bl', "Natsuki y Yuri miran extrañadas a Monika.")
	elseif cl == 283 then
		updateMonika('2','b')
		cw('m', "¡Volvamos todos a casa y compongamos un poema propio!")
	elseif cl == 284 then
		cw('m', "Y la próxima vez que nos reunamos, lo compartiremos con el resto.")
	elseif cl == 285 then
		cw('m', "¡Así estaremos en igualdad de condiciones!")
	elseif cl == 286 then
		updateNatsuki('5','q')
		cw('n', "E-em...")
	elseif cl == 287 then
		updateYuri('3','v')
		cw('y',"...")
	elseif cl == 288 then
		updateSayori('4','r',-60)
		updateMonika('2','b',120)
		updateYuri('3','v',30)
		updateNatsuki('5','q',220)
		cw('s', "¡Sííííí! ¡Hagámoslo!")
	elseif cl == 289 then
		updateMonika('1','a')
		cw('m', "Además, ahora que tenemos a un nuevo miembro, creo que le vendrá genial para que se sienta más cómodo con nosotras y refuerce el vínculo de nuestro club.")
	elseif cl == 290 then
		cw('m', "¿Te parece bien, " .. player .. "?")
	elseif cl == 291 then
		cw('bl', "Monika vuelve a sonreírme cálidamente.")
	elseif cl == 292 then
		cw('mc', "Esperad... Aún hay un problema.")
	elseif cl == 293 then
		updateMonika('2','d')
		cw('m', "¿Eh? ¿Cuál?")
	elseif cl == 294 then
		cw('bl', "Ahora que hemos vuelto al tema de mi unión al club, digo sin rodeos lo que tenía en mente durante todo este tiempo.")
	elseif cl == 295 then
		cw('mc', "¡Nunca he dicho que fuera a unirme a este club!")
	elseif cl == 296 then
		cw('mc', "Puede que Sayori me haya convencido para pasarme por aquí, pero aún no he tomado una decisión.")
	elseif cl == 297 then
		cw('mc', "Aún tengo que echarle un vistazo a otros clubes y..., em...")
	elseif cl == 298 then
		updateMonika('1','g')
		updateYuri('2','e')
		updateSayori('1','g')
		updateNatsuki('4','g')
		cw('bl', "Pierdo el hilo de lo que iba a decir.")
	elseif cl == 299 then
		cw('bl', "Las cuatro chicas me miran decepcionadas.")
	elseif cl == 300 then
		updateMonika('1','p')
		cw('m', "P-pero...")
	elseif cl == 301 then
		updateYuri('2','v')
		cw('y', "Lo siento, pensaba que...")
	elseif cl == 302 then
		updateNatsuki('5','s')
		cw('n', "Jum.")
	elseif cl == 303 then
		updateSayori('1','k')
		cw('s',player .. '...')
	elseif cl == 304 then
		cw('mc', "Esto...")
	elseif cl == 305 then
		cw('bl', "Estoy... Estoy indefenso ante estas chicas.")
	elseif cl == 306 then
		cw('bl', "¿Cómo voy a poder tomar una decisión en una situación así?")
	elseif cl == 307 then
		cw('bl', "Aunque si componer poemas es el precio a pagar por estar todos los días con estas chicas tan guapas...")
	elseif cl == 308 then
		cw('mc', "Decidido.")
	elseif cl == 309 then
		cw('mc', "Ya lo he decidido.")
	elseif cl == 310 then
		cw('mc', "Me uniré al club de literatura.")
	elseif cl == 311 then
		updateMonika('1','e')
		updateNatsuki('1','c')
		updateSayori('4','b')
		updateYuri('3','f')
		cw('bl', "Una a una, sus miradas vuelven a brillar.")
	elseif cl == 312 then
		updateSayori('4','r')
		cw('s', "¡Sííí! ¡Qué bieeen!")
	elseif cl == 313 then
		cw('bl', "Sayori me abraza y no deja de saltar.")
	elseif cl == 314 then
		cw('mc',"O-oye...")
	elseif cl == 315 then
		updateYuri('1','m')
		cw('y', "Menudo susto me has dado...")
	elseif cl == 316 then
		updateNatsuki('5','q')
		cw('n', "Si solamente hubieses venido por los pastelillos, me habría cabreado muchísimo contigo.")
	elseif cl == 317 then
		updateMonika('5a','')
		cw('m', "¡Entonces ya es oficial!")
	elseif cl == 318 then
		cw('m', "¡Bienvenido al club de literatura!")
	elseif cl == 319 then
		cw('mc', "Oh... Gracias.")
	elseif cl == 320 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		updateMonika('3','b',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 321 then
		cw('m', "Y con esto, creo que podemos dar oficialmente por finalizada la reunión de hoy, y con resultados satisfactorios.")
	elseif cl == 322 then
		cw('m',"Que no se os olvide la tarea que os he asignado para esta noche:")
	elseif cl == 323 then
		cw('m', "¡Componed un poema para poder compartirlo con el resto en la siguiente reunión!")
	elseif cl == 324 then
		cw('bl', "Monika vuelve a mirarme una vez más.")
	elseif cl == 325 then
		updateMonika('1','a')
		cw('m', "Tengo ganas de ver cómo te expresas, " .. player .. ".")
	elseif cl == 326 then
		updateMonika('5a','')
		cw('m', "Je, je, je~")
	elseif cl == 327 then
		cw('mc', "J-je, sí...")
	elseif cl == 328 then
		hideMonika()
		cw('bl', "¿De verdad voy a poder impresionar a Monika, la más popular de la clase, con mis penosas habilidades de composición?")
	elseif cl == 329 then
		cw('bl', "Ya siento la ansiedad brotando en mi interior.")
	elseif cl == 330 then
		cw('bl', "Mientras tanto, las chicas continúan de cháchara a la vez que Yuri y Natsuki se terminan su comida.")
	elseif cl == 331 then
		updateSayori('1','a',80)
		cw('s', "Oye, " .. player .. ", ya que estamos aquí, ¿te apetece volver a casa juntos?")
	elseif cl == 332 then
		cw('bl',"Es verdad, hace mucho que Sayori y yo no regresamos juntos a casa, ya que ella siempre tenía que ir a algún club tras las clases.")
	elseif cl == 333 then
		cw('mc', "Claro, sin problemas.")
	elseif cl == 334 then
		updateSayori('4','q')
		cw('s', "¡Wiii!")
	elseif cl == 335 then
		hideSayori()
		bgUpdate('residential')
		cw('bl', "Tras eso, los dos salimos del club y volvemos a casa.")
	elseif cl == 336 then
		cw('bl', "Mi mente está dividida entre las cuatro chicas durante todo el camino:")
	elseif cl == 337 then
		updateSayori('1','a',-60)
		cw('bl',"Sayori,")
	elseif cl == 338 then
		updateNatsuki('4','a',30)
		cw('bl',"Natsuki,")
	elseif cl == 339 then
		updateYuri('1','a',120)
		cw('bl',"Yuri,")
	elseif cl == 340 then
		updateMonika('1','a',220)
		cw('bl', "y, por supuesto, Monika.")
	elseif cl == 341 then
		cw('bl', "¿Alcanzaré la felicidad pasando las tardes en el club de literatura?")
	elseif cl == 342 then
		cw('bl', "Quizás hasta tenga la oportunidad de intimar con alguna de las chicas...")
	elseif cl == 343 then
		hideAll()
		cw('bl', "¡Muy bien!")
	elseif cl == 344 then
		cw('bl', "Aprovechando al máximo todas las situaciones que se me presenten en el club, estoy seguro de que la suerte me sonreirá.")
	elseif cl == 345 then
		cw('bl', "Y parece que eso empieza escribiendo un poema esta noche...")
	elseif cl == 346 then
		poemstate = 0
		fadeOut(1)
	elseif cl == 347 then
		cl = 346
	end 
	
	--ch0-kill
	if cl == 10001 then
		bgUpdate('residential')
		audioUpdate('2')
		hideAll()
		updateSayori('1','b',80)
		cw('s',"...")
	elseif cl == 10002 then 
		cw('s',"...")
	elseif cl == 10003 then 
		cw('s', "¿Q-qué...?")
	elseif cl == 10004 then 
		updateSayori('1','g') 
		cw('s',"...")
	elseif cl == 10005 then 
		cw('s', "¿Qué...?")
	elseif cl == 10006 then 
		cw('s', "¿Qué es esto?...")
	elseif cl == 10007 then 
		cw('s', "Oh, no...")
	elseif cl == 10008 then 
		updateSayori('1','u') 
		cw('s', "No...")
	elseif cl == 10009 then 
		cw('s', "No puede ser.")
	elseif cl == 10010 then 
		cw('s', "Esto no puede ser todo cuanto hay.")
	elseif cl == 10011 then 
		updateSayori('4','w')
		cw('s', "¿Qué es esto?")
	elseif cl == 10012 then 
		cw('s', "¿Qué soy?")
	elseif cl == 10013 then 
		cw('s', "¡Haz que pare!")
	elseif cl == 10014 then 
		cw('s', "¡HAZ QUE PARE, POR FAVOR!")
	elseif cl == 10015 then 
		persistent.chr.s = 0
		savepersistent()
		love.event.quit()
	end
	
	--NEW GAME
	if cl == 10016 then 
		bgUpdate('warning')
		cw('bl','Esto es un port no oficial de Doki Doki Literature Club.')
	elseif cl == 10017 then
		cw('bl','Tanto el juego original como el port no es apto para menores o personas sensibles.')
	elseif cl == 10018 then
		cw('bl','Si padeces ansiedad o depresión, te instamos a que dejes de jugar inmediatamente. Si quieres saber más, visita este enlace: https://tinyurl.com/ddlcglow')
	elseif cl == 10019 then
		cw('bl','Para jugar a Doki Doki Literature Club, debes tener más de 13 años y asumir que el contenido del mismo pueda herir tu sensibilidad.')
	elseif cl == 10020 then
		menutext = ''
		choices = {'Acepto.'}
		choice_enable()
	elseif cl >= 10021 then
		cl = 10021
		bgUpdate('warning2')
		if xaload > 120 then
			--make persistent and settings files then go to splash screen
			savepersistent()
			savesettings()
			changeState('splash')
		end
	end
end
