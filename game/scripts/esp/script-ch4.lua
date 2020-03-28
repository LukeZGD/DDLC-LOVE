function ch4script()
	if cl >= 2397 then
		scriptJump(1)
		audioUpdate('6',true)
	elseif cl == 1 then
		bgUpdate('residential')
		cw('bl', "Ya es domingo.")
	elseif cl > 1 and cl < 10 then
		if savevalue == "n" then
			if cl == 2 then
		cw('bl', "Estoy muy nervioso por la visita de Natsuki.")
			elseif cl == 3 then
		cw('bl', "Me sigo repitiendo a mí mismo que no hay razón para estarlo, pero no me sirve de mucho.")
			elseif cl == 4 then
		cw('bl', "¿Actuará de forma diferente ahora que estaremos solos?")
			elseif cl == 5 then
		cw('bl', "Mientras tanto, me ha estado enviando un montón de mensajes.")
			elseif cl == 6 then
		cw('bl', "Nos enviamos uno para comprobar el número, pero acabó desembocando en una conversación.")
			elseif cl == 7 then
		cw('bl', "Parece una persona distinta en el móvil con los emoticonos y su forma de hablar.")
			elseif cl == 8 then
		cw('bl', "También le encanta quejarse de todo, pero eso ya me lo esperaba.")
			elseif cl == 9 then
		cw('bl', "...")
			end
		else
			if cl == 2 then
		cw('bl', "Estoy muy nervioso por la visita de Yuri.")
			elseif cl == 3 then
		cw('bl', "Me sigo repitiendo a mí mismo que no hay razón para estarlo, pero no me sirve de mucho.")
			elseif cl == 4 then
		cw('bl', "Es obvio que Yuri es introvertida y algo íntima.")
			elseif cl == 5 then
		cw('bl', "No hay duda de que se abrirá un poco cuando estemos solos.")
			elseif cl == 6 then
		cw('bl', "Mientras, me ha estado enviando algunos mensajes.")
			elseif cl == 7 then
		cw('bl', "Al principio se alteraba bastante, pero en poco tiempo aprendí más sobre ella.")
			elseif cl == 8 then
		cw('bl', "Dejando a Yuri de lado...")
			elseif cl == 9 then
				scriptJump(10)
			end
		end
	elseif cl == 10 then
		cw('bl', "No sé nada de Sayori desde que se fue del club el otro día.")
	elseif cl == 11 then
		cw('bl', "Tampoco es que nos estuviéramos enviando mensajes a todas horas ni nada de por el estilo...")
	elseif cl == 11 then
		cw('bl', "Pero me ha tenido preocupado todo este tiempo.")
	elseif cl == 12 then
		cw('bl', "Entre lo que dijo Sayori, y lo que dijo Monika...")
	elseif cl == 13 then
		cw('bl', "¿Está bien que ignore los sentimientos de Sayori cuando es posible que me necesite?")
	elseif cl == 14 then
		bgUpdate('house')
		audioUpdate('0')
		if savevalue == "Natsuki" or savevalue == "n" then
				cw('bl', "Decido ir a visitar a Sayori antes de que llegue Natsuki.")
			else
				cw('bl', "Decido ir a visitar a Sayori antes de que llegue Yuri.")
			end
	elseif cl == 15 then
		cw('bl', "En vez de preguntarle, le digo: «voy a ir a tu casa», como llevo haciendo todo este tiempo.")
	elseif cl == 16 then
		cw('bl', "Al llegar a casa de Sayori, toco a la puerta antes de entrar.")
	elseif cl == 17 then
		cw('bl', "De pequeños jugábamos muchísimo, no había problema en entrar en la casa del otro sin llamar, es como si fuésemos familia.")
	elseif cl == 18 then
		bgUpdate('black')
		cw('bl', "La casa está silenciosa.")
	elseif cl == 19 then
		cw('bl', "Sayori no está en el primer piso, así que supongo que estará en su cuarto.")
	elseif cl == 20 then
		cw('bl', "Aunque me parece raro que no haya bajado a recibirme.")
	elseif cl == 21 then
		cw('bl', "Voy a su cuarto, que es donde por fin la encuentro.")
	elseif cl == 22 then
		bgUpdate('sayori_bedroom')
		audioUpdate('10')
		cw('mc', "¿Sayori?")
	elseif cl == 23 then
		updateSayori('1b','a',80)
		cw('s', "Hola, " .. player .. "~")
	elseif cl == 24 then
		updateSayori('1b','y')
		cw('bl', "Me siento en su habitación.")
	elseif cl == 25 then
		cw('bl', "Sayori fuerza una sonrisa, pero no es muy difícil ver que está rara.")
	elseif cl == 26 then
		cw('bl', "Hay un minuto de silencio entre nosotros.")
	elseif cl == 27 then
		cw('s', "Hace mucho tiempo que no vienes, ¿no?")
	elseif cl == 28 then
		cw('mc', "Esto...")
	elseif cl == 29 then
		cw('mc', "Ha pasado mucho tiempo.")
	elseif cl == 30 then
		cw('mc', "Pero esto no cambiado mucho, ¿verdad?")
	elseif cl == 31 then
		cw('bl', "Su habitación sigue tan desordenada como siempre.")
	elseif cl == 32 then
		cw('bl', "También veo que sigue con los mismos peluches y decoraciones que tenía desde hace años.")
	elseif cl == 33 then
		updateSayori('2b','l')
		cw('s', "Je, je, je~")
	elseif cl == 34 then
		cw('s', "Si vinieses más a menudo, no sería el desastre que es ahora.")
	elseif cl == 35 then
		cw('mc', "Eso es porque siempre acabo limpiándola yo...")
	elseif cl == 36 then
		updateSayori('1b','b')
		cw('s', "¿Cómo es que has decidido hacerme una visita?")
	elseif cl == 37 then
		if savevalue == "Natsuki" or savevalue == "n" then
				cw('s', "¿No se supone que venía Natsuki?")
			else
				cw('s', "¿No se supone que venía Yuri?")
			end
	elseif cl == 38 then
		cw('mc', "Sí, pero...")
	elseif cl == 39 then
		cw('mc', "Espera, ¿cómo lo sabes?")
	elseif cl == 40 then
		cw('bl', "Sayori se había ido antes de decidirlo en nuestra última reunión.")
	elseif cl == 41 then
		updateSayori('1b','a')
		cw('s', "Me lo ha dicho Monika.")
	elseif cl == 42 then
		cw('s', "Es normal que me mantenga informada sobre los preparativos para el festival, ¿no?")
	elseif cl == 43 then
		cw('mc', "Ah, tienes razón...")
	elseif cl == 44 then
		cw('mc', "¿Pero qué hay de ti?")
	elseif cl == 45 then
		cw('mc', "¿No vas a ir a ayudar a Monika?")
	elseif cl == 46 then
		updateSayori('4b','b')
		cw('s', "¡Pues claro!")
	elseif cl == 47 then
		cw('s', "Pero la estoy ayudando desde el chat.")
	elseif cl == 48 then
		cw('s', "No teníamos pensado quedar.")
	elseif cl == 49 then
		if savevalue == "Natsuki" or savevalue == "n" then
				cw('mc', "Ah, entonces solo lo hemos hecho Natsuki y yo...")
			else
				cw('mc', "Ah, entonces solo lo hemos hecho Yuri y yo...")
			end
	elseif cl == 50 then
		updateSayori('1b','a')
		cw('s', "Sep~")
	elseif cl == 51 then
		cw('bl', "Se produce otro silencio entre nosotros.")
	elseif cl == 52 then
		updateSayori('1b','k')
		cw('bl', "Sayori mira a otro lado.")
	elseif cl == 53 then
		cw('bl', "Su comportamiento es muy extraño.")
	elseif cl == 54 then
		cw('bl', "Creo que voy entendiendo la situación.")
	elseif cl == 55 then
		cw('mc', "Solo... quería saber qué estabas haciendo.")
	elseif cl == 56 then
		cw('mc', "Después de lo del viernes.")
	elseif cl == 57 then
		cw('mc', "¡Si te pasa algo malo no puedes ocultármelo!")
	elseif cl == 58 then
		cw('mc', "Te conozco demasiado.")
	elseif cl == 59 then
		cw('mc', "Así que...")
	elseif cl == 60 then
		cw('bl', "Sayori sonríe y niega con la cabeza.")
	elseif cl == 61 then
		updateSayori('1b','d')
		cw('s', "Te equivocas, " .. player .. ".")
	elseif cl == 62 then
		cw('n', "¿Qué?")
	elseif cl == 63 then
		cw('s', "¿Por qué esto no puede ser como siempre?")
	elseif cl == 64 then
		updateSayori('1b','y')
		cw('s', "Yo tengo toda la culpa.")
	elseif cl == 65 then
		cw('s', "Si no hubiese sido tan débil como para mostrar mis sentimientos...")
	elseif cl == 66 then
		updateSayori('1b','k')
		cw('s', "Si no hubiese cometido ese error tan estúpido...")
	elseif cl == 67 then
		cw('s', "Entonces no te habrías preocupado por mí.")
	elseif cl == 68 then
		cw('s', "No habrías venido a verme.")
	elseif cl == 69 then
		updateSayori('1b','d')
		cw('s', "Ni siquiera estarías pensando en mí ahora mismo.")
	elseif cl == 70 then
		cw('s', "Pero... esto es solo mi castigo, ¿verdad?")
	elseif cl == 71 then
		cw('s', "Un castigo por ser tan egoísta.")
	elseif cl == 72 then
		cw('s', "Creo que es por eso que el mundo ha decidido que vengas hoy.")
	elseif cl == 73 then
		cw('s', "Solo quiere torturarme.")
	elseif cl == 74 then
		updateSayori('4b','q')
		cw('s', "Je, je, je~")
	elseif cl == 75 then
		cw('mc', "¡Sayori!")
	elseif cl == 76 then
		updateSayori('4b','b')
		cw('bl', "Agarro a Sayori de los hombros.")
	elseif cl == 77 then
		cw('mc', "¡¿Qué narices estás diciendo?!")
	elseif cl == 78 then
		cw('mc', "¿Pero no te das cuenta de la barbaridad que has dicho?")
	elseif cl == 79 then
		cw('mc', "Sé que te ha pasado algo.")
	elseif cl == 80 then
		cw('mc', "No puede haber otra explicación a tu comportamiento.")
	elseif cl == 81 then
		cw('mc', "¡Así que dímelo ya!")
	elseif cl == 82 then
		cw('mc', "¡No podré dejar de pensar en ello hasta que me lo digas!")
	elseif cl == 83 then
		updateSayori('4b','l')
		cw('y', "Ay...")
	elseif cl == 84 then
		cw('s', "Ja, ja, ja...")
	elseif cl == 85 then
		cw('bl', "Sayori me sonríe con tristeza.")
	elseif cl == 86 then
		updateSayori('4b','y')
		cw('s', "Menuda trampa me has preparado, " .. player .. ".")
	elseif cl == 87 then
		cw('s', "Pero...")
	elseif cl == 88 then
		updateSayori('1b','a')
		cw('s', "Te equivocas.")
	elseif cl == 89 then
		cw('s', "No me ha pasado nada.")
	elseif cl == 90 then
		cw('s', "Siempre he sido así.")
	elseif cl == 91 then
		cw('s', "Es solo que lo estás viendo por primera vez.")
	elseif cl == 92 then
		cw('mc', "¿Ver el qué?")
	elseif cl == 93 then
		cw('mc', "¿De qué estás hablando, Sayori?")
	elseif cl == 94 then
		updateSayori('1b','q')
		cw('s', "Je, je, je~")
	elseif cl == 95 then
		updateSayori('1b','a')
		cw('s', "Me vas a hacer decirlo, ¿verdad, " .. player .. "?")
	elseif cl == 96 then
		cw('s', "Supongo que no tengo elección.")
	elseif cl == 97 then
		updateSayori('1b','c')
		cw('s', "Lo que me pasa es...")
	elseif cl == 98 then
		cw('s', "Que tengo depresión, pero desde siempre.")
	elseif cl == 99 then
		updateSayori('1b','b')
		cw('s', "¿Lo sabías?")
	elseif cl == 100 then
		cw('s', "¿Por qué crees que llego tarde al instituto todos los días?")
	elseif cl == 101 then
		cw('s', "Porque la mayoría de veces ni siquiera encuentro alguna razón por la que levantarme.")
	elseif cl == 102 then
		updateSayori('1b','y')
		cw('s', "¿Qué razón tengo para hacer algo sabiendo lo inútil que soy?")
	elseif cl == 103 then
		cw('s', "¿Para qué ir al instituto?")
	elseif cl == 104 then
		cw('s', "¿Para qué comer?")
	elseif cl == 105 then
		cw('s', "¿Para qué hacer amigos?")
	elseif cl == 106 then
		cw('s', "¿Para qué hacer que el resto malgaste su energía y cariño en mí?")
	elseif cl == 107 then
		cw('s', "Eso es lo que siento.")
	elseif cl == 108 then
		cw('s', "Y por eso quiero intentar hacer que todos sean felices...")
	elseif cl == 109 then
		cw('s', "Sin que nadie se tenga que preocupar de mí.")
	elseif cl == 110 then
		cw('mc',"...")
	elseif cl == 111 then
		cw('bl', "Me he quedado de piedra.")
	elseif cl == 112 then
		cw('bl', "No sé cómo responder.")
	elseif cl == 113 then
		cw('bl', "¿Cómo es posible que me lo haya ocultado todo este tiempo?")
	elseif cl == 114 then
		cw('bl', "¿De verdad quería que dejase de pensar en ella de esa manera?")
	elseif cl == 115 then
		cw('mc', "¿Por qué, Sayori?")
	elseif cl == 116 then
		updateSayori('1b','g')
		cw('n', "¿Qué pasa?")
	elseif cl == 117 then
		cw('mc', "¿Por qué no me habías dicho nada de esto antes?")
	elseif cl == 118 then
		cw('mc', "Como tu mejor amigo, me siento traicionado.")
	elseif cl == 119 then
		cw('mc', "¡Porque si lo hubiese sabido, habría hecho todo lo posible para ayudarte!")
	elseif cl == 120 then
		cw('mc', "Incluso si no pudiera hacer gran cosa...")
	elseif cl == 121 then
		cw('mc', "Me hubiera esforzado un poco más para hacer que tus días fuesen mejores.")
	elseif cl == 122 then
		cw('mc', "¡Por eso soy tu amigo!")
	elseif cl == 123 then
		cw('mc', "¡Solo tenías que decírmelo!")
	elseif cl == 124 then
		updateSayori('1b','k')
		cw('s', "No lo entiendes, " .. player .. ".")
	elseif cl == 125 then
		cw('s', "¿Por qué crees que no te había dicho nada?")
	elseif cl == 126 then
		updateSayori('1b','d')
		cw('s', "Porque si te lo hubiese dicho, entonces malgastarías tu energía en preocuparte por mí en vez de hacer cosas más importantes.")
	elseif cl == 127 then
		cw('s', "No quiero preocupar a nadie.")
	elseif cl == 128 then
		cw('s', "Me resulta un tanto agridulce cuando alguien lo intenta.")
	elseif cl == 129 then
		updateSayori('1b','a')
		cw('s', "A veces me parece bien.")
	elseif cl == 130 then
		cw('s', "Pero otras es como si me golpeasen con un bate en la cabeza.")
	elseif cl == 131 then
		updateSayori('4b','q')
		cw('s', "Ja, ja, ja~")
	elseif cl == 132 then
		updateSayori('4b','a')
		cw('s', "Por eso tenía tantas ganas de que hicieras más amigos...")
	elseif cl == 133 then
		cw('s', "Lo mejor para mí es ayudar al resto a ser felices.")
	elseif cl == 134 then
		updateSayori('1b','b')
		cw('s', "Pero entonces, descubrí algo más.")
	elseif cl == 135 then
		cw('s', "Verte hacer nuevas amistades en el club...")
	elseif cl == 136 then
		updateSayori('1b','k')
		cw('s', "Era como si me atravesaran el pecho con una lanza.")
	elseif cl == 137 then
		cw('s', "Esa es la razón.")
	elseif cl == 138 then
		cw('s', "Por eso he decidido que el mundo solo quiere torturarme.")
	elseif cl == 139 then
		updateSayori('1b','y')
		cw('s', "Todos los caminos llevan al dolor.")
	elseif cl == 140 then
		cw('s', "Ja, ja, ja~")
	elseif cl == 141 then
		cw('mc', "Tienes razón en que no lo entiendo...")
	elseif cl == 142 then
		cw('mc', "Sayori.")
	elseif cl == 143 then
		cw('mc', "Pero no lo necesito.")
	elseif cl == 144 then
		cw('mc', "Sea lo que sea que tenga que hacer para ayudarte...")
	elseif cl == 145 then
		cw('mc', "Eso es lo que haré.")
	elseif cl == 146 then
		updateSayori('1b','d')
		cw('s', "No, " .. player .. ".")
	elseif cl == 147 then
		cw('s', "No hay nada.")
	elseif cl == 148 then
		cw('s', "Nada de nada.")
	elseif cl == 149 then
		cw('s', "Lo único que podría ayudarme es que todo siga como estaba antes.")
	elseif cl == 150 then
		updateSayori('1b','k')
		cw('s', "Pero he sido egoísta.")
	elseif cl == 151 then
		cw('s', "Al final te he mostrado lo horrible que soy.")
	elseif cl == 152 then
		cw('bl', "Empiezan a brotar lágrimas de la cara de Sayori.")
	elseif cl == 153 then
		updateSayori('1b','v')
		cw('s', "Te obligué a que te unieses al club de literatura porque soy una egoísta.")
	elseif cl == 154 then
		cw('s', "Y me han castigado con un dolor que no puedo entender.")
	elseif cl == 155 then
		cw('s', "Encima que ahora has venido te he hecho daño a ti también.")
	elseif cl == 156 then
		updateSayori('1b','t')
		cw('s', "Soy débil y egoísta.")
	elseif cl == 157 then
		cw('s', "Eso es todo lo que soy.")
	elseif cl == 158 then
		cw('s', "Y por eso aceptaré estos castigos.")
	elseif cl == 159 then
		updateSayori('1b','v')
		cw('s', "¡Porque me merezco cada uno de ellos!")
	elseif cl == 160 then
		cw('bl', "Sin pensar, vuelvo a agarrar a Sayori de los hombros.")
	elseif cl == 161 then
		cw('bl', "Pero, esta vez, le doy un fuerte abrazo.")
	elseif cl == 162 then
		bgUpdate('black')
		hideAll()
		cw('s', "A-ah...")
	elseif cl == 163 then
		cw('s', "" .. player .. "...")
	elseif cl == 164 then
		cw('mc',"Sayori.")
	elseif cl == 165 then
		cw('mc', "Me da igual si te sientes egoísta.")
	elseif cl == 166 then
		cw('mc', "Me alegro de que me hayas convencido para unirme al club.")
	elseif cl == 167 then
		cw('mc', "Verte cada día hace que valga la pena.")
	elseif cl == 168 then
		cw('mc', "Y si me hago amigo del resto, pues mira, mejor que mejor.")
	elseif cl == 169 then
		cw('mc', "Pero por favor, nunca subestimes todo el cariño que te tengo.")
	elseif cl == 170 then
		cw('mc', "No te cambiaría por nada en el mundo.")
	elseif cl == 171 then
		cw('s',player.."...")
	elseif cl == 172 then
		cw('bl', "Sayori sigue sin abrazarme.")
	elseif cl == 173 then
		cw('bl', "A pesar de estar atrapada entre mis brazos, los suyos siguen inmóviles.")
	elseif cl == 174 then
		cw('bl', "Empieza a sollozar.")
	elseif cl == 175 then
		cw('s', "No...")
	elseif cl == 176 then
		cw('s', "No me hagas esto...")
	elseif cl == 177 then
		cw('s', "Por favor no lo hagas...")
	elseif cl == 178 then
		cw('s',player.."...")
	elseif cl == 179 then
		cw('s', "Yo...")
	elseif cl == 180 then
		cw('bl', "Sayori a penas puede hablar entre sollozos.")
	elseif cl == 181 then
		cw('bl', "No sé si estoy haciendo lo correcto.")
	elseif cl == 182 then
		cw('bl', "Pero lo único que sé es que me importa.")
	elseif cl == 183 then
		cw('mc', "Si quieres llamarte egoísta, entonces déjame serlo a mí también.")
	elseif cl == 184 then
		cw('mc', "Descubriré lo que hay que cambiar, aunque tenga que remover cielo y tierra.")
	elseif cl == 185 then
		cw('mc', "Haré que se vayan esos pensamientos.")
	elseif cl == 186 then
		cw('mc', "Si necesitas que haga algo por ti...")
	elseif cl == 187 then
		cw('mc', "Entonces más vale que me lo digas.")
	elseif cl == 188 then
		cw('mc', "O si no, me enfadaré muchísimo contigo.")
	elseif cl == 189 then
		cw('s',"...")
	elseif cl == 190 then
		cw('s', "No... lo sé...")
	elseif cl == 191 then
		cw('s', "No lo sé...")
	elseif cl == 192 then
		cw('s', "No lo sé.")
	elseif cl == 193 then
		cw('bl', "Por fin Sayori me envuelve en sus brazos con cuidado.")
	elseif cl == 194 then
		cw('s', "No sé nada.")
	elseif cl == 195 then
		cw('s', "Todo me da mucho miedo...")
	elseif cl == 196 then
		cw('s', "No entiendo ni mis propios sentimientos, " .. player .. ".")
	elseif cl == 197 then
		cw('s', "La única forma de sentir algo es cuando siento dolor.")
	elseif cl == 198 then
		cw('s', "Pero...")
	elseif cl == 199 then
		cw('s', "Tus abrazos son tan calentitos...")
	elseif cl == 200 then
		cw('s', "Y... Eso también me da miedo.")
	elseif cl == 201 then
		bgUpdate('sayori_bedroom')
		updateSayori('1b','v',80)
		cw('bl', "Sayori me suelta.")
	elseif cl == 202 then
		cw('bl', "Y mientras lo hace, yo también la suelto.")
	elseif cl == 203 then
		cw('mc', "El festival es mañana.")
	elseif cl == 204 then
		updateSayori('1b','k')
		cw('s', "Sí...")
	elseif cl == 205 then
		cw('mc', "Será divertido, ¿verdad?")
	elseif cl == 206 then
		cw('s', "Por supuesto.")
	elseif cl == 207 then
		cw('mc', "¿Te parece bien que lo pasemos juntos?")
	elseif cl == 208 then
		updateSayori('1b','h')
		cw('s', "Em...")
	elseif cl == 209 then
		cw('mc', "Pues...")
	elseif cl == 210 then
		cw('mc', "Quiero hacerlo.")
	elseif cl == 211 then
		cw('mc', "Te lo prometo.")
	elseif cl == 212 then
		updateSayori('1b','k')
		cw('s', "Yo...")
	elseif cl == 213 then
		cw('s', "Supongo que será lo idóneo...")
	elseif cl == 214 then
		cw('mc', "Claro.")
	elseif cl == 215 then
		cw('bl', "Sayori se seca las lágrimas.")
	elseif cl == 216 then
		cw('bl', "Si pudiese pasarme el resto del día aquí, lo haría.")
	elseif cl == 217 then
		cw('mc', "Pero justamente tengo otros planes...")
	elseif cl == 218 then
		cw('mc', "Podría cancela...")
	elseif cl == 219 then
		updateSayori('1b','h')
		cw('s', "¡No, no lo hagas!")
	elseif cl == 220 then
		updateSayori('1b','g')
		cw('s', "Por favor, no...")
	elseif cl == 221 then
		cw('s', "Si lo haces, jamás te lo perdonaré.")
	elseif cl == 222 then
		cw('mc', "Pero...")
	elseif cl == 223 then
	if savevalue == "Natsuki" or savevalue == "n" then
				cw('mc', "Ya casi es la hora de que llegue Natsuki...")
			else
				cw('mc', "Ya casi es la hora de que llegue Yuri...")
			end
	elseif cl == 224 then
		cw('mc', "¿Te gustaría venirte conmigo y echar una mano?")
	elseif cl == 225 then
		cw('mc', "Te lo pasarás bien.")
	elseif cl == 226 then
		cw('bl', "Para mi sorpresa, Sayori niega con la cabeza.")
	elseif cl == 227 then
		updateSayori('1b','d')
		cw('s', "Lo siento.")
	elseif cl == 228 then
		cw('s', "No sé si será lo mejor para mí con lo que ha pasado hoy.")
	elseif cl == 229 then
		cw('s', "¿Lo entiendes?")
	elseif cl == 230 then
		cw('s', "Ah...")
	elseif cl == 231 then
		cw('mc', "Es... muy difícil de entender.")
	elseif cl == 232 then
		cw('mc', "Pero lo estoy intentando.")
	elseif cl == 233 then
		cw('s', "No pasa nada.")
	elseif cl == 234 then
		cw('s', "No le des muchas vueltas.")
	elseif cl == 235 then
		updateSayori('4b','a')
		cw('s', "Nos vemos mañana, ¿vale?")
	elseif cl == 236 then
		cw('mc', "Vale...")
	elseif cl == 237 then
		cw('mc', "Lo esperaré con ansias.")
	elseif cl == 238 then
		bgUpdate('residential')
		hideAll()
		cw('bl', "Me despido de Sayori y salgo de su casa.")
	elseif cl == 239 then
		cw('bl', "De camino a casa me sigo sintiendo incómodo.")
	elseif cl == 240 then
		if savevalue == "Natsuki" or savevalue == "n" then
				cw('bl', "Pero es difícil seguir pensando en eso cuando Natsuki está a punto de llegar...")
			else
				cw('bl', "Pero es difícil seguir pensando en eso cuando Yuri está a punto de llegar...")
			end
		
	elseif cl == 241 then
		cw('bl', "Creo que Sayori tiene razón.")
	elseif cl == 242 then
		cw('bl', "No debería preocuparme tanto, seguro que mañana nos lo pasamos de miedo.")
	elseif cl == 243 then
		cw('bl', "¡Tengo que centrarme en lo que está por venir!")
	elseif cl >= 244 then
		if savevalue == 'n' then
			ch4_exclusive_natsuki()
		else
			ch4_exclusive_yuri()
		end
	end
end

function ch4_exclusive_natsuki()
	if cl == 244 then
		audioUpdate('6')
		bgUpdate('house')
		cw('bl', "Solo tengo que esperar unos minutos hasta que llegue Natsuki.")
	elseif cl == 245 then
		cw('bl', "De repente me envía un mensaje diciéndome que ya está en mi puerta.")
	elseif cl == 246 then
		cw('bl', "Me dirijo cuanto antes a la puerta de la calle para dejarla pasar.")
	elseif cl == 247 then
		updateNatsuki('2b','j',80)
		cw('mc',"...")
	elseif cl == 248 then
		cw('n', "¿Qué te cuentas?")
	elseif cl == 249 then
		cw('mc', "Ey.")
	elseif cl == 250 then
		cw('bl', "No sé que es lo que me esperaba, pero ver a Natsuki con algo que no fuese el uniforme me dejó algo descolocado.")
	elseif cl == 251 then
		cw('bl', "Tras verla con un conjunto tan adorable parece que el uniforme no le hace justicia.")
	elseif cl == 252 then
		updateNatsuki('4b','c')
		cw('n', "¡Ay, no me hagas sentir más rara!")
	elseif cl == 253 then
		cw('n', "Ni se te ocurra hacer alguna estupidez ya que estamos quedando fuera de clase.")
	elseif cl == 254 then
		cw('n', "Bueno, voy a ir entrando.")
	elseif cl == 255 then
		bgUpdate('kitchen')
		updateNatsuki('1b','j')
		cw('mc', "Veo que has traído muchas cosas...")
	elseif cl == 256 then
		cw('bl', "Natsuki lleva una bolsa que seguramente estará llena de utensilios de cocina.")
	elseif cl == 257 then
		updateNatsuki('2b','j')
		cw('n', "A ver, no quería pegarme todo el viajecito para descubrir que tu cocina no estaba lo suficientemente equipada para el trabajo.")
	elseif cl == 258 then
		cw('n', "Has comprado todo lo que te había pedido, ¿verdad?")
	elseif cl == 259 then
		cw('mc', "Por supuesto.")
	elseif cl == 260 then
		cw('bl', "Natsuki me pidió ayer que le comprase algunos ingredientes si no los tenía por casa.")
	elseif cl == 261 then
		updateNatsuki('2b','l')
		cw('n', "¡Bien!")
	elseif cl == 262 then
		cw('n', "Me alegro de poder contar contigo.")
	elseif cl == 263 then
		cw('mc', "Hombre, te parecerá poco.")
	elseif cl == 264 then
		cw('bl', "Me sorprende que Natsuki diga eso en lugar de uno de sus típicos comentarios sarcásticos.")
	elseif cl == 265 then
		cw('bl', "¿Será cierto que es diferente fuera del instituto?")
	elseif cl == 266 then
		cw('mc', "Bueno, vamos a la cocina...")
	elseif cl == 267 then
		updateNatsuki('2b','y')
		cw('n', "¿Qué, no me vas a ayudar con esta bolsa tan pesada?")
	elseif cl == 268 then
		cw('n', "Parece que la caballerosidad de " .. player .. " ha muerto.")
	elseif cl == 269 then
		cw('mc', "Venga ya...")
	elseif cl == 270 then
		cw('mc', "¿Desde cuando tengo que ser un caballero?")
	elseif cl == 271 then
		cw('bl', "Cojo la bolsa de Natsuki.")
	elseif cl == 272 then
		cw('mc', "Grr...")
	elseif cl == 273 then
		cw('mc', "¡Esto pesa muchísimo!")
	elseif cl == 274 then
		updateNatsuki('4b','z')
		cw('n', "¡Ja, ja, ja!")
	elseif cl == 275 then
		cw('n', "Pues la he traído hasta aquí.")
	elseif cl == 276 then
		updateNatsuki('4b','l')
		cw('n', "¿Impresionado?")
	elseif cl == 277 then
		cw('mc', "Ahora lo entiendo...")
	elseif cl == 278 then
		cw('mc', "Sí, Natsuki, estoy impresionado.")
	elseif cl == 279 then
		cw('mc', "Parece que siempre te subestimo.")
	elseif cl == 280 then
		updateNatsuki('4b','y')
		cw('n', "Je, je, je~")
	elseif cl == 281 then
		cw('n', "Es porque soy bajita, ¿verdad?")
	elseif cl == 282 then
		updateNatsuki('4b','a')
		cw('n', "Gilipollas.")
	elseif cl == 283 then
		cw('bl', "Natsuki me pega un puñetazo en el pecho.")
	elseif cl == 284 then
		cw('mc', "Eeeeeeh.")
	elseif cl == 285 then
		cw('mc', "Tu estatura no tiene nada que ver.")
	elseif cl == 286 then
		cw('mc', "¿En serio odias tanto ser bajita?")
	elseif cl == 287 then
		updateNatsuki('1b','k')
		cw('mc', "¿Eh?")
	elseif cl == 288 then
		cw('n', "Mmm...")
	elseif cl == 289 then
		updateNatsuki('1b','c')
		cw('n', "No es que lo odie...")
	elseif cl == 290 then
		cw('n', "Quiero decir, me gusta demostrar que la gente se equivoca al juzgarme por mi tamaño.")
	elseif cl == 291 then
		updateNatsuki('1b','a')
		cw('n', "Es divertido ser bajita y ser mejor que los demás.")
	elseif cl == 292 then
		cw('n', "Pero...")
	elseif cl == 293 then
		updateNatsuki('5b','w')
		cw('n', "¡Da igual!")
	elseif cl == 294 then
		cw('n', "Mira qué cosas me haces decir.")
	elseif cl == 295 then
		updateNatsuki('5b','q')
		cw('n', "¡Ni se te ocurra pensar que voy a soltar cursiladas por no estar en el insti!")
	elseif cl == 296 then
		cw('n', "Bueno, ¿vamos a comenzar o qué? Tengo que enseñarte muchas cosas.")
	elseif cl == 297 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 298 then
		updateNatsuki('5b','n')
		cw('n', "¿¿Qué te pasa??")
	elseif cl == 299 then
		cw('mc', "Eso ya se parece más a la Natsuki que conozco.")
	elseif cl == 300 then
		cw('mc', "Eres más divertida cuando te expresas de esa forma.")
	elseif cl == 301 then
		updateNatsuki('1b','m')
		cw('n', "¡P-pero bueno!")
	elseif cl == 302 then
		cw('n', "¡Ahora sí me estás tratando como si fuera una niña!")
	elseif cl == 303 then
		cw('n', "Solo quería ser un poco más maja.")
	elseif cl == 304 then
		updateNatsuki('1b','r')
		cw('n', "Y por no tener una figura tan sexy y madura como la de Yuri no quiere decir que me puedas tratar como...")
	elseif cl == 305 then
		updateNatsuki('1b','o')
		cw('n', "A-ah...")
	elseif cl == 306 then
		cw('bl', "Natsuki se da cuenta de lo que dice y se sonroja.")
	elseif cl == 307 then
		cw('mc', "Natsuki...")
	elseif cl == 308 then
		updateNatsuki('1b','p')
		cw('n', "¡Olvídalo!")
	elseif cl == 309 then
		cw('n', "¡No he dicho nada!")
	elseif cl == 310 then
		cw('mc', "Debería disculparme.")
	elseif cl == 311 then
		updateNatsuki('1b','h')
		cw('n',"¿Eh?")
	elseif cl == 312 then
		cw('mc', "De verdad te agradezco que intentes ser más maja.")
	elseif cl == 313 then
		cw('mc', "Yo también tendría que haber sido más considerado.")
	elseif cl == 314 then
		cw('mc', "Pero también...")
	elseif cl == 315 then
		cw('mc', "Si eso es lo que piensas, deberías saber que hay muchos tíos interesados por gente con tu misma figura.")
	elseif cl == 316 then
		updateNatsuki('1b','q')
		cw('n',"Ah...")
	elseif cl == 317 then
		cw('n', "¿Y tú... cómo sabes eso?")
	elseif cl == 318 then
		cw('mc', "Tú solo fíate de mí.")
	elseif cl == 319 then
		cw('n', "...")
	elseif cl == 320 then
		updateNatsuki('5b','x')
		cw('n', "Guarro.")
	elseif cl == 321 then
		cw('mc', "¡Oye!")
	elseif cl == 322 then
		cw('mc', "¿Me lo dices a mí?")
	elseif cl == 323 then
		updateNatsuki('5b','w')
		cw('n', "¿Y a quién sino?")
	elseif cl == 324 then
		cw('mc', "En fin...")
	elseif cl == 325 then
		cw('mc', "Vamos a comenzar.")
	elseif cl == 326 then
		updateNatsuki('2b','l')
		cw('n', "¡Ja, ja, ja!")
	elseif cl == 327 then
		cw('n', "Se nota que te escuece cuando te llaman guarro.")
	elseif cl == 328 then
		updateNatsuki('2b','d')
		cw('n', "Por fin he encontrado la debilidad de " .. player .. ".")
	elseif cl == 329 then
		cw('bl', "Natsuki sonríe maquiavélicamente.")
	elseif cl == 330 then
		cw('mc', "Ten piedad de mí por favor...")
	elseif cl == 331 then
		cw('bl', "Bueno, como Natsuki se ponga a sacar más insultos como ese, no me podré contener.")
	elseif cl == 332 then
		cw('bl', "Aunque por ahora está satisfecha y por fin empieza a preparar las cosas.")
	elseif cl == 333 then
		event_initstart('wipe')
	elseif cl == 334 then
		scriptJump(901)
	elseif cl == 901 then
		cw('bl', "Antes de darnos cuenta, la cocina acaba hecha un desastre.")
	elseif cl == 902 then
		cw('bl', "Hay cucharas, platos sucios, líquidos y bolsas de plástico por toda la encimera.")
	elseif cl == 903 then
		cw('bl', "La batidora es demasiado pequeña para hacerlo todo de golpe, así que la hemos tenido que usar varias veces.")
	elseif cl == 904 then
		cw('bl', "Mientras, Natsuki me observa con lupa para que no arruine sus queridos pastelillos.")
	elseif cl == 905 then
		updateNatsuki('2b','k',80)
		cw('n', "" .. player .. ", ¿dónde has puesto el colorante?")
	elseif cl == 906 then
		scriptJump(335)
	elseif cl == 335 then
		cw('n', "Tengo que meter la masa en el horno, así que tengo que rellenar las bandejas.")
	elseif cl == 336 then
		cw('mc', "Creo que sigue en la bolsa que hay al lado de la mesa.")
	elseif cl == 337 then
		cw('mc', "¿Para qué lo vas a usar?")
	elseif cl == 338 then
		updateNatsuki('4b','l')
		cw('n', "¡Pues para darle color a la masa!")
	elseif cl == 339 then
		updateNatsuki('4b','j')
		cw('n', "Haré una bandeja de cada color.")
	elseif cl == 340 then
		cw('n', "Aunque el sabor sea el mismo, podrán coger el que más les guste.")
	elseif cl == 341 then
		cw('mc', "Pues es una idea muy adorable.")
	elseif cl == 342 then
		cw('mc', "¿Vamos a hacer lo mismo con el glaseado?")
	elseif cl == 343 then
		updateNatsuki('4b','k')
		cw('n', "¿Quieres?")
	elseif cl == 344 then
		cw('mc',"Ah...")
	elseif cl == 345 then
		cw('mc', "¿Me lo preguntas a mí?")
	elseif cl == 346 then
		cw('mc', "No tengo ninguna preferencia, así que...")
	elseif cl == 347 then
		updateNatsuki('1b','m')
		cw('n', "Venga ya...")
	elseif cl == 348 then
		cw('n', "¡No le estás poniendo nada de amor y cariño!")
	elseif cl == 349 then
		cw('n', "¿Podrías al menos intentar pasártelo bien?")
	elseif cl == 350 then
		cw('mc', "Pero si me lo estoy pasando bien...")
	elseif cl == 351 then
		cw('bl', "No tengo ni idea de qué es lo que quiere de mí.")
	elseif cl == 352 then
		cw('bl', "Mientras, veo cómo separa la masa en boles más pequeños y les pone unas gotas de colorante.")
	elseif cl == 353 then
		cw('mc', "Vaya, están muy chulos.")
	elseif cl == 354 then
		updateNatsuki('2b','j')
		cw('n', "¿Ves?")
	elseif cl == 355 then
		cw('n', "La repostería no es seguir instrucciones y ya.")
	elseif cl == 356 then
		cw('n', "Tienes que ser muy creativo con su presentación.")
	elseif cl == 357 then
		cw('n', "Vale muchísimo más la pena ver a la gente cuando se le ilumina la cara.")
	elseif cl == 358 then
		cw('mc', "Je, como los que hiciste el primer día.")
	elseif cl == 359 then
		cw('bl', "Recuerdo que Natsuki nos presentó con orgullo sus pastelillos con forma de gato, y la expresión que pusieron Sayori y Monika.")
	elseif cl == 360 then
		cw('bl', "Me pregunto si yo también puedo hacer que Natsuki se enorgullezca de esa forma.")
	elseif cl == 361 then
		cw('mc', "Pues...")
	elseif cl == 362 then
		cw('mc', "Creo que será mejor que use el colorante.")
	elseif cl == 363 then
		cw('n', "Parece que ya lo empiezas a entender.")
	elseif cl == 364 then
		cw('n', "Tú solo asegúrate de terminar el glaseado antes de que la líes con el colorante.")
	elseif cl == 365 then
		cw('mc', "Sí, ya casi está.")
	elseif cl == 366 then
		cw('bl', "Estamos usando la batidora y a mi me toca batir a mano un gran bol de glaseado.")
	elseif cl == 367 then
		updateNatsuki('4b','c')
		cw('n',"¿Eh?")
	elseif cl == 368 then
		cw('n', "¡El glaseado sigue grumoso!")
	elseif cl == 369 then
		cw('n', "¿Pero al menos lo has intentado o qué?")
	elseif cl == 370 then
		cw('mc', "Que sí, que sí...")
	elseif cl == 371 then
		cw('mc', "Solo que tardará un poco más.")
	elseif cl == 372 then
		updateNatsuki('4b','g')
		cw('n', "Virgen santa, nos van a dar las uvas como sigamos así.")
	elseif cl == 373 then
		cw('n', "Mira, trae aquí.")
	elseif cl == 374 then
		cw('bl', "Natsuki me quita la batidora y usa su otra mano para inclinar el bol.")
	elseif cl == 375 then
		updateNatsuki('4b','e')
		cw('n', "¡Lo que tienes que hacer es darle una tremenda paliza!")
	elseif cl == 376 then
		cw('bl', "Tras unos segundos, el glaseado empieza a tener una mejor consistencia.")
	elseif cl == 377 then
		updateNatsuki('4b','a')
		cw('n', "¿Ves?")
	elseif cl == 378 then
		cw('bl', "Natsuki mete su dedo en el glaseado y luego en su boca.")
	elseif cl == 379 then
		cw('bl', "A regañadientes, empiezo a hacer lo mismo.")
	elseif cl == 380 then
		updateNatsuki('1b','h')
		cw('n', "¡Oye!")
	elseif cl == 381 then
		cw('bl', "Natsuki me coge de la muñeca.")
	elseif cl == 382 then
		updateNatsuki('4b','h')
		cw('n', "No quiero que tus asquerosos dedos toquen mi glaseado.")
	elseif cl == 383 then
		cw('mc', "Tu glaseado, ¿eh?")
	elseif cl == 384 then
		cw('mc', "¿Te estás olvidando de quién ha hecho todo el trabajo?")
	elseif cl == 385 then
		cw('bl', "Contraataco intentando alcanzar el bol con el dedo.")
	elseif cl == 386 then
		updateNatsuki('4b','y')
		cw('n', "¡No me hagas que te pegue una paliza a ti también!")
	elseif cl == 387 then
		cw('mc', "¡Me gustaría ver cómo lo intentas!")
	elseif cl == 388 then
		cw('bl', "Hago más fuerza, la suficiente como para alcanzar el glaseado.")
	elseif cl == 389 then
		cw('bl', "Consigo llevarme un poco con el dedo justo cuando Natsuki estira con toda su fuerza.")
	elseif cl == 390 then
		cw('mc', "¡Ah!")
	elseif cl == 391 then
		cw('bl', "La fuerza de Natsuki hace que nos tropecemos entre nosotros.")
	elseif cl == 392 then
		updateNatsuki('1b','x')
		cw('n', "¡Guarro!")
	elseif cl == 393 then
		cw('n', "¡Me has dejado la cara pringada!")
	elseif cl == 394 then
		cw('mc', "¡¿Y de quién es la culpa?!")
	elseif cl == 395 then
		cw('bl', "Hay un pegote enorme de glaseado en el moflete de Natsuki.")
	elseif cl == 396 then
		updateNatsuki('1b','w')
		cw('n', "Nnn...")
	elseif cl == 397 then
		cw('bl', "Intento llegar con la lengua pero está demasiado lejos.")
	elseif cl == 398 then
		updateNatsuki('1b','r')
		cw('n', "Ains...")
	elseif cl == 399 then
		cw('n', "¿Sabes qué?")
	elseif cl == 400 then
		updateNatsuki('4b','d')
		cw('n', "¡Toma esto!")
	elseif cl == 401 then
		cw('bl', "Natsuki se limpia con la mano y me lo pega en la cara.")
	elseif cl == 402 then
		cw('mc', "¡Más quisieras...!")
	elseif cl == 403 then
		cw('bl', "Soy más rápido.")
	elseif cl == 404 then
		cw('bl', "Agarro su muñeca antes de que llegue a mi cara.")
	elseif cl == 405 then
		cw('bl', "Natsuki intenta usar su otra mano para contraatacar, pero también la consigo agarrar.")
	elseif cl == 406 then
		hideAll()
		persistent.clear[5] = 1
		if xaload == 0 then
			savepersistent()
		end
		bgUpdate('cg/n_cg3_cake')
		cgUpdate('n_cg3_exp1')
		cw('n', "¡Ja, ja, ja, ja! ¡Para!")
	elseif cl == 407 then
		cw('mc', "¡No hasta que te disculpes por llamarme guarro!")
	elseif cl == 408 then
		cw('n', "¡Vale, vale!")
	elseif cl == 409 then
		cw('n', "Lo siento por llamarte guarro.")
	elseif cl == 410 then
		cw('n', "Ya sabes que no lo digo en serio.")
	elseif cl == 411 then
		cw('n', "Es que es divertido ver cómo reaccionas.")
	elseif cl == 412 then
		cw('n', "Tú también me haces lo mismo todo el rato, ¿sabes?")
	elseif cl == 413 then
		cw('n', "Eso de decir cosas estúpidas para ver cómo reacciono.")
	elseif cl == 414 then
		cw('n', "No deberías de chinchar de esta forma a una chica.")
	elseif cl == 415 then
		cw('mc', "¿Tú crees?")
	elseif cl == 416 then
		cw('mc', "En ese caso, tampoco debería hacer esto...")
	elseif cl == 417 then
		bgUpdate('cg/n_cg3_base')
		cw('bl', "Cojo el dedo de Natsuki y me lo pongo en la boca, lamiendo el glaseado.")
	elseif cl == 418 then
		cgUpdate('n_cg3_exp2')
		cw('n', "¿Q-q-qué?")
	elseif cl == 419 then
		cw('n', "E-en serio acabas de...")
	elseif cl == 420 then
		cw('n', "A-ah...")
	elseif cl == 421 then
		cw('bl', "Natsuki está tan sorprendida que no sabe cómo enfadarse.")
	elseif cl == 422 then
		cw('bl', "La cara se le ha puesto roja.")
	elseif cl == 423 then
		cgHide()
		cw('n',player.."...")
	elseif cl == 424 then
		cw('n', "No deberías de hacer este tipo de cosas a una chica, a no ser que te guste de verdad...")
	elseif cl == 425 then
		cw('n', "Lo sabes, ¿no?")
	elseif cl == 426 then
		cw('mc',"...")
	elseif cl == 427 then
		cw('bl', "¿Qué clase de pregunta es esa?")
	elseif cl == 428 then
		cw('bl', "¿Cómo hemos acabado así?")
	elseif cl == 429 then
		cw('mc', "Yo...")
	elseif cl == 430 then
		cw('bl', "Natsuki me mira en silencio.")
	elseif cl == 431 then
		cw('bl', "Noto su cortada respiración.")
	elseif cl == 432 then
		cw('bl', "¿Por qué me estoy empezando a marear?")
	elseif cl == 433 then
		cw('n', "¡¿Pero qué?!")
	elseif cl == 434 then
		bgUpdate('kitchen')
		cw('bl', "De repente empieza a sonar la alarma anti incendios.")
	elseif cl == 435 then
		cw('bl', "Natsuki corre hacia el horno.")
	elseif cl == 436 then
		cw('mc', "¿Se estaba quemando algo?")
	elseif cl == 437 then
		cw('mc', "Pensaba que todavía no habías metido los pastelillos.")
	elseif cl == 438 then
		updateNatsuki('1b','w',80)
		cw('n', "Ejem.")
	elseif cl == 439 then
		cw('n', "Normal...")
	elseif cl == 440 then
		updateNatsuki('1b','b')
		cw('n', "¡Habías dejado una bandeja sucia dentro, estúpido!")
	elseif cl == 441 then
		cw('n', "¿Cómo has podido cometer un error así?")
	elseif cl == 442 then
		cw('mc', "¡Tendrías que haberlo comprobado antes de encender el horno!")
	elseif cl == 443 then
		updateNatsuki('1b','s')
		cw('n', "¡No me eches la culpa de tus errores!")
	elseif cl == 444 then
		cw('n', "Ains...")
	elseif cl == 445 then
		cw('bl', "Natsuki coge la bandeja ennegrecida con un guante.")
	elseif cl == 446 then
		cw('bl', "La deja encima de los fogones.")
	elseif cl == 447 then
		cw('bl', "Y de repente, la alarma se para.")
	elseif cl == 448 then
		updateNatsuki('1b','q')
		cw('n', "Bueno...")
	elseif cl == 449 then
		cw('n', "Voy... a meterlos en el horno.")
	elseif cl == 450 then
		cw('mc', "Vale...")
	elseif cl == 451 then
		cw('bl', "La tensión del momento sigue rondando entre nosotros.")
	elseif cl == 452 then
		cw('bl', "Pero ya hemos perdido la magia del momento.")
	elseif cl == 453 then
		cw('bl', "Veo cómo Natsuki mete las bandejas en el horno.")
	elseif cl == 454 then
		cw('bl', "Luego cojo la batidora y continúo con el glaseado, como si no hubiese pasado nada.")
	elseif cl == 455 then
		event_initstart('wipe')
		
	elseif cl == 456 then
		updateNatsuki('4b','z')
		cw('n', "¡Ah, qué bien huele!")
	elseif cl == 457 then
		cw('bl', "Los pastelillos ya están listos.")
	elseif cl == 458 then
		cw('bl', "En cuanto Natsuki abre la puerta del horno, sale un dulce aroma de dentro.")
	elseif cl == 459 then
		updateNatsuki('4b','l')
		cw('n', "¡Mira qué adorables!")
	elseif cl == 460 then
		cw('bl', "Orgullosa, enseña los pastelillos de cada bandeja.")
	elseif cl == 461 then
		cw('mc', "Tendrán incluso mejor pinta cuando les pongamos el glaseado.")
	elseif cl == 462 then
		updateNatsuki('2b','a')
		cw('n', "Ya sabes lo que toca ahora, ¿no?")
	elseif cl == 463 then
		cw('n', "He traído bastantes cosas para decorar, así que espero que seas creativo.")
	elseif cl == 464 then
		cw('n', "Venga, rellena estas bolsas de glaseado.")
	elseif cl == 465 then
		cw('bl', "Natsuki me pasa unas bolsas de plástico.")
	elseif cl == 466 then
		updateNatsuki('2b','j')
		cw('n', "Tengo unas boquillas para que quede bonito y esponjoso.")
	elseif cl == 467 then
		cw('n', "¡Esta puede hacer flores!")
	elseif cl == 468 then
		cw('n', "Aunque seguramente no la usaremos esta vez.")
	elseif cl == 469 then
		cw('mc', "¿Esta para qué sirve?")
	elseif cl == 470 then
		cw('bl', "Cojo una boquilla mucho más fina que las demás.")
	elseif cl == 471 then
		updateNatsuki('4b','k')
		cw('n', "Esta es muy fina, por lo que puedes hacer líneas u otros patrones con ella.")
	elseif cl == 472 then
		cw('n', "Aunque también puedes usarla para escribir algo en una tarta.")
	elseif cl == 473 then
		cw('n', "Por ejemplo, «¡Felicidades!» o algo parecido.")
	elseif cl == 474 then
		cw('mc', "Ah, entiendo...")
	elseif cl == 475 then
		cw('mc', "En verdad eso me ha dado una idea.")
	elseif cl == 476 then
		cw('n',"¿Eh?")
	elseif cl == 477 then
		cw('mc', "Esto es un evento de literatura, ¿verdad?")
	elseif cl == 478 then
		cw('mc', "Podríamos hacer que se note escribiendo una palabra en cada pastelillo.")
	elseif cl == 479 then
		cw('mc', "Será divertido ver cómo eligen el pastelillo en función de la palabra que más les guste.")
	elseif cl == 480 then
		updateNatsuki('1b','q')
		cw('n', "Em...")
	elseif cl == 481 then
		cw('mc', "¿Qué pasa?")
	elseif cl == 482 then
		cw('n', "La verdad es que esperaba que dijeras alguna tontería...")
	elseif cl == 483 then
		updateNatsuki('1b','s')
		cw('n', "Pero en verdad es una idea bastante... adorable.")
	elseif cl == 484 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 485 then
		cw('mc', "Me lo habrás pegado.")
	elseif cl == 486 then
		updateNatsuki('5b','h')
		cw('n', "¿Q-qué quieres decir con eso?")
	elseif cl == 487 then
		cw('n', "¡No soy adorable!")
	elseif cl == 488 then
		cw('mc', "Venga ya...")
	elseif cl == 489 then
		cw('mc', "No estamos en el instituto, nadie te va a juzgar.")
	elseif cl == 490 then
		cw('mc', "No puedes ir vestida y actuar así y pretender que no piense que seas adorable.")
	elseif cl == 491 then
		updateNatsuki('5b','s')
		cw('n', "B-bueno...")
	elseif cl == 492 then
		cw('bl', "La voz de Natsuki se va apagando.")
	elseif cl == 493 then
		cw('n', "Lo mismo digo...")
	elseif cl == 494 then
		cw('mc',"¿Eh?")
	elseif cl == 495 then
		cw('mc', "¿Has dicho algo?")
	elseif cl == 496 then
		updateNatsuki('1b','w')
		cw('n', "¡N-no he dicho nada!")
	elseif cl == 497 then
		cw('n', "¡Vamos a seguir con el glaseado!")
	elseif cl == 498 then
		cw('bl', "Natsuki vuelve al trabajo y pone una boquilla en cada bolsa.")
	elseif cl == 499 then
		updateNatsuki('1b','h')
		cw('n', "¡Todavía queda mucho por hacer, así que no deberíamos perder el tiempo!")
	elseif cl == 500 then
		cw('n', "Mira, te voy a enseñar cómo se hace.")
	elseif cl == 501 then
		cw('bl', "Natsuki cambia rápido de tema para que me olvide de lo de antes.")
	elseif cl == 502 then
		cw('bl', "Me enseña cómo poner el glaseado y nos ponemos manos a la obra.")
	elseif cl == 503 then
		event_initstart('wipe')

	elseif cl == 504 then
		cw('bl', "Cuando acabamos, Natsuki los alinea para admirar nuestro trabajo.")
	elseif cl == 505 then
		updateNatsuki('4b','l',80)
		cw('n', "¡Mira qué bonitos cuando están juntos!")
	elseif cl == 506 then
		cw('mc', "Sí, ¿no?")
	elseif cl == 507 then
		updateNatsuki('1b','m')
		cw('n', "Jo, ¡ojalá pudiese comerme uno ahora mismo!")
	elseif cl == 508 then
		cw('mc', "Bueno, nada te lo impide, ¿no?")
	elseif cl == 509 then
		cw('mc', "No le hará daño a nadie.")
	elseif cl == 510 then
		updateNatsuki('1b','c')
		cw('n', "Bueno, sí, pero...")
	elseif cl == 511 then
		cw('n', "Mi padre va a cocinar esta noche, así que más me vale tener hambre.")
	elseif cl == 512 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 513 then
		cw('mc', "Sayori es totalmente opuesta en ese sentido.")
	elseif cl == 514 then
		cw('mc', "Si estuviese aquí, seguramente nos quedarían unos diez pastelillos en estos momentos.")
	elseif cl == 515 then
		cw('mc', "Y aún podría comerse la cena.")
	elseif cl == 516 then
		updateNatsuki('4b','g')
		cw('n', "¡Venga ya, eso no puede ser sano!")
	elseif cl == 517 then
		updateNatsuki('4b','s')
		cw('n', "Además, cuando cocina mi madre, necesito comer todo lo que pueda...")
	elseif cl == 518 then
		updateNatsuki('4b','q')
		cw('n', "¡En fin!")
	elseif cl == 519 then
		updateNatsuki('4b','c')
		cw('n', "Me hubiera gustado tener algo de tiempo para leer, pero necesito estar en casa a la hora de cenar...")
	elseif cl == 520 then
		cw('mc', "Ah, ¿ya?")
	elseif cl == 521 then
		cw('mc', "Qué pena.")
	elseif cl == 522 then
		updateNatsuki('1b','g')
		cw('n', "¡Es tu culpa por ser tan lento!")
	elseif cl == 523 then
		cw('n', "Tendrías que habértelo pensado.")
	elseif cl == 524 then
		cw('n', "Esto no ocurre todos los días.")
	elseif cl == 525 then
		cw('mc', "Vaya...")
	elseif cl == 526 then
		cw('bl', "Como siempre, Natsuki me echa la culpa.")
	elseif cl == 527 then
		updateNatsuki('2b','k')
		cw('n', "Puedes traer los pastelillos mañana, ¿verdad?")
	elseif cl == 528 then
		cw('n', "Si te ayuda Sayori, podréis traerlos en un viaje.")
	elseif cl == 529 then
		cw('mc', "Sí, creo que podré.")
	elseif cl == 530 then
		cw('mc', "Y no te preocupes, no dejaré que se coma ninguno.")
	elseif cl == 531 then
		updateNatsuki('2b','a')
		cw('n', "Ja, ja, ja.")
	elseif cl == 532 then
		cw('n', "Ojalá me hiciera tanto caso como el que te hace a ti.")
	elseif cl == 533 then
		cw('mc',"Ah...")
	elseif cl == 534 then
		cw('mc', "Sí, claro.")
	elseif cl == 535 then
		hideNatsuki()
		cw('bl', "Vuelvo a recordar la conversación que tuve con Sayori esta mañana.")
	elseif cl == 536 then
		cw('bl', "Me sentía tan impotente.")
	elseif cl == 537 then
		cw('bl', "Es verdad que Sayori siempre me hace caso, pero hoy parecía que no me quería ni escucharme.")
	elseif cl == 538 then
		updateNatsuki('4b','l',80)
		cw('n', "Vale, estoy lista.")
	elseif cl == 539 then
		cw('n', "¡Buen trabajo!")
	elseif cl == 540 then
		cw('mc', "Lo mismo digo.")
	elseif cl == 541 then
		cw('mc', "Supongo...")
	elseif cl == 542 then
		event_initstart('wipe','house')
		
	elseif cl == 543 then
		cw('bl', "Y así, Natsuki ya está lista para irse.")
	elseif cl == 544 then
		cw('bl', "Parece que la tarde ha pasado muy deprisa.")
	elseif cl == 545 then
		cw('bl', "Es más...")
	elseif cl == 546 then
		cw('bl', "¿Habré aprovechado la ocasión para acercarme más a ella como pretendía?")
	elseif cl == 547 then
		updateNatsuki('1b','h',80)
		cw('n', "Bueno...")
	elseif cl == 548 then
		cw('n', "Me voy a ir yendo ya...")
	elseif cl == 549 then
		updateNatsuki('1b','q')
		cw('n', "Gracias por la ayuda y tal.")
	elseif cl == 550 then
		cw('n', "Nos vemos mañana.")
	elseif cl == 551 then
		cw('mc', "Natsuki, espera.")
	elseif cl == 552 then
		updateNatsuki('1b','h')
		cw('n',"¿Eh?")
	elseif cl == 553 then
		cw('mc', "Lo que habías dicho antes, lo de no tener esta situación cada día.")
	elseif cl == 554 then
		cw('mc', "¡No tiene por qué ser así!")
	elseif cl == 555 then
		cw('mc', "Hoy me lo he pasado genial.")
	elseif cl == 556 then
		cw('mc', "Me has enseñado lo divertida que es la repostería, tal y como querías.")
	elseif cl == 557 then
		cw('mc', "Pero aparte de eso...")
	elseif cl == 558 then
		cw('mc', "Puedes venir cuando quieras, ¿vale?")
	elseif cl == 559 then
		cw('mc', "Me gustaría pasar más tiempo así si fuese posible.")
	elseif cl == 560 then
		cw('mc', "Si quieres leer manga o salir por ahí...")
	elseif cl == 561 then
		updateNatsuki('1b','m')
		cw('n', "Em...")
	elseif cl == 562 then
		cw('n', "¿Lo dices... en serio?")
	elseif cl == 563 then
		cw('bl', "Natsuki me mira nerviosa, intentando esconder su expresión.")
	elseif cl == 564 then
		cw('mc', "Sí.")
	elseif cl == 565 then
		cw('mc', "Quiero pasar más tiempo contigo.")
	elseif cl == 566 then
		updateNatsuki('1b','q')
		cw('n',player.."...")
	elseif cl == 567 then
		cw('n', "Pensaba que solo te interesaba acabar lo que teníamos que hacer.")
	elseif cl == 568 then
		updateNatsuki('1b','r')
		cw('n', "Em...")
	elseif cl == 569 then
		updateNatsuki('1b','n')
		cw('n', "Perdona por tener que irme tan pronto.")
	elseif cl == 570 then
		cw('n', "¡De verdad que no quería!")
	elseif cl == 571 then
		cw('n', "Si pudiese, me quedaría más rato aquí.")
	elseif cl == 572 then
		cw('n', "Me siento igual que tú, así que...")
	elseif cl == 573 then
		audioUpdate('0')
		updateNatsuki('f_1b','f_i')
		cw('bl', "Natsuki se me acerca de repente.")
	elseif cl == 574 then
		cw('mc', "Natsuki, espera...")
	elseif cl == 575 then
		cw('bl', "Estando a centímetros de mí, Natuki me mira.")
	elseif cl == 576 then
		cw('bl', "Noto cómo sus dedos cogen con cuidado el lateral de mi camiseta, como si me se estuviese agarrando a mí.")
	elseif cl == 577 then
		cw('bl', "Sus mofletes rojizos y sus ojos a juego invaden mi visión, al igual que sus labios entreabiertos.")
	elseif cl == 578 then
		cw('bl', "¿Qué está pasando?")
	elseif cl == 579 then
		cw('bl', "Me empiezo a marear al mismo tiempo que siento su respiración.")
	elseif cl == 580 then
		updateNatsuki('f_1b','f_h')
		cw('n', "Lo he estado sintiendo...")
	elseif cl == 581 then
		cw('n', "Desde hace un tiempo...")
	elseif cl == 582 then
		updateNatsuki('f_1b','f_o')
		cw('n', "¡¡!!")
	elseif cl == 583 then
		updateNatsuki('1b','o')
		cw('bl', "De repente, Natsuki pega un bote.")
	elseif cl == 584 then
		cw('n', "¡¿S-sayori?!")
	elseif cl == 585 then
		cw('mc', "¡¿Eh?!")
	elseif cl == 586 then
		updateNatsuki('1b','o',150)
		updateSayori('1b','l',10)
		cw('s',"Ah...")
	elseif cl == 587 then
		cw('s', "H-hola, " .. player .. "...")
	elseif cl == 588 then
		cw('mc', "¡Sayori!")
	elseif cl == 589 then
		cw('mc', "No es lo que parece...")
	elseif cl == 590 then
		updateSayori('1b','q')
		cw('s', "Je, je, je~")
	elseif cl == 591 then
		cw('s', "No pasa nada, " .. player .. ".")
	elseif cl == 592 then
		updateSayori('1b','a')
		cw('s', "Solo me pasaba para saludar~")
	elseif cl == 593 then
		updateNatsuki('5b','q')
		cw('n', "A-ah...")
	elseif cl == 594 then
		cw('n', "Bueno...")
	elseif cl == 595 then
		updateNatsuki('5b','w')
		cw('n', "¡T-tendrías que haber venido antes!")
	elseif cl == 596 then
		cw('n', "Yo me tengo que ir ya, así que...")
	elseif cl == 597 then
		updateSayori('1b','h')
		cw('s', "Oh, ¿en serio?")
	elseif cl == 598 then
		cw('s', "Qué pena...")
	elseif cl == 599 then
		updateNatsuki('2b','q')
		cw('n', "Sí, bueno...")
	elseif cl == 600 then
		cw('n', "Te veré mañana en el festival, así que no pasa nada.")
	elseif cl == 601 then
		updateNatsuki('2b','b')
		cw('n', "¡Pero no te comas ningún pastelillo hasta entonces!")
	elseif cl == 602 then
		cw('n', "Bueno, ¡hasta luego!")
	elseif cl == 603 then
		hideNatsuki()
		cw('bl', "Natsuki se va corriendo, visiblemente nerviosa, mientras Sayori se despide.")
	elseif cl >= 604 and cl < 901 then
		ch4_end()
	end
end

function ch4_exclusive_yuri()
	if cl == 244 then
		audioUpdate('6')
		bgUpdate('house')
		cw('bl', "Al acercarme a mi casa, veo algo que me hace entrar en pánico.")
	elseif cl == 245 then
		cw('mc', "¿Yuri?")
	elseif cl == 246 then
		updateYuri('2b','q',80)
		cw('y',"Ah...")
	elseif cl == 247 then
		cw('y', "Menos mal...")
	elseif cl == 248 then
		cw('mc', "Has llegado un poco pronto.")
	elseif cl == 249 then
		cw('mc', "¡Perdona, no estaba en casa!")
	elseif cl == 250 then
		cw('mc', "¿Has estado esperando mucho rato?")
	elseif cl == 251 then
		updateYuri('1b','f')
		cw('y', "No, acabo de llegar.")
	elseif cl == 252 then
		updateYuri('1b','h')
		cw('y', "Pero me he puesto muy nerviosa cuando he visto que no había nadie...")
	elseif cl == 253 then
		cw('mc', "Podrías haberme enviado un mensaje.")
	elseif cl == 254 then
		cw('mc', "Si lo hubiese sabido, te habría avisado y me habría dado más prisa en venir.")
	elseif cl == 255 then
		updateYuri('2b','v')
		cw('y', "Ah, supongo que es verdad...")
	elseif cl == 256 then
		cw('y', "No lo había pensado... por alguna razón.")
	elseif cl == 257 then
		cw('bl', "Es de sentido común, pero decido ignorarlo.")
	elseif cl == 258 then
		cw('mc', "Bueno, vamos adentro.")
	elseif cl == 259 then
		cw('mc', "Veo que has traído un montón de cosas.")
	elseif cl == 260 then
		updateYuri('1b','a')
		cw('y', "Así es.")
	elseif cl == 261 then
		cw('y', "¿Y has podido conseguir todo lo que te pedí que compraras?")
	elseif cl == 262 then
		cw('mc', "Sí, eso creo.")
	elseif cl == 263 then
		cw('mc', "Como mínimo espero haber comprado lo correcto.")
	elseif cl == 264 then
		cw('y', "Seguro que sí.")
	elseif cl == 265 then
		bgUpdate('bedroom')
		hideAll()
		cw('bl', "Llevo a Yuri a mi habitación.")
	elseif cl == 266 then
		cw('bl', "Lo primero que hace es echar un vistazo de manera curiosa, lo cual me pone algo nervioso.")
	elseif cl == 267 then
		updateYuri('2b','m',80)
		cw('y', "Está muy limpia.")
	elseif cl == 268 then
		cw('mc', "Ja, ja, ja...")
	elseif cl == 269 then
		cw('mc', "Lo he limpiado antes de que llegases, así que...")
	elseif cl == 270 then
		updateYuri('2b','a')
		cw('y', "Eso es muy considerado por tu parte.")
	elseif cl == 271 then
		cw('mc', "Oh, no...")
	elseif cl == 272 then
		cw('mc', "Me hubiera dado mucha vergüenza si vieras mi habitación hecha un desastre.")
	elseif cl == 273 then
		updateYuri('1b','a')
		cw('y', "Mmm...")
	elseif cl == 274 then
		cw('y', "Bueno, me gusta limpiar.")
	elseif cl == 275 then
		cw('y', "Te habría ayudado sin problemas.")
	elseif cl == 276 then
		cw('mc', "Ah...")
	elseif cl == 277 then
		cw('mc', "¡Eso me hubiera dado mucha más vergüenza!")
	elseif cl == 278 then
		updateYuri('1b','e')
		cw('mc', "¡Espera, no mires ahí!")
	elseif cl == 279 then
		cw('bl', "Agarro la muñeca de Yuri, la cual estaba a punto de abrir un cajón.")
	elseif cl == 280 then
		updateYuri('3b','n')
		cw('y', "A-ah...")
	elseif cl == 281 then
		cw('y', "¡Lo siento!")
	elseif cl == 282 then
		updateYuri('4b','b2')
		cw('y', "Lo he hecho sin pensar...")
	elseif cl == 283 then
		cw('y', "¡Me había quedado en babia!")
	elseif cl == 284 then
		cw('mc', "No pasa nada, no pasa nada.")
	elseif cl == 285 then
		cw('bl', "Suelto la muñeca de Yuri.")
	elseif cl == 286 then
		updateYuri('1b','l')
		cw('bl', "A continuación, pone sus manos en su regazo, como si las estuviese controlando.")
	elseif cl == 287 then
		cw('mc', "Bueno, pues...")
	elseif cl == 288 then
		cw('mc', "¿Empezamos?")
	elseif cl == 289 then
		updateYuri('2b','u')
		cw('y',"Ah...")
	elseif cl == 290 then
		cw('y', "Por supuesto...")
	elseif cl == 291 then
		updateYuri('2b','f')
		cw('y', "Mmm, tengo en mente un par de cosas que hacer en las que tú puedes ayudar...")
	elseif cl == 292 then
		cw('y', "Por ejemplo, las decoraciones y otras mejoras atmosféricas.")
	elseif cl == 293 then
		cw('mc', "¿Mejoras atmosféricas...?")
	elseif cl == 294 then
		updateYuri('1b','a')
		cw('y', "Ya sabes...")
	elseif cl == 295 then
		cw('y', "La iluminación, velas aromáticas...")
	elseif cl == 296 then
		cw('mc', "Oh, guau.")
	elseif cl == 297 then
		cw('mc', "No me imaginaba que fueras tan detallista.")
	elseif cl == 298 then
		updateYuri('1b','c')
		cw('y', "Por supuesto.")
	elseif cl == 299 then
		cw('y', "Quiero ayudar a los invitados a transportarse a un lugar muy lejano.")
	elseif cl == 300 then
		updateYuri('1b','a')
		cw('y', "Aunque muchos se pararán por curiosidad...")
	elseif cl == 301 then
		updateYuri('1b','j')
		cw('y', "Y por los pastelillos, supongo...")
	elseif cl == 302 then
		updateYuri('1b','a')
		cw('y', "Estoy decidida a proveer una experiencia para que tengan ganas de más.")
	elseif cl == 303 then
		cw('mc', "Genial.")
	elseif cl == 304 then
		cw('mc', "Que fácil es olvidarse de que eres una persona bastante... intensa.")
	elseif cl == 305 then
		updateYuri('1b','t')
		cw('y', "Esto...")
	elseif cl == 306 then
		updateYuri('2b','t')
		cw('y', "¿Intensa?")
	elseif cl == 307 then
		cw('mc', "Sí, supongo que es una forma de describirlo.")
	elseif cl == 308 then
		cw('y', "¿Es... algo malo?")
	elseif cl == 309 then
		cw('mc', "No, para nada.")
	elseif cl == 310 then
		cw('mc', "De hecho, es algo que me gusta de ti.")
	elseif cl == 311 then
		updateYuri('3b','u')
		cw('y', "¿A-ah, sí?")
	elseif cl == 312 then
		cw('y', "Eso me tranquiliza...")
	elseif cl == 313 then
		cw('y', "y también me hace feliz.")
	elseif cl == 314 then
		cw('mc', "Sí, no tienes por qué ponerte nerviosa.")
	elseif cl == 315 then
		cw('mc', "Puedes relajarte.")
	elseif cl == 316 then
		updateYuri('3b','l')
		cw('y', "Relajarme...")
	elseif cl == 317 then
		updateYuri('1b','f')
		cw('y', "He traído un par de cosas para relajarme.")
	elseif cl == 318 then
		cw('y', "Las iba a usar en el evento...")
	elseif cl == 319 then
		cw('mc', "¿Ah, sí? ¿Como qué?")
	elseif cl == 320 then
		cw('y', "Veamos...")
	elseif cl == 321 then
		cw('bl', "Yuri rebusca en su bolsa.")
	elseif cl == 322 then
		cw('bl',"Saca un par de velas y un objeto cilíndrico de madera.")
	elseif cl == 323 then
		cw('y', "Había comprado algunas cosillas antes de venir, por eso las tengo en mi bolsa.")
	elseif cl == 324 then
		cw('y', "Pretendía tapar las ventanas con papel negro y usar las velas para iluminar la sala.")
	elseif cl == 325 then
		updateYuri('1b','a')
		cw('y', "Sería increíble, ¿no crees?")
	elseif cl == 326 then
		cw('mc', "Sí, sí que lo sería.")
	elseif cl == 327 then
		cw('mc', "¿Y qué es esa cosa de madera?")
	elseif cl == 328 then
		updateYuri('1b','f')
		cw('y', "Ah, ¿esto?")
	elseif cl == 329 then
		cw('y', "Es un difusor de aceites esenciales.")
	elseif cl == 330 then
		cw('y', "¿Qué sabes sobre la aromaterapia?")
	elseif cl == 331 then
		cw('mc', "Más bien poco...")
	elseif cl == 332 then
		updateYuri('1b','a')
		cw('y', "Ah, ¿en serio?")
	elseif cl == 333 then
		cw('y', "Es uno de mis elementos favoritos para crear una atmósfera positiva.")
	elseif cl == 334 then
		cw('y', "Depende del aceite o de las hierbas que uses, podrás cambiar totalmente lo que sienta la gente.")
	elseif cl == 335 then
		cw('y', "Podrías incluso sentirlo a través de todo tu cuerpo.")
	elseif cl == 336 then
		updateYuri('3b','m')
		cw('y', "Relajación, energía positiva, romances...")
	elseif cl == 337 then
		cw('y', "Es como si fuera magia.")
	elseif cl == 338 then
		updateYuri('3b','a')
		cw('bl', "Yuri coge el cilindro y presiona un botón bajo él.")
	elseif cl == 339 then
		cw('bl', "En un instante, una fina columna de vapor sale disparado del agujero que tiene encima.")
	elseif cl == 340 then
		cw('mc', "Guau, huele genial.")
	elseif cl == 341 then
		cw('mc', "¿Y esta qué efecto tiene?")
	elseif cl == 342 then
		updateYuri('1b','a')
		cw('y', "Es aceite de jazmín.")
	elseif cl == 343 then
		cw('y', "Es dulce y floral, ¿verdad?")
	elseif cl == 344 then
		cw('mc', "Sí, es una buena descripción.")
	elseif cl == 345 then
		updateYuri('1b','b')
		cw('y', "He elegido el jazmín porque proporciona algo más que relajación.")
	elseif cl == 346 then
		cw('y', "El jazmín acentúa tus emociones y te ayuda a que fluyan a través de tu cuerpo.")
	elseif cl == 347 then
		updateYuri('1b','u')
		cw('y', "Te sientes mejor y puedes percibir más los latidos de tu corazón.")
	elseif cl == 348 then
		updateYuri('1b','a')
		cw('y', "¿No crees que será perfecto para los poemas?")
	elseif cl == 349 then
		cw('mc', "Pues sí que lo parece...")
	elseif cl == 350 then
		cw('mc', "Aunque parece que sabes de lo que hablas, así que confiaré en lo que tu digas.")
	elseif cl == 351 then
		updateYuri('1b','c')
		cw('bl', "Parece que Yuri se lo está pasando bien.")
	elseif cl == 352 then
		cw('bl', "Vuelve a meter su mano en su bolsa y saca varios carretes de cinta.")
	elseif cl == 353 then
		updateYuri('1b','a')
		cw('mc', "¿Para que es eso?")
	elseif cl == 354 then
		updateYuri('1b','f')
		cw('y', "Bueno...")
	elseif cl == 355 then
		cw('y', "¿Has comprado el papel de origami que te pedí?")
	elseif cl == 356 then
		cw('mc', "Sí, lo tengo por aquí...")
	elseif cl == 357 then
		cw('y', "No vamos a usarlo para hacer origamis.")
	elseif cl == 358 then
		cw('y', "Me gustaría escribir una palabra en cada papel.")
	elseif cl == 359 then
		cw('y', "Necesitaremos unos cien, más o menos.")
	elseif cl == 360 then
		cw('mc', "¿Ah, sí?")
	elseif cl == 361 then
		cw('mc', "¿Y para qué los usaremos?")
	elseif cl == 362 then
		updateYuri('2b','f')
		cw('y', "Bueno, cortaré la cinta para ponerla en la puerta de la clase.")
	elseif cl == 363 then
		cw('y', "Luego ataré los papeles a las cintas para crear una cortina.")
	elseif cl == 364 then
		updateYuri('2b','m')
		cw('y', "¿A que quedará precioso?")
	elseif cl == 365 then
		cw('y', "También llamará la atención de los que pasen cerca...")
	elseif cl == 366 then
		updateYuri('2b','a')
		cw('y', "Y hasta podrá hacer que se pasasen a echar un vistazo.")
	elseif cl == 367 then
		cw('mc', "¡Qué creativa!")
	elseif cl == 368 then
		cw('mc', "No sabía que fueras tan buena.")
	elseif cl == 369 then
		updateYuri('4b','a2')
		cw('y', "¿A-ah, sí?")
	elseif cl == 370 then
		cw('y', "Bueno, supongo que, tal y como has dicho tú antes, puedo ponerme algo «intensa».")
	elseif cl == 371 then
		updateYuri('3b','u')
		cw('y', "Ju, ju, ju.")
	elseif cl == 372 then
		cw('bl', "Yuri ríe sonrojada.")
	elseif cl == 373 then
		cw('bl', "Soy yo, ¿o se suelta más cuando estamos los dos solos?")
	elseif cl == 374 then
		cw('bl', "Oh quizás sea la emoción de compartir algo que le gusta.")
	elseif cl == 375 then
		updateYuri('1b','a')
		cw('y', "Toma, un rotulador.")
	elseif cl == 376 then
		cw('y', "Puedes escribir lo que quieras.")
	elseif cl == 377 then
		cw('y', "Te ayudaré cuando termine de cortar la cinta.")
	elseif cl == 378 then
		cw('mc', "Ah, vale.")
	elseif cl == 379 then
		cw('bl', "Sentados en el suelo, nos ponemos manos a la obra.")
	elseif cl == 380 then
		cw('bl', "Escribo una palabra en cada papel con mucho cuidado, intentando hacer que no se note mi horrible caligrafía.")
	elseif cl == 381 then
		cw('bl', "Yuri corta un gran trozo de cinta roja del tamaño que necesita.")
	elseif cl == 382 then
		cw('bl', "Luego vuelve a buscar algo en su mochila y saca un cuchillo.")
	elseif cl == 383 then
		cw('mc', "¿Mmm?...")
	elseif cl == 384 then
		cw('bl', "El cuchillo es extrañamente hermoso.")
	elseif cl == 385 then
		cw('bl', "El mango de plata tiene grabado un complejo estampado de olas.")
	elseif cl == 386 then
		cw('bl', "La propia hoja tiene un ligero tono azulado.")
	elseif cl == 387 then
		cw('mc', "Eso no es un cuchillo normal...")
	elseif cl == 388 then
		cw('mc', "Parece muy elaborado.")
	elseif cl == 389 then
		updateYuri('4b','b2')
		cw('y', "A-ah...")
	elseif cl == 390 then
		cw('y', "Bueno...")
	elseif cl == 391 then
		cw('bl', "Avergonzada, Yuri aparta la mirada.")
	elseif cl == 392 then
		cw('mc', "¿Qué es?")
	elseif cl == 393 then
		cw('y', "Pensarás que es raro...")
	elseif cl == 394 then
		cw('mc', "Yuri, no tengo derecho a juzgarte sea lo que sea.")
	elseif cl == 395 then
		cw('mc', "Cada uno a lo suyo, ¿no?")
	elseif cl == 396 then
		cw('y', "Si me prometes que no te parecerá raro...")
	elseif cl == 397 then
		cw('mc', "Sí, lo prometo.")
	elseif cl == 398 then
		updateYuri('2b','i')
		cw('y', "Muy bien.")
	elseif cl == 399 then
		cw('y', "Pues resulta que me gustan mucho los cuchillos.")
	elseif cl == 400 then
		cw('y', "Son tan hermosos...")
	elseif cl == 401 then
		updateYuri('2b','v')
		cw('y', "¡N-no puedo evitarlo!")
	elseif cl == 402 then
		cw('y', "No sé que es lo que tienen...")
	elseif cl == 403 then
		cw('y', "La combinación de la artesanía con la sensación de peligro, quizás...")
	elseif cl == 404 then
		updateYuri('4b','b2')
		cw('y', "Jo, ¿pero qué estoy diciendo?")
	elseif cl == 405 then
		cw('y', "Por favor, no pienses que soy rara por esto...")
	elseif cl == 406 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 407 then
		cw('y', "Te estás riendo de mí...")
	elseif cl == 408 then
		cw('mc', "No, no me río de ti.")
	elseif cl == 409 then
		cw('mc', "Es solo que me resulta gracioso lo nerviosa que te pones con esto.")
	elseif cl == 410 then
		cw('mc', "Es, bueno, es un tema interesante, supongo.")
	elseif cl == 412 then
		cw('mc', "Aunque pienso que te pega.")
	elseif cl == 413 then
		updateYuri('2b','t')
		cw('y', "¿Me pega?")
	elseif cl == 414 then
		cw('mc', "Sí, es bastante intenso. ¡Ja, ja, ja!")
	elseif cl == 415 then
		cw('mc', "Además, es un cuchillo muy chulo, eso es innegable.")
	elseif cl == 416 then
		updateYuri('2b','u')
		cw('y', "Lo es, ¿verdad?")
	elseif cl == 417 then
		cw('bl', "Yuri se vuelve a relajar.")
	elseif cl == 418 then
		updateYuri('1b','a')
		cw('y', "¿Te gustaría cogerlo?")
	elseif cl == 419 then
		cw('mc', "Claro, déjamelo.")
	elseif cl == 420 then
		cw('bl', "Yuri me pasa en cuchillo con cuidado con el mango apuntando a mí.")
	elseif cl == 421 then
		cw('bl', "Lo cojo y le doy un par de vueltas.")
	elseif cl == 422 then
		cw('bl', "Pesa bastante, y no parece muy endeble.")
	elseif cl == 423 then
		cw('bl', "¿Dónde narices se puede conseguir un cuchillo así?")
	elseif cl == 424 then
		cw('bl', "La curiosidad me gana y decido comprobar cómo de afilado está con mi dedo índice.")
	elseif cl == 425 then
		cw('mc', "¡Au!")
	elseif cl == 426 then
		updateYuri('3b','n')
		cw('y', "¡¡" .. player .. "!!")
	elseif cl == 427 then
		cw('y', "¡¿Por qué has hecho eso?!")
	elseif cl == 428 then
		cw('mc', "¡No me esperaba que estuviese tan afilado!")
	elseif cl == 429 then
		cw('mc', "Apenas lo he tocado.")
	elseif cl == 430 then
		cw('y', "¡E-es culpa mía!")
	elseif cl == 431 then
		updateYuri('3b','o')
		cw('y', "Debería haberte avisado...")
	elseif cl == 432 then
		cw('y', "Este cuchillo está muy afilado.")
	elseif cl == 433 then
		cw('y', "Puede cortar la carne como si de papel se tratase.")
	elseif cl == 434 then
		updateYuri('2b','v')
		cw('y', "Oh no...")
	elseif cl == 435 then
		cw('bl', "Una gota de sangre empieza a deslizarse por mi dedo.")
	elseif cl == 436 then
		cw('bl', "Yuri coge mi mano y le echa un vistazo a mi herida.")
	elseif cl == 437 then
		updateYuri('2b','t')
		cw('y',"Ah...")
	elseif cl == 438 then
		cw('bl', "Tras mirarla, se le nota que ha entrado en pánico.")
	elseif cl == 439 then
		cw('mc', "Si te da grima o algo puedo ir a lavarme...")
	elseif cl == 440 then
		cw('mc', "¡A-ah!")
	elseif cl == 441 then
		cw('bl', "Sin previo aviso, Yuri pone mi dedo en su boca y lame la herida.")
	elseif cl == 442 then
		cw('bl', "Noto como su lengua envuelve mi dedo.")
	elseif cl == 443 then
		cw('bl', "Sorprendido, aparto la mano instintivamente.")
	elseif cl == 444 then
		cw('y', "O-oh...")
	elseif cl == 445 then
		updateYuri('3b','o')
		cw('y', "¡Perdóname, por favor!")
	elseif cl == 446 then
		cw('y', "¡Lo he hecho sin pensar!")
	elseif cl == 447 then
		updateYuri('4b','c2')
		cw('y', "Yo...")
	elseif cl == 448 then
		cw('bl', "Yuri baja la mirada mientras se pone roja.")
	elseif cl == 449 then
		cw('mc', "Yuri...")
	elseif cl == 450 then
		cw('y', "Es lo más vergonzoso que he hecho nunca...")
	elseif cl == 451 then
		cw('y', "¿¿Cómo he podido hacer algo así??")
	elseif cl == 452 then
		cw('y', "Lo siento, lo siento...")
	elseif cl == 453 then
		cw('mc',"Ah...")
	elseif cl == 454 then
		cw('bl', "A ver, sí, era raro y me ha venido de sopetón...")
	elseif cl == 455 then
		cw('bl', "Pero supongo que solo querías ayudar, ¿no?")
	elseif cl == 456 then
		cw('mc', "Yuri, creo que estás exagerando un poco...")
	elseif cl == 457 then
		cw('y', "Eeeeeh...")
	elseif cl == 458 then
		cw('bl', "No levanta la mirada.")
	elseif cl == 459 then
		cw('bl', "¿Y si no se recupera de esto?")
	elseif cl == 460 then
		cw('mc', "Muy bien, ¿sabes qué?")
	elseif cl == 461 then
		cw('bl', "Esto va a ser estúpido, pero de perdidos al río.")
	elseif cl == 462 then
		cw('bl', "Cojo la mano de Yuri y le lamo el dedo índice también.")
	elseif cl == 463 then
		updateYuri('3b','n')
		cw('y', "¡¡" .. player .. "!!")
	elseif cl == 464 then
		cw('y', "¿E-en serio acabas de hacer eso?")
	elseif cl == 465 then
		cw('mc', "A-ahora estamos en paz...")
	elseif cl == 466 then
		updateYuri('3b','v')
		cw('y',"...")
	elseif cl == 467 then
		cw('bl', "Yuri me mira como si hubiera hecho algo malo.")
	elseif cl == 468 then
		cw('mc', "Ja, ja, ja...")
	elseif cl == 469 then
		cw('mc', "Sabía que era mala idea...")
	elseif cl == 470 then
		cw('bl', "De no ser por el dulce aroma del jazmín, la tensión se podría cortar con un cuchillo.")
	elseif cl == 471 then
		updateYuri('1b','u')
		cw('y', "" .. player .. ", eres un bicho raro.")
	elseif cl == 472 then
		cw('bl', "Yuri ríe con timidez.")
	elseif cl == 473 then
		cw('mc', "¿Eh?")
	elseif cl == 474 then
		cw('bl', "¿Yuri me está llamando raro a mí?")
	elseif cl == 475 then
		cw('bl', "No sé cómo responder.")
	elseif cl == 476 then
		updateYuri('1b','f')
		cw('y', "¿Dónde guardas las tiritas?")
	elseif cl == 477 then
		cw('mc',"Ah...")
	elseif cl == 478 then
		cw('mc', "No creo que me haga falta.")
	elseif cl == 479 then
		cw('mc', "Es un corte muy pequeño.")
	elseif cl == 480 then
		cw('mc', "Mira, ya ha parado de sangrar.")
	elseif cl == 481 then
		updateYuri('1b','a')
		cw('y', "Ya veo...")
	elseif cl == 482 then
		cw('y', "Menos mal.")
	elseif cl == 483 then
		cw('bl', "La tensión se disipa rápidamente.")
	elseif cl == 484 then
		cw('bl', "Y cada uno sigue con lo que estaba haciendo.")
	elseif cl == 485 then
		cw('bl', "Observo cómo el cuchillo de Yuri corta la cinta cómo si se tratase de mero aire.")
	elseif cl == 486 then
		cw('bl', "Mientras, continúo con mis papeles.")
	
	elseif cl == 487 then
		event_initstart('wipe')
	elseif cl == 488 then
		cw('bl', "Cuando acabamos de pegar los papeles a las cintas, las extendemos una al lado de la otra.")
	elseif cl == 489 then
		cw('bl', "Ha salido mejor de lo que me esperaba y será una cortina muy eficaz.")
	elseif cl == 490 then
		cw('mc', "Está genial.")
	elseif cl == 491 then
		cw('mc', "Buen trabajo, Yuri.")
	elseif cl == 492 then
		updateYuri('1b','q',80)
		cw('y', "Gracias...")
	elseif cl == 493 then
		cw('y', "No es más que algo que vi en Internet.")
	elseif cl == 494 then
		updateYuri('1b','a')
		cw('y', "¿Listo para la siguiente tarea?")
	elseif cl == 495 then
		cw('mc', "Sí, vamos allá.")
	elseif cl == 496 then
		cw('mc', "¿Qué tienes pensado hacer?")
	elseif cl == 497 then
		cw('y', "Me gustaría crear una pancarta.")
	elseif cl == 498 then
		cw('y', "Por eso quería que comprases la pintura.")
	elseif cl == 499 then
		cw('mc', "Ah, es verdad.")
	elseif cl == 500 then
		cw('bl', "Una de ellas era un kit de acuarelas.")
	elseif cl == 501 then
		updateYuri('1b','f')
		cw('y', "Vamos a necesitar seis vasos de agua, uno para cada color.")
	elseif cl == 502 then
		cw('y', "¿Te importaría ir a por ellos?")
	elseif cl == 503 then
		cw('mc', "Por supuesto.")
	elseif cl == 504 then
		cw('mc', "Seis vasos de agua...")
	elseif cl == 505 then
		cw('mc', "Vuelvo en un minuto.")
	elseif cl == 506 then
		updateYuri('1b','a')
		cw('y', "Muchas gracias.")
	elseif cl == 507 then
		updateYuri('2b','f')
		cw('y', "Ah, y con un poquito de agua bastará.")
	elseif cl == 508 then
		cw('y', "Si los llenas demasiado quedará demasiado diluido.")
		
	elseif cl == 509 then
		event_initstart('wipe')
		cw('bl', "Teniendo en cuenta el consejo de Yuri, decido utilizar vasos pequeños de plástico en lugar de vasos de cristal más grandes.")
	elseif cl == 510 then
		cw('bl', "Los pongo en una bandeja para que no se manche el suelo y la llevo a mi habitación.")
	elseif cl == 511 then
		cw('mc',"¿Yuri?")
	elseif cl == 512 then
		updateYuri('1b','d',80)
		cw('y', "¿Sí?")
	elseif cl == 513 then
		cw('bl', "Al llegar veo a Yuri apresuradamente poniéndose bien la manga.")
	elseif cl == 514 then
		cw('mc', "Ah, nada...")
	elseif cl == 515 then
		cw('mc', "Tu cara está un poco roja.")
	elseif cl == 516 then
		cw('mc', "¿Hace demasiado calor o algo?")
	elseif cl == 517 then
		updateYuri('3b','q')
		cw('y', "Ah...")
	elseif cl == 518 then
		cw('y', "¡¡No, qué va!!")
	elseif cl == 519 then
		cw('y', "Todo esta bien, así que...")
	elseif cl == 520 then
		cw('y', "Vamos a mezclar la pintura.")
	elseif cl == 521 then
		cw('bl', "Yuri cambia rápidamente de tema y empieza a sacar las acuarelas para después meterlas en los vasos.")
	elseif cl == 522 then
		updateYuri('1b','a')
		cw('y', "Así que...")
	elseif cl == 523 then
		cw('y', "Había pensado en hacer algo simple pero que quede bien.")
	elseif cl == 524 then
		cw('y', "Me gustaría pintar un degradado en la pancarta.")
	elseif cl == 525 then
		cw('y', "Empezaremos con los colores del amanecer, luego los del día, después el anochecer y por último, la noche.")
	elseif cl == 526 then
		cw('y', "Cuando se seque, escribiré una frase motivacional.")
	elseif cl == 527 then
		cw('y', "Podemos colgarlo en la pared tras el podio.")
	elseif cl == 528 then
		cw('mc', "Ah, genial.")
	elseif cl == 529 then
		cw('mc', "¿Qué vas a escribir?")
	elseif cl == 530 then
		updateYuri('2b','m')
		cw('y', "Pues...")
	elseif cl == 531 then
		cw('y', "Sorpresa.")
	elseif cl == 532 then
		cw('bl', "Yuri me sonríe.")
	elseif cl == 533 then
		cw('mc', "Si tú lo dices...")
	elseif cl == 534 then
		hideYuri()
		cw('bl', "Tras desplegar la pancarta, nos arrodillamos en sitios opuestos para no molestarnos el uno al otro.")
	elseif cl == 535 then
		cw('bl', "Yuri utiliza un pincel para delimitar los colores dibujando varios puntitos por toda la pancarta.")
	elseif cl == 536 then
		cw('mc', "Me recuerda a primaria...")
	elseif cl == 537 then
		cw('bl', "Es verdad que pintar una pancarta como esta parece sacado de un proyecto de plástica de entonces.")
	elseif cl == 538 then
		cw('bl', "Es relajante.")
	elseif cl == 539 then
		updateYuri('2b','t',80)
		cw('y',"Ah...")
	elseif cl == 540 then
		cw('y', "¡Perdona si te parece demasiado infantil!")
	elseif cl == 541 then
		cw('mc', "No, no me refería a eso.")
	elseif cl == 542 then
		cw('mc', "Es bastante divertido, ¿sabes?")
	elseif cl == 543 then
		updateYuri('1b','s')
		cw('y', "Sí...")
	elseif cl == 544 then
		cw('y', "Sí que es divertido.")
	elseif cl == 545 then
		cw('y', "Me alegra de que opines lo mismo.")
	elseif cl == 546 then
		cw('bl', "Yuri para de pintar un momento y se queda pensativa.")
	elseif cl == 547 then
		updateYuri('2b','l')
		cw('y', "En mi caso...")
	elseif cl == 548 then
		cw('y', "No necesito salir a hacer locuras para pasármelo bien.")
	elseif cl == 549 then
		cw('y', "De hecho, ni siquiera me suele apetecer.")
	elseif cl == 550 then
		updateYuri('2b','f')
		cw('y', "Simplemente me gusta poder pasar el tiempo con otra persona...")
	elseif cl == 551 then
		cw('y', "Aunque sea con algo simple, como leer. Ni siquiera importa si hablamos o no.")
	elseif cl == 552 then
		updateYuri('2b','a')
		cw('y', "Tener un amigo al lado me hace sentir mucho mejor.")
	elseif cl == 553 then
		cw('y', "Creo que eso es todo lo que necesito para ser feliz.")
	elseif cl == 554 then
		cw('mc', "¿Ah, sí?...")
	elseif cl == 555 then
		cw('bl', "Aunque Yuri y yo seamos tan diferentes, sé a lo que se refiere.")
	elseif cl == 556 then
		cw('bl', "Me siento igual respecto a mis gustos, como el anime o los videojuegos. Simplemente compartirlos con alguien más me hace feliz.")
	elseif cl == 557 then
		cw('mc', "Creo que me siento igual.")
	elseif cl == 558 then
		cw('bl', "Yuri sonríe.")
	elseif cl == 559 then
		updateYuri('1b','m')
		cw('y', "Sabía que lo entenderías...")
	elseif cl == 560 then
		cw('bl', "Yuri se inclina para coger un pincel sin usar.")
	elseif cl == 561 then
		cw('bl', "Pero me muevo al mismo tiempo, y acabo golpeando mi cabeza contra la suya.")
	elseif cl == 562 then
		updateYuri('3b','n')
		cw('y', "¡Aauuuu!")
	elseif cl == 563 then
		cw('mc', "¡L-lo siento!")
	elseif cl == 564 then
		cw('bl', "Yuri se aparta y yo levanto las manos sorprendido.")
	elseif cl == 565 then
		cw('mc', "¿Te has hecho daño?")
	elseif cl == 566 then
		updateYuri('2b','v')
		cw('y', "N-no, estoy bien.")
	elseif cl == 567 then
		cw('y', "Es solo... que me he asustado.")
	elseif cl == 568 then
		cw('y', "Lo siento, te tendría que haber pedido que me lo pasaras...")
	elseif cl == 569 then
		cw('mc', "No es tu culpa.")
	elseif cl == 570 then
		cw('mc', "Uy, tu cara...")
	elseif cl == 571 then
		cw('bl', "Hay gotitas de pintura en su cuello y en su cara.")
	elseif cl == 572 then
		updateYuri('2b','t')
		cw('y', "¿Tengo algo en la cara?")
	elseif cl == 573 then
		cw('mc', "Sí, te he pintado sin querer...")
	elseif cl == 574 then
		cw('mc', "¡Perdona, ha sido mi culpa!")
	elseif cl == 575 then
		cw('mc', "Voy a por una toalla.")
	elseif cl == 576 then
		hideYuri()
		cw('bl', "Me voy rápidamente a por una toalla y la mojo con agua caliente.")
	elseif cl == 577 then
		cw('bl', "Vuelvo a mi cuarto y me arrodillo frente a ella.")
	elseif cl == 578 then
		persistent.clear[6] = 1
		if xaload == 0 then
			savepersistent()
		end
		bgUpdate('cg/y_cg3_base')
		cw('mc', "Toma...")
	elseif cl == 579 then
		cw('bl', "Paso la toalla con cuidado por su cara y por su cuello.")
	elseif cl == 580 then
		cgUpdate('y_cg3_exp1')
		cw('y', "Ah...")
	elseif cl == 581 then
		cw('mc', "¿Pasa algo?")
	elseif cl == 582 then
		cw('y', "Está caliente... No me lo esperaba.")
	elseif cl == 583 then
		cw('mc', "Lo siento.")
	elseif cl == 584 then
		cw('mc', "No quería usar agua fría.")
	elseif cl == 585 then
		cw('bl', "Cuando acabo, aparto mi mano.")
	elseif cl == 586 then
		cw('bl', "Pero Yuri me agarra la mano de repente.")
	elseif cl == 587 then
		cgHide()
		cw('y', "Espera...")
	elseif cl == 588 then
		mc "¿Eh?"
	elseif cl == 589 then
		cgUpdate('y_cg3_exp1')
		cw('y', "Solo un poquito más.")
	elseif cl == 590 then
		cw('y', "Se está tan bien...")
	elseif cl == 591 then
		mc "Ah..."
	elseif cl == 592 then
		cw('bl', "Mantengo mi mano en el cuello de Yuri.")
	elseif cl == 593 then
		cgHide()
		cw('bl', "Me mira a los ojos.")
	elseif cl == 594 then
		cw('bl', "Es la misma expresión intensa que pone al leer un libro.")
	elseif cl == 595 then
		cw('bl', "Como si estuviera en trance, rodeada de sus pensamientos.")
	elseif cl == 596 then
		cw('bl', "Respira suavemente a través de sus labios entreabiertos.")
	elseif cl == 597 then
		cw('bl', "¿Qué está pasando?")
	elseif cl == 598 then
		cw('bl', "¿Será el aroma de jazmín lo que me está mareando?")
	elseif cl == 599 then
		cw('bl', "Los suaves dedos de Yuri envolviendo mi muñeca me provocan un cosquilleo por el brazo.")
	elseif cl == 600 then
		cw('bl', "Y de repente, parece que su cara esté más cerca de la mía que antes.")
	elseif cl == 601 then
		y "Ah..."
	elseif cl == 602 then
		cw('bl', "Yuri se aparta lentamente.")
	elseif cl == 603 then
		cw('y', "Lo siento.")
	elseif cl == 604 then
		cw('y', "Hoy tengo un día un poco raro.")
	elseif cl == 605 then
		cw('y', "No pretendía quedarme en babia.")
	elseif cl == 606 then
		cw('mc', "N-no pasa nada.")
	elseif cl == 607 then
		bgUpdate('bedroom')
		cw('bl', "Tal y como empezó, acabó.")
	elseif cl == 608 then
		cw('bl', "Yuri vuelve coger su pincel.")
	elseif cl == 609 then
		cw('bl', "Pero sus movimientos son más torpes, como si no se pudiese concentrar.")
	elseif cl == 610 then
		cw('bl', "Mantengo el silencio, forzado a ignorar lo que acababa de pasar.")
	elseif cl == 611 then
		cw('bl', "Cojo mi pincel con recelo y sigo el ejemplo de Yuri.")
	
	elseif cl == 612 then
		event_initstart('wipe')
	elseif cl == 613 then
		cw('mc', "Esto debería bastar...")
	elseif cl == 614 then
		cw('bl', "Termino el cielo nocturno pintando puntitos blancos como si fueran estrellas.")
	elseif cl == 615 then
		cw('bl', "Mirándola de lejos, nos ha quedado una pancarta muy bonita y natural.")
	elseif cl == 616 then
	updateYuri('1b','a',80)
		cw('y', "Me parece que ha quedado mejor de lo que me esperaba.")
	elseif cl == 617 then
		cw('y', "Estoy muy contenta con los resultados.")
	elseif cl == 618 then
		cw('mc', "Sí, yo también.")
	elseif cl == 619 then
		cw('mc', "¿Vas a añadir la frase ahora?")
	elseif cl == 620 then
	updateYuri('1b','f')
		cw('y', "Ah, todavía no...")
	elseif cl == 621 then
		cw('y', "Tiene que secarse primero.")
	elseif cl == 622 then
		cw('mc', "Es verdad, ¿pero no tardará bastante?")
	elseif cl == 623 then
	updateYuri('2b','h')
		cw('y', "Bueno...")
	elseif cl == 624 then
		cw('y', "Creo que lo mejor es dejarlo aquí y que lo traigas mañana por la mañana.")
	elseif cl == 625 then
	updateYuri('2b','f')
		cw('y', "Puedo escribir lo que sea en la clase antes de empezar.")
	elseif cl == 626 then
		cw('y', "¿Te parece correcto?")
	elseif cl == 627 then
		cw('mc', "Sí, claro.")
	elseif cl == 628 then
	updateYuri('1b','a')
		cw('y', "Perfecto.")
	elseif cl == 629 then
		cw('y', "En ese caso...")
	elseif cl == 630 then
		cw('y', "Creo que ya no nos queda nada más por hacer.")
	elseif cl == 631 then
		cw('mc', "Fiu...")
	elseif cl == 632 then
	updateYuri('1b','c')
		cw('y', "Ja, ja, ja.")
	elseif cl == 633 then
		cw('y', "Lo dices como si te alegraras de que se haya acabado.")
	elseif cl == 634 then
	updateYuri('1b','a')
		cw('y', "¿Me equivocaba al pensar que lo habías disfrutado aunque sea un poquito?")
	elseif cl == 635 then
		cw('mc', "No, no es eso.")
	elseif cl == 636 then
		cw('mc', "Es solo que me alegro de haber conseguido hacerlo todo.")
	elseif cl == 637 then
	updateYuri('2b','a')
		cw('y', "Entiendo.")
	elseif cl == 638 then
		cw('y', "Yo también.")
	elseif cl == 639 then
		cw('y', "Al principio, me preocupaba el tiempo.")
	elseif cl == 640 then
		cw('y', "Tendré que hacer la cena dentro de nada.")
	elseif cl == 641 then
	mc "Ah..."
	elseif cl == 642 then
		cw('mc', "¿Entonces no te queda más tiempo?")
	elseif cl == 643 then
		cw('bl', "En el fondo, deseaba tener un poco más de tiempo para nosotros solos después de acabar...")
	elseif cl == 644 then
	updateYuri('2b','l')
		cw('y', "Bueno...")
	elseif cl == 645 then
	y "..."
	elseif cl == 646 then
		cw('bl', "Yuri se queda pensativa.")
	elseif cl == 647 then
	updateYuri('2b','v')
		cw('y', "C-creo que no sería muy responsable quedarme mucho más tiempo...")
	elseif cl == 648 then
		cw('y', "¡Lo siento!")
	elseif cl == 649 then
		cw('y', "A mí también me hubiese gustado que tuviéramos más tiempo...")
	elseif cl == 650 then
		cw('mc', "Yo tengo la culpa.")
	elseif cl == 651 then
		cw('mc', "Perdona por ser tan lento.")
	elseif cl == 652 then
	updateYuri('1b','t')
		cw('y', "No, qué va, no es tu culpa para nada.")
	elseif cl == 653 then
		cw('y', "Y lo importante es que lo hemos podido acabar todo a tiempo, ¿no?")
	elseif cl == 654 then
		cw('mc', "Exacto...")
	elseif cl == 655 then
	updateYuri('1b','u')
		cw('y', "Así que...")
	elseif cl == 656 then
		cw('y', "No debería estar decepcionada... ni nada.")
	elseif cl == 657 then
		cw('bl', "Yuri parece estar algo alicaída mientras recoge sus cosas.")
	elseif cl == 658 then
		cw('bl', "La entiendo.")
	elseif cl == 659 then
		cw('bl', "Parece que no suele tener la oportunidad de pasar mucho tiempo con amigos.")
	elseif cl == 660 then
		cw('bl', "Pero esto no significa que vaya a ser la última vez que pase...")
	
	elseif cl == 661 then
	event_initstart('wipe','house')
	elseif cl == 662 then
		cw('bl', "Cuando termina de recoger, la acompaño a la entrada.")
	elseif cl == 663 then
	updateYuri('1b','a',80)
		cw('y', "Muchas gracias por recibirme.")
	elseif cl == 664 then
		cw('mc', "No te preocupes, me alegro de haber podido ayudar.")
	elseif cl == 665 then
	scriptJump(667)
	elseif cl == 667 then
		cw('mc', "Hazme saber si necesitas que te traiga algo más mañana.")
	elseif cl == 668 then
		cw('y', "Lo haré.")
	elseif cl == 669 then
	updateYuri('1b','u')
		cw('y', "Bueno, pues...")
	elseif cl == 670 then
		cw('bl', "Yuri se pone nerviosa.")
	elseif cl == 671 then
	updateYuri('2b','u')
		cw('y', "Supongo... que nos vemos mañana.")
	elseif cl == 672 then
		cw('mc', "Espera...")
	elseif cl == 673 then
	updateYuri('2b','t')
		cw('bl', "Lo digo sin pensar.")
	elseif cl == 674 then
		cw('mc', "Lo de hoy...")
	elseif cl == 675 then
		cw('mc', "No pasa nada si no hemos tenido tanto tiempo como queríamos.")
	elseif cl == 676 then
		cw('mc', "Porque podemos repetirlo.")
	elseif cl == 677 then
		cw('mc', "Cuando quieras, puedes venir o podemos ir a dar una vuelta...")
	elseif cl == 678 then
		cw('mc', "Ah, me olvidaba que a ti no te gusta salir mu...")
	elseif cl == 679 then
	updateYuri('2b','s')
		cw('bl', "Mientras se me traba la lengua, Yuri sonríe con timidez.")
	elseif cl == 680 then
		cw('mc', "Bueno...")
	elseif cl == 681 then
		cw('mc', "Ya sabes a lo que me refiero, así que...")
	elseif cl == 682 then
	updateYuri('1b','s')
		cw('y', "" .. player .. ", eres muy considerado.")
	elseif cl == 683 then
		cw('bl', "Yuri da un paso al frente y me agarra la mano.")
	elseif cl == 684 then
	updateYuri('f_2bs')
	audioUpdate('0')
		cw('y', "Me gusta mucho eso de ti.")
	elseif cl == 685 then
		cw('mc', "Bueno...")
	elseif cl == 686 then
		cw('bl', "¿Cómo respondo a eso?")
	elseif cl == 687 then
		cw('bl', "Pero ni siquiera tengo la oportunidad ya que Yuri aparta su mano.")
	elseif cl == 688 then
	updateYuri('3b','n')
		cw('y', "¿S-Sayori?")
	elseif cl == 689 then
	mc "¡¿Eh?!"
	elseif cl == 690 then
	updateSayori('1b','l',10)
	updateYuri('3b','n',150)
	s "Ah..."
	elseif cl == 691 then
		cw('s', "H-hola, " .. player .. "...")
	elseif cl == 692 then
		cw('mc', "¡Sayori!")
	elseif cl == 693 then
		cw('mc', "No es lo que parece...")
	elseif cl == 694 then
	updateSayori('1b','q')
		cw('s', "Je, je, je~")
	elseif cl == 695 then
		cw('s', "No pasa nada, " .. player .. ".")
	elseif cl == 696 then
	updateSayori('1b','a')
		cw('s', "Solo me pasaba para saludar~")
	elseif cl == 697 then
	updateYuri('3b','q')
		cw('y', "Mmm...")
	elseif cl == 698 then
		cw('y', "Bueno, me alegro de verte...")
	elseif cl == 699 then
	updateYuri('3b','v')
		cw('y', "¡Lo siento, pero me tengo que ir ya!")
	elseif cl == 700 then
	updateSayori('1b','h')
		cw('s', "Oh, ¿en serio?")
	elseif cl == 701 then
		cw('s', "Qué pena...")
	elseif cl == 702 then
	updateYuri('2b','t')
		cw('y', "Lo siento...")
	elseif cl == 703 then
		cw('y', "Pero nos vamos a ver todos mañana en el festival, así que...")
	elseif cl == 704 then
		cw('y', "No pasa nada, ¿verdad?")
	elseif cl == 705 then
	updateSayori('4b','q')
		cw('s', "¡Claro!")
	elseif cl == 706 then
		cw('bl', "Sayori sonríe.")
	elseif cl == 707 then
	updateSayori('4b','a')
	updateYuri('4b','c2')
		cw('y', "S-sí, así que...")
	elseif cl == 708 then
		cw('y', "¡Nos vemos mañana!")
	elseif cl == 709 then
	hideYuri()
		cw('bl', "Avergonzada, Yuri se marcha corriendo.")
	elseif cl == 710 then
		cw('bl', "Sayori le dice adiós.")
	elseif cl >= 711 then
	ch4_end()
	end
end

function ch4_end()
	if cl < 711 then
		scriptJump(711)
	elseif cl == 711 then
		audioUpdate('10')
		updateSayori('1b','a',80)
		cw('mc', "Sayori...")
	elseif cl == 712 then
		cw('mc', "¡Pensaba que no querías venir hoy!")
	elseif cl == 713 then
		updateSayori('2b','l')
		cw('s', "Ja, ja, ja, bueno...")
	elseif cl == 714 then
		cw('s', "Había intentado quedarme en mi cuarto...")
	elseif cl == 715 then
		cw('s', "Pero mi imaginación me estaba jugando una mala pasada...")
	elseif cl == 716 then
		updateSayori('1b','y')
		cw('s', "Así que quería venir a echar un vistazo por mí misma.")
	elseif cl == 717 then
		cw('mc', "¿Echar un vistazo a qué?")
	elseif cl == 718 then
		cw('mc', "¿De qué hablas?")
	elseif cl == 719 then
		cw('s', "Ya sabes...")
	elseif cl == 720 then
			if savevalue == "Natsuki" or savevalue == "n" then
				cw('s', "Lo bien que te lo estabas pasando con Natsuki.")
			else
				cw('s', "Lo bien que te lo estabas pasando con Yuri.")
			end
	elseif cl == 721 then
		cw('s', "Y cómo de cercanos os habéis vuelto.")
	elseif cl == 722 then
		updateSayori('1b','t')
		cw('s', "Me hace... muy feliz...")
	elseif cl == 723 then
		cw('s', "Has hecho muy buenas amigas.")
	elseif cl == 724 then
		cw('s', "Eso es lo más importante para mí.")
	elseif cl == 725 then
		cw('bl', "Empiezan a caer lágrimas por la cara de Sayori.")
	elseif cl == 726 then
		updateSayori('4b','v')
		cw('s', "¡Eso es lo más importante!")
	elseif cl == 727 then
		cw('s', "¿Por qué me siento así, " .. player .. "?")
	elseif cl == 728 then
		cw('s', "Se supone que debería alegrarme por ti.")
	elseif cl == 729 then
		updateSayori('4b','w')
		cw('s', "¿Por qué siento como si mi corazón se estuviera partiendo en dos?")
	elseif cl == 730 then
		cw('s', "Me duele...")
	elseif cl == 731 then
		cw('s', "Me duele mucho...")
	elseif cl == 732 then
		cw('s', "¡Todo sería mejor si pudiese desaparecer!")
	elseif cl == 733 then
		cw('mc', "¡Sayori, no digas eso!")
	elseif cl == 734 then
		updateSayori('1b','w')
		cw('s', "¡Es la verdad, " .. player .. "!")
	elseif cl == 735 then
		cw('s', "¡Si no estuviese aquí, no tendrías que malgastar tu energía conmigo!")
	elseif cl == 736 then
		cw('s', "¡No tendrías que aguantar mi egoísmo!")
	elseif cl == 737 then
		updateSayori('1b','v')
		cw('s', "Monika tenía razón.")
	elseif cl == 738 then
		cw('s', "Debería...")
	elseif cl == 739 then
		cw('mc', "¿Monika?")
	elseif cl == 740 then
		cw('mc', "¿En qué tenía razón?")
	elseif cl == 741 then
		cw('s',"...")
	elseif cl == 742 then
		cw('mc',"Sayori...")
	elseif cl == 743 then
		cw('mc', "Lo que he dicho antes es verdad.")
	elseif cl == 744 then
		cw('mc', "No voy a dejar que esto continúe.")
	elseif cl == 745 then
		cw('mc', "No me importa preocuparme por mí tanto como tu imaginación te lo hace creer.")
	elseif cl == 746 then
		cw('mc', "Es algo que me hace feliz.")
	elseif cl == 747 then
		cw('mc', "Es algo que no cambiaría por nada en el mundo.")
	elseif cl == 748 then
		cw('mc', "Así que aunque me lleve toda la vida...")
	elseif cl == 749 then
		cw('mc', "Voy a estar a tu lado para que no sientas más dolor.")
	elseif cl == 750 then
		updateSayori('1b','k')
		cw('s', "P-pero...")
	elseif cl == 751 then
		cw('bl', "Sayori aparta la mirada.")
	elseif cl == 752 then
		cw('bl', "Pongo mi mano en su hombro para animarla.")
	elseif cl == 753 then
		cw('s', "Tengo miedo, " .. player .. ".")
	elseif cl == 754 then
		cw('s', "Tengo mucho miedo...")
	elseif cl == 755 then
		cw('mc', "¿De qué tienes miedo, Sayori?")
	elseif cl == 756 then
		cw('s', "Tengo miedo de...")
	elseif cl == 757 then
		cw('s', "De que me gustes más de lo que te gusto yo...")
	elseif cl == 758 then
		cw('mc', "¿Sayori?")
	elseif cl == 759 then
		updateSayori('1b','u')
		cw('s', "Es cierto, ¿verdad?")
	elseif cl == 760 then
		cw('s', "He sido débil y me has empezado a gustar demasiado...")
	elseif cl == 761 then
		cw('s', "Yo misma me lo he buscado.")
	elseif cl == 762 then
		cw('s',player.."...")
	elseif cl == 763 then
		updateSayori('4b','w')
		cw('s', "¡Te quiero tanto que me quiero morir!")
	elseif cl == 764 then
		cw('s', "¡Eso es lo que siento!")
	elseif cl == 765 then
		updateSayori('2b','v')
		cw('s', "Y... y...")
	elseif cl == 766 then
		cw('mc', "Para ya...")
	elseif cl == 767 then
		cw('mc', "No quiero que sufras más.")
	elseif cl == 768 then
		cw('bl', "Bajo la mano por el brazo de Sayori hasta agarrar su mano con la mía.")
	elseif cl == 769 then
		cw('mc', "¿Recuerdas que te dije que siempre sé que es lo que más te conviene?")
	elseif cl == 770 then
		cw('mc', "¿Todavía me crees?")
	elseif cl == 771 then
		cw('bl', "Muda, Sayori asiente.")
	elseif cl == 772 then
		cw('mc', "Aunque no entiendas tus propios sentimientos...")
	elseif cl == 773 then
		cw('mc', "Yo sé qué es lo que necesitas ahora mismo.")
	elseif cl == 774 then
		cw('mc', "Y es lo que te voy a dar.")
	elseif cl == 775 then
		hideAll()
		bgUpdate('black')
		menutext = 'Sayori...'
		choices = {"Te quiero.","Siempre serás mi mejor amiga."}
		choice_enable()
	elseif cl >= 776 then
		if choicepick == "Te quiero." or choicepick == 's_yes' then
			choicepick = 's_yes'
			ch4_end_yes()
		else
			choicepick = 's_no'
			ch4_end_no()
		end
		choices = {''}
	end
end

function ch4_end_yes()
	if cl == 776 then
	bgUpdate('house')
	updateSayori('2b','v',80)
	mc "Te quiero."
	elseif cl == 777 then
	updateSayori('1b','v')
		cw('s', "¿Eh?")
	elseif cl == 778 then
		cw('mc', "Eso es lo que siento de verdad.")
	elseif cl == 779 then
		cw('mc', "Así que... es imposible que te guste más de lo que me gustas tú.")
	elseif cl == 780 then
		cw('mc', "Debería haberme dado cuenta antes.")
	elseif cl == 781 then
		cw('mc', "Pero todo este tiempo en el club,")
	elseif cl == 782 then
		cw('mc', "hacer amigas nuevas,")
	elseif cl == 783 then
		cw('mc', "y pasármelo bien contigo cada día...")
	elseif cl == 784 then
		cw('mc', "Me ha ayudado a darme cuenta de que eres la persona más importante para mí.")
	elseif cl == 785 then
		cw('mc', "Por eso aceptaré todo lo que te pese.")
	elseif cl == 786 then
		cw('mc', "Siempre y cuando sigamos así cada día.")
	elseif cl == 787 then
		cw('mc', "Contigo a mi lado...")
	elseif cl == 788 then
		cw('mc', "Entonces sé que seremos felices.")
	elseif cl == 789 then
	cw('s',player.."...")
	elseif cl == 790 then
		persistent.clear[9] = 1
		if xaload == 0 then
			savepersistent()
		end
		hideAll()
		bgUpdate('cg/s_cg3')
		cw('bl', "De repente, Sayori me abraza con mucha fuerza.")
	elseif cl == 791 then
	cw('s',player.."...")
	elseif cl == 792 then
		cw('s', "¿Seguro... que esto está bien?")
	elseif cl == 793 then
		cw('mc', "Sí.")
	elseif cl == 794 then
		cw('bl', "Cojo a Sayori de las manos y la acerco.")
	elseif cl == 795 then
		cw('mc', "No me tendrás que dejar ir nunca más.")
	elseif cl == 796 then
		cw('s', "Te quiero, " .. player .. ".")
	elseif cl == 797 then
		cw('s', "Quiero estar contigo para siempre.")
	elseif cl == 798 then
		cw('mc', "Yo también.")
	elseif cl == 799 then
	s "..."
	elseif cl == 800 then
		cw('bl', "Noto que Sayori empieza a aflojar su abrazo.")
	elseif cl == 801 then
		cw('s', "¿Qué es esto?")
	elseif cl == 802 then
		cw('mc', "¿Sayori?")
	elseif cl == 803 then
		cw('s', "Se supone que debería estar feliz ahora mismo...")
	elseif cl == 804 then
		cw('s', "Siempre había pensado que este sería el momento más feliz de toda mi vida.")
	elseif cl == 805 then
		cw('s', "¿Pero por qué?")
	elseif cl == 806 then
		cw('s', "Incluso ahora...")
	elseif cl == 807 then
		cw('s', "¿Por qué no se van los nubarrones?")
	elseif cl == 808 then
		cw('s', "Siguen ahí, " .. player .. "...")
	elseif cl == 809 then
		cw('mc', "No pasa nada...")
	elseif cl == 810 then
		cw('mc', "Las cosas tardarán un tiempo en mejorar.")
	elseif cl == 811 then
		cw('mc', "Pero estaré siempre ahí, pase lo que pase.")
	elseif cl == 812 then
		cw('mc', "Eso es todo lo que importa ahora mismo.")
	elseif cl == 813 then
		cw('s', "V-vale...")
	elseif cl == 814 then
		cw('s', "Confío... en ti.")
	elseif cl == 815 then
	bgUpdate('house')
	updateSayori('1b','v',80)
		cw('bl', "Sayori y yo terminamos el abrazo lentamente.")
	elseif cl == 816 then
		cw('mc', "Así que...")
	elseif cl == 817 then
		cw('mc', "Supongo que el festival de mañana contará como... nuestra primera cita, ¿eh?")
	elseif cl == 818 then
	updateSayori('1b','y')
		cw('s', "Je, je, je...")
	elseif cl == 819 then
		cw('s', "¿De qué estás hablando?")
	elseif cl == 820 then
		cw('s', "Sabes que no quiero pensar en esas cosas.")
	elseif cl == 821 then
		cw('s', "No quiero que cambie nada.")
	elseif cl == 822 then
		cw('s', "Aunque seamos... pareja.")
	elseif cl == 823 then
	updateSayori('1b','k')
		cw('s', "No creo que aguante nada más ahora mismo...")
	elseif cl == 824 then
		cw('s', "Es algo novedoso y me da bastante miedo.")
	elseif cl == 825 then
		cw('mc', "Te entiendo.")
	elseif cl == 826 then
		cw('mc', "Iremos al ritmo que tu quieras.")
	elseif cl == 827 then
	updateSayori('1b','d')
		cw('s', "Oye, " .. player .. ".")
	elseif cl == 828 then
		cw('bl', "Sayori me mira otra vez pero con una sonrisa triste.")
	elseif cl == 829 then
	updateSayori('4b','d')
		cw('s', "Aunque me deprima muchísimo...")
	elseif cl == 830 then
		cw('s', "Esto es lo mejor para mí, ¿verdad?")
	elseif cl == 831 then
		cw('mc', "¿Eh?")
	elseif cl == 832 then
		cw('bl', "No sé muy bien qué quiere decir con eso.")
	elseif cl == 833 then
		cw('mc', "¿Quieres decir que esto te entristece?")
	elseif cl == 834 then
	updateSayori('4b','k')
		cw('s', "N-no lo sé...")
	elseif cl == 835 then
		cw('s', "No comprendo qué es este sentimiento.")
	elseif cl == 836 then
		cw('s', "Sentí un gran pinchazo cuando me has dicho que me querías.")
	elseif cl == 837 then
	updateSayori('4b','d')
		cw('s', "Pero por eso mismo confío en ti.")
	elseif cl == 838 then
		cw('s', "Sabes lo que más me conviene...")
	elseif cl == 839 then
		cw('mc', "Sí.")
	elseif cl == 840 then
		cw('mc', "Sí que lo sé.")
	elseif cl == 841 then
		cw('mc', "Es mi promesa.")
	elseif cl == 842 then
	hideSayori()
		cw('bl', "Ahora estaré diciendo esto, pero nunca he dudado tanto respecto a Sayori.")
	elseif cl == 843 then
		cw('bl', "Sé que yo la quiero y que ella me quiere.")
	elseif cl == 844 then
		cw('bl', "Pero me está costando entender los sentimientos de Sayori tanto como a ella.")
	elseif cl == 845 then
		cw('bl', "Aunque pueda animarla...")
	elseif cl == 846 then
		cw('bl', "Me sigo preguntando si tendría que haber hecho algo más o algo diferente.")
	elseif cl == 847 then
		cw('bl', "Soy consciente de que seguiré dándole vueltas al asunto hasta que todo vuelva a la normalidad.")
	elseif cl == 848 then
		cw('bl', "¿Era eso a lo que se refería Sayori?")
	elseif cl == 849 then
		cw('bl', "No lo sé.")
	elseif cl == 850 then
		cw('bl', "Pero sé que voy a darlo todo.")
	elseif cl == 851 then
		cw('bl', "Sayori es la persona más importante para mí.")
	elseif cl == 852 then
		cw('bl', "Y haré todo lo que sea necesario para tener un futuro feliz con ella.")
	elseif cl == 853 then
	fadeOut(3)
	elseif cl >= 854 then
	cl = 853
	end
end

function ch4_end_no()
	if cl == 776 then
	bgUpdate('house')
	updateSayori('2b','v',80)
		cw('mc', "Siempre serás mi mejor amiga.")
	elseif cl == 777 then
		cw('mc', "Lo que necesitas es que todo siga como estaba.")
	elseif cl == 778 then
		cw('mc', "Monika me lo ha contado...")
	elseif cl == 779 then
		cw('mc', "Me ha contado que se te veía mucho más feliz cuando entré al club.")
	elseif cl == 780 then
		cw('mc', "Soy consciente de que estás sufriendo con esos sentimientos tan complicados ahora mismo.")
	elseif cl == 781 then
		cw('mc', "Pero...")
	elseif cl == 782 then
		cw('mc', "Pero confía en mí. Sé lo qué necesitas para que yo te haga feliz.")
	elseif cl == 783 then
		cw('mc', "Prometo ayudarte a dejar las cosas como estaban antes.")
	elseif cl == 784 then
	updateSayori('1b','t')
		cw('s', "Ya...")
	elseif cl == 785 then
		cw('s', "Ya lo entiendo...")
	elseif cl == 786 then
		cw('bl', "Sayori fuerza una leve sonrisa, pero mostrando su rostro lleno de desesperación.")
	elseif cl == 787 then
		cw('s', "Ja, ja, ja...")
	elseif cl == 788 then
		cw('s', "¿Esto es lo que se siente... cuando te atraviesan el corazón?")
	elseif cl == 789 then
		cw('s', "Debería componer un poema sobre esto.")
	elseif cl == 790 then
		cw('mc', "Sayori...")
	elseif cl == 791 then
		cw('s', "No pasa nada.")
	elseif cl == 792 then
		cw('s', "No es más que mi castigo, ¿recuerdas?")
	elseif cl == 793 then
		cw('s', "Por ser tan egoísta...")
	elseif cl == 794 then
		cw('s', "Así que por favor...")
	elseif cl == 795 then
		cw('s', "No te preocupes por esto.")
	elseif cl == 796 then
		cw('s', "Sé que tienes razón.")
	elseif cl == 797 then
		cw('s', "Ya sabía que no encontraría la felicidad al final de ese camino.")
	elseif cl == 798 then
		cw('s', "Por eso he venido.")
	elseif cl == 799 then
		cw('s', "Para poder escuchar lo que necesitaba escuchar.")
	elseif cl == 800 then
		cw('s', "Y otra cosa...")
	elseif cl == 801 then
		cw('s', "También tienes razón en que necesito que todo vuelva a ser como antes.")
	elseif cl == 802 then
		cw('s', "Ahora me he dado cuenta.")
	elseif cl == 803 then
		cw('s', "Es verdad que me conoces más que nadie, " .. player .. ".")
	elseif cl == 804 then
	updateSayori('4b','v')
		cw('s', "Te confiaría mi vida...")
	elseif cl == 805 then
		cw('s', "Toda mi vida...")
	elseif cl == 806 then
		cw('s', "Así que...")
	elseif cl == 807 then
	scriptJump(808)
	elseif cl == 808 then
	hideAll()
		cw('bl', "Sayori ya no puede aguantar la sonrisa.")
	elseif cl == 809 then
		cw('bl', "De repente se gira y cae de rodillas.")
	elseif cl == 810 then
		cw('s', "¡¡¡¡AAAAAaaaaAAAAAAAAHH!!!!")
	elseif cl == 811 then
		cw('bl', "Con las manos en la cara, grita tan alto como puede.")
	elseif cl == 812 then
		cw('bl', "Estoy tan sorprendido que no sé cómo reaccionar.")
	elseif cl == 813 then
	updateSayori('4b','t',80)
	s "..."
	elseif cl == 814 then
	hideSayori()
		cw('bl', "Sayori echa la mirada atrás un momento y sonría débilmente antes de salir corriendo.")
	elseif cl == 815 then
	mc "¡Sayori!"
	elseif cl == 816 then
	bl "..."
	elseif cl == 817 then
		cw('bl', "Me quedo de pie, impotente, en frente de mi casa.")
	elseif cl == 818 then
		cw('bl', "¿Por qué me siento tan mal por esto?")
	elseif cl == 819 then
		cw('bl', "No podría haber hecho nada más.")
	elseif cl == 820 then
		cw('bl', "Todo lo que puedo hacer es ayudarla con sus emociones y encaminarla por el camino correcto.")
	elseif cl == 821 then
		cw('bl', "Pero me está costando entender los sentimientos de Sayori tanto como a ella.")
	elseif cl == 822 then
		cw('bl', "Aunque pueda animarla...")
	elseif cl == 823 then
		cw('bl', "Me sigo preguntando si tendría que haber hecho algo más o algo diferente.")
	elseif cl == 824 then
		cw('bl', "Soy consciente de que seguiré dándole vueltas al asunto hasta que todo vuelva a la normalidad.")
	elseif cl == 825 then
		cw('bl', "Pero sé que voy a darlo todo.")
	elseif cl == 826 then
		cw('bl', "Sayori siempre será mi mejor amiga.")
	elseif cl == 827 then
		cw('bl', "Y haré todo lo que esté en mi mano para hacer que sonría cada día.")
	elseif cl == 828 then
	fadeOut(3)
	elseif cl >= 829 then
	cl = 828
	end
end
