local y_gtimer = 0
local gtext = glitchtext(20)

function yuri_glitch2(x)
	y_gtimer = y_gtimer + dt
	if y_gtimer > 1.2 and y_gtimer < 1.25 then
		updateYuri('1','a',x)
		xaload = -1
	elseif y_gtimer > 0.9 and y_gtimer < 0.95  then
		updateYuri('0a','',x)
		xaload = -1
	elseif y_gtimer > 0.6 and y_gtimer < 0.65 then
		updateYuri('0b','',x)
		xaload = -1
	elseif y_gtimer < 0.1 then
		updateYuri('0a','',x)
		xaload = -1
	end
end

function ch21_endmenu()
	menutext = ''
	choices = {"Natsuki.","Yuri."}
	choice_enable()
end

function ch21script()
	if cl == 299 then
	bgUpdate('club_day2')
	audioUpdate('2g2')
	updateMonika('5a','',80)
		cw('m', "¡Hola de nuevo, " .. player .. "!")
	elseif cl == 300 then
		cw('m', "Me alegra ver que no has salido pitando. ¡Ja, ja, ja!")
	elseif cl == 301 then
		cw('mc', "Nah, no te preocupes.")
	elseif cl == 302 then
		cw('mc', "Puede que esto me siga resultando algo extraño, pero al menos mantengo mi palabra.")
	elseif cl == 303 then
	hideMonika()
		cw('bl', "Bueno, ya estoy de vuelta en el club de literatura.")
	elseif cl == 304 then
		cw('bl', "Como he sido el último en llegar, todas estaban ya a lo suyo.")
	elseif cl == 305 then
	yuri_glitch2(80)
		cw('y', "Gracias por mantener tu promesa, " .. player .. ".")
	elseif cl == 306 then
	y_gtimer = 0
	updateYuri('1','a')
		cw('y', "Espero que esto no se te haga muy pesado.")
	elseif cl == 307 then
	updateYuri('1','u')
		cw('y', "...")
	elseif cl == 308 then
	event_initstart('n_glitch1')
	elseif cl == 309 then
	if branch == '3ds' then
		updateNatsuki('4','e',200,0)
	else
		updateNatsuki('4','e',200,4)
	end
		cw('n', "¡Venga ya! Ni que hubiera que aplaudirle por ello.")
	elseif cl == 310 then
		cw('n', "Monika tuvo que suplicarte para que vinieras.")
	elseif cl == 311 then
		cw('n', "No sé si tu plan es venir aquí y pasar el rato o...")
	elseif cl == 312 then
		cw('n', "Pero si no te lo tomas en serio, no te veo aquí hasta el final.")
	elseif cl == 313 then
	event_initstart('m_onlayer_front')
	updateMonika('2','b',-40)
		cw('m', "Natsuki, teniendo en cuenta que guardas tu colección de manga en el aula, creo que estás hablando demasiado.")
	elseif cl == 314 then
	updateNatsuki('4','o')
		cw('n', "¡¡M-M-M...!!")
	elseif cl == 315 then
	event_end()
	hideMonika()
		cw('bl', "Natsuki se ha quedado pillada y no sabe si decir «Monika» o «Manga».")
	elseif cl == 316 then
	updateNatsuki('1','v')
		cw('n', "¡¡El manga cuenta como literatura!!")
	elseif cl == 317 then
	hideNatsuki()
		cw('bl', "Derrotada, rápidamente se sentó en su sitio.")
	elseif cl == 318 then
	updateYuri('2','s')
		cw('y', "Lo siento, " .. player .. "...")
	elseif cl == 319 then
		cw('y', "Nos aseguraremos de que tu comodidad sea lo más prioritario, ¿vale?")
	elseif cl == 320 then
	updateYuri('2','g')
		cw('bl', "Yuri mira decepcionada a Natsuki.")
	elseif cl == 321 then
	updateYuri('1','a')
		cw('y', "Em, en cualquier caso...")
	elseif cl == 322 then
		cw('y', "Ahora que ya estás asentado en el club y todo eso...")
	elseif cl == 323 then
		cw('y', "Puede que ya te interese elegir qué libro leer...")
	elseif cl == 324 then
		cw('mc', "Bueno...")
	elseif cl == 325 then
		cw('mc', "No lo puedo negar.")
	elseif cl == 326 then
		cw('mc', "Como tú misma has dicho, ahora soy parte del club.")
	elseif cl == 327 then
		cw('mc', "Por lo que creo que ya iría tocando elegir uno.")
	elseif cl == 328 then
	updateYuri('4','b2')
		cw('y', "E-espera...")
	elseif cl == 329 then
		cw('y', "¡Tampoco quería forzarte a ello!")
	elseif cl == 330 then
		cw('y', "Em...")
	elseif cl == 331 then
		cw('y', "Si de verdad no tienes ganas, olvida lo que te he dicho...")
	elseif cl == 332 then
		cw('mc', "Oh... Tampoco es eso, Yuri.")
	elseif cl == 333 then
		cw('mc', "Quiero intentar ser parte de este club.")
	elseif cl == 334 then
		cw('mc', "Así que, aunque no lea con frecuencia, estaré encantado de escoger un libro si eso quieres que haga.")
	elseif cl == 335 then
	updateYuri('3','t')
		cw('y', "¿E-estás seguro?...")
	elseif cl == 336 then
		cw('y', "Es que siento que...")
	elseif cl == 337 then
	updateYuri('3','u')
		cw('y', "Bueno, como vicepresidenta y tal...")
	elseif cl == 338 then
		cw('y', "Siento que debería ayudarte a leer algo que sea de tu agrado.")
	elseif cl == 339 then
		cw('bl', "Yuri saca un libro de su mochila.")
	elseif cl == 340 then
	updateYuri('1','s')
		cw('y', "No quería que te sintieses apartado...")
	elseif cl == 341 then
		cw('y', "Así que escogí un libro que pensé que podría gustarte.")
	elseif cl == 342 then
		cw('y', "Es una lectura breve, por lo que debería mantenerte atento aunque no suelas leer.")
	elseif cl == 343 then
		cw('y', "Y podríamos, ya sabes...")
	elseif cl == 344 then
	updateYuri('4','b2')
		cw('y', "Debatir sobre él... Si quieres...")
	elseif cl == 345 then
		cw('bl', "¿C-cómo...?")
	elseif cl == 346 then
		cw('bl', "¿Cómo puede ser esta chica tan adorable sin querer serlo?")
	elseif cl == 347 then
		cw('bl', "Incluso ha elegido un libro que cree que me gustará, a pesar del hecho de que no leo demasiado...")
	elseif cl == 348 then
		cw('mc', "Yuri, ¡muchas gracias! ¡Lo leeré! ¡Dalo por hecho!")
	elseif cl == 349 then
		cw('bl', "Tomo el libro de forma entusiasta.")
	elseif cl == 350 then
	updateYuri('2','m')
		cw('y', "Uf...")
	elseif cl == 351 then
	updateYuri('2','a')
		cw('y', "Bueno, puedes leerlo a tu ritmo.")
	elseif cl == 352 then
		cw('y', "Espero con ansias saber qué te ha parecido.")
	elseif cl == 353 then
	hideYuri()
		cw('bl', "Ahora que todos estamos listos, esperaba que Monika pusiera en marcha algunas actividades programadas para el club.")
	elseif cl == 354 then
		cw('bl', "Pero no parece que vaya a ser ese el caso.")
	elseif cl == 355 then
		cw('bl', "Yuri ya se encuentra sumergida en un libro.")
	elseif cl == 356 then
		cw('bl', "No puedo evitar percatarme de su intensa expresión. Es como si hubiese estado esperando esta oportunidad.")
	elseif cl == 357 then
		cw('bl', "Mientras tanto, Natsuki está rebuscando en el armario.")
	end
	
	if cl == 900 then
	bgUpdate('club_day2')
	audioUpdate('3g')
		cw('mc', "Uf...")
	elseif cl == 901 then
		cw('bl', "Supongo que ya estamos todos.")
	elseif cl == 902 then
		cw('bl', "Echo un vistazo al aula.")
	elseif cl == 903 then
		cw('bl', "Esto ha sido algo más estresante de lo que esperaba.")
	elseif cl == 904 then
		cw('bl', "Es como si todo el mundo me juzgase por mis mediocres habilidades de escritura...")
	elseif cl == 905 then
		cw('bl', "Aunque estén siendo majas, es imposible que mis poemas estén a la altura de los suyos.")
	elseif cl == 906 then
		cw('bl', "Después de todo, esto es un club de literatura.")
	elseif cl == 907 then
		cw('bl', "Suspiro.")
	elseif cl == 908 then
		cw('bl', "Supongo que este es el lío en el que me he acabado metiendo.")
	elseif cl == 909 then
		cw('bl', "En la otra punta del aula, Monika está escribiendo algo en su cuaderno.")
	elseif cl == 910 then
		cw('bl', "Mis ojos se centran en Yuri y Natsuki.")
	elseif cl == 911 then
	updateYuri('2','g',10)
	updateNatsuki('1','g',150)
		cw('bl', "Intercambian tímidamente hojas de papel, compartiendo sus respectivos poemas.")
	elseif cl == 912 then
	updateYuri('2','i')
		cw('bl', "A medida que leen juntas, observo cada una de sus expresiones faciales.")
	elseif cl == 913 then
		cw('bl', "Las cejas de Natsuki se fruncen debido a su frustración.")
	elseif cl == 914 then
		cw('bl', "Mientras tanto, Yuri me dirige una triste sonrisa.")
	elseif cl == 915 then
	updateNatsuki('1','q')
		cw('n', "(¿Qué clase de lenguaje es este?...)")
	elseif cl == 916 then
	updateYuri('2','f')
		cw('y', "¿Eh?")
	elseif cl == 917 then
		cw('y', "Em... ¿Has dicho algo?")
	elseif cl == 918 then
	updateNatsuki('2','c')
		cw('n', "E-em, qué va.")
	elseif cl == 919 then
		cw('bl', "Natsuki deja el poema sobre el escritorio con desdén.")
	elseif cl == 920 then
		cw('n', "Podría decirse que es sofisticado.")
	elseif cl == 921 then
	updateYuri('2','i')
		cw('y', "Oh... Gracias...")
	elseif cl == 922 then
		cw('y', "El tuyo es... adorable...")
	elseif cl == 923 then
	updateNatsuki('2','h')
		cw('n', "¿Adorable?")
	elseif cl == 924 then
	updateYuri('1','h')
		cw('n', "¿Acaso has pasado completamente por alto el simbolismo o algo?")
	elseif cl == 925 then
		cw('n', "Está claramente basado en la sensación de la derrota.")
	elseif cl == 926 then
		cw('n', "¿Cómo puede ser eso adorable?")
	elseif cl == 927 then
	updateYuri('3','f')
		cw('y', "¡Y-ya lo sé!")
	elseif cl == 928 then
		cw('y', "Tan solo me refería...")
	elseif cl == 929 then
	updateYuri('3','h')
		cw('y', "Al lenguaje empleado...")
	elseif cl == 930 then
		cw('y', "Solo intentaba decir algo positivo...")
	elseif cl == 931 then
	n "¿Eh?"
	elseif cl == 932 then
	updateNatsuki('4','w')
		cw('n', "¿Tan difícil te resulta decir algo positivo sobre mi poema?")
	elseif cl == 933 then
		cw('n', "Pues gracias, ¡pero no ha sido positivo en absoluto!")
	elseif cl == 934 then
	updateYuri('1','i')
		cw('y', "Mmm...")
	elseif cl == 935 then
		cw('y', "Bueno, tengo un par de sugerencias...")
	elseif cl == 936 then
	updateNatsuki('5','x')
		cw('n', "Jum.")
	elseif cl == 937 then
		cw('n', "Si quisiera sugerencias, le habría preguntado a alguien a quien realmente le hubiera gustado el poema.")
	elseif cl == 938 then
		cw('n', "Y a quién le ha gustado, sí se puede saber.")
	elseif cl == 939 then
	updateNatsuki('5','e')
		cw('n', "A Monika le gustó.")
	elseif cl == 940 then
		cw('n', "¡Y a " .. player .. " también!")
	elseif cl == 941 then
		cw('n', "Así que en base a eso, estaré más que encantada de darte sugerencias de cosecha propia.")
	elseif cl == 942 then
		cw('n', "Antes que nada...")
	elseif cl == 943 then
	updateYuri('2','l')
		cw('y', "Disculpa...")
	elseif cl == 944 then
		cw('y', "Aprecio la oferta, pero llevo bastante tiempo perfilando mi estilo.")
	elseif cl == 945 then
	updateYuri('2','h')
		cw('y', "Y no espero cambiarlo a corto plazo, a menos que me tope con algo particularmente inspirador, claro.")
	elseif cl == 945 then
		cw('y', "Cosa que todavía no he hecho.")
	elseif cl == 946 then
	updateNatsuki('1','o')
		cw('n', "¡Grr!...")
	elseif cl == 947 then
	updateYuri('1','k')
		cw('y', "Y a " .. player .. " también le gustó mi poema, para que lo sepas.")
	elseif cl == 948 then
		cw('y', "Incluso me dijo que le había impresionado.")
	elseif cl == 949 then
	audioUpdate('0')
		cw('bl', "Natsuki se pone de pie repentinamente.")
	elseif cl == 950 then
	updateNatsuki('4','y')
		cw('n', "Vaya.")
	elseif cl == 951 then
		cw('n', "No tenía ni idea de que estuvieras tan interesada en impresionar a nuestro nuevo miembro, Yuri.")
	elseif cl == 952 then
	audioUpdate('7')
	updateYuri('1','n')
		cw('y', "¡¿E-eh?!")
	elseif cl == 953 then
		cw('y', "¡Eso no es lo que yo...!")
	elseif cl == 954 then
	updateYuri('1','o')
		cw('y', "Em...")
	elseif cl == 955 then
		cw('y', "Tan... Tan solo estás...")
	elseif cl == 956 then
		cw('bl', "Yuri también se levanta.")
	elseif cl == 957 then
	updateYuri('2','r')
		cw('y', "¡A lo mejor solo estás celosa de que " .. player .. " haya apreciado más mi consejo que el tuyo!")
	elseif cl == 958 then
	updateNatsuki('1','e')
		cw('n', "¡Ja! ¿Y cómo sabes que no ha apreciado más el mío?")
	elseif cl == 959 then
		cw('n', "¿Cómo puedes ser tan egocéntrica?")
	elseif cl == 960 then
	updateYuri('3','h')
		cw('y', "¡Yo...!")
	elseif cl == 961 then
		cw('y', "No...")
	elseif cl == 962 then
		cw('y', "Si fuese tan egocéntrica como dices...")
	elseif cl == 963 then
	updateYuri('1','r')
		cw('y', "¡Sobreactuaría para que todo lo que hiciera fuera tremendamente cursi!")
	elseif cl == 964 then
	updateNatsuki('1','o')
		cw('n', "¡Uuuuuh!...")
	elseif cl == 965 then
		cw('n', "Bueno, ¡¿sabes qué?!")
	elseif cl == 966 then
		cw('n', "¡¡Al menos no soy esa a la que se le han puesto las tetas como carretas en cuanto " .. player .. " empezó a venir!!")
	elseif cl == 967 then
	updateYuri('3','p')
		cw('y', "¡¡N-Natsuki!!")
	elseif cl == 968 then
	updateMonika('3','l',-40)
	updateYuri('3','p',80)
	updateNatsuki('1','o',200)
		cw('m', "Em, Natsuki, creo que te has...")
	elseif cl == 969 then
		cw('bl', "¡Tú no te metas!")
	event_init('ny_argument')
	elseif cl == 970 then
	hideMonika()
	updateYuri('2','h',10)
	updateNatsuki('1','o',150)
	audioUpdate('7g')
	event_start('ny_argument')
		cw('y', "Descargar de esa forma tus propias inseguridades contra alguien...")
	elseif cl == 971 then
		cw('y', "Te comportas como lo que aparentas, Natsuki.")
	elseif cl == 972 then
	updateNatsuki('4','o')
		cw('n', "¿Que yo qué? ¡Y me lo dice la perra pretenciosa!")
	elseif cl == 973 then
		cw('y', "¿Pretenciosa?...")
	elseif cl == 974 then
	updateYuri('2','r')
		cw('y', "¡Siento que mi estilo de vida le sea muy difícil de asimilar a alguien de tu edad mental!")
	elseif cl == 975 then
	updateNatsuki('4','f')
		cw('n', "¿¿Ves??")
	elseif cl == 976 then
		cw('n', "¡Diciendo esas cosas solo me das la razón!")
	elseif cl == 977 then
	updateNatsuki('4','e')
		cw('n', "La mayoría de la gente aprende a comportarse tras superar la secundaria, por si no lo sabías.")
	elseif cl == 978 then
		cw('y', "Si realmente quieres demostrar algo, ¡deja de molestar a los demás con tu repugnante actitud!")
	elseif cl == 979 then
		cw('y', "¿Crees que puedes compensar tu personalidad tóxica solo con vestirte y comportarte de forma adorable?")
	elseif cl == 980 then
	updateYuri('1','k')
		cw('y', "Lo único adorable que hay en ti es lo mucho que intentas ser alguien que no eres.")
	elseif cl == 981 then
	updateNatsuki('2','y')
		cw('n', "Guau, vas a acabar cortándote con esa lengua tan afilada, Yuri.")
	elseif cl == 982 then
		cw('n', "Uy, espera... Que ya lo haces, ¿no?")
	elseif cl == 983 then
	updateYuri('3','n')
		cw('y', "¿¿A-acabas de insinuar que me hago cortes??")
	elseif cl == 984 then
	updateYuri('3','r')
		cw('y', "¡¿Qué cojones te pasa en la cabeza?!")
	elseif cl == 985 then
	updateNatsuki('1','e')
		cw('n', "Venga, ¡continúa!")
	elseif cl == 986 then
		cw('n', "¡Deja que " .. player .. " escuche lo que piensas en realidad!")
	elseif cl == 987 then
		cw('n', "¡Estoy segura de que le parecerás encantadora después de hacerlo!")
	elseif cl == 988 then
	updateYuri('3','n')
		cw('y', "¡A-ah!...")
	elseif cl == 989 then
		cw('bl', "De repente, Yuri se gira hacia mí, como si se hubiese percatado de mi presencia.")
	elseif cl == 990 then
	updateYuri('2','n')
		cw('y', "¡" .. player .. "...!")
	elseif cl == 991 then
		cw('y', "Natsuki... ¡Natsuki solo está intentando hacerme quedar mal!...")
	elseif cl == 992 then
	updateNatsuki('4','w')
		cw('n', "¡Eso no es verdad!")
	elseif cl == 993 then
		cw('n', "¡Ella ha empezado!")
	elseif cl == 994 then
	updateNatsuki('1','g')
	updateYuri('1','t')
	mc "..."
	elseif cl == 995 then
	style_edited = true
	cw('bl',"¡¿Cómo he acabado metido en este embrollo?!",'nwfast')
	elseif cl == 996 then
	cw('bl',"Como si supiera algo sobre la literatura...",'nwfast')
	elseif cl == 997 then
	cw('bl',"¡Pero si le doy la razón a alguna, probablemente piense mejor de mí!",'nwfast')
	elseif cl == 998 then
	cw('bl',"¡Y le daré la razón claramente a...!",'nwfast')
	elseif cl == 999 then
	ch21_endmenu()
	elseif cl >= 1000 and cl <= 1005 then
	sfxplay('s_kill_glitch1s')
	if xaload > 0 then ch21_endmenu() end
	elseif cl == 1006 then
	event_end('next')
	hideAll()
	elseif cl == 1007 then
	audioUpdate('0')
	sfxplay('s_kill_glitch1s')
	event_initstart('ny_argument2')
	m_Set.x = 0
	style_edited = false
	m "..."
	elseif cl == 1008 then
	m "..."
	m_Set.x = 0
	elseif cl == 1009 then
	if branch == '3ds' then
		updateMonika('1','m',30)
	else
		updateMonika('1','m',80)
	end
		cw('m', "Mmm...")
	elseif cl == 1010 then
		cw('m', "Oye, " .. player .. "...")
	elseif cl == 1011 then
	updateMonika('1','e')
	m "¿Por qué no\nsalimos fuera\nun ratito?"
	elseif cl == 1012 then
		cw('m', "¿Te parece?")
	elseif cl == 1013 then
	event_end('ny_argument2')
	bgUpdate('corridor')
	updateMonika('1','n',80)
		cw('m', "Siento lo de antes...")
	elseif cl == 1014 then
		cw('m', "No deberían haber intentado involucrarte.")
	elseif cl == 1015 then
	updateMonika('1','e')
		cw('m', "Puede que lo mejor sea quedarnos al margen de esto...")
	elseif cl == 1016 then
		cw('m', "Volveremos a entrar cuando hayan terminado de gritarse.")
	elseif cl == 1017 then
	updateMonika('5a')
		cw('m', "Ja, ja, ja...")
	elseif cl == 1018 then
		cw('m', "Vaya presidenta estoy hecha, ¿verdad?")
	elseif cl == 1019 then
	updateMonika('1','m')
		cw('m', "Ni siquiera puedo hacerle frente como corresponde a los miembros de mi propio club...")
	elseif cl == 1020 then
		cw('m', "Ojalá fuera de vez en cuando algo más firme.")
	elseif cl == 1021 then
		cw('m', "Pero nunca tengo el valor para ello...")
	elseif cl == 1022 then
	updateMonika('1','e')
		cw('m', "Lo entiendes, ¿no?")
	elseif cl == 1023 then
		cw('m', "En fin...")
	elseif cl == 1024 then
	updateMonika('1','a')
		cw('m', "Si eso hace que quieras pasar menos tiempo con las demás, supongo que no hay problema.")
	elseif cl == 1025 then
	updateMonika('1','j')
		cw('m', "Ojalá pudiera pasar más tiempo contigo...")
	elseif cl == 1026 then
	hideMonika()
		cw('bl', "De repente, Natsuki sale disparada del aula.")
	elseif cl == 1027 then
	updateNatsuki('1','2h',80)
	n "..."
	elseif cl == 1028 then
	updateNatsuki('1','2f')
	pause(0.75)
	elseif cl == 1029 then
	hideNatsuki()
		cw('bl', "Se va corriendo rápidamente.")
	elseif cl == 1030 then
	updateMonika('1','l',80)
		cw('m', "Santo cielo...")
	elseif cl == 1031 then
		cw('m', "Bueno, parece que ya han terminado...")
	elseif cl == 1032 then
	bgUpdate('club_day2')
	hideAll()
		cw('y', "Yo no quería...")
	elseif cl == 1033 then
		cw('y', "Yo no quería...")
	elseif cl == 1034 then
		cw('y', "Yo no quería...")
	elseif cl == 1035 then
		cw('bl', "Yuri, sentada en su pupitre, se balancea hacia adelante y hacia atrás con las manos en la frente.")
	elseif cl == 1036 then
		cw('mc', "¿Yuri?...")
	elseif cl == 1037 then
	updateYuri('4','d2',80)
		cw('y', "¡¡Yo no quería hacerle daño!!")
	elseif cl == 1038 then
		cw('mc', "T-te creo...")
	elseif cl == 1039 then
		cw('bl', "No tengo ni la más remota idea de lo que Yuri puede haberle dicho a Natsuki.")
	elseif cl == 1040 then
		cw('bl', "O de lo que puede haberle hecho.")
	elseif cl == 1041 then
	cw('y',player..".")
	elseif cl == 1042 then
		cw('y', "Por favor, no me odies.")
	elseif cl == 1043 then
		cw('y', "¡Te lo ruego!")
	elseif cl == 1044 then
		cw('y', "¡Yo no soy así!")
	elseif cl == 1045 then
		cw('y', "Hoy me pasa algo extraño...")
	elseif cl == 1046 then
	updateMonika('1','d',-40)
		cw('m', "Está bien, Yuri.")
	elseif cl == 1047 then
		cw('m', "Sabemos que no pretendías hacer nada malo.")
	elseif cl == 1048 then
	updateMonika('1','j')
		cw('m', "Además, estoy segura de que Natsuki mañana ya se habrá olvidado de todo.")
	elseif cl == 1049 then
	updateMonika('1','a')
		cw('m', "Completamente segura.")
	elseif cl == 1050 then
	updateYuri('4','b2')
	y "..."
	elseif cl == 1051 then
		cw('m', "En fin, la sesión ha terminado, por lo que ya podéis volver a casa si queréis.")
	elseif cl == 1052 then
	updateYuri('4','a2')
	y "..."
	elseif cl == 1053 then
		cw('bl', "Yuri me observa como si quisiera decirme algo.")
	elseif cl == 1054 then
		cw('bl', "Pero tampoco le quita el ojo de encima a Monika.")
	elseif cl == 1055 then
	updateYuri('2','v')
		cw('y', "P-puedes ir yéndote si quieres, Monika...")
	elseif cl == 1056 then
		cw('y', "Me gustaría quedarme un rato más.")
	elseif cl == 1057 then
	updateMonika('2','k')
		cw('m', "Soy la presidenta, así que debería ser la última en salir.")
	elseif cl == 1058 then
		cw('m', "Esperaré a que estés lista.")
	elseif cl == 1059 then
	updateMonika('2','a')
	updateYuri('4','b2')
	y "..."
	elseif cl == 1060 then
	y "..."
	elseif cl == 1061 then
		cw('y', "Bueno... Y yo soy la vicepresidenta, así que...")
	elseif cl == 1062 then
		cw('y', "Déjame cargar hoy con esa responsabilidad, por favor.")
	elseif cl == 1063 then
	updateMonika('2','i')
		cw('m', "Lo dices como si por alguna razón, no me quisieras por aquí, Yuri.")
	elseif cl == 1064 then
	updateYuri('3','p')
		cw('y', "¡N-no es eso!")
	elseif cl == 1065 then
	updateYuri('3','o')
		cw('y', "No es eso...")
	elseif cl == 1066 then
	updateYuri('3','n')
		cw('y', "Es solo que...")
	elseif cl == 1067 then
	updateYuri('3','q')
		cw('y', "Aún no tuve la ocasión de debatir acerca de mi libro con " .. player .. "...")
	elseif cl == 1068 then
		cw('y', "Y sería... vergonzoso contigo escuchándonos...")
	elseif cl == 1069 then
	updateMonika('1','r')
		cw('m', "Ains...")
	elseif cl == 1070 then
	updateMonika('1','d')
		cw('m', "Parece que no tengo elección, ¿eh?")
	elseif cl == 1071 then
	updateYuri('1','t')
		cw('y', "S-siento las molestias...")
	event_init('yuri_glitch')
	elseif cl == 1072 then
	updateYuri('1','s')
		cw('y', "Pero aprecio de corazón que lo entiend")
	elseif cl == 1073 then
	audioUpdate('g1')
	event_start('yuri_glitch')
	cw('y',gtext.." "..gtext..gtext)
	elseif cl == 1074 then
	alpha = 10
	scriptJump(1075)
	elseif cl >= 1075 then
	fadeOut(1)
	end
end
