function ch5script()
	if cl > 800 then
		scriptJump(1)
	elseif cl == 1 then
	audioUpdate('0')
	bgUpdate('residential')
		cw('bl', "Hoy es el festival.")
	elseif cl == 2 then
		cw('bl', "Esperaba ir hoy al instituto con Sayori.")
	elseif cl == 3 then
		cw('bl', "Pero no coge el teléfono.")
	elseif cl == 4 then
		cw('bl', "He pensado en ir a su casa para levantarla, pero me parecía excesivo.")
	elseif cl == 5 then
		cw('bl', "Mientras tanto, las preparaciones del festival están prácticamente listas.")
	elseif cl == 6 then
		if savevalue == "Natsuki" or savevalue == "n" then
		cw('bl', "He conseguido traer los pastelillos yo solo poniendo dos bandejas una encima de la otra.")
		else
		cw('bl', "Ya se ha secado la pancarta de Yuri, así que la he enrollado y me la he llevado.")
		end
	elseif cl == 7 then
		if savevalue == 'Natsuki' or savevalue == "n" then
		cw('bl', "Natsuki ya me está escribiendo como una loca, pero tengo las manos ocupadas.")
		else
		cw('bl', "Me ha enviado un mensaje para que no me olvide de nada, así que la he tranquilizado.")
		end
	elseif cl == 8 then
		cw('bl', "Es gracioso, pero seguramente me siento igual que Natsuki con el evento.")
	elseif cl == 9 then
	if savevalue == "Natsuki" or savevalue == "n" then
		cw('bl', "Tengo más ganas de que se acabe para poder pasar más rato con Sayori y con Natsuki en el festival.")
		else
		cw('bl', "Tengo más ganas de que se acabe para poder pasar más rato con Sayori y con Yuri en el festival.")
		end
		
	elseif cl == 10 then
		cw('bl', "Aunque conociendo a Monika, seguro que el evento será genial.")
	
	elseif cl == 11 then
	bgUpdate('club')
	updateMonika('5a','',80)
		cw('m', "¡" .. player .. "!")
	elseif cl == 12 then
		cw('m', "Eres el primero en llegar.")
	elseif cl == 13 then
		cw('m', "¡Gracias por llegar tan pronto!")
	elseif cl == 14 then
		cw('mc', "Qué raro, pensaba que Yuri ya había llegado.")
	elseif cl == 15 then
		cw('bl', "Monika está colocando unos libritos en cada pupitre.")
	elseif cl == 16 then
		cw('bl', "Seguro que son los poemas que ha compuesto para recitarlos.")
	elseif cl == 17 then
		cw('bl', "Pero al final he presentado un poema al azar que pensaba que le gustaría a Monika.")
	elseif cl == 18 then
		cw('bl', "Así que ese será el que recitaré.")
	elseif cl == 19 then
	updateMonika('1','d')
		cw('m', "Me sorprende que no hayas traído a Sayori contigo.")
	elseif cl == 20 then
		cw('mc', "Ya, se ha vuelto a quedar dormida.")
	elseif cl == 21 then
		cw('mc', "Será tonta.")
	elseif cl == 22 then
		cw('bl', "...")
	elseif cl == 23 then
		cw('bl', "Justo cuando digo eso, me acuerdo de lo que me dijo ayer...")
	elseif cl == 24 then
		cw('bl', "Y me empiezo a sentir horrible, ya que sé que no es tan simple para ella.")
	elseif cl == 25 then
		cw('bl', "Tan solo lo he dicho por la costumbre.")
	elseif cl == 26 then
		cw('bl', "Pero...")
	elseif cl == 27 then
		cw('bl', "¿Hubiese sido mejor haber ido a despertarla?")
	elseif cl == 28 then
	updateMonika('1','k')
		cw('m', "Ja, ja, ja.")
	elseif cl == 29 then
	updateMonika('4','b')
		cw('m', "¡Tendrías que preocuparte más por ella, " .. player .. "!")
	elseif cl == 30 then
		cw('m', "Es decir, después de lo de ayer...")
	elseif cl == 31 then
		cw('m', "La has dejado colgada esta mañana, ¿sabes?")
	elseif cl == 32 then
	updateMonika('4','a')
		cw('mc', "¿Lo de ayer?")
	elseif cl == 33 then
		cw('mc', "¡Monika! ¿¿Cómo sabes lo que ha pasado??")
	elseif cl == 34 then
	updateMonika('2','a')
		cw('m', "Por supuesto.")
	elseif cl == 35 then
		cw('m', "Después de todo, soy la presidenta del club.")
	elseif cl == 36 then
		cw('mc', "¡Pero...!")
	elseif cl == 37 then
		cw('bl', "Avergonzado, comienzo a tartamudear.")
	elseif cl == 38 then
		cw('bl', "¿En serio se lo ha contado tan rápido?")
	elseif cl == 39 then
		if choicepick == 's_yes' then
		cw('bl', "¿Lo de que somos... pareja?")
		else
		cw('bl', "¿Lo de cómo he rechazado su confesión?")
		end
	elseif cl == 40 then
		if choicepick == 's_yes' then
		cw('bl', "No pretendía hacerlo público todavía...")
		else
		cw('bl', "Eso me hará parecer el malo de la película...")
		end
	elseif cl == 41 then
		if choicepick == 's_yes' then
			scriptJump(42)
		else
		cw('bl', "Pero soy el que sabe lo que más le conviene, ¿no?")
		end
	
	elseif cl == 42 then
		cw('mc', "Ains...")
	elseif cl == 43 then
		cw('mc', "Bueno, no conoces toda la historia, así que...")
	elseif cl == 44 then
	updateMonika('2','j')
		cw('m', "No te preocupes.")
	elseif cl == 45 then
		cw('m', "Seguramente sé más de lo que crees.")
	elseif cl == 46 then
		cw('mc', "¿Eh?")
	elseif cl == 47 then
		cw('bl', "Monika es tan maja como siempre, pero por alguna razón, me ha dado un escalofrío después de escuchar eso.")
	elseif cl == 48 then
	updateMonika('5a')
		cw('m', "Oye, ¿quieres ojear los panfletos?")
	elseif cl == 49 then
		cw('m', "¡Me han quedado geniales!")
	elseif cl == 50 then
		cw('mc', "Sí, claro.")
	elseif cl == 51 then
		cw('bl', "Cojo uno de los panfletos de los pupitres.")
	elseif cl == 52 then
		cw('mc', "Anda, pues es verdad.")
	elseif cl == 53 then
		cw('mc', "Con esto, seguro que la gente nos toma más en serio.")
	elseif cl == 54 then
		cw('m', "¡Sí, yo también lo había pensado!")
	elseif cl == 55 then
	hideMonika()
		cw('bl', "Empiezo a pasar las páginas.")
	elseif cl == 56 then
		cw('bl', "El poema de cada uno está impreso de una forma casi profesional.")
	elseif cl == 57 then
		cw('bl', "Reconozco los poemas de Yuri y Natsuki, ya que eran los que usaban en los ensayos.")
	elseif cl == 58 then
		cw('mc', "¿Qué es esto?")
	elseif cl == 59 then
		cw('bl', "Llego al poema de Sayori.")
	elseif cl == 60 then
		cw('bl', "Es diferente al que había ensayado.")
	elseif cl == 61 then
		cw('bl', "No lo había visto nunca.")
	elseif cl == 62 then
		if xaload == 0 then
			sfxplay('pageflip')
			require('scripts/'..settings.lang..'/poems')
		else
			poem('poem_s3')
		end
	elseif cl == 63 then
		scriptJump(64)
	elseif cl == 64 then
		poem_disable(0)
		cw('mc', "Pero...")
	elseif cl == 65 then
		cw('bl', "¿Qué es esto?")
	elseif cl == 66 then
		cw('bl', "Tras leer el poema, siento un vacío en mí.")
	elseif cl == 67 then
	updateMonika('1','d',80)
		cw('m', "¿" .. player .. "?")
	elseif cl == 68 then
		cw('m', "¿Qué te pasa?")
	elseif cl == 69 then
		cw('mc', "Ah, nada...")
	elseif cl == 70 then
		cw('bl', "Este poema es demasiado diferente hasta para Sayori.")
	elseif cl == 71 then
		cw('bl', "Y no solo eso...")
	elseif cl == 72 then
		cw('mc', "¡H-he cambiado de opinión!")
	elseif cl == 73 then
		cw('mc', "Voy a por Sayori, así que...")
	elseif cl == 74 then
		cw('m', "Ah...")
	elseif cl == 75 then
	updateMonika('1','b')
		cw('m', "¡Perfecto!")
	elseif cl == 76 then
		cw('m', "No tardes mucho, ¿vale?")
	
	elseif cl == 77 then
	event_initstart('wipe','corridor')
	elseif cl == 78 then
		cw('bl', "Salgo deprisa del aula.")
	elseif cl == 79 then
		cw('m', "No te fuerces demasiado~")
	elseif cl == 80 then
		cw('bl', "Monika me dice eso antes de irme.")
	elseif cl == 81 then
		cw('bl', "Me doy más prisa.")

	elseif cl == 82 then
	event_initstart('wipe','residential')
	elseif cl == 83 then
		cw('bl', "¿En qué estaba pensado?")
	elseif cl == 84 then
		cw('bl', "Tendría que haberme esforzado un poco más por Sayori.")
	elseif cl == 85 then
		cw('bl', "No me cuesta tanto esperarla o ayudar a que se despierte.")
	elseif cl == 86 then
		cw('bl', "Incluso acompañarla a clase le hace feliz.")
	elseif cl == 87 then
		cw('bl', "Además...")
	elseif cl == 88 then
		cw('bl', "Ayer le dije que todo seguiría igual que siempre.")
	elseif cl == 89 then
		cw('bl', "Eso es todo lo que necesita, y es lo que quiero darle.")
	
	elseif cl == 90 then
	event_initstart('wipe','house')
	elseif cl == 91 then
		cw('bl', "Llego a la casa de Sayori y toco a la puerta.")
	elseif cl == 92 then
		cw('bl', "No me esperaba ninguna respuesta ya que tampoco coge el teléfono.")
	elseif cl == 93 then
		cw('bl', "Igual que ayer, abro la puerta y me meto.")
	elseif cl == 94 then
	bgUpdate('black')
		cw('mc', "¿Sayori?")
	elseif cl == 95 then
		cw('bl', "Sí que tiene el sueño profundo.")
	elseif cl == 96 then
		cw('bl', "Trago.")
	elseif cl == 97 then
		cw('bl', "No me puedo creer que al final esté haciendo esto.")
	elseif cl == 98 then
		cw('bl', "Ir a despertarla...")
	elseif cl == 99 then
		if choicepick == 's_yes' then
		cw('bl', "Cómo se nota que es algo que haría un novio, ¿no?")
		else
		cw('bl', "¿No es algo que haría un novio?")
		end
	elseif cl == 100 then
		cw('bl', "En cualquier caso...")
	elseif cl == 101 then
		cw('bl', "Me parece lo correcto.")
	elseif cl == 102 then
		cw('bl', "Al llegar a la habitación de Sayori, toco a la puerta.")
	elseif cl == 103 then
	mc "¿Sayori?"
	elseif cl == 104 then
		cw('mc', "Despierta, tonta...")
	elseif cl == 105 then
		cw('bl', "No hay respuesta.")
	elseif cl == 106 then
		cw('bl', "La verdad es que no quería tener que entrar así...")
	elseif cl == 107 then
		cw('bl', "Esto cuenta como invasión de la intimidad, ¿no?")
	elseif cl == 108 then
		cw('bl', "Aunque no me queda otra.")
	elseif cl == 109 then
		cw('bl', "Abro la puerta con cuidado.")
		event_init('s_kill')
	elseif cl == 110 then
		persistent.ptr = 1
		persistent.chr.s = 0
		if xaload == 0 then
			savepersistent()
		end
		event_start('s_kill_start')
		cw('bl','Sayo...............','slow')
	elseif cl == 111 then
		event_start('s_kill')
		audioUpdate('d')
	elseif cl == 112 then
		event_start('s_kill2')
	elseif cl == 113 then
		event_start('s_killzoom')
		cw('bl', "¿Qué demonios?")
	elseif cl == 114 then
		cw('bl', "¿¿Pero qué demonios??")
	elseif cl == 115 then
		cw('bl', "¿Estoy en una pesadilla?")
	elseif cl == 116 then
		cw('bl', "Tiene... que serlo.")
	elseif cl == 117 then
		cw('bl', "No es real.")
	elseif cl == 118 then
		cw('bl', "No puede ser real.")
	elseif cl == 119 then
		cw('bl', "Sayori no haría esto.")
	elseif cl == 120 then
		cw('bl', "Todo parecía tan normal hasta hace unos días.")
	elseif cl == 121 then
		cw('bl', "¡Por eso es imposible lo que estoy viendo!")
	elseif cl == 122 then
	event_end('s_kill')
	event_start('black')
		cw('bl', "Me aguanto mis ganas de vomitar.")
	elseif cl == 123 then
		cw('bl', "Justo ayer...")
	elseif cl == 124 then
		cw('bl', "Le dije que estaría para ella.")
	elseif cl == 125 then
		cw('bl', "Le dije que sabía lo que más le convenía, y que todo iría bien.")
	elseif cl == 126 then
		cw('bl', "¿Así que por qué?")
	elseif cl == 127 then
		cw('bl', "¿Por qué ha hecho algo así?")
	elseif cl == 128 then
		cw('bl', "¿Cómo puedo ser tan inútil?")
	elseif cl == 129 then
		cw('bl', "¿Qué he hecho mal?")
	elseif cl >= 130 and cl < 135 then
		if choicepick == 's_yes' then
			if cl == 130 then 
		cw('bl', "Mi confesión...")
			elseif cl == 131 then
		cw('bl', "No tendría que haberle dicho eso.")
			elseif cl == 132 then
		cw('bl', "No es lo que necesitaba.")
			elseif cl == 133 then
		cw('bl', "Hasta me dijo cómo le dolía que se preocupasen por ella.")
			elseif cl == 134 then
		cw('bl', "Entonces, ¿por qué lo hice? ¿para hacer que se sintiese peor?")
			end
		else
			if cl == 130 then
		cw('bl', "Rechazar su confesión...")
			elseif cl == 131 then
		cw('bl', "Seguro que esa era la gota que colma el vaso.")
			elseif cl == 132 then
		cw('bl', "Su agónico grito resuena en mi cabeza.")
			elseif cl == 133 then
		cw('bl', "¿Cómo he podido hacerle eso cuando más me necesitaba?")
			elseif cl == 134 then
			scriptJump(135)
			end
		end
	elseif cl == 135 then
		cw('bl', "¿Cómo he podido ser tan egoísta?")
	elseif cl == 136 then
		cw('bl', "¡Es mi culpa!")
	elseif cl == 137 then
		cw('bl', "Mi cabeza continúa pensando qué podría haber hecho para evitarlo.")
	elseif cl == 138 then
		cw('bl', "Si hubiese pasado más tiempo con ella,")
	elseif cl == 139 then
		cw('bl', "si la hubiese acompañado al instituto,")
	elseif cl == 140 then
	if choicepick == 's_yes' then
		cw('bl', "también hubiéramos seguido siendo los mismos amigos de siempre...")
	else
		cw('bl', "Y le hubiese dado que sé que quería de nuestra relación...")
	end
	elseif cl == 141 then
		cw('bl', "Entonces podría haberlo evitado.")
	elseif cl == 142 then
		cw('bl', "¡Sé que podría haberlo evitado!")
	elseif cl == 143 then
		cw('bl', "Que le den al club de literatura.")
	elseif cl == 144 then
		cw('bl', "Que le den al festival.")
	elseif cl == 145 then
		cw('bl', "Acabo... de perder a mi mejor amiga.")
	elseif cl == 146 then
		cw('bl', "Aquella con la que crecí.")
	elseif cl == 147 then
		cw('bl', "Se ha ido para siempre.")
	elseif cl == 148 then
		cw('bl', "No puedo hacer nada para que vuelva.")
	elseif cl == 149 then
		cw('bl', "Esto es la vida real, no puedo reiniciar y comenzar desde cero para probar algo distinto.")
	elseif cl == 150 then
		cw('bl', "Tan solo tenía una oportunidad y no he tenido cuidado.")
	elseif cl == 151 then
		cw('bl', "Y sé que la culpa me atormentará hasta el día en el que me muera.")
	elseif cl == 152 then
		cw('bl', "Su vida era lo que más me importaba...")
	elseif cl == 153 then
		cw('bl', "Y aun así no he podido darle lo que necesitaba de mí.")
	elseif cl == 154 then
		cw('bl', "Y ahora...")
	elseif cl == 155 then
		cw('bl', "Ya no puedo retractarme...")
	elseif cl == 156 then
		cw('bl', "Nunca.")
	elseif cl == 157 then
		cw('bl', "Nunca.")
	elseif cl == 158 then
		cw('bl', "Nunca.")
	elseif cl == 159 then
		cw('bl', "Nunca.")
	elseif cl == 160 then
		cw('bl', "Nunca...")
	elseif cl == 161 then
	event_end('next')
	elseif cl == 162 then
	event_initstart('endscreen')
	elseif cl == 163 then
	changeState('title')
	end
end
