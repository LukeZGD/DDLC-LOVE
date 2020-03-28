local ch2_winner = poemwinner[2]
if ch2_winner == "Sayori" or ch2_winner == "Yuri" then
	ch2_winner = tr.names[3]
else
	ch2_winner = tr.names[2]
end

function ch2script()
	if cl == 1149 then
		bgUpdate('club')
		audioUpdate('2')
		cw('bl', "Transcurre otro día y llega la hora de reunirse en el club.")
	elseif cl == 1150 then
		cw('bl', "Comparado con un par de días atrás, ahora me siento un poco más cómodo.")
	elseif cl == 1151 then
		cw('bl', "Al entrar en el aula, recibo el típico saludo.")
	elseif cl == 1152 then
		updateSayori('2','x',80)
		cw('s', "Hola, " .. player .. "~")
	elseif cl == 1153 then	
		cw('mc', "¿Qué tal, Sayori?")
	elseif cl == 1154 then
		cw('mc', "Parece que hoy estás de buen humor.")
	elseif cl == 1155 then
		updateSayori('1','q')
		cw('s', "Je, je, je~")
	elseif cl == 1156 then
		cw('s', "Es que todavía no estoy acostumbrada a que estés en el club.")
	elseif cl == 1157 then
		cw('s', "...")
	elseif cl == 1158 then
		cw('mc', "Qué... forma más simple de ponerse de buen humor.")
	elseif cl == 1159 then
		cw('mc', "Pero bueno, a ti siempre te han ido las cosas sencillas.")
	elseif cl == 1160 then
		updateSayori('1','d')
		cw('s', "Hablando de eso...")
	elseif cl == 1161 then
		cw('s', "Tengo hambre...")
	elseif cl == 1162 then
		cw('s', "¿Me acompañas a pillar algún aperitivo?")
	elseif cl == 1163 then
		cw('mc', "No, gracias.")
	elseif cl == 1164 then
		updateSayori('4','h')
		cw('s', "¿Eh?")
	elseif cl == 1165 then
		cw('s', "¡¡E-eso no es nada propio de ti!!")
	elseif cl == 1166 then
		cw('mc', "Tengo mis motivos.")
	elseif cl == 1167 then
		cw('mc', "Sayori, ¿por qué no le echamos un vistazo a tu cartera?")
	elseif cl == 1168 then
		updateSayori('4','l')
		cw('s', "¿E-eh?")
	elseif cl == 1169 then
		cw('s', "¿Por qué... lo dices?")
	elseif cl == 1170 then
		cw('mc', "Por nada en particular.")
	elseif cl == 1171 then
		cw('mc', "Solo quiero echarle un vistazo.")
	elseif cl == 1172 then
		updateSayori('1','l')
		cw('s', "A-ah...")
	elseif cl == 1173 then
		cw('bl', "Sayori, nerviosa, saca su cartera.")
	elseif cl == 1174 then
		cw('bl', "Le cuesta varios intentos abrirla.")
	elseif cl == 1175 then
		cw('bl', "Y cuando lo logra, la pone del revés, dejando caer sobre la mesa todo su contenido.")
	elseif cl == 1176 then
		cw('bl', "Solo caen dos monedas pequeñas.")
	elseif cl == 1177 then
		updateSayori('5a')
		cw('s', "Ja, ja, ja...")
	elseif cl == 1178 then
		cw('mc', "Lo sabía...")
	elseif cl == 1179 then
		cw('mc', "Eres como un libro abierto, Sayori.")
	elseif cl == 1180 then
		updateSayori('5c')
		cw('s', "¡Eso no es verdad!")
	elseif cl == 1181 then
		cw('s', "¿Cómo lo has sabido?")
	elseif cl == 1182 then
		cw('mc', "Fácil.")
	elseif cl == 1183 then
		cw('mc', "Para comenzar, si tuvieras suficiente dinero, habrías comprado algún aperitivo antes de entrar a clase.")
	elseif cl == 1184 then
		cw('mc', "Por lo que, o no tenías hambre, o buscabas una excusa para dar una vuelta...")
	elseif cl == 1185 then
		cw('mc', "¡O planeaste olvidar convenientemente que no tenías ni un duro para que te prestara un poco!")
	elseif cl == 1186 then
		cw('mc', "Pero eso no es todo, hay una cosa más...")
	elseif cl == 1187 then
		cw('mc', "¡Siempre tienes hambre!")
	elseif cl == 1188 then
		cw('mc', "¡Y eso lo reduce a una única opción!")
	elseif cl == 1189 then
		updateSayori('4','p')
		cw('s', "¡Buaaa~!")
	elseif cl == 1190 then
		cw('s', "¡Me rindo!")
	elseif cl == 1191 then
		cw('s', "¡No me hagas sentir culpableee!")
	elseif cl == 1192 then
		cw('mc', "Si te sientes culpable, eso significa que de verdad lo eres...")
	elseif cl == 1193 then
		updateYuri('1','c',200)
		cw('y', "Ja, ja, ja.")
	elseif cl == 1194 then
		cw('bl', "Yuri de pronto suelta una risita.")
	elseif cl == 1195 then
		updateSayori('4','g')
		cw('bl', "No me di cuenta de que ella nos estaba escuchando.")
	elseif cl == 1196 then
		cw('bl', "Como siempre, tiene la cara sumergida en un libro.")
	elseif cl == 1197 then
		updateYuri('3','n')
		cw('y', "¡A-ah!")
	elseif cl == 1198 then
		cw('y', "¡N-no os estaba escuchando!...")
	elseif cl == 1199 then
		updateYuri('3','o')
		cw('y', "Me he reído por algo... que acabo de leer.")
	elseif cl == 1200 then
		updateSayori('1','h')
		cw('s', "Yuriiii...")
	elseif cl == 1201 then
		cw('s', "Dile a " .. player .. " que me deje algo de dinero...")
	elseif cl == 1202 then
		updateYuri('3','h')
		cw('y', "¡Eso es...!")
	elseif cl == 1203 then
		cw('y', "Sayori, no me metas en esto...")
	elseif cl == 1204 then
		cw('y', "Además...")
	elseif cl == 1205 then
		updateYuri('1','k')
		cw('y', "Solo deberías comprar lo que puedas permitirte...")
	elseif cl == 1206 then
		cw('y', "Y sinceramente, tras esa jugarreta, tu sufrimiento es justificado.")
	elseif cl == 1207 then
		updateSayori('1','b')
		cw('mc',"...")
	elseif cl == 1208 then
		updateYuri('3','n')
		cw('y', "¡Ah!...")
	elseif cl == 1209 then
		cw('y', "¿Qué acabo de...?")
	elseif cl == 1210 then
		updateYuri('4','c2')
		cw('y', "¡¡N-no quería decir eso!!")
	elseif cl == 1211 then
		cw('y', "Mi libro me ha absorbido demasiado...")
	elseif cl == 1212 then
		cw('y', "Em...")
    elseif cl == 1213 then
		updateSayori('1','r')
		cw('s', "¡Ja, ja, ja!")
	elseif cl == 1214 then
		updateSayori('3','x')
		cw('s', "Me encanta cuando dices lo que verdaderamente piensas, Yuri...")
	elseif cl == 1215 then
		cw('s', "No ocurre mucho pero... ¡Es una parte tuya muy divertida!")
	elseif cl == 1216 then
		updateYuri('3','v')
		cw('y', "Em...")
	elseif cl == 1217 then
		cw('y', "Eso no es cierto...")
	elseif cl == 1218 then
		updateSayori('1','x')
		cw('s', "Pero tienes razón...")
	elseif cl == 1219 then
		cw('s', "Hice algo malo y ahora debo aceptar el castillo.")
	elseif cl == 1220 then
		updateYuri('3','h')
		cw('y', "El castigo...")
	elseif cl == 1221 then
		updateSayori('1','l')
		cw('s', "¡Eso!")
	elseif cl == 1222 then
		cw('y', "Aun así, viniendo de ti...")
	elseif cl == 1223 then
		updateYuri('1','a')
		cw('y', "Supongo que dentro de todos nosotros se esconde un pequeño diablillo, ¿no crees?")
	elseif cl == 1224 then
		updateSayori('1','q')
		cw('s', "Je, je, je...")
	elseif cl == 1225 then
		cw('mc', "No dejes que te engañe.")
	elseif cl == 1226 then
		cw('mc', "Sayori es muy consciente de lo que hace.")
	elseif cl == 1227 then
		cw('mc', "Después de todo, os dijo que me iba a traer al club antes incluso de decírmelo...")
	elseif cl == 1228 then
		updateSayori('1','h')
		cw('s', "¡P-pero...!")
	elseif cl == 1229 then
		cw('s', "No hubieras venido si no fuera por los pastelillos...")
	elseif cl == 1230 then
		cw('s', "¡Por lo que tuve que engañar a Natsuki para que los hiciera!")
	elseif cl == 1231 then
		cw('mc', "Venga, Sayori, acepta un poco de lo que he dicho.")
	elseif cl == 1232 then
		updateSayori('1','l')
		cw('s', "Je, je, je...")
	elseif cl == 1233 then
		updateSayori('4','p')
		sfxplay('slap')
		cw('bl', "¡Zas!")
    elseif cl == 1234 then
		updateSayori('4','p')
		cw('s', "¡Aaay!...")
	elseif cl == 1235 then
		cw('bl', "De la nada, algo golpea a Sayori en la cara y la deja tumbada sobre el escritorio.")
	elseif cl == 1236 then
		updateSayori('4','j')
		cw('s', "Auch...")
	elseif cl == 1237 then
		cw('s', "¿Qué ha...?")
	elseif cl == 1238 then
		updateSayori('4','n')
		cw('s', "¿¿Eh??")
	elseif cl == 1239 then
		cw('s', "¡U-una galleta!")
	elseif cl == 1240 then
		cw('bl', "En efecto, es una galleta gigante envuelta en film transparente.")
	elseif cl == 1241 then
		cw('bl', "Sayori echa un vistazo por el aula.")
	elseif cl == 1242 then
		updateSayori('4','m')
		cw('s', "¿¿E-es un milagro??")
	elseif cl == 1243 then
		cw('s', "¡Ha ocurrido porque ya he pagado al casino!")
	elseif cl == 1244 then
		cw('mc', "El castigo...")
	elseif cl == 1245 then
		updateSayori('4','n')
		updateYuri('1','u')
		cw('y', "Casi pero no...")
	elseif cl == 1246 then
		updateNatsuki('3','z',-40)
		cw('n', "¡Ja, ja, ja!")
	elseif cl == 1247 then
		cw('n', "Estaba a punto de dártela.")
	elseif cl == 1248 then
		updateNatsuki('3','d')
		cw('n', "Pero escuché cosas sobre mis pastelillos.")
	elseif cl == 1249 then
		cw('n', "Aunque ha merecido completamente la pena ver tu reacción. ¡Ja, ja, ja!")
	elseif cl == 1250 then
		updateSayori('4','m')
		cw('s', "¡N-Natsuki!")
	elseif cl == 1251 then
		cw('s', "¡Eso ha sido muy bonito por tu parte!")
	elseif cl == 1252 then
		updateSayori('4','s')
		cw('s', "Qué felicidad...")
	elseif cl == 1253 then
		cw('bl', "Sayori abraza la galleta.")
	elseif cl == 1254 then
		cw('mc', "Bueeeno... Venga, cómetela...")
	elseif cl == 1255 then
		cw('bl', "Sayori abre el envoltorio rápidamente y le da un buen bocado.")
	elseif cl == 1256 then
		updateSayori('4','q')
		cw('s', "Qué bena...")
	elseif cl == 1257 then
		updateSayori('4','o')
		cw('s', "¡Agh!...")
	elseif cl == 1258 then
		cw('bl', "De golpe, Sayori se pone las manos sobre la boca.")
	elseif cl == 1259 then
		updateSayori('4','p')
		cw('s', "Me he mordido la lengua...")
	elseif cl == 1260 then
		updateNatsuki('3','a')
		cw('n', "Je, je, je.")
	elseif cl == 1261 then
		cw('n', "La que estás liando solamente por una galleta.")
	elseif cl == 1262 then
		cw('bl', "Natsuki le da un bocado a su galleta.")
	elseif cl == 1263 then
		updateSayori('1','c')
		cw('s', "¡Oh, Natsuki, la tuya también tiene muy buena pinta!")
	elseif cl == 1264 then
		cw('s', "¿Puedo probarla?")
	elseif cl == 1265 then
		updateNatsuki('4','e')
		cw('n', "Ains...")
	elseif cl == 1266 then
		cw('n', "¡Para las mendigas el pan duro!")
	elseif cl == 1267 then
		updateSayori('1','h')
		cw('s', "Pero la tuya tiene chocolate...")
	elseif cl == 1268 then
		updateNatsuki('4','c')
		cw('n', "Claro, ¿por qué crees que te he dado esa?")
	elseif cl == 1269 then
		updateSayori('1','g')
		cw('s', "Está bien...")
	elseif cl == 1270 then
		updateSayori('1','q')
		cw('s', "Pero me alegra mucho que hayas compartido una de tus galletas conmigo.")
	elseif cl == 1271 then
		cw('s', "Je, je, je~")
	elseif cl == 1272 then
		updateSayori('1','q',15)
		cw('bl', "Sayori se levanta y va hacia donde está Natsuki para darle un abrazo.")
	elseif cl == 1273 then
		updateNatsuki('1','2c')
		cw('n', "¿Eh?... Meh...")
	elseif cl == 1274 then
		cw('n', "Ya lo pillo, ya lo pillo.")
	elseif cl == 1275 then
		cw('bl', "Con la galleta aún en mano, Natsuki intenta apartar a Sayori de ella.")
	elseif cl == 1276 then
		updateSayori('1','m')
		cw('s', "Ñam.")
	elseif cl == 1277 then
		cw('bl', "De repente, Sayori se inclina y le da un mordisco a la galleta de Natsuki.")
	elseif cl == 1278 then
		updateNatsuki('1','p')
		cw('n', "¡¡O-oye!!")
	elseif cl == 1279 then
		cw('n', "¡¿En serio has tenido el valor de hacer eso?!")
	elseif cl == 1280 then
		updateSayori('1','q')
		cw('s', "¡Ju, ju, ju, ju!")
	elseif cl == 1281 then
		hideSayori()
		cw('bl', "Con la boca llena, Sayori se aleja por su propio bien.")
	elseif cl == 1282 then
		updateYuri('1','c')
		cw('bl', "Cómo no, Yuri y yo nos reímos.")
	elseif cl == 1283 then
		updateYuri('1','a')
		updateNatsuki('1','w')
		cw('n', "¡Por dios! ¡A veces te comportas como una cría!")
	elseif cl == 1284 then
		updateNatsuki('1','h')
		cw('n', "¡Monika! ¡Dile a Sayori que...!")
	elseif cl == 1285 then
		updateNatsuki('1','c')
		cw('n', "¿Eh?")
	elseif cl == 1286 then
		cw('bl', "Natsuki mira a su alrededor.")
	elseif cl == 1287 then
		cw('bl', "Monika no está en el aula.")
	elseif cl == 1288 then
		updateNatsuki('4','q')
		cw('n', "Argh...")
	elseif cl == 1289 then
		cw('n', "Por cierto, ¿donde está Monika?")
	elseif cl == 1290 then
		updateYuri('2','f')
		cw('y', "Buena pregunta...")
	elseif cl == 1291 then
		cw('y', "¿Alguien sabe si iba a llegar tarde hoy?")
	elseif cl == 1292 then
		updateSayori('1','b',80)
		cw('s', "Yo no...")
	elseif cl == 1293 then
		cw('mc', "Ni yo.")
	elseif cl == 1294 then
		updateYuri('2','l')
		cw('y', "Mmm...")
	elseif cl == 1295 then
		cw('y', "Eso es algo... inusual.")
	elseif cl == 1296 then
		updateSayori('1','g')
		cw('s', "Espero que esté bien...")
	elseif cl == 1297 then
		updateNatsuki('3','k')
		cw('n', "Y tanto que lo estará.")
	elseif cl == 1298 then
		cw('n', "Seguramente tendría algo que hacer hoy.")
	elseif cl == 1299 then
		updateNatsuki('3','t')
		cw('n', "Es bastante popular, ya sabéis...")
	elseif cl == 1300 then
		updateSayori('4','m')
		cw('s',"¿Eh?")
	elseif cl == 1301 then
		cw('s', "¿Y si...?")
	elseif cl == 1302 then
		cw('s', "¡Tiene un...!")
	elseif cl == 1303 then
		updateYuri('1','a')
		cw('y', "Ja, ja, ja. No me sorprendería.")
	elseif cl == 1304 then
		cw('y', "Ella es mucho más atractiva que todas nosotras juntas.")
	elseif cl == 1305 then
		updateSayori('1','r')
		cw('s', "Je, je, je... Eso es verdad...")
	elseif cl == 1306 then
		updateNatsuki('1','p')
		cw('n', "¡¿Perdona?!")
	elseif cl == 1307 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		cw('bl', "De repente, la puerta se abre.")
	elseif cl == 1308 then
		updateMonika('1','g',-60)
		cw('m', "¡Lo siento! ¡Lo siento mucho!")
	elseif cl == 1309 then
		cw('mc', "Ah, aquí estás...")
	elseif cl == 1310 then
		cw('m', "No quería llegar tarde...")
	elseif cl == 1311 then
		cw('m', "¡Espero no haberos preocupado!")
	elseif cl == 1312 then
		updateSayori('4','n',30)
		cw('s',"¿¿Eh??")
	elseif cl == 1313 then
		cw('s', "¡Al final, Monika ha preferido estar en el club en vez de quedarse con su novio!")
	elseif cl == 1314 then
		cw('s', "¡Menuda fuerza de voluntad!")
	elseif cl == 1315 then
		updateMonika('1','l')
		cw('m', "¿N-novio?...")
	elseif cl == 1316 then
		cw('m', "¿Se puede saber qué estabais cuchicheando?")
	elseif cl == 1317 then
		cw('bl', "Monika me mira con mucha curiosidad.")
	elseif cl == 1318 then
		cw('mc', "Ah, sobre nada...")
	elseif cl == 1319 then
		cw('mc', "En cualquier caso, ¿qué te ha retrasado?")
	elseif cl == 1320 then
		updateMonika('1','e')
		cw('s', "Em...")
	elseif cl == 1321 then
		cw('m', "Bueno, estar en la sala de estudio.")
	elseif cl == 1322 then
		cw('m', "Y si os digo la verdad, se me ha ido el santo al cielo...")
	elseif cl == 1323 then
		cw('m', "Ja, ja, ja...")
	elseif cl == 1324 then
		updateNatsuki('2','c',120)
		cw('n', "Eso no hay por donde agarrarlo.")
	elseif cl == 1325 then
		cw('n', "Deberías al menos haber escuchado la campana.")
	elseif cl == 1326 then
		updateMonika('1','m')
		cw('m', "Pues no la he escuchado, ya que estaba practicando con el piano...")
	elseif cl == 1327 then
		updateYuri('1','e',220)
		cw('y', "¿Piano?...")
	elseif cl == 1328 then
		cw('y', "No sabía que también supieras tocar el piano, Monika.")
	elseif cl == 1329 then
		updateMonika('1','l')
		cw('m', "¡Ah, no se me da muy bien!...")
	elseif cl == 1330 then
		cw('m', "He empezado hace poco.")
	elseif cl == 1331 then
		updateMonika('1','m')
		cw('m', "Siempre he querido aprender a tocar el piano.")
	elseif cl == 1332 then
		updateSayori('4','x')
		cw('s', "¡Cómo mola!")
	elseif cl == 1333 then
		cw('s', "¡Deberías tocarnos algo, Monika!")
	elseif cl == 1334 then
		cw('m', "Em...")
	elseif cl == 1335 then
		cw('bl', "Monika me mira.")
	elseif cl == 1336 then
		updateMonika('1','a')
		cw('m', "Tal vez cuando sepa un poco más, lo haga.")
	elseif cl == 1337 then
		updateSayori('4','q')
		cw('s', "¡Yupi~!")
	elseif cl == 1338 then
		cw('mc', "Qué guay.")
	elseif cl == 1339 then
		cw('mc', "Yo también tengo muchas ganas de verte tocar el piano.")
	elseif cl == 1340 then
		updateMonika('1','b')
		cw('m', "¿Ah, sí?")
	elseif cl == 1341 then
		cw('m', "En ese caso...")
	elseif cl == 1342 then
		cw('m', "No te decepcionaré, " .. player .. ".")
	elseif cl == 1343 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		updateMonika('5a','',80)
		cw('bl', "Monika me sonríe con dulzura.")
	elseif cl == 1344 then
		cw('m', "Pues...")
	elseif cl == 1345 then
		cw('mc', "¡No quiero meterte presión ni nada de por el estilo!")
	elseif cl == 1346 then
		updateMonika('1','a')
		cw('m', "Ja, ja, ja, no te preocupes.")
	elseif cl == 1347 then
		cw('m', "No hace mucho que empecé a dedicarle más tiempo.")
	elseif cl == 1348 then
		cw('m', "Y me encantaría compartir mi música con vosotros cuando esté lista.")
	elseif cl == 1349 then
		cw('mc', "Ya veo...")
	elseif cl == 1350 then
		cw('mc', "En ese caso, te deseo mucha suerte.")
	elseif cl == 1351 then
		updateMonika('1','j')
		cw('m', "¡Gracias~!")
	elseif cl == 1352 then
		updateMonika('1','a')
		cw('m', "Entonces, no me he perdido nada, ¿no?")
	elseif cl == 1353 then
		cw('mc', "Pues... no, la verdad.")
	elseif cl == 1354 then
		hideMonika()
		cw('bl', "Decido saltarme la parte en la que Sayori me la intentó liar.")
	elseif cl == 1355 then
		cw('bl', "Estoy seguro de que Natsuki tarde o temprano se quejará de ello.")
	elseif cl == 1356 then
		cw('bl', "Parece que todas ya se han calmado.")
	elseif cl == 1357 then
		cw('bl', "No sé cómo, pero Sayori ya se ha terminado su galleta.")
	elseif cl == 1358 then
		cw('bl', "Yuri reanuda su lectura y Natsuki desaparece en el armario.")
	end
	
	if cl == 1638 then
		bgUpdate('club')
		audioUpdate('3')
		updateMonika('5a','',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 1639 then
		cw('m', "Habéis terminado de leer los poemas de los demás, ¿verdad?")
	elseif cl == 1640 then
		cw('m', "Pues necesito que vengáis aquí, porque hoy tengo planeado una cosilla más...")
	elseif cl == 1641 then
		updateNatsuki('3','c',-40)
		cw('n', "¿Es sobre el festival?")
	elseif cl == 1642 then
		updateMonika('1','j')
		cw('m', "Bueno, más o menos~")
	elseif cl == 1643 then
		updateMonika('1','a')
		updateNatsuki('1','m')
		cw('n', "Uf, ¿de verdad tenemos que preparar algo para el festival?")
	elseif cl == 1644 then
		cw('n', "Como si pudiéramos preparar algo en condiciones en tan solo unos días.")
	elseif cl == 1645 then
		cw('n', "En vez de conseguir miembros nuevos para el club, vamos a acabar dando vergüenza ajena.")
	elseif cl == 1646 then
		updateYuri('2','g',200)
		cw('y', "Eso también me concierne.")
	elseif cl == 1647 then
		cw('y', "No se me dan muy bien los preparativos de última hora...")
	elseif cl == 1648 then
		updateMonika('1','b')
		cw('m', "¡No os preocupéis!")
	elseif cl == 1649 then
		cw('m', "Vamos a preparar algo normalito, ¿vale?")
	elseif cl == 1650 then
		updateMonika('1','a')
		cw('m', "Solo serán unas cuantas decoraciones.")
	elseif cl == 1651 then
		cw('m', "Sayori ha estado encargándose de los pósteres y yo he diseñado algunos panfletos para darlos durante el evento.")
	elseif cl == 1652 then
		updateNatsuki('3','c')
		cw('n', "Bueno, eso está muy bien y tal, pero...")
	elseif cl == 1653 then
		cw('n', "Pero con eso no nos dices lo que vamos a hacer realmente para el evento.")
	elseif cl == 1654 then
		updateMonika('1','d')
		cw('m', "¡Ah, lo siento! Pensaba que ya te lo había dicho.")
	elseif cl == 1655 then
		updateMonika('1','b')
		cw('m', "¡Vamos a hacer una interpretación!")
	elseif cl == 1656 then
		updateNatsuki('3','h')
		cw('n', "¿Una interpretación?")
	elseif cl == 1657 then
		updateYuri('3','n')
		cw('y', "Inter...")
	elseif cl == 1658 then
		updateYuri('3','o')
		cw('y', "Estooo, Monika...")
	elseif cl == 1659 then
		updateMonika('1','k')
		cw('m', "¡Así es! Vamos a realizar una interpretación poética.")
	elseif cl == 1660 then
		updateMonika('1','b')
		cw('m', "Cada uno va a elegir un poema a recitar durante el evento.")
	elseif cl == 1661 then
		cw('m', "¡Aunque lo mejor es que también dejaremos que la gente venga y recite algún poema!")
	elseif cl == 1662 then
		updateMonika('1','a')
		cw('m', "Sayori lo está escribiendo en todos los pósteres por si alguien quiere prepararse antes del evento.")
	elseif cl == 1663 then
		updateYuri('3','o',220)
		updateMonika('1','a',120)
		updateNatsuki('3','h',30)
		updateSayori('4','q',-60)
		cw('s', "Je, je, je~")
	elseif cl == 1664 then
		cw('bl', "Sayori, que estaba coloreando un póster, lo coge y nos lo muestra.")
	elseif cl == 1665 then
		updateNatsuki('4','w')
		cw('n', "Monika, ¿estás de broma?")
	elseif cl == 1666 then
		cw('n', "No habréis empezado ya a colocar esos pósteres... ¿Verdad?")
	elseif cl == 1667 then
		updateMonika('1','d')
		cw('m', "¿Eh? Bueno, pues sí...")
	elseif cl == 1668 then
		cw('m', "¿De verdad te parece mala idea?...")
	elseif cl == 1669 then
		updateNatsuki('1','s')
		cw('n', "No.")
	elseif cl == 1670 then
		cw('n', "La idea no es mala.")
	elseif cl == 1671 then
		updateNatsuki('1','w')
		cw('n', "Pero yo no me uní al club para esto, ¿sabes?")
	elseif cl == 1672 then
		updateNatsuki('1','x')
		cw('n', "¡Yo no me veo capaz de hacer eso frente a un grupo de gente así porque sí!")
	elseif cl == 1673 then
		updateYuri('3','r')
		cw('y', "¡O-opino lo mismo que Natsuki!")
	elseif cl == 1674 then
		updateYuri('3','w')
		cw('y', "Jamás en mi vida... sería capaz... de hacer algo así...")
	elseif cl == 1675 then
		cw('bl', "Al imaginárselo, Yuri empieza a agitar su cabeza con miedo.")
	elseif cl == 1676 then
		updateSayori('1','g')
		cw('s', "Chicas...")
	elseif cl == 1677 then
		updateMonika('1','g')
		cw('mc', "Sayori...")
	elseif cl == 1678 then
		cw('m', "Comprendo perfectamente por qué os pasa esto.")
	elseif cl == 1679 then
		cw('m', "Recordad que Natsuki y Yuri jamás habían compartido sus poemas con nadie hasta hace unos días...")
	elseif cl == 1680 then
		cw('m', "Es demasiado pediros que recitéis en voz alta vuestros poemas en una sala llena de gente.")
	elseif cl == 1681 then
		updateMonika('1','r')
		cw('m', "Creo que se me pasó por alto ese detalle.")
	elseif cl == 1682 then
		cw('m', "Lo siento.")
	elseif cl == 1683 then
		updateNatsuki('5','g')
		cw('n',"...")
	elseif cl == 1684 then
		updateMonika('1','i')
		cw('m', "Pero...")
	elseif cl == 1685 then
		cw('m', "¡Sigo pensando que deberíamos darlo todo!")
	elseif cl == 1686 then
		updateMonika('1','d')
		cw('m', "Somos los únicos responsables de dirigir el futuro del club.")
	elseif cl == 1687 then
		cw('m', "Si al empezar el evento lo damos todo...")
	elseif cl == 1688 then
		updateMonika('3','a')
		cw('m', "¡Tal vez podamos inspirar a otros a hacer lo mismo!")
	elseif cl == 1689 then
		cw('m', "¡Y cuanta más gente recite su poema, más podremos mostrarle a todo el mundo sobre qué trata la literatura!")
	elseif cl == 1690 then
		updateSayori('1','r')
		cw('s', "¡Sííí!")
	elseif cl == 1691 then
		updateSayori('1','x')
		cw('s', "Todo esto va sobre expresar nuestros sentimientos...")
	elseif cl == 1692 then
		cw('s', "Ser más sincero contigo mismo...")
	elseif cl == 1693 then
		cw('s', "Encontrar nuevos horizontes...")
	elseif cl == 1694 then
		cw('s', "¡Y por supuesto, pasárselo bien!")
	elseif cl == 1695 then
		updateMonika('4','b')
		cw('m', "¡Así es!")
	elseif cl == 1696 then
		cw('m', "Y esos son los motivos por los cuales todos estamos hoy en el club.")
	elseif cl == 1697 then
		updateMonika('4','e')
		cw('m', "¿Acaso no queréis compartir todo eso con los demás?")
	elseif cl == 1698 then
		cw('m', "¿Acaso no queréis inspirar al resto a encontrar esos mismos sentimientos que os han hecho venir aquí?")
	elseif cl == 1699 then
		updateMonika('1','e')
		cw('m', "Sé que queréis.")
	elseif cl == 1700 then
		cw('m', "Sé que todos queremos.")
	elseif cl == 1701 then
		updateMonika('1','b')
		cw('m', "Y lo único que necesitáis es quedaros de pie frente al aula durante dos minutos mientras recitáis el poema...")
	elseif cl == 1702 then
		cw('m', "¡Sé que podréis hacerlo!")
	elseif cl == 1703 then
		updateMonika('1','a')
		updateNatsuki('5','s')
		cw('n',"...")
	elseif cl == 1704 then
		updateYuri('4','b2')
		cw('y',"...")
	elseif cl == 1705 then
		updateSayori('1','g')
		cw('bl', "Natsuki y Yuri permanecen en silencio.")
	elseif cl == 1706 then
		cw('bl', "Sayori parece preocupada.")
	elseif cl == 1707 then
		cw('bl', "Parece que no me dejan otra elección...")
	elseif cl == 1708 then
		cw('mc', "Opino lo mismo...")
	elseif cl == 1709 then
		cw('mc', "No creo que sea mucho pedir.")
	elseif cl == 1710 then
		cw('mc', "Creo que Sayori y Monika lo están dando todo para conseguir nuevos miembros.")
	elseif cl == 1711 then
		cw('mc', "Y lo menos que podemos hacer es ayudarlas un poco.")
	elseif cl == 1712 then
		updateNatsuki('5','h')
		cw('n', "Bueno... Puede, pero...")
	elseif cl == 1713 then
		cw('n',"...")
	elseif cl == 1714 then
		cw('bl', "Parece que Natsuki se ha quedado sin excusas.")
	elseif cl == 1715 then
		cw('n', "Em...")
	elseif cl == 1716 then
		updateNatsuki('1','q')
		cw('n', "¡Muy bien, vale!")
	elseif cl == 1717 then
		cw('n', "Parece que tendré que echaros una mano.")
	elseif cl == 1718 then
		updateSayori('4','r')
		cw('s', "¡Genial~!")
	elseif cl == 1719 then
		updateSayori('4','a')
		updateMonika('1','e')
		cw('m', "Uf...")
	elseif cl == 1720 then
		cw('m', "Gracias, Natsuki.")
	elseif cl == 1721 then
		cw('m', "¿Y tú que dices, Yuri?...")
	elseif cl == 1722 then
		cw('y',"...")
	elseif cl == 1723 then
		cw('bl', "Yuri mira desanimada las caras llenas de expectación del resto.")
	elseif cl == 1724 then
		cw('y', "Ains...")
	elseif cl == 1725 then
		cw('y', "S-supongo que no me queda otra...")
	elseif cl == 1726 then
		updateSayori('4','r')
		cw('s', "¡Ja, ja, ja! ¡Ya estamos todos!")
	elseif cl == 1727 then
		cw('s', "Yuri, eres la mejor~")
	elseif cl == 1728 then
		updateSayori('4','a')
		cw('y', "Este club poco a poco me está matando...")
	elseif cl == 1729 then
		updateMonika('1','l')
		cw('m', "Ay, cielos...")
	elseif cl == 1730 then
		updateMonika('1','n')
		cw('m', "Yuri, no te va a pasar nada.")
	elseif cl == 1731 then
		cw('m', "Pero aún así...")
	elseif cl == 1732 then
		updateMonika('1','b')
		cw('m', "¡Pongámonos manos a la obra!")
	elseif cl == 1733 then
		cw('m', "Quiero que cada uno elija un poema que haya compuesto anteriormente.")
	elseif cl == 1734 then
		cw('m', "Para practicar recitándolo frente a los demás.")
	elseif cl == 1735 then
		updateMonika('1','a')
		updateNatsuki('1','p')
		cw('n', "¡¡N-n-ni de coña!!")
	elseif cl == 1736 then
		updateYuri('3','n')
		cw('y', "¡Monika!...")
	elseif cl == 1737 then
		cw('y', "¡Qué repentino!...")
	elseif cl == 1738 then
		updateMonika('2','a')
		cw('m', "Bueno, si no podéis recitar los poemas entre nosotros, ¿cómo esperáis hacerlo frente a tantos desconocidos?")
	elseif cl == 1739 then
		updateYuri('4','c2')
		updateNatsuki('1','o')
		cw('y', "Oh, no...")
	elseif cl == 1740 then
		updateMonika('2','a')
		cw('m', "No os preocupéis.")
	elseif cl == 1741 then
		cw('m', "Yo seré la primera en hacerlo para que os sintáis mas cómodas.")
	elseif cl == 1742 then
		updateSayori('1','r')
		cw('s', "¿¿Puedo ser la siguiente??")
	elseif cl == 1743 then
		cw('m', "Ja, ja, ja. Por supuesto.")
    elseif cl == 1744 then
		updateMonika('2','d')
		cw('m', "Veamos...")
	elseif cl == 1745 then
		cw('bl', "Monika abre su cuaderno para buscar el poema que tenía en mente.")
	elseif cl == 1746 then
		cw('bl', "Ahora se dirige hacia donde está el podio.")
	elseif cl == 1747 then
		hideSayori()
		hideNatsuki()
		hideYuri()
		updateMonika('1','a',80)
		cw('m', "Este poema se titula El vuelo.")
	elseif cl == 1748 then
		updateMonika('1','r')
		cw('m', "Ejem...")
	elseif cl == 1749 then
		updateMonika('1','a')
		cw('bl', "Monika empieza a recitar su poema.")
	elseif cl == 1750 then
		cw('bl', "Su voz clara y segura llena la habitación.")
	elseif cl == 1751 then
		cw('bl', "Además, su entonación es impoluta.")
	elseif cl == 1752 then
		cw('bl', "Ella sabe exactamente cómo aplicar sus emociones en cada verso que recita, dando vida a sus palabras.")
	elseif cl == 1753 then
		cw('bl', "¿Será algo que ha hecho con anterioridad o le sale con esa naturalidad?")
	elseif cl == 1754 then
		cw('bl', "Miro a mi alrededor.")
	elseif cl == 1755 then
		cw('bl', "Todas le prestan mucha atención a Monika.")
	elseif cl == 1756 then
		cw('bl', "Sayori parece impresionada.")
	elseif cl == 1757 then
		cw('bl', "Yuri tiene una expresión tan rara que no sé qué se le estará pasando por la cabeza.")
	elseif cl == 1758 then
		updateMonika('1','j')
		cw('bl', "Y finalmente, Monika termina de recitar su poema.")
	elseif cl == 1759 then
		cw('bl', "Aplaudimos.")
	elseif cl == 1760 then
		cw('bl', "Monika suspira y sonríe.")
	elseif cl == 1761 then
		updateMonika('1','a')
		updateSayori('4','m',200)
		cw('s', "¡Ha... ha sido increíble, Monika!")
	elseif cl == 1762 then
		updateMonika('1','j')
		cw('m', "Ja, ja, ja, muchas gracias.")
	elseif cl == 1763 then
		updateMonika('1','a')
		cw('m', "Espero que esto os haya servido como ejemplo.")
    elseif cl == 1764 then
		cw('m', "Sayori, ¿estás lista?")
	elseif cl == 1765 then
		updateYuri('2','r',-40)
		cw('y', "¡S-s...! ¡¡Sí!!!")
	elseif cl == 1766 then
		updateSayori('1','n')
		cw('s', "¡Aaah! ¡Yuri está que arde!")
	elseif cl == 1767 then
		cw('bl', "Yuri agarra con fuerza la hoja que tiene entre sus manos y se levanta.")
	elseif cl == 1768 then
		cw('bl', "Cabizbaja, se dirige al podio corriendo.")
	elseif cl == 1769 then
		hideMonika()
		hideSayori()
		updateYuri('2','v',80)
		cw('y', "¡E-este poema se titula...!")
	elseif cl == 1770 then
		cw('bl', "Yuri nos mira a todos ansiosa.")
	elseif cl == 1771 then
		cw('s', "Tú puedes, Yuri...")
	elseif cl == 1772 then
		cw('y', "S-se titula... La huella del ojo escarlata.")
	elseif cl == 1773 then
		cw('bl', "A Yuri le empieza a temblar la voz tan pronto como empieza a leer su poema.")
	elseif cl == 1774 then
		cw('bl', "Y eso que hace unos minutos, prácticamente se negó a hacer esto.")
	elseif cl == 1775 then
		cw('bl', "¿Por qué habrá cambiado de idea en tan poco tiempo?")
	elseif cl == 1776 then
		updateYuri('2','l')
		cw('bl', "Tras recitar las primeras líneas, la voz de Yuri cambia.")
	elseif cl == 1777 then
		cw('bl', "Como cuando se mete en su mundo al leer sus libros.")
	elseif cl == 1778 then
		cw('bl', "Sus temblorosas palabras se transforman en las agudas sílabas de una mujer feroz y segura de sí misma.")
	elseif cl == 1779 then
		cw('bl', "El poema está lleno de cambios de pronunciación y de estructura, pero eso no le impide recitarlo a la perfección.")
	elseif cl == 1780 then
		cw('bl', "¡Estoy seguro de que esta debe ser una extraña demostración del torbellino de fuego que reside en su cabeza!...")
	elseif cl == 1781 then
		updateYuri('2','t')
		cw('bl', "Y de golpe, termina.")
	elseif cl == 1782 then
		cw('bl', "Todo el mundo está impactado.")
	elseif cl == 1783 then
		cw('bl', "Yuri vuelve a la realidad y mira impactada a todo el mundo, sin creerse lo que acaba de hacer.")
	elseif cl == 1784 then
		updateYuri('3','o')
		cw('y', "Yo...")
    elseif cl == 1785 then
		cw('bl', "Encargarme de esta situación depende de mí.")
	elseif cl == 1786 then
		cw('bl', "Soy el primero en empezar a aplaudir.")
	elseif cl == 1787 then
		cw('bl', "El resto se une a mí, dándole a Yuri el reconocimiento que se merece.")
	elseif cl == 1788 then
		cw('bl', "No es que no quisiéramos aplaudir.")
	elseif cl == 1789 then
		cw('bl', "Es que nos pilló con la guardia tan baja que no supimos cómo reaccionar.")
	elseif cl == 1790 then
		cw('bl', "Al aplaudir, Yuri, con el poema abrazado contra su pecho, se dirige corriendo a su sitio y se sienta.")
	elseif cl == 1791 then
		hideYuri()
		updateMonika('1','a',80)
		cw('m', "Yuri, has estado increíble.")
    elseif cl == 1792 then
		cw('m', "Gracias por compartir tu poema con el resto.")
	elseif cl == 1793 then
		cw('y',"...")
	elseif cl == 1794 then
		cw('bl', "Parece que Yuri se ha quedado fuera de combate...")
	elseif cl == 1795 then
		updateSayori('1','q',-40)
		cw('s', "Muy bieeen~")
	elseif cl == 1796 then
		cw('s', "¡Parece que soy la siguiente!")
	elseif cl == 1797 then
		cw('bl', "Sayori se levanta con un saltito y se dirige alegremente al podio.")
	elseif cl == 1798 then
		hideMonika()
		updateSayori('1','x',80)
		cw('s', "Este se titula... Mi pradera.")
	elseif cl == 1799 then
		cw('mc', "Em...")
	elseif cl == 1800 then
		updateSayori('1','s')
		cw('s', "¡Ja, ja, ja...!")
    elseif cl == 1801 then
		updateSayori('4','s')
		cw('s', "Perdonad, se me ha escapado la risa...")
	elseif cl == 1802 then
		updateSayori('4','q')
		cw('s', "Je, je, je...")
	elseif cl == 1803 then
		cw('mc',"Sayori...")
	elseif cl == 1804 then
		updateSayori('1','l')
		cw('s', "¡Es mucho más difícil de lo que pensaba!")
	elseif cl == 1805 then
		cw('s', "¿Cómo lo hacéis con tanta facilidad?")
	elseif cl == 1806 then
		updateMonika('3','a',-40)
		updateSayori('1','b')
		cw('m',"Ah...")
	elseif cl == 1807 then
		cw('m', "Intenta imaginarte que no estamos aquí.")
	elseif cl == 1808 then
		cw('m', "Imagínate que te lo estás recitando a ti misma, frente a un espejo o en tu propia mente.")
	elseif cl == 1809 then
		cw('m', "Como es tu poema, te saldrá sin problemas.")
	elseif cl == 1810 then
		updateSayori('1','i')
		cw('s', "Vaya, ya veo...")
	elseif cl == 1811 then
		cw('s', "Muy bien, pues...")
	elseif cl == 1812 then
		hideMonika()
		updateSayori('1','c')
		cw('bl', "Sayori empieza a recitar su poema.")
	elseif cl == 1813 then
		cw('bl', "No sé cómo, pero su suave voz encaja perfectamente con el poema.")
	elseif cl == 1814 then
		cw('bl', "Sin embargo, el poema no es tan alegre como Sayori.")
	elseif cl == 1815 then
		cw('bl', "Es sereno y agridulce.")
	elseif cl == 1816 then
		cw('bl', "Si tuviera que leerlo en papel, no lo entendería...")
	elseif cl == 1817 then
		cw('bl', "Pero con la voz de Sayori, cobra un nuevo significado.")
	elseif cl == 1818 then
		cw('bl', "Tal vez Sayori se refería a esto cuando me dijo que le gustaban mis poemas.")
	elseif cl == 1819 then
		cw('bl', "Es como conocer más a fondo a alguien que creía que conocía por completo.")
	elseif cl == 1820 then
		cw('bl', "Sayori termina, y aplaudimos.")
	elseif cl == 1821 then
		updateSayori('3','q')
		cw('s', "¡Lo logré~!")
	elseif cl == 1822 then
		cw('mc', "Buen trabajo, Sayori.")
	elseif cl == 1823 then
		cw('s', "Je, je, je, incluso a " .. player .. " le ha gustado.")
	elseif cl == 1824 then
		cw('s', "Parece que eso es una buena señal~")
	elseif cl == 1825 then
		cw('mc', "¿Qué quieres decir?...")
	elseif cl == 1826 then
		updateMonika('2','b',-40)
		cw('m', "Te ha salido fantástico, Sayori.")
	elseif cl == 1827 then
		cw('m', "El tono del poema encaja contigo perfectamente.")
	elseif cl == 1828 then
		cw('m', "Pero es posible que otros poemas no logren tan buen efecto sin ese tipo de interpretación...")
	elseif cl == 1829 then
		updateSayori('1','g')
		cw('s', "¿Eh? No te sigo...")
	elseif cl == 1830 then
		updateMonika('1','a')
		cw('m', "En otras palabras, he visto más poemas tuyos que con tu suave forma de recitarlos, no funcionarían tan bien.")
	elseif cl == 1831 then
		cw('m', "Es posible que necesiten más fuerza, aunque depende del que estés leyendo...")
    elseif cl == 1832 then
		updateSayori('1','x')
		cw('s', "¡Ah, ya sé qué me quieres decir!")
	elseif cl == 1833 then
		cw('s', "Bueno... He estado practicando...")
	elseif cl == 1834 then
		updateSayori('5a')
		cw('s', "Pero me da vergüenza hacerlo frente a todo el mundo...")
	elseif cl == 1835 then
		cw('s', "Je, je, je...")
	elseif cl == 1836 then
		updateMonika('4','a')
		cw('m', "La próxima vez, te haré escoger un poema que te sea algo más difícil recitarlo.")
	elseif cl == 1837 then
		cw('m', "Pero como ya sabéis, no queda mucho para que llegue el festival.")
	elseif cl == 1838 then
		updateSayori('1','q')
		cw('s', "Vaaaaale...")
	elseif cl == 1839 then
		updateMonika('1','a')
		cw('m', "Y bien, ¿quién sale ahora?...")
	elseif cl == 1840 then
		cw('m', "¿Natsuki?")
	elseif cl == 1841 then
		updateNatsuki('5','s',200)
		cw('n', "Jum.")
	elseif cl == 1842 then
		cw('n', "No me hagas salir antes que " .. player .. ".")
	elseif cl == 1843 then
		cw('n', "Ni que fuera a comparar quién lo ha hecho mejor...")
	elseif cl == 1844 then
		cw('n', "Pero dejemos que " .. player .. " nos reduzca las expectativas antes de que yo lo haga.")
	elseif cl == 1845 then
		updateSayori('1','g')
		cw('s', "Natsuki...")
	elseif cl == 1846 then
		cw('mc', "Está bien, está bien...")
	elseif cl == 1847 then
		cw('mc', "Será mejor que acabe con esto de una vez.")
	elseif cl == 1848 then
		cw('mc', "Aunque tampoco tengo mucha variedad en mi repertorio...")
	elseif cl == 1849 then
		cw('mc', "Tendré que salir con el que he escrito hoy.")
	elseif cl == 1850 then
		cw('bl', "Me levanto y me dirijo frente al podio.")
	elseif cl == 1851 then
		updateNatsuki('2','c',220)
		updateSayori('1','a',120)
		updateMonika('1','a',30)
		updateYuri('1','e',-60)
		cw('bl', "Las chicas clavan sus ojos en mí, haciéndome sentir muy incómodo.")
	elseif cl == 1852 then
		cw('bl', "Recito mi poema.")
	elseif cl == 1853 then
		cw('bl', "Como aún no me siento muy seguro de lo que compongo, me cuesta ponerle energía.")
	elseif cl == 1854 then
		cw('bl', "A pesar de todo, recibo un aplauso al terminar.")
	elseif cl == 1855 then
		cw('mc', "Perdonadme si no he conseguido estar a la altura de las demás...")
	elseif cl == 1856 then
		updateMonika('1','a')
		cw('m', "Tranquilo, no te preocupes.")
	elseif cl == 1857 then
		cw('m', "Preocúpate más de la falta de confianza con tus poemas que de tus habilidades recitando.")
	elseif cl == 1858 then
		cw('m', "Aunque eso es algo que irás perfeccionando con el tiempo.")
	elseif cl == 1859 then
		cw('mc', "Bueno... Puede.")
	elseif cl == 1860 then
		updateMonika('1','j')
		cw('m', "¡Muy bien!")
	elseif cl == 1861 then
		updateMonika('1','a')
		cw('m', "Ya solo quedas tú, Natsuki.")
	elseif cl == 1862 then
		updateNatsuki('2','g')
		cw('n', "Ya, ya.")
	elseif cl == 1863 then
		cw('n', "Ya voy.")
	elseif cl == 1864 then
		cw('bl', "A regañadientes, Natsuki se levanta de su sitio y se dirige al podio.")
    elseif cl == 1865 then
		hideMonika()
		hideSayori()
		hideYuri()
		updateNatsuki('2','c',80)
		cw('n', "Este poema se titula...")
	elseif cl == 1866 then
		updateNatsuki('2','q')
		cw('n', "Se titula...")
	elseif cl == 1867 then
		updateNatsuki('1','x')
		cw('n', "¡¿P-por qué estáis todos mirándome?!")
	elseif cl == 1868 then
		cw('m', "Porque ahora te toca recitar tu poema...")
	elseif cl == 1869 then
		updateNatsuki('2','x')
		cw('n', "Jum...")
	elseif cl == 1870 then
		updateNatsuki('2','h')
		cw('n', "Bueno... El poema se titula Salta.")
	elseif cl == 1871 then
		cw('bl', "Natsuki suspira.")
	elseif cl == 1872 then
		updateNatsuki('2','c')
		cw('bl', "Una vez empieza a recitar el poema, su amarga actitud se desvanece un poco.")
	elseif cl == 1873 then
		cw('bl', "Aunque sigue algo desganada, su poema tiene ritmo y rimas.")
	elseif cl == 1874 then
		cw('bl', "El estilo característico de Natsuki funciona sorprendentemente bien en voz alta.")
	elseif cl == 1875 then
		cw('bl', "Siento como si las palabras rebotaran de arriba a abajo, dándole vida al poema.")
	elseif cl == 1876 then
		updateNatsuki('2','s')
		cw('bl', "Natsuki termina y todo el mundo aplaude.")
	elseif cl == 1877 then
		cw('bl', "Refunfuñando, vuelve a su sitio.")
	elseif cl == 1878 then
		updateMonika('2','a',-40)
		cw('m', "¿A que no ha estado tan mal?")
	elseif cl == 1879 then
		updateNatsuki('5','w')
		cw('n', "Es fácil para ti decirlo...")
	elseif cl == 1880 then
		cw('n', "Más te vale no obligarme a hacer algo así.")
	elseif cl == 1881 then
		updateMonika('1','d')
		cw('m', "Ah, bueno...")
	elseif cl == 1882 then
		cw('m', "¿Te sientes al menos lo suficientemente preparada como para recitar otro poema frente a otra gente?")
	elseif cl == 1883 then
		updateNatsuki('2','c')
		cw('n', "Es más, ¡hacerlo frente a otra gente me será mucho más fácil!")
	elseif cl == 1884 then
		cw('n', "Puedo poner la cara que me dé la gana frente a otra gente.")
	elseif cl == 1885 then
		updateNatsuki('2','q')
		cw('n', "Pero con mis amigos...")
	elseif cl == 1886 then
		cw('n', "Me da... vergüenza.")
	elseif cl == 1887 then
		updateSayori('1','b',200)
		cw('s', "Eso no me lo esperaba...")
	elseif cl == 1888 then
		cw('s', "Creo que para mí sería al revés.")
	elseif cl == 1889 then
		cw('n', "Bueno, pues así está el patio...")
	elseif cl == 1890 then
		updateMonika('1','a')
		cw('m', "En ese caso...")
	elseif cl == 1891 then
		cw('m', "No tendrás que preocuparte mucho por el festival.")
	elseif cl == 1892 then
		updateNatsuki('2','b')
		cw('m', "Dicho esto, me gustaría daros las gracias por haber venido.")
	elseif cl == 1893 then
		cw('m', "Puede que os resulte difícil, pero espero que os hayáis hecho una idea para el festival.")
	elseif cl == 1894 then
		updateMonika('4','b')
		cw('m', "Aseguraos de escoger un poema y practicarlo lo suficiente para el festival, ¿vale?")
	elseif cl == 1895 then
		cw('m', "Iré a preparar panfletos. Hacedme saber con antelación el poema que recitaréis.")
	elseif cl == 1896 then
		cw('mc', "Ains...")
	elseif cl == 1897 then
		cw('mc', "Creo que debería ir componiendo otro poema para la ocasión.")
	elseif cl == 1898 then
		updateMonika('1','j')
		cw('m', "¡Bien hecho!")
	elseif cl == 1899 then
		updateMonika('1','a')
		cw('m', "Tampoco es necesario que sea tuyo.")
	elseif cl == 1900 then
		cw('m', "Estoy gratamente sorprendida con que estés dándolo todo en este club.")
	elseif cl == 1901 then
		updateMonika('5a')
		cw('m', "Me hace muy feliz.")
	elseif cl == 1902 then
		cw('mc', "Ah... Sí, je...")
	elseif cl == 1903 then
		audioUpdate('8')
		hideSayori()
		hideNatsuki()
		updateMonika('4','b',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 1904 then
		cw('m', "Creo que eso es todo por hoy.")
	elseif cl == 1905 then
		cw('m', "Sé que falta poco para el festival, pero intentemos componer nuevos poemas para mañana.")
	elseif cl == 1906 then
		cw('m', "Nos ha ido muy bien hasta ahora, por lo que me gustaría mantener el ritmo.")
	elseif cl == 1907 then
		cw('m', "Mañana terminaremos la planificación del festival y tendremos una semana para prepararlo.")
	elseif cl == 1908 then
		cw('m', "¡El lunes será el gran día!")
	elseif cl == 1909 then
		updateSayori('4','r',-40)
		cw('s', "¡Qué emoción~!")
	elseif cl == 1910 then
		updateYuri('4','b2',200)
		cw('y', "Puedo hacerlo... Puedo hacerlo...")
	elseif cl == 1911 then
		cw('mc', "Está bien...")
	elseif cl == 1912 then
		hideSayori()
		hideMonika()
		hideYuri()
		cw('bl', "Me levanto.")
	elseif cl == 1913 then
		cw('bl', "Sé que no podré alcanzar el mismo entusiasmo que Sayori y Monika, pero daré lo mejor de mí.")
	elseif cl == 1914 then
		cw('bl', "Si es por el bien del club...")
	elseif cl == 1915 then
		cw('bl', "Y para impresionar a Monika...")
	elseif cl == 1916 then
		cw('bl', "Tendré que darlo todo.")
	elseif cl == 1917 then
		updateSayori('1','a',80)
		cw('mc', "¿Nos vamos ya, Sayori?")
	elseif cl == 1918 then
		updateSayori('1','x')
		cw('s', "¡Sip!")
	elseif cl == 1919 then
		updateNatsuki('2','d',200)
		cw('n', "Míralos, volviendo siempre juntitos a casa.")
	elseif cl == 1920 then
		updateMonika('5a','',-40)
		cw('m', "¿No son adorables?")
	elseif cl == 1921 then
		updateSayori('1','q')
		cw('s', "Je, je, je~")
	elseif cl == 1922 then
		cw('mc', "Vamos, chicas... No os hagáis ideas equivocadas.")
	elseif cl == 1923 then
		updateNatsuki('2','d',220)
		updateSayori('1','q',120)
		updateMonika('5a','',30)
		updateYuri('1','u',-60)
		cw('y', "Pero debe ser algo bonito...")
	elseif cl == 1924 then
		cw('mc', "Bueno...")
	elseif cl == 1925 then
		cw('mc',"Ah...")
	elseif cl == 1926 then
		cw('bl', "¿Cómo respondo a eso?")
	elseif cl == 1927 then
		updateSayori('1','d')
		cw('s', "No te preocupes, " .. player .. ", no tienes por qué decir nada.")
	elseif cl == 1928 then
		cw('mc', "En fin, vayámonos...")
	elseif cl == 1929 then
		bgUpdate('residential')
		hideAll()
		cw('bl', "Regreso a casa junto a Sayori una vez más.")
	elseif cl == 1930 then
		cw('bl', "Aunque solo hayan pasado unos días, ya han cambiado muchas cosas.")
	elseif cl == 1931 then
		cw('bl', "Pero hoy, Sayori ha estado algo más callada de lo normal de camino a casa.")
	elseif cl == 1932 then
		cw('mc', "Oye, Sayori...")
	elseif cl == 1933 then
		updateSayori('1','k',80)
		cw('s',"...")
	elseif cl == 1934 then
		updateSayori('1','n')
		cw('s', "¡L-lo siento! ¡Estaba en las nubes!")
	elseif cl == 1935 then
		cw('mc', "Ah, no te preocupes...")
	elseif cl == 1936 then
		updateSayori('1','d')
		cw('s', "Mmm...")
	elseif cl == 1937 then
		cw('s', "Estaba... pensando en algo que ha ocurrido antes.")
	elseif cl == 1938 then
		cw('s', "Me gusta, em...")
	elseif cl == 1939 then
		updateSayori('1','y')
		cw('s', "E-ejem...")
	elseif cl == 1940 then
		cw('bl', "Sayori le da muchas vueltas a sus palabras.")
	elseif cl == 1941 then
		updateSayori('1','a')
		cw('s', "Digamos que... un día, "..ch2_winner.." te ofreciera volver contigo a casa...")
	elseif cl == 1942 then
		cw('s', "¡¿Eh?!")
	elseif cl == 1943 then
		cw('s', "¿Qué harías?")
	elseif cl == 1944 then
		cw('mc', "¿Pero qué clase de pregunta es esa?...")
	elseif cl == 1945 then
		cw('mc', "Me estás poniendo en un aprieto...")
	elseif cl == 1946 then
		updateSayori('1','y')
		cw('s', "Je, je, je...")
	elseif cl == 1947 then
		menutext = "Bueno..."
		choices = {"Volvería a casa con "..ch2_winner..".","Seguiría volviendo a casa contigo."}
		choice_enable()
	elseif cl >= 1948 and cl < 1973 then
		if choicepick == "Volvería a casa con "..ch2_winner.."." or choicepick == 'n' or choicepick == 'y' then
			if ch2_winner == tr.names[2] or choicepick == 'n' then
				choicepick = 'n'
				ch2_end_natsuki()
			else
				choicepick = 'y'
				ch2_end_yuri()
			end
		elseif choicepick == "Seguiría volviendo a casa contigo." or choicepick == 's' then
			choicepick = 's'
			ch2_end_sayori()
		end
		choices = {''}
		
	elseif cl == 1973 then
		cw('bl', "Además, el festival es dentro de unos días...")
	elseif cl == 1974 then
		cw('bl', "¿Quién sabe lo que puede llegar a pasar?")
	elseif cl == 1975 then
		fadeOut(1)
	elseif cl >= 1976 then
		cl = 1975
	end
end

function ch2_end_sayori()
	if cl == 1948 then
		cw('mc',"Sayori...")
	elseif cl == 1949 then
		cw('mc', "¿De verdad crees que te sustituiría por "..ch2_winner.."?")
	elseif cl == 1950 then
		updateSayori('1','e')
		cw('s',"¡¿Eh?!")
	elseif cl == 1951 then
		cw('s', "P-pero...")
	elseif cl == 1952 then
		if ch2_winner == tr.names[2] then
		cw('s', "Es tan adorable y divertida...")
		else
		cw('s', "Es tan guapa e inteligente...")
		end
	elseif cl == 1953 then
		cw('mc', "Ains...")
	elseif cl == 1954 then
		cw('mc', "Pero si ya la veo en el club todos los días.")
	elseif cl == 1955 then
		cw('mc', "Además, siempre quieres que volvamos juntos a casa...")
	elseif cl == 1956 then
		cw('mc', "Y es algo que no quiero quitarte.")
	elseif cl == 1957 then
		updateSayori('1','y')
		cw('s', "Eres tan tonto, " .. player .. "...")
	elseif cl == 1958 then
		cw('s', "A veces piensas demasiado en mí.")
	elseif cl == 1959 then
		cw('s',"Creo que "..ch2_winner.." se merece más tu atención...")
	elseif cl == 1960 then
		cw('mc', "Sayori, lo tengo claro.")
	elseif cl == 1961 then
		cw('mc', "De verdad que a veces no te entiendo...")
	elseif cl == 1962 then
		cw('s', "Lo siento...")
	elseif cl == 1963 then
		cw('mc', "Además, ¿qué sentido tiene darle vueltas a algo que nunca va a pasar?")
	elseif cl == 1964 then
		updateSayori('1','k')
		cw('s', "Mmm...")
	elseif cl == 1965 then
		hideSayori()
		cw('bl', "La conversación se apaga.")
	elseif cl == 1966 then
		cw('bl', "Qué raro es ver a Sayori preocuparse tanto por algo así...")
	elseif cl == 1967 then
		cw('bl', "Pero también quiero respetarla y hacer que siga feliz.")
	elseif cl == 1968 then
		scriptJump(1973)
	end
end

function ch2_end_natsuki()
	if cl == 1948 then
		cw('mc', "Volver a casa junto a Natsuki, ¿eh?...")
	elseif cl == 1949 then
		cw('bl', "¿Por qué pensar en ello hace que mi corazón se ponga a mil?...")
	elseif cl == 1950 then
		cw('mc', "O sea...")
	elseif cl == 1951 then
		cw('mc', "Creo que es porque temo su reacción si la rechazara...")
	elseif cl == 1952 then
		updateSayori('1','x')
		cw('s', "¿Acaso no te parece muy adorable y divertida?")
	elseif cl >= 1953 then
		ch2_end_shared()
	end
end

function ch2_end_yuri()
	if cl == 1948 then
		cw('mc', "Volver a casa junto a Yuri, ¿eh?...")
	elseif cl == 1949 then
		cw('bl', "¿Por qué pensar en ello hace que mi corazón se ponga a mil?...")
	elseif cl == 1950 then
		cw('mc', "O sea...")
	elseif cl == 1951 then
		cw('mc', "Dado lo difícil que es socializar con ella, me sentiría fatal si la rechazara, así que...")
	elseif cl == 1952 then
		updateSayori('1','x')
		cw('s', "¿Pero acaso no es guapa e inteligente?")
    elseif cl >= 1953 then
		ch2_end_shared()
	end
end

function ch2_end_shared()
	if cl == 1953 then
		cw('mc', "¡Eso no tiene nada que ver con lo que he dicho!")
	elseif cl == 1954 then
		updateSayori('4','s')
		cw('s', "¡Ja, ja, ja! ¡Lo has admitido!")
	elseif cl == 1955 then
		cw('mc', "Ains...")
	elseif cl == 1956 then
		cw('mc', "No tiene ningún sentido darle vueltas a algo que nunca va a pasar.")
	elseif cl == 1957 then
		updateSayori('1','d')
		cw('s', "Bueno, puede...")
	elseif cl == 1958 then
		cw('s', "Pero me gusta pensar en ello.")
	elseif cl == 1959 then
		updateSayori('1','y')
		cw('s', "Además, dentro de poco, ya no me necesitarás más, ¿sabes?")
	elseif cl == 1960 then
		cw('mc', "¿Que no te necesitaré?...")
	elseif cl == 1961 then
		cw('mc',"Sayori...")
	elseif cl == 1962 then
		cw('mc', "No tengo ni idea de lo que se te está pasando por la cabeza ahora mismo.")
	elseif cl == 1963 then
		cw('s', "Lo siento...")
	elseif cl == 1964 then
		cw('mc', "Todos somos únicos...")
	elseif cl == 1965 then
		cw('mc', "Nadie en el club podría reemplazarte.")
	elseif cl == 1966 then
		updateSayori('1','k')
		cw('s', "Mmm...")
	elseif cl == 1967 then
		cw('s', "Si tú lo dices...")
	elseif cl == 1968 then
		hideSayori()
		cw('bl', "La conversación se apaga y me deja una sensación incómoda.")
	elseif cl == 1969 then
		cw('bl', "Pero ella tiene la culpa de hacerme sentirme así con una pregunta tan rara...")
	elseif cl == 1970 then
		cw('bl', "No le puedo mentir.")
	elseif cl == 1971 then
		cw('bl', "Pero si algo la hace feliz, jamás me perdonaría quitárselo.")
	elseif cl == 1972 then
		cw('bl', "Por eso le dije que era inútil darle vueltas a algo así.")
	end
end
