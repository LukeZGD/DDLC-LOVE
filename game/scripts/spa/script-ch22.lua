local y_chance = math.random(0,2)
local faint_effect = math.random(0,2)

function ch22script()
	if cl == 1077 then
	bgUpdate('club_day2')
	if xaload == 1 then audioUpdate('6',true) end
		cw('bl', "Transcurre otro día y llega la hora de reunirse en el club.")
	elseif cl == 1078 then
		cw('bl', "Comparado días atrás, ahora me siento un poco más cómodo. Al entrar en el aula, recibo el típico saludo.")
	elseif cl == 1079 then
	if y_chance == 0 then
		updateYuri('1r','',80)
	else
		updateYuri('1','s',80)
	end
		cw('y', "...")
	elseif cl == 1080 then
	if y_chance == 0 then
		updateYuri('1l','',80)
	end
		cw('mc', "Yuri...")
	elseif cl == 1081 then
		cw('bl', "No sé si soy yo o es por la expresión de Yuri pero...")
	elseif cl == 1082 then
		cw('bl', "Pero aún siento tensión en el ambiente por la pelea de ayer.")
	elseif cl == 1083 then
	updateYuri('2','v')
		cw('y', "Mmm...")
	elseif cl == 1084 then
		cw('bl', "Yuri observa los alrededores de la habitación.")
	elseif cl == 1085 then
		cw('bl', "Natsuki está en su escritorio leyendo manga.")
	elseif cl == 1086 then
		cw('bl', "Y curiosamente, Monika no está aquí.")
	elseif cl == 1087 then
		cw('bl', "De pronto, Yuri me coge del brazo y me lleva a una esquina de la habitación.")
	elseif cl == 1088 then
	bgUpdate('closet')
	updateYuri('2','t')
		cw('y', "Sobre lo de ayer...")
	elseif cl == 1089 then
		cw('y', "Yo...")
	elseif cl == 1090 then
	updateYuri('2','v')
		cw('y', "De verdad que lo siento.")
	elseif cl == 1091 then
		cw('y', "Esto jamás me había pasado antes ...")
	elseif cl == 1092 then
	updateYuri('2','t')
		cw('y', "Y... no sé qué me pasó, de verdad...")
	elseif cl == 1093 then
		cw('y', "Mentalmente no era yo.")
	elseif cl == 1094 then
	updateYuri('2','w')
		cw('y', "¡Por favor, no pienses que normalmente actúo de esa forma!")
	elseif cl == 1095 then
		cw('y', "Y no solo yo, Natsuki también...")
	elseif cl == 1096 then
	updateYuri('2','t')
	mc "Yuri..."
	elseif cl == 1097 then
		cw('mc', "Me alegran mucho tus disculpas.")
	elseif cl == 1098 then
		cw('mc', "No tienes de qué preocuparte.")
	elseif cl == 1099 then
		cw('mc', "Aunque solo lleve aquí un par de días, me di cuenta de que ayer algo no iba bien...")
	elseif cl == 1100 then
		cw('mc', "Tal vez estábamos un poco más sensibles de lo normal al ser la primera vez que compartíamos nuestros poemas.")
	elseif cl == 1101 then
		cw('mc', "Sea lo que sea...")
	elseif cl == 1102 then
		cw('mc', "Nada de eso hizo que pensara mal de ti.")
	elseif cl == 1103 then
		cw('mc', "Ya sabía que es imposible que seas una mala persona.")
	elseif cl == 1104 then
		cw('mc', "Y más ahora, que acabas de disculparte, sé que en realidad no querías hacer una cosa así.")
	elseif cl == 1105 then
	updateYuri('3','t')
		cw('y', "A-Ah...")
	elseif cl == 1106 then
		cw('y', "" .. player .. "...")
	elseif cl == 1107 then
	updateYuri('3','u')
		cw('y', "No me digas esas cosas...")
	elseif cl == 1108 then
		cw('y', "Pero eso me ha hecho un poquito más feliz.")
	elseif cl == 1109 then
	updateYuri('1','s')
		cw('y', "Me alegra mucho saber que eres una persona tan comprensiva...")
	elseif cl == 1110 then
		cw('y', "Y lo que más me alegra de todo es que te hayas unido a este club.")
	elseif cl == 1111 then
		cw('y', "Todo brilla cuando estás por aquí, y...")
	elseif cl == 1112 then
	updateYuri('1','t')
		cw('y', "Ah...")
	elseif cl == 1113 then
	updateYuri('4','c2')
		cw('y', "¿Pero que es lo que estoy diciendo...?")
	elseif cl == 1114 then
		cw('y', "Yo solo...")
	elseif cl == 1115 then
	updateNatsuki('2','c',200)
		cw('n', "Chicos, ¿habéis visto a Monika?")
	elseif cl == 1116 then
	updateYuri('3','n')
		cw('y', "¡Ah!")
	elseif cl == 1117 then
		cw('mc', "No, no la he visto...")
	elseif cl == 1118 then
		cw('mc', "Yo también me lo estaba preguntando.")
	elseif cl == 1119 then
	updateNatsuki('5','g')
		cw('n', "Vaya...")
	elseif cl == 1120 then
	updateNatsuki('5','c')
		cw('n', "Supongo que tu tampoco la habrás visto, ¿no, Yuri?")
	elseif cl == 1121 then
	updateYuri('4','a2')
	y "..."
	elseif cl == 1122 then
		cw('bl', "Yuri está bastante sorprendida por el trato tan calmado que le brinda Natsuki.")
	elseif cl == 1123 then
		cw('y', "N-no, no la he visto...")
	elseif cl == 1124 then
	updateNatsuki('1','u')
		cw('n', "Ains, esto no es propio de ella.")
	elseif cl == 1125 then
		cw('n', "Sé que es una tontería, pero no puedo evitar preocuparme un poco por ella...")
	elseif cl == 1126 then
	updateYuri('2','t')
	y "..."
	elseif cl == 1127 then
	updateNatsuki('1','h')
		cw('n', "¿Qué?")
	elseif cl == 1128 then
		cw('n', "¿Por qué me miras así?")
	elseif cl == 1129 then
		cw('y', "Mmm...")
	elseif cl == 1130 then
		cw('y', "Natsuki, sobre lo de ayer...")
	elseif cl == 1131 then
	updateYuri('3','w')
		cw('y', "¡S-solo quiero pedirte disculpas!")
	elseif cl == 1132 then
		cw('y', "¡Te prometo que no pienso nada de lo que dije!")
	elseif cl == 1133 then
	updateYuri('3','t')
		cw('y', "Y haré todo lo posible por controlarme a partir de ahora...")
	elseif cl == 1134 then
		cw('y', "Así que...")
	elseif cl == 1135 then
	updateNatsuki('2','c')
		cw('n', "Yuri, ¿de qué coño me estás hablando?")
	elseif cl == 1136 then
		cw('n', "¿Qué fue lo que pasó ayer?")
	elseif cl == 1137 then
	updateYuri('3','f')
		cw('y', "¿Eh?")
	elseif cl == 1138 then
	updateNatsuki('2','a')
		cw('n', "Ainss...")
	elseif cl == 1139 then
	style_edited = true
		cw('n', "Sea lo que sea, seguro que no habrá sido para tanto.")
	elseif cl == 1140 then
		cw('n', "De verdad que no recuerdo que haya pasado nada malo ayer.")
	elseif cl == 1141 then
		cw('n', "Eres de esas personas que se preocupan por minucias, ¿me equivoco?")
	elseif cl == 1142 then
	style_edited = false
	updateYuri('2','o')
	y "..."
	elseif cl == 1143 then
		cw('y', "P-pero...")
	elseif cl == 1144 then
	updateNatsuki('2','j')
		cw('n', "Bueno, aceptaré tus disculpas si esto te hace sentir mejor.")
	elseif cl == 1145 then
		cw('n', "Además, me alegra oír eso, siempre pensé que en el fondo me odiabas o algo así.")
	elseif cl == 1146 then
	updateNatsuki('2','z')
		cw('n', "Je, je, je.")
	elseif cl == 1147 then
	updateYuri('3','q')
		cw('y', "¡N-no, claro que no...!")
	elseif cl == 1148 then
		cw('y', "Yo no te odio...")
	elseif cl == 1149 then
	updateNatsuki('2','l')
		cw('n', "Ja, ja, ja.")
	elseif cl == 1150 then
		cw('n', "Bueno, eres un poco rarita, pero yo tampoco te odio.")
	elseif cl == 1151 then
	updateYuri('3','t')
	y "..."
	elseif cl == 1152 then
		cw('bl', "Natsuki se vuelve hacia a mi.")
	elseif cl == 1153 then
	updateNatsuki('2','a')
		cw('n', "Pero a ti todavía te tengo a prueba.")
	elseif cl == 1154 then
		cw('mc', "¡Ey...!")
	elseif cl == 1155 then
		cw('bl', "De repente, la puerta se abre.")
	elseif cl == 1156 then
	updateMonika('1','g',-40)
		cw('m', "¡Lo siento! ¡De verdad que lo siento!")
	elseif cl == 1157 then
		cw('mc', "Ah, aquí estás...")
	elseif cl == 1158 then
		cw('m', "No quería llegar tarde...")
	elseif cl == 1159 then
		cw('m', "¡Espero que no os hayáis preocupado por mi!")
	elseif cl == 1160 then
		cw('mc', "Nah...")
	elseif cl == 1161 then
		cw('mc', "Bueno, Naksuki sí lo hizo.")
	elseif cl == 1162 then
	updateNatsuki('1','p')
		cw('n', "¡No lo hice!")
	elseif cl == 1163 then
	updateNatsuki('1','k')
		cw('m', "Ja, ja, ja.")
	elseif cl == 1164 then
	updateNatsuki('1','s')
		cw('n', "Cambiando de tema, ¿por qué has tardado tanto?")
	elseif cl == 1165 then
	updateMonika('1','e')
	m "Ah..."
	elseif cl == 1166 then
		cw('m', "Bueno, lo último que he hecho hoy ha sido estar en la sala de estudio.")
	elseif cl == 1167 then
		cw('m', "Y si te digo la verdad, se me ha ido el santo al cielo...")
	elseif cl == 1168 then
		cw('m', "Ja, ja, ja...")
	elseif cl == 1169 then
	updateNatsuki('2','c')
		cw('n', "Eso no tiene ningún sentido.")
	elseif cl == 1170 then
		cw('n', "Por lo menos deberías de haber escuchado la campana.")
	elseif cl == 1171 then
	updateMonika('1','m')
		cw('m', "Pues no la he escuchado, ya que estaba practicando con el piano...")
	elseif cl == 1172 then
	updateYuri('1','e')
		cw('y', "¿Piano...?")
	elseif cl == 1173 then
		cw('y', "No sabía que supieras tocar el piano, Monika.")
	elseif cl == 1174 then
	updateMonika('1','l')
		cw('m', "No le des más crédito del que merezco.")
	elseif cl == 1175 then
	updateMonika('1','m')
		cw('m', "Supongo que es por que llevo practicando desde hace poco, pero todavía no soy muy buena.")
	elseif cl == 1176 then
	updateYuri('1','a')
		cw('y', "Aún así...")
	elseif cl == 1177 then
		cw('y', "Eso requiere mucha dedicación.")
	elseif cl == 1178 then
		cw('y', "Estoy impresionada.")
	elseif cl == 1179 then
	updateMonika('5a')
		cw('m', "Ooh, muchas gracias~")
	elseif cl == 1180 then
	updateNatsuki('2','d')
		cw('n', "¡Deberías de tocarnos algo algún día!")
	elseif cl == 1181 then
		cw('m', "Ja, ja, ja, pues...")
	elseif cl == 1182 then
		cw('bl', "Monika me mira.")
	elseif cl == 1183 then
	updateMonika('1','a')
		cw('m', "Bueno, ahora mismo estoy trabajando en una canción, pero todavía le queda...")
	elseif cl == 1184 then
		cw('m', "Tal vez cuando sepa un poco más, lo prometo.")
	elseif cl == 1185 then
		cw('mc', "Suena guay.")
	elseif cl == 1186 then
		cw('mc', "Lo esperaré con ansias.")
	elseif cl == 1187 then
	updateMonika('1','b')
		cw('m', "¿En serio?")
	elseif cl == 1188 then
		cw('m', "En ese caso...")
	elseif cl == 1189 then
		cw('m', "No te defraudaré, " .. player .. ".")
	elseif cl == 1190 then
	hideYuri()
	hideNatsuki()
	updateMonika('5a','',80)
		cw('bl', "Monika sonríe con dulzura.")
	elseif cl == 1191 then
	mc "Ah..."
	elseif cl == 1192 then
		cw('mc', "¡No te quiero meter presión ni nada de por el estilo!")
	elseif cl == 1193 then
	updateMonika('1','a')
		cw('m', "Ja, ja, ja, no te preocupes.")
	elseif cl == 1194 then
		cw('m', "Me gustaría poder compartirlo.")
	elseif cl == 1195 then
		cw('m', "Ya que por eso he estado practicando tanto recientemente.")
	elseif cl == 1196 then
		cw('mc', "Ya veo...")
	elseif cl == 1197 then
		cw('bl', "No estoy seguro si Monika se refiere a todo el club o solo a mí...")
	elseif cl == 1198 then
		cw('mc', "En ese caso, te deseo mucha suerte.")
	elseif cl == 1199 then
	updateMonika('1','j')
		cw('m', "¡Gracias~!")
	elseif cl == 1200 then
	updateMonika('1','a')
		cw('m', "Por lo menos no me he perdido nada, ¿verdad?")
	elseif cl == 1201 then
		cw('mc', "Pues... no, la verdad.")
	elseif cl == 1202 then
	hideMonika()
		cw('bl', "Prefiero no mencionar nada de lo que hablamos los tres.")
	elseif cl == 1203 then
		cw('bl', "Además, Natsuki se ha pirado hacia el armario.")
	elseif cl == 1204 then
	updateYuri('2','q',80)
	cw('y',player.."...")
	elseif cl == 1205 then
		cw('y', "Mmm...")
	elseif cl == 1206 then
		cw('y', "Ya que tus cumplidos me ponen de muy buen humor...")
	elseif cl == 1207 then
		cw('y', "Me preguntaba si te gustaría pasar hoy un poco de tiempo juntos.")
	elseif cl == 1208 then
	updateYuri('3','o')
		cw('y', "¡Q-quiero decir, en el club!")
	elseif cl >= 1209 and cl <= 1219 then
		if poemwinner[1] == "Natsuki" then
			appeal.y = 1
			if cl == 1209 then
		cw('mc', "Ah, pues vale.")
			elseif cl == 1210 then
		cw('mc', "No creo que pueda rechazar tu propuesta, y menos si antes me has dado este libro.")
			elseif cl == 1211 then
		cw('mc', "Bueno, al menos me tengo que asegurar de que Natsuki no se quede esperándome.")
			elseif cl == 1212 then
		cw('mc', "Ya que ayer, después de leer, ella...")
			elseif cl >= 1213 then
				if appeal.n >= 2 then
					if cl == 1213 then
						updateYuri('3','r')
		cw('y', "¡Seguro que estará bien!")
					elseif cl == 1214 then
						updateYuri('3','h')
		cw('y', "Ahora mismo está leyendo por ahí, ¿ves?")
					elseif cl == 1215 then
						style_edited = true
						updateYuri('3','f')
		cw('y', "No pienses tanto en ella.")
					elseif cl == 1216 then
		cw('y', "Está acostumbrada a que la ignoren.")
					elseif cl == 1217 then
		cw('y', "Venga, vayámonos.")
					elseif cl == 1218 then
						style_edited = false
						hideAll()
						audioUpdate('0')
						bgUpdate('black')
						pause(2,'disable')
					elseif cl == 1219 then
						audioUpdate('6')
						scriptJump(1234)
					end
				else
					if cl == 1213 then
						updateYuri('3','r')
		cw('y', "¡E-ella estará bien!")
					elseif cl == 1214 then
						updateYuri('3','h')
		cw('y', "Ahora mismo está leyendo por ahí.")
					elseif cl == 1215 then
						updateYuri('3','y6')
		cw('y', "Ella estará bien, ¿vale?")
					elseif cl == 1216 then
		cw('mc', "Ah...")
					elseif cl == 1217 then
		cw('mc', "En ese caso, no veo ningún problema...")
					elseif cl == 1218 then
						scriptJump(1220)
					end
				end
			end
		else
			appeal.y = 2
			if cl == 1209 then
		cw('mc', "Sep, definitivamente.")
			elseif cl == 1210 then
		cw('mc', "Tenía pensado hacerlo.")
			elseif cl == 1211 then
				scriptJump(1220)
			end
		end
	elseif cl == 1220 then
	updateYuri('3','y5')
		cw('y', "¡Vale!")
	elseif cl == 1221 then
		cw('y', "¿Podemos empezar ya?")
	elseif cl == 1222 then
		cw('y', "Busquemos algún sitio para...")
	elseif cl == 1223 then
	updateYuri('3','n')
		cw('y', "A-Ah...")
	elseif cl == 1224 then
	updateYuri('4','c2')
	cw('y', "E-estoy siendo un poco brusca, ¿verdad...?")
	elseif cl == 1225 then
		cw('y', "¡Lo siento! Mi corazón... no para de latir, por algún motivo...")
	elseif cl == 1226 then
		cw('mc', "No te preocupes.")
	elseif cl == 1227 then
		cw('mc', "De todos modos, es bueno verte con tantas energías.")
	elseif cl == 1228 then
	updateYuri('3','q')
		cw('y', "¡E-Eso!")
	elseif cl == 1229 then
		cw('y', "Pero...")
	elseif cl == 1230 then
	updateYuri('3','j')
		cw('y', "Necesito calmarme un poco.")
	elseif cl == 1231 then
		cw('y', "No puedo concentrarme en leer estando así...")
	elseif cl == 1232 then
		cw('mc', "Tómate tu tiempo.")
	elseif cl == 1233 then
		cw('bl', "Yuri suspira profundamente, entonces, coge un libro que tenía en su mochila.")
	
	elseif cl == 1234 then
		if n_poemappeal[2] == 1 then
			n_poemappeal[2] = 0
		end
		poemwinner[2] = "Yuri"
		bgUpdate('club_day2')
		updateYuri('3','a')
		if appeal.y == 1 then
			scriptJump(393)
		elseif appeal.y == 2 then
			scriptJump(1235)
		end
		
	elseif cl >= 1446 then ch22_end()
	end
end

function ch22_end()
	if cl == 1446 then
	hideAll()
	audioUpdate('0')
	fadeOut(4)
	elseif cl == 1447 then
	cl = 1446
	elseif cl == 1448 then
	bgUpdate('black')
	menutext = 'Acabas de desbloquear un poema especial.\n¿Te gustaría leerlo?'
	choices = {'Sí','No'}
	choice_enable()
	elseif cl == 1449 then
	if choicepick == 'Sí' then
		changeState('poem_special',sp[2])
	else
		scriptJump(1450)
	end
	
	elseif cl == 1450 then
	alpha = 255
	if faint_effect == 0 then
		event_initstart('faint_effect')
		audioUpdate('3g3')
	else
		audioUpdate('3')
	end
	bgUpdate('club_day2')
	updateMonika('4','b',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 1451 then
		cw('m', "Todo el mundo ha terminado de leer los poemas de los demás, ¿verdad?")
	elseif cl == 1452 then
		cw('m', "A ver, hay una cosa que tenemos que hacer hoy, así que venid aquí ...")
	elseif cl == 1453 then
	updateNatsuki('3','c',-40)
		cw('n', "¿Es sobre el festival?")
	elseif cl == 1454 then
	updateNatsuki('1','j')
		cw('m', "Bueno, más o menos~")
	elseif cl == 1455 then
	updateMonika('1','a')
	updateNatsuki('1','m')
		cw('n', "Uff. ¿De verdad tenemos que hacer algo para el festival?")
	elseif cl == 1456 then
		cw('n', "Como si pudiéramos hacer algo en condiciones en tan solo unos días.")
	elseif cl == 1457 then
		cw('n', "Solo conseguiremos hacer el ridículo en vez de conseguir algún nuevo miembro.")
	elseif cl == 1458 then
	updateYuri('2','g',200)
		cw('y', "Eso también me concierne.")
	elseif cl == 1459 then
	updateYuri('2','g',200)
		cw('y', "No soy muy buena con los preparativos de última hora...")
	elseif cl == 1460 then
	updateMonika('1','b')
		cw('m', "¡No os preocupéis!")
	elseif cl == 1461 then
		cw('m', "Vamos a hacer algo normalito, ¿vale?")
	elseif cl == 1462 then
	updateMonika('2','a')
		cw('m', "Veamos...")
	elseif cl == 1463 then
	updateMonika('2','m')
		cw('m', "Sé que todo está un poco más... animado... desde que " .. player .. " se unió y empezamos a realizar ciertas actividades del club.")
	elseif cl == 1464 then
	updateMonika('2','d')
		cw('m', "Pero no es momento de volvernos complacientes.")
	elseif cl == 1465 then
		cw('m', "Porque solo somos cuatro miembros...")
	elseif cl == 1466 then
	updateMonika('2','a')
		cw('m', "Y el festival es una oportunidad genial para encontrar más, ¿entendéis?")
	elseif cl == 1467 then
	updateNatsuki('5','g')
		cw('n', "¿Pero qué tiene de bueno encontrar nuevos miembros?")
	elseif cl == 1468 then
		cw('n', "Si ya somos suficientes para ser considerados un club oficial.")
	elseif cl == 1469 then
		cw('n', "Tener más miembros solo conlleva que todo sea más ruidoso y más difícil de llevar.")
	elseif cl == 1470 then
	updateMonika('1','g')
		cw('y', "Natsuki...")
	elseif cl == 1471 then
		cw('m', "Creo que lo estas viendo desde una perspectiva errónea.")
	elseif cl == 1472 then
		cw('m', "¿Acaso no te gustaría compartir la pasión que sientes por esto con toda la gente posible...")
	elseif cl == 1473 then
	updateMonika('3','e')
		cw('m', "para inspirarles a encontrar esos mismos sentimientos que te han hecho venir aquí?")
	elseif cl == 1474 then
		cw('m', "El club de literatura es un lugar donde la gente puede expresarse como en otros sitios no pueden.")
	elseif cl == 1475 then
		cw('m', "Este debe de ser un lugar íntimo del cual nunca quieras irte.")
	elseif cl == 1476 then
	updateMonika('2','e')
		cw('m', "Sé como te sientes.")
	elseif cl == 1477 then
	updateMonika('2','b')
		cw('m', "¡Sé que juntos podremos hacerlo!")
	elseif cl == 1478 then
		cw('m', "Así que debemos de trabajar duro y poner, al menos, un pedacito de cada uno... ¡aunque sea algo pequeño!")
	elseif cl == 1479 then
		cw('m', "¿Verdad, " .. player .. "?")
	elseif cl == 1480 then
	mc "Ah..."
	elseif cl == 1481 then
	updateNatsuki('4','2c')
		cw('n', "¡Oh, venga ya!")
	elseif cl == 1482 then
		cw('n', "No puedes forzar a " .. player .. " a que esté de acuerdo contigo solo por que no sepa decirte que no.")
	elseif cl == 1483 then
	audioUpdate('0')
	updateNatsuki('1','c')
		cw('n', "Mira, Monika.")
	elseif cl == 1484 then
		cw('n', "¿De verdad crees que alguno de nosotros nos unimos al club pensando en la gente?")
	elseif cl == 1485 then
		cw('n', "Yuri no abrió la boca hasta que " .. player .. " se unió.")
	elseif cl == 1486 then
	updateNatsuki('2','b')
		cw('n', "Y yo simplemente me siento más cómoda aquí que en casa. ")
	elseif cl == 1487 then
	scriptJump(1488)
	elseif cl == 1488 then
		cw('n', "Además, " .. player .. " no es un friki de la literatura.")
	elseif cl == 1489 then
		cw('n', "Y los demás tampoco. ")
	elseif cl == 1490 then
	updateNatsuki('4','w')
		cw('n', "Lo siento, pero creo que eres la única interesada en encontrar nuevos miembros para el club.")
	elseif cl == 1491 then
		cw('n', "El resto estamos bien tal y como estamos ahora.")
	elseif cl == 1492 then
	updateNatsuki('4','q')
		cw('n', "Sé que eres la presidenta y todo eso, pero deberías de tener en cuenta nuestras opiniones por una vez.")
	elseif cl == 1493 then
	updateMonika('1','g')
	m "..."
	elseif cl == 1494 then
		cw('bl', "Monika se ha quedado de piedra con lo que le ha dicho Natsuki.")
	elseif cl == 1495 then
	audioUpdate('9')
	updateMonika('1','m')
		cw('m', "Eso... no es del todo cierto.")
	elseif cl == 1496 then
	updateMonika('2','m')
		cw('m', "Estoy segura de que Yuri y " .. player .. " también quieren encontrar a nuevos miembros...")
	elseif cl == 1497 then
	updateMonika('2','p')
		cw('m', "¿Verdad?")
	updateYuri('4','b2')
	elseif cl == 1498 then
		y "..."
	elseif cl == 1499 then
		cw('bl', "No sé que pensará Yuri, pero a mí me es indiferente.")
	elseif cl == 1500 then
		cw('bl', "Me gustaría mostrar el mismo entusiasmo que Monika, pero estaría mintiendo.")
	elseif cl == 1501 then
		cw('bl', "Además, depende de mí arreglar esta situación...")
	elseif cl == 1502 then
		cw('mc', "Em...")
	elseif cl == 1503 then
	updateMonika('1','i')
		cw('m', "No.")
	elseif cl == 1504 then
		cw('m', "Natsuki tiene razón, ¿no es así?")
	elseif cl == 1505 then
	updateMonika('1','g')
		cw('m', "Este club...")
	elseif cl == 1506 then
		cw('m', "No es más que un lugar para pasar el rato.")
	elseif cl == 1507 then
	updateMonika('1','r')
		cw('m', "¿Por qué pensé que todos creerían lo mismo que yo?")
	elseif cl == 1508 then
		cw('mc', "Pero eso no significa que estemos en contra de que reclutemos nuevos miembros o algo así...")
	elseif cl == 1509 then
	updateMonika('1','i')
		cw('m', "A ver, " .. player .. ", ¿por qué te uniste a este club?")
	elseif cl == 1510 then
		cw('m', "¿Qué esperabas sacar de esto?")
	elseif cl == 1511 then
		cw('mc', "Bueno...")
	elseif cl == 1512 then
		cw('bl', "Eso no es algo que pueda decir como si tal cosa, ¿no?")
	elseif cl == 1513 then
	updateMonika('1','p')
		cw('m', "De hecho...")
	elseif cl == 1514 then
		cw('m', "Ahora que lo recuerdo, tú no tuviste la opción de rechazar el unirte a este club.")
	elseif cl == 1515 then
	hideMonika()
		cw('bl', "Monika se sienta y mira fijamente al escritorio.")
	elseif cl == 1516 then
		cw('m', "¿Qué conclusión sacamos de todo esto?")
	elseif cl == 1517 then
		cw('m', "¿Fundar este club ha sido un error?")
	elseif cl == 1518 then
	mc "..."
	elseif cl == 1519 then
	updateYuri('2','g')
		cw('y', "Ya la has liado, Natsuki...")
	elseif cl == 1520 then
	updateNatsuki('1','p')
		cw('n', "Espera, ¿Yo?")
	elseif cl == 1521 then
	updateNatsuki('1','s')
		cw('n', "Yo solo he dicho lo que pensaba...")
	elseif cl == 1522 then
		cw('n', "¿Es un delito ser sincera?")
	elseif cl == 1523 then
	updateYuri('2','l')
		cw('y', "No se trata de ser sincera.")
	elseif cl == 1524 then
		cw('y', "Es tener un poco de tacto al hablar.")
	elseif cl == 1525 then
	updateYuri('2','h')
		cw('y', "Además, no tienes derecho a hablar de esa forma en nombre del resto de los miembros del club...")
	elseif cl == 1526 then
	updateNatsuki('1','e')
		cw('n', "¡Tú no lo entiendes!")
	elseif cl == 1527 then
	updateNatsuki('5','s')
		cw('n', "Solo que...")
	elseif cl == 1528 then
		cw('n', "Solo quiero tener un lugar en el que pasármelo bien con mis amigos.")
	elseif cl == 1529 then
	updateNatsuki('5','u')
		cw('n', "¿Acaso es un problema que el club signifique eso para mi?")
	elseif cl == 1530 then
		cw('n', "No... no hay más sitios como este que signifiquen tanto para mí...")
	elseif cl == 1531 then
	updateNatsuki('5','x')
		cw('n', "¡Y ahora Monika quiere quitármelo!")
	elseif cl == 1532 then
		cw('mc', "Ella no quiere destro...")
	elseif cl == 1533 then
	updateNatsuki('1','g')
		cw('n', "No, " .. player .. ".")
	elseif cl == 1534 then
		cw('n', "No es lo mismo.")
	elseif cl == 1535 then
	updateNatsuki('1','q')
		cw('n', "Esto no será lo mismo con la dirección que está tomando el asunto.")
	elseif cl == 1536 then
		cw('n', "Si quisiera eso, me hubiera unido a otro estúpido club.")
	elseif cl == 1537 then
	updateNatsuki('1','2d')
		cw('n', "Pero en este...")
	elseif cl == 1538 then
		cw('n', "Quiero decir...")
	elseif cl == 1539 then
	updateNatsuki('1','2e')
		cw('n', "Aunque haya sido poco tiempo...")
	elseif cl == 1540 then
		cw('n', "Me lo pasaba genial...")
	elseif cl == 1541 then
		cw('bl', "Natsuki recoge sus cosas.")
	elseif cl == 1542 then
	updateNatsuki('1','2d')
		cw('n', "Me voy a casa.")
	elseif cl == 1543 then
		cw('n', "Me siento... como si ya no perteneciera a este sitio.")
	elseif cl == 1544 then
	updateYuri('3','t')
	y "Natsuki..."
	elseif cl == 1545 then
	hideNatsuki()
		cw('bl', "Natsuki ignora a Yuri y se va del aula.")
	elseif cl == 1546 then
	updateYuri('3','v',80)
	y "..."
	elseif cl == 1547 then
		cw('y', "Esto no va bien...")
	elseif cl == 1548 then
		cw('y', "No sé que hacer...")
	elseif cl == 1549 then
		cw('mc', "Bueno...")
	elseif cl == 1550 then
		cw('mc', "¿Qué piensas sobre el festival?")
	elseif cl == 1551 then
	updateYuri('4','b2')
		cw('y', "N-no lo sé...")
	elseif cl == 1552 then
		cw('y', "Me es indiferente...")
	elseif cl == 1553 then
	event_initstart('yuri_glitch_head',1)
	audioUpdate('9g')
		cw('y', "Pero ¿a quién le importa esa mocosa?")
	elseif cl == 1554 then
	event_end()
	audioUpdate('9')
		cw('y', "Quiero decir, me gusta lo tranquilo que es el club ahora mismo...")
	elseif cl == 1555 then
		cw('y', "Y... me siento muy feliz cuando estás aquí...")
	elseif cl == 1556 then
	updateYuri('2','t')
		cw('y', "¡Pero aún así!")
	elseif cl == 1557 then
		cw('y', "Soy la vicepresidenta...")
	elseif cl == 1558 then
		cw('y', "No está bien que ignore mis responsabilidades...")
	elseif cl == 1559 then
	event_initstart('yuri_glitch_head',2)
	audioUpdate('9g')
		cw('y', "Nadie lamentaría su muerte si se suicidara.")
	elseif cl == 1560 then
	scriptJump(1561)
	event_end()
	elseif cl == 1561 then
	audioUpdate('9')
	updateYuri('2','l')
		cw('y', "Debo de considerar la perspectiva de todos y tomar la decisión correcta por el bien del club.")
	elseif cl == 1562 then
	updateYuri('1','t')
		cw('y', "¿Tú que piensas, " .. player .. "?")
	elseif cl == 1563 then
		cw('y', "¿Te quieres ir del club?")
	elseif cl == 1564 then
		cw('bl', "Yuri repite la misma pregunta que Monika.")
	elseif cl == 1565 then
		cw('bl', "Creo es mejor dar una respuesta indirecta que estar callado.")
	elseif cl == 1566 then
		cw('mc', "Creo que lo mas importante para todos sería... que nos llevásemos bien...")
	elseif cl == 1567 then
		cw('mc', "Ya que eso le da al club algo que no se puede obtener en ningún lado.")
	elseif cl == 1568 then
		cw('mc', "No importa la cantidad de miembros que haya, sino la calidad de cada uno.")
	elseif cl == 1569 then
		cw('mc', "Eso es lo hace de el club de literatura un lugar muy especial.")
	elseif cl == 1570 then
	updateYuri('1','u')
		cw('y', "Ya veo...")
	elseif cl == 1571 then
		cw('y', "Opino igual que tú.")
	elseif cl == 1572 then
	updateYuri('1','f')
		cw('y', "Cada miembro aporta algo diferente de una forma especial.")
	elseif cl == 1573 then
		cw('y', "Si los miembros cambian, la identidad del club también.")
	elseif cl == 1574 then
	updateYuri('1','h')
		cw('y', "Pero no creo que eso sea necesariamente malo.")
	elseif cl == 1575 then
		cw('y', "Salir de la zona de confort aunque sea un segundo...")
	elseif cl == 1576 then
	updateYuri('1','a')
		cw('y', "Si al final quieres echar una mano a Monika en el festival, me apunto.")
	elseif cl == 1577 then
		cw('mc', "Muy bien.")
	elseif cl == 1578 then
		cw('mc', "Pero, deberíamos de hablarlo mañana con Natsuki...")
	elseif cl == 1579 then
		cw('bl', "Yuri asiente.")
	elseif cl == 1580 then
	updateMonika('1','g',10)
	updateYuri('1','a',150)
		cw('m', "Eh, Yuri...")
	elseif cl == 1581 then
	updateYuri('1','t')
	y "¿Eh?"
	elseif cl == 1582 then
	updateMonika('1','p')
		cw('m', "Mmm, sé que las cosas se pusieron un poco feas ayer...")
	elseif cl == 1583 then
		cw('m', "Pero me gustaría decirte que sigo pensando de que eres la mejor vicepresidenta.")
	elseif cl == 1584 then
	updateMonika('1','e')
		cw('m', "Y mi mejor amiga.")
	elseif cl == 1585 then
	updateYuri('3','s')
		cw('y', "M-Monika...")
	elseif cl == 1586 then
	updateMonika('2','e')
		cw('m', "Haré todo lo que esté en mis manos para hacer de este el mejor club del mundo.")
	elseif cl == 1587 then
		cw('m', "¿Vale?")
	elseif cl == 1588 then
		cw('y', "Yo también...")
	elseif cl == 1589 then
	updateMonika('1','a')
		cw('m', "Exacto...")
	elseif cl == 1590 then
		cw('m', "Bueno, dejémoslo por hoy y vayámonos a casa.")
	elseif cl == 1591 then
		cw('m', "Ya hablaremos mañana sobre el festival.")
	elseif cl == 1592 then
	updateYuri('1','m')
		cw('y', "Vale.")
	elseif cl == 1593 then
		cw('y', "Lo esperaré con ansias.")
	elseif cl == 1594 then
	updateYuri('1','a')
		cw('y', "¿Nos vamos, " .. player .. "?")
	elseif cl == 1595 then
	updateMonika('1','d')
		cw('m', "Em...")
	elseif cl == 1596 then
	updateMonika('1','p')
		cw('m', "Por favor, no te lo tomes a mal, pero...")
	elseif cl == 1597 then
		cw('m', "Quiero tener una pequeña charla con " .. player .. " antes de irme.")
	elseif cl == 1598 then
	updateMonika('1','d')
		cw('m', "Solo por saber lo que piensa de esto desde que entró aquí...")
	elseif cl == 1599 then
		cw('m', "Es importante para mí, como presidenta.")
	elseif cl == 1600 then
	updateYuri('2','v')
	y "..."
	elseif cl == 1601 then
		cw('bl', "A Yuri no le gusta la idea, pero no protesta.")
	elseif cl == 1602 then
	updateYuri('2','t')
		cw('y', "Vale.")
	elseif cl == 1603 then
	updateYuri('2','s')
		cw('y', "Confío en tu juicio, Monika.")
	elseif cl == 1604 then
		cw('y', "En ese caso, os veré mañana.")
	elseif cl == 1605 then
	updateMonika('1','j')
		cw('m', "Nos vemos~")
	elseif cl == 1606 then
	hideYuri()
		cw('bl', "Monika se despide cuando Yuri sale del aula.")
	
	elseif cl == 1607 then
	updateMonika('2','a',80)
		cw('m', "Uf...")
	elseif cl == 1608 then
	updateMonika('2','e')
		cw('m', "Las cosas se han vuelto algo frenéticas últimamente, ¿verdad que sí?")
	elseif cl == 1609 then
	event_initstart('show_darkred','show_noise')
		cw('m', "Solo quiero asegurarme de que estés disfrutando el tiempo que permanezcas en el club.")
	elseif cl == 1610 then
		cw('m', "Me odiaría verte triste.")
	elseif cl == 1611 then
	updateMonika('2','m')
		cw('m', "Es mi deber saber tu opinión, como presidenta...")
	elseif cl == 1612 then
	audioUpdate('0')
	updateMonika('4','e')
		cw('m', "Y... me preocupo mucho por ti, por si no lo sabías.")
	elseif cl == 1613 then
		cw('m', "No me agrada ver que las demás te hacen pasar malos ratos en el club.")
	elseif cl == 1614 then
	updateMonika('4','r')
		cw('m', "Como con lo de Natsuki y demás...")
	elseif cl == 1615 then
	updateMonika('4','m')
		cw('m', "Y Yuri es un poco... ya sabes lo que quiero decir.")
	elseif cl == 1616 then
	updateMonika('5a')
		cw('m', "Ja, ja, ja...")
	elseif cl == 1617 then
		cw('m', "A veces me siento como si nosotros fuéramos las únicas personas reales aquí.")
	elseif cl == 1618 then
		cw('m', "¿Sabes a lo que me refiero?")
	elseif cl == 1619 then
	updateMonika('1','g')
		cw('m', "Pero es raro, ya que en todo el tiempo que llevas aquí, hemos pasado muy poco tiempo juntos.")
	elseif cl == 1620 then
	updateMonika('1','n')
		cw('m', "L-lo que quiero decir es...")
	elseif cl == 1621 then
		cw('m', "Solo han pasado un par de días y...")
	elseif cl == 1622 then
	updateMonika('1','l')
		cw('m', "¡Lo siento si eso ha sonado raro!")
	elseif cl == 1623 then
	updateMonika('1','e')
		cw('m', "Solo es que hay algunas cosas que esperaba poder tratarlas contigo...")
	elseif cl == 1624 then
		cw('m', "Cosas que solo tú puedes entender.")
	elseif cl == 1625 then
	fadeOut(4)
	cw('m',"Lo que te quiero decir es...",'nwfast')
	elseif cl == 1626 then
	fadeOut(4)
	updateMonika('1','g')
	cw('m',"¡Espera, ahora no!",'nwfast')
	elseif cl == 1626 then
	fadeOut(4)
	cw('m',"¡Noo!",'nwfast')
	elseif cl == 1627 then
	fadeOut(4)
	cw('m',"¡Para!",'nwfast')
	elseif cl == 1628 then
	alpha = 20
	event_end('next')
	elseif cl >= 1629 then
	fadeOut(1)
	end
end
