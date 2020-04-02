function ch1script()
	--ch1-main
	if cl == 348 then
		bgUpdate('club')
		audioUpdate('2')
		updateMonika('5a','',80)
		cw('m', "¡Hola de nuevo, " .. player .. "!")
	elseif cl == 349 then
		cw('m', "Me alegra ver que no has salido pitando. ¡Ja, ja, ja!")
    elseif cl == 350 then
		cw('mc', "Nah, no te preocupes.")
	elseif cl == 351 then
		cw('mc', "Puede que esto me siga resultando algo extraño, pero al menos mantengo mi palabra.")
    elseif cl == 352 then
		hideMonika()
		cw('bl', "Bueno, ya estoy de vuelta en el club de literatura.")
    elseif cl == 353 then
		cw('bl', "Como he sido el último en llegar, todas estaban ya a lo suyo.")
    elseif cl == 354 then
		updateYuri('1','a',80)
		cw('y', "Gracias por mantener tu promesa, " .. player .. ".")
	elseif cl == 355 then
		cw('y', "Espero que esto no se te haga muy pesado.")
	elseif cl == 356 then
		updateYuri('1','u')
		cw('mc', "...")
	elseif cl == 357 then
		updateNatsuki('4','b',200)
		cw('n', "¡Venga ya! Ni que hubiera que aplaudirle por ello.")
	elseif cl == 358 then
		cw('n', "Ya me contó Sayori que no querías unirte a ningún club este año.")
	elseif cl == 359 then
		cw('n', "¡Ni tampoco el pasado!")
	elseif cl == 360 then
		updateNatsuki('4','c')
		cw('n', "No sé si tu plan es venir aquí y pasar el rato o...")
	elseif cl == 361 then
		cw('n', "Pero si no te lo tomas en serio, no te veo aquí hasta el final.")
	elseif cl == 362 then
		updateMonika('2','b',-40)
		cw('m', "Natsuki, teniendo en cuenta que guardas tu colección de manga en el aula, creo que estás hablando demasiado.")
	elseif cl == 363 then
		updateNatsuki('4','o')
		cw('n', "¡¡M-M-M...!!")
    elseif cl == 364 then
		hideMonika()
		cw('bl', "Natsuki se ha quedado pillada y no sabe si decir «Monika» o «Manga».")
	elseif cl == 365 then
		updateNatsuki('1','v')
		cw('n', "¡¡El manga cuenta como literatura!!")
	elseif cl == 366 then
		hideNatsuki()
		cw('bl', "Derrotada, Natsuki regresa rápidamente a su sitio.")
	elseif cl == 367 then
		updateSayori('2','x',10)
		updateYuri('1','u',150)
		cw('s', "No os preocupéis...")
	elseif cl == 368 then
		cw('s',player .. " siempre da lo mejor de sí cuando se divierte.")
	elseif cl == 369 then
		cw('s', "Siempre me echa una mano sin ni siquiera pedírselo.")
	elseif cl == 370 then
		cw('s', "Ya sea con la cocina, limpiando mi habitación...")
	elseif cl == 371 then
		updateSayori('2','a')
		updateYuri('2','m')
		cw('y', "Vaya, sí que es digno de confianza...")
	elseif cl == 372 then
		cw('mc', "Pero Sayori, eso es porque tu habitación está tan desordenada que me distrae.")
	elseif cl == 373 then
		cw('mc', "Y una vez casi salimos ardiendo por tu culpa.")
	elseif cl == 374 then
		updateSayori('5a')
		cw('s', "Ah, sí... Je, je, je...")
	elseif cl == 375 then
		updateYuri('1','s')
		cw('y', "Vosotros dos sois muy buenos amigos, ¿no?")
	elseif cl == 376 then
		cw('y', "Qué envidia...")
	elseif cl == 377 then
		updateSayori('1','a')
		cw('s', "¿Por qué? ¡Si tú y " .. player .. " también podéis ser muy buenos amigos!")
	elseif cl == 378 then
		updateYuri('4','b2')
		cw('y', "Mmm…")
	elseif cl == 379 then
		cw('mc', "Sayori...")
	elseif cl == 380 then
		cw('s', "¿Sí?")
	elseif cl == 381 then
		cw('mc',"...")
	elseif cl == 382 then
		cw('bl', "Como de costumbre, Sayori parece no ser consciente de la extraña situación en la que me ha metido.")
	elseif cl == 383 then
		updateSayori('4','x')
		cw('s', "¡Ah, sí! Hoy hasta Yuri te ha traído algo, ¿sabes?")
	elseif cl == 384 then
		updateYuri('3','n')
		cw('y', "¡E-espera! ¡Sayori...!")
	elseif cl == 385 then
		cw('y', "¿Eh?")
	elseif cl == 386 then
		updateYuri('3','o')
		cw('y', "Em... No es nada...")
	elseif cl == 387 then
		updateSayori('4','r')
		cw('s', "No seas tímida~")
	elseif cl == 388 then
		cw('y', "Que no es nada...")
	elseif cl == 389 then
		cw('mc', "¿Qué es?")
	elseif cl == 390 then
		updateYuri('4','c2')
		cw('y', "¡O-olvídalo!")
	elseif cl == 391 then
		cw('y', "Sayori, has hecho que parezca un gran regalo cuando en realidad no lo es...")
	elseif cl == 392 then
		cw('y', "Uuuuf, ¿y ahora qué hago?...")
	elseif cl == 393 then
		updateSayori('1','g')
		cw('s', "¿Eh? Lo siento, Yuri, lo dije sin pensar...")
	elseif cl == 394 then
		hideSayori()
		updateYuri('4','c2',80)
		cw('bl', "Parece que depende de mí arreglar esta situación...")
	elseif cl == 395 then
		cw('mc', "Eh, no te preocupes.")
	elseif cl == 396 then
		cw('mc', "En primer lugar, no esperaba ningún regalo ni nada por el estilo.")
	elseif cl == 397 then
		cw('mc', "Por lo que cualquier buen gesto por tu parte siempre será una agradable sorpresa.")
    elseif cl == 398 then
		cw('mc', "Me hará feliz sea lo que sea.")
	elseif cl == 399 then
		updateYuri('3','v')
		cw('y', "S-si tú lo dices...")
	elseif cl == 400 then
		cw('mc', "Claro. No le daré mucha importancia si tú no quieres que se la dé.")
	elseif cl == 401 then
		cw('y', "Está bien...")
	elseif cl == 402 then	
		updateYuri('1','a')
		cw('y', "Bueno, aquí tienes.")
	elseif cl == 403 then
		cw('bl', "Yuri saca un libro de su mochila.")
	elseif cl == 404 then
		cw('y', "No quería que te sintieses apartado...")
	elseif cl == 405 then
		cw('y', "Así que escogí un libro que pensé que podría gustarte.")
	elseif cl == 406 then
		cw('y', "Es una lectura breve, por lo que debería mantenerte atento aunque no suelas leer.")
	elseif cl == 407 then
		cw('y', "Y podríamos, bueno...")
	elseif cl == 408 then
		updateYuri('4','b2')
		cw('y', "Debatir sobre él... Si quieres...")
	elseif cl == 409 then
		cw('y', "¿...?")
    elseif cl == 410 then
		cw('bl', "¿Cómo puede ser esta chica tan adorable sin querer serlo?")
	elseif cl == 411 then
		cw('bl', "Incluso ha elegido un libro que cree que me gustará, a pesar del hecho de que no leo demasiado...")
	elseif cl == 412 then
		cw('mc', "Yuri, ¡muchas gracias! ¡Lo leeré! ¡Dalo por hecho!")
	elseif cl == 413 then
		cw('bl', "Tomo el libro de forma entusiasta.")
    elseif cl == 414 then
		updateYuri('2','m')
		cw('y', "Uf...")
	elseif cl == 415 then
		updateYuri('2','a')
		cw('y', "Bueno, puedes leerlo a tu ritmo.")
	elseif cl == 416 then
		cw('y', "Espero con ansias saber qué te ha parecido.")
	elseif cl == 417 then
		hideYuri()
		cw('bl', "Ahora que todos estamos listos, esperaba que Monika pusiera en marcha algunas actividades programadas para el club.")
	elseif cl == 418 then
		cw('bl', "Pero no parece que vaya a ser ese el caso.")
    elseif cl == 419 then
		cw('bl', "Sayori y Monika están teniendo una alegre conversación en la esquina.")
	elseif cl == 420 then
		cw('bl', "Yuri ya se encuentra sumergida en un libro.")
	elseif cl == 421 then
		cw('bl', "No puedo evitar percatarme de su intensa expresión. Es como si hubiese estado esperando esta oportunidad.")
	elseif cl == 422 then
		cw('bl', "Mientras tanto, Natsuki está rebuscando en el armario.")
		
	elseif cl == 652 then
		hideSayori()
		updateMonika('1','a',10)
		cw('m', "Por cierto, ¿anoche te acordaste de componer un poema?")
	elseif cl == 653 then
		cw('mc', "P-por supuesto...")
	elseif cl == 654 then
		cw('bl', "Se termina mi calma.")
	elseif cl == 655 then
		cw('bl', "No puedo creer que haya aceptado hacer algo tan vergonzoso.")
	elseif cl == 656 then
		cw('bl', "Como nunca había hecho algo así antes, no estaba muy inspirado.")
	elseif cl == 657 then
		cw('m', "Bueno, ahora que todos estamos listos, ¿por qué no compartís vuestro poema con alguien?")
	elseif cl == 658 then
		updateSayori('4','q',150)
		cw('s', "¡Qué emoción!")
	elseif cl == 659 then
		hideSayori()
		hideMonika()
		cw('bl', "Sayori y Monika sacan sus poemas de forma entusiasta.")
	elseif cl == 660 then
		cw('bl', "El de Sayori está en una hoja arrugada, arrancada de un cuaderno de espirales.")
	elseif cl == 661 then
		cw('bl', "Por otro lado, Monika escribió el suyo en su cuaderno.")
	elseif cl == 662 then
		cw('bl', "Puedo llegar a ver la impoluta letra de Monika desde mi propio asiento.")
	elseif cl == 663 then
		cw('bl', "Natsuki y Yuri también sacan, a regañadientes, los suyos de sus mochilas.")
	elseif cl == 664 then
		cw('bl', "Yo hago lo mismo.")
	elseif cl == 665 then
		poeminitialize()
	end

	--ch1-end
	if cl == 900 then
		audioUpdate('3')
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
		cw('bl', "Caminando de un lado a otro de la habitación, Sayori y Monika charlan alegremente.")
	elseif cl == 910 then
		cw('bl', "Mis ojos se centran en Yuri y Natsuki.")
	elseif cl == 911 then
		updateYuri('2','g',10)
		updateNatsuki('2','g',150)
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
		cw('y',"¿Eh?")
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
		updateNatsuki('1','h')
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
		cw('y', "Intentaba decir algo positivo...")
	elseif cl == 931 then
		cw('n',"¿Eh?")
	elseif cl == 932 then
		updateNatsuki('4','w')
		cw('n', "¿Tan difícil te resulta decir algo positivo sobre mi poema?")
	elseif cl == 933 then
		cw('n', "Pues gracias, ¡pero no ha sido positivo en absoluto!")
	elseif cl == 934 then
		updateYuri('1','i')
		cw('y', "Em...")
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
		cw('n', "A Sayori le gustó.")
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
	elseif cl == 946 then
		cw('y', "Cosa que todavía no he hecho.")
	elseif cl == 947 then
		updateNatsuki('1','o')
		cw('n', "¡Grr!...")
	elseif cl == 948 then
		updateYuri('1','k')
		cw('y', "Y a " .. player .. " también le gustó mi poema, para que lo sepas.")
	elseif cl == 949 then
		cw('y', "Incluso me dijo que le había impresionado.")
	elseif cl == 950 then
		audioUpdate('0')
		cw('bl', "Natsuki se pone de pie repentinamente.")
	elseif cl == 951 then
		updateNatsuki('4','y')
		cw('n', "Vaya.")
	elseif cl == 952 then
		cw('n', "No tenía ni idea de que estuvieras tan interesada en impresionar a nuestro nuevo miembro, Yuri.")
	elseif cl == 953 then
		audioUpdate('7')
		updateYuri('1','n')
		cw('y', "¡¿E-eh?!")
	elseif cl == 954 then
		cw('y', "¡Eso no es lo que yo...!")
	elseif cl == 955 then
		updateYuri('1','o')
		cw('y', "Em...")
	elseif cl == 956 then
		cw('y', "Tan... Tan solo estás...")
	elseif cl == 957 then
		cw('bl', "Yuri también se levanta.")
	elseif cl == 958 then
		updateYuri('2','r')
		cw('y', "¡A lo mejor solo estás celosa de que " .. player .. " haya apreciado más mi consejo que el tuyo!")
	elseif cl == 959 then
		updateNatsuki('1','e')
		cw('n', "¡Ja! ¿Y cómo sabes que no ha apreciado más el mío?")
	elseif cl == 960 then
		cw('n', "¿Cómo puedes ser tan egocéntrica?")
	elseif cl == 961 then
		updateYuri('3','h')
		cw('y', "¡Yo...!")
	elseif cl == 962 then
		cw('y', "No...")
	elseif cl == 963 then
		cw('y', "Si fuese tan egocéntrica como dices...")
	elseif cl == 964 then
		updateYuri('1','r')
		cw('y', "¡Sobreactuaría para que todo lo que hiciera fuera tremendamente cursi!")
	elseif cl == 965 then
		updateNatsuki('1','o')
		cw('n', "¡Uuuuuh!...")
	elseif cl == 966 then
		updateSayori('2','l',-40)
		updateYuri('1','r',80)
		updateNatsuki('1','o',200)
		cw('s', "¡¡E-ejem!!")
	elseif cl == 967 then	
		cw('s', "¿Va todo bien por aquí?...")
	elseif cl == 968 then
		hideSayori()
		updateNatsuki('1','f')
		cw('n', "Bueno, ¡¿sabes qué?!")
	elseif cl == 969 then
		cw('n', "¡¡Al menos no soy esa a la que se le han puesto las tetas como carretas en cuanto " .. player .. " empezó a venir!!")
	elseif cl == 970 then
		updateYuri('3','p')
		cw('y', "¡¡N-Natsuki!!")
	elseif cl == 971 then
		updateMonika('3','l',-40)
		cw('m', "Em, Natsuki, creo que te has...")
	elseif cl == 972 then
		updateYuri('3','p')
		updateNatsuki('1','e')
		cw('bl', "¡Tú no te metas!")
	elseif cl == 973 then
		hideMonika()
		updateSayori('4','p',-40)
		cw('s', "¡N-no me gustan las peleas, chicas!...")
	elseif cl == 974 then
		hideSayori()
		updateYuri('3','p',10)
		updateNatsuki('1','g',150)
		cw('bl', "De repente, ambas chicas se giran hacia mí, como si acabaran de percatarse de mi presencia.")
	elseif cl == 975 then
		updateYuri('2','n')
		cw('s', "" .. player .. "...")
	elseif cl == 976 then
		cw('s', "Natsuki...")
	elseif cl == 977 then
		updateNatsuki('4','w')
		cw('n', "¡Eso no es verdad!")
	elseif cl == 978 then
		cw('n', "¡Ella ha empezado!")
	elseif cl == 979 then
		updateNatsuki('4','e')
		cw('n', "Si Yuri se hubiera esforzado en intentar apreciar que la escritura simple es más efectiva...")
	elseif cl == 980 then
		cw('n', "¡Nada de esto hubiera ocurrido!")
	elseif cl == 981 then
		cw('n', "¿Qué sentido tiene componer poemas tan enrevesados sin motivo alguno?")
	elseif cl == 982 then
		cw('n', "El significado debería figurárselo el lector, no forzárselo en la cara.")
	elseif cl == 983 then
		updateNatsuki('1','f')
		cw('n', "¡Ayúdame a explicárselo, " .. player .. "!")
	elseif cl == 984 then
		updateYuri('3','o')
		cw('y', "¡E-espera!")
	elseif cl == 985 then
		cw('y', "¡Existe una razón por la que tenemos tantas palabras profundas y expresivas en nuestro lenguaje!")
	elseif cl == 986 then
		updateYuri('3','w')
		cw('y', "Y es que esas palabras son la única forma de expresar sentimientos complejos y plasmarlos de la forma más efectiva.")
	elseif cl == 987 then
		cw('y', "Evitarlos no es solo limitarte innecesariamente a ti misma... ¡Sino que también es un desperdicio!")
	elseif cl == 988 then
		updateYuri('1','t')
		cw('y', "¿Lo entiendes, " .. player .. "?")
	elseif cl == 989 then
		cw('mc', "¡Em...!")
	elseif cl == 990 then
		updateYuri('1','t')
		updateNatsuki('1','e')
		cw('bl', "¿Y bien?")
	elseif cl == 991 then
		cw('mc',"...")
    elseif cl == 992 then
		cw('bl', "¡¿Cómo he acabado metido en este lío?!")
	elseif cl == 993 then
		cw('bl', "Si ni siquiera es que sea yo un literato...")
	elseif cl == 994 then
		cw('bl', "¡Pero si le doy la razón a alguna, probablemente le caiga mejor!")
	elseif cl == 995 then
		menutext = "¡Y con ella me refiero a...!"
		choices = {"Natsuki.","Yuri.","¡¡Ayúdame, Sayori!!"}
		choice_enable()
	elseif cl >= 996 and cl < 1092 then
		if choicepick == 'Natsuki.' or choicepick == 'n' then
			choicepick = 'n'
			ch1_end_natsuki()
		elseif choicepick == "Yuri." or choicepick == 'y' then
			choicepick = 'y'
			ch1_end_yuri()
		elseif choicepick == "¡¡Ayúdame, Sayori!!" or choicepick == 's' then
			choicepick = 's'
			ch1_end_sayori()
		end
		choices = {''}
		
	elseif cl == 1092 then
		updateMonika('4','b',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 1093 then
		cw('m', "Es hora de marcharse.")
	elseif cl == 1094 then
		cw('m', "¿Qué tal habéis llevado lo de compartir vuestros poemas?")
	elseif cl == 1095 then
		updateMonika('4','a')
		updateSayori('4','x',-40)
		cw('s', "¡Ha sido muy divertido!")
	elseif cl == 1096 then
		hideSayori()
		updateYuri('1','i',-40)
		cw('y', "Bueno, podría decirse que ha merecido la pena.")
	elseif cl == 1097 then
		hideYuri()
		updateNatsuki('4','q',-40)
		cw('n', "Estuvo bien. Bueno, en general.")
	elseif cl == 1098 then
		hideNatsuki()
		updateMonika('1','a')
		cw('m', "" .. player .. ", ¿qué tal tú?")
	elseif cl == 1099 then
		cw('mc', "Sí, podría decir lo mismo.")
	elseif cl == 1100 then
		cw('mc', "Ha estado genial haber podido hablar con todas.")
    elseif cl == 1101 then
		updateMonika('1','j')
		cw('m', "¡Fantástico!")
	elseif cl == 1102 then
		updateMonika('1','a')
		cw('m', "En ese caso, mañana haremos lo mismo.")
	elseif cl == 1103 then
		cw('m', "Y puede que para entonces, también hayas aprendido algo de tus amigas.")
	elseif cl == 1104 then
		updateMonika('3','b')
		cw('m', "¡Lo cual hará que tus poemas sean aún mejores!")
	elseif cl == 1105 then
		cw('mc',"...")
	elseif cl == 1106 then
		hideMonika()
		cw('bl', "Pienso para mí mismo.")
	elseif cl == 1107 then
		cw('bl', "Aprendí algo más acerca de la clase de poemas que le gustan al resto.")
	elseif cl == 1108 then
		cw('bl', "Con un poco de suerte, hasta podría llamarle más la atención a aquellas que quiera que se fijen en mí.")
	elseif cl == 1109 then
		cw('bl', "Asiento en mi interior tras haber encontrado una nueva fuente de determinación.")
	elseif cl == 1110 then
		updateSayori('1','x',80)
		cw('s',"¡"..player.."!")
	elseif cl == 1111 then
		cw('s', "¿Volvemos ya a casa?")
	elseif cl == 1112 then
		cw('mc', "Claro, vámonos.")
	elseif cl == 1113 then
		updateSayori('4','q')
		cw('s', "Je, je, je~")
    elseif cl == 1114 then
		cw('bl', "Sayori me dirige una sonrisa.")
	elseif cl == 1115 then
		cw('bl', "Hacía mucho que Sayori y yo no pasábamos tanto tiempo juntos.")
	elseif cl == 1116 then
		cw('bl', "Tampoco puedo decir que no lo esté difrutando.")
	elseif cl == 1117 then
		bgUpdate('residential')
		updateSayori('1','a')
		cw('mc',"Sayori...")
	elseif cl == 1118 then
		cw('mc', "Sobre lo que pasó antes...")
	elseif cl == 1119 then
		updateSayori('1','b')
		cw('s', "¿Eh? ¿El qué?")
	elseif cl == 1120 then
		cw('mc', "Ya sabes, lo que ha ocurrido entre Yuri y Natsuki.")
	elseif cl == 1121 then
		cw('mc', "¿Suelen discutir a menudo?")
    elseif cl == 1122 then
		updateSayori('4','j')
		cw('s', "¡No, no, no!")
	elseif cl == 1123 then
		cw('s', "Es la primera vez que las veo pelearse de esa forma...")
	elseif cl == 1124 then
		cw('s', "Te aseguro que ambas son personas maravillosas.")
	elseif cl == 1125 then
		updateSayori('1','g')
		cw('s', "No... No las odias por ello, ¿verdad?")
	elseif cl == 1126 then
		cw('mc', "¡No, claro que no!")
	elseif cl == 1127 then
		cw('mc', "Tan solo solo quería saber tu opinión.")
	elseif cl == 1128 then
		cw('mc', "Ahora veo por qué sois tan buenas amigas.")
	elseif cl == 1129 then
		updateSayori('1','d')
		cw('s', "Uf...")
	elseif cl == 1130 then
		cw('s', "De hecho, " .. player .. "...")
	elseif cl == 1131 then
		cw('s', "Me gusta poder pasar el rato contigo en el club.")
	elseif cl == 1132 then
		cw('s', "Pero creo que el ver cómo te llevas con las demás es lo que me hace más feliz.")
	elseif cl == 1133 then
		updateSayori('1','x')
		cw('s', "¡Y creo que también le gustas a todas!")
	elseif cl == 1134 then
		cw('mc', "¡Eso es...!")
	elseif cl == 1135 then
		updateSayori('4','q')
		cw('s', "Je, je, je~")
	elseif cl == 1136 then
		cw('s', "Nos lo vamos a pasar tan bien cada día.")
	elseif cl == 1137 then
		cw('mc', "Ains...")
	elseif cl == 1138 then
		cw('bl', "Parece que Sayori todavía no capta la situación en la que estoy metido.")
	elseif cl == 1139 then
		cw('bl', "Claro, ser amigo de todas es genial, pero...")
	elseif cl == 1140 then
		cw('bl', "¿De verdad tiene que quedar la cosa ahí?")
	elseif cl == 1141 then
		cw('mc', "Tendremos que ver qué nos depara el futuro, Sayori.")
	elseif cl == 1142 then
		cw('bl', "Le doy una palmadita en el hombro a Sayori.")
	elseif cl == 1143 then
		cw('bl', "Me lo he dicho más a mí mismo que a ella, pero a veces no puedo evitar incluir a Sayori cuando pienso en voz baja.")
	elseif cl == 1144 then
		updateSayori('1','x')
		cw('s', "¡Vale!")
	elseif cl == 1145 then
		cw('bl', "Sí...")
	elseif cl == 1146 then
		cw('bl', "¡Vamos!")
	elseif cl == 1147 then
		fadeOut(1)
	elseif cl >= 1148 then
		cl = 1147
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=-40 x=80 x=200
		--4: x=-60 x=30 x=120 x=220	
	end
end

function ch1_end_natsuki()
	if cl == 996 then
		cw('mc', "Em...")
	elseif cl == 997 then
		cw('mc', "¡Yuri!")
	elseif cl == 998 then
		cw('mc', "Tienes mucho talento.")
	elseif cl == 999 then
		updateYuri('4','a2')
		cw('y', "¿Eh? B-bueno...")
	elseif cl == 1000 then
		audioUpdate('8')
		cw('mc', "¡Pero Natsuki tiene razón!")
	elseif cl == 1001 then
		cw('mc', "C-creo que…")
	elseif cl == 1002 then
		cw('bl', "Me estrujo el cerebro pensando en algo que decir para respaldar lo anterior dicho.")
	elseif cl == 1003 then
		cw('mc', "Creo que condensar sentimientos en unas pocas palabras...")
    elseif cl == 1004 then
		cw('mc', "¡Puede ser igual de impresionante!")
	elseif cl == 1005 then
		cw('mc', "Deja que la imaginación del lector vuele sin ataduras.")
	elseif cl == 1006 then
		cw('mc', "¡Y el poema de Natsuki hizo un gran trabajo en ese aspecto!")
	elseif cl == 1007 then
		updateNatsuki('5','y')
		cw('n', "¡¡Claro!!")
	elseif cl == 1008 then
		cw('n', "¡¿A que sí?!")
	elseif cl == 1009 then
		cw('n', "¡Ja, ja!")
	elseif cl == 1010 then
		cw('n', "¡Se nota que sabes un montón!")
	elseif cl == 1011 then
		updateYuri('4','b2')
		cw('y', "E-eso no...")
	elseif cl == 1012 then
		cw('mc',"Natsuki...")
	elseif cl == 1013 then
		cw('mc', "Creo que ya es suficiente.")
	elseif cl == 1014 then
		updateNatsuki('1','m')
		cw('n', "¿Eh?")
	elseif cl == 1015 then
		cw('n', "¿Yo?")
	elseif cl == 1016 then
		cw('n', "¡Pero si ha sido muy desagradable conmigo!...")
	elseif cl == 1017 then
		cw('bl', "La voz de Natsuki se quiebra.")
	elseif cl == 1018 then
		cw('mc', "Oye, mira...")
	elseif cl == 1019 then
		cw('mc', "Piensa en lo que hablamos ayer.")
	elseif cl == 1020 then
		cw('mc', "Componer poemas es algo muy personal.")
	elseif cl == 1021 then
		cw('mc', "Y compartirlos con los demás puede resultar bastante difícil.")
	elseif cl == 1022 then
		cw('mc', "Parece que eso es lo que hemos aprendido hoy.")
	elseif cl == 1023 then
		cw('mc', "Que incluso la más pequeña crítica puede llevarnos a la más acalorada discusión.")
	elseif cl == 1024 then
		cw('bl', "Alzo la mirada.")
	elseif cl == 1025 then
		cw('bl', "Y veo que Sayori está asintiendo con fuerza.")
	elseif cl == 1026 then
		cw('mc', "Así que...")
	elseif cl == 1027 then
		cw('mc', "No tienes por qué sentirte insultada.")
	elseif cl == 1028 then
		cw('mc', "Eres una gran escritora, Natsuki.")
	elseif cl == 1029 then
		updateNatsuki('1','h')
		cw('n', "Oh...")
	elseif cl == 1030 then
		cw('bl', "La voz de Natsuki queda pillada por sorpresa.")
	elseif cl == 1031 then
		updateNatsuki('1','q')
		cw('n', "Gracias por darte cuenta...")
	elseif cl == 1032 then
		cw('bl', "Lo murmura muy bajito.")
	elseif cl == 1033 then
		cw('mc', "Yuri...")
	elseif cl == 1034 then
		updateYuri('4','a2')
		cw('y',"¿...?")
	elseif cl == 1035 then
		cw('bl', "Yuri me mira abatida.")
	elseif cl == 1036 then
		cw('bl', "Con esa expresión, no puedo evitar sentirme mal también por ella.")
	elseif cl == 1037 then
		cw('mc', "Estoy seguro de que Natsuki realmente no piensa todo lo que te dijo.")
	elseif cl == 1038 then
		cw('mc', "Así que tampoco has de sentirte insultada.")
	elseif cl == 1039 then
		updateYuri('2','v')
		cw('y', "Bueno...")
	elseif cl == 1040 then
		cw('y', "Si tú lo dices...")
	elseif cl == 1041 then
		updateNatsuki('1','g')
		cw('n', "¡Oye!...")
	elseif cl == 1042 then
		cw('n', "No es necesario que te disculpes por mí, " .. player .. ".")
	elseif cl == 1043 then
		updateNatsuki('1','w')
		cw('n', "Meh.")
	elseif cl == 1044 then
		cw('bl', "Natsuki suspira.")
	elseif cl == 1045 then
		updateNatsuki('1','q')
		cw('n', "Yo...")
	elseif cl == 1046 then
		cw('n', "En cuanto a...")
	elseif cl == 1047 then
		cw('n', "Em...")
    elseif cl == 1048 then
		cw('bl', "Natsuki empieza a mirar los alrededores del aula.")
	elseif cl == 1049 then
		updateNatsuki('1','x')
		cw('n', "¿¿Podríais dejar de mirarme tan fijamente??")
	elseif cl == 1050 then
		cw('bl', "Para sorpresa de nadie, a Natsuki le molesta más de lo que se había jactado.")
	elseif cl == 1051 then
		cw('bl', "Sayori y Monika miran a otro lado.")
	elseif cl == 1052 then
		updateNatsuki('1','i')
		cw('n', "Jum.")
	elseif cl == 1053 then
		cw('n', "¡En fin!...")
	elseif cl == 1054 then
		updateNatsuki('1','q')
		cw('n', "Aquello que dije sobre tus tetas, no lo dije en serio, ¿vale?")
	elseif cl == 1055 then
		cw('n', "Eso es todo.")
	elseif cl == 1056 then
		cw('bl', "Natsuki aparta la mirada, evitando el contacto visual con nadie.")
	elseif cl == 1057 then
		updateSayori('4','x',-60)
		cw('s', "¡Claro! ¡¡Tu belleza es puramente natural, Yuri!!")
	elseif cl == 1058 then
		cw('mc', "¡¿Sayori?!")
	elseif cl == 1059 then
		updateYuri('4','c2')
		cw('y',"...")
	elseif cl == 1060 then
		cw('y', "I-iré a preparar algo de té...")
	elseif cl == 1061 then
		hideYuri()
		updateSayori('4','h')
		cw('s', "¿Eh?")
	elseif cl == 1062 then
		cw('s', "¡Solo quería ayudar!")
	elseif cl == 1063 then
		cw('mc', "Estoy seguro de que ella lo ha apreciado, Sayori.")
	elseif cl == 1064 then
		cw('bl', "Le doy una palmadita en el hombro a Sayori.")
	elseif cl == 1065 then
		hideSayori()
		hideNatsuki()
		updateMonika('4','m',80)
		cw('m', "Bueno, ahora que eso ya ha pasado...")
	elseif cl == 1066 then
		updateMonika('4','b')
		cw('m', "Cada uno leerá los poemas del otro, ¿vale?")
	elseif cl == 1067 then
		cw('m', "¡Espero que haya valido la pena!")
	elseif cl == 1068 then
		updateMonika('5a')
		cw('m', "¡Especialmente a ti, " .. player .. "!")
	elseif cl == 1069 then
		cw('m', "Y, sinceramente...")
	elseif cl == 1070 then
		cw('m', "Es un buen cambio de aires frente a la holgazanería a la que estábamos tan acostumbradas.")
	elseif cl == 1071 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 1072 then
		cw('mc', "Ah, conque al unirme al club os he fastidiado la atmósfera...")
	elseif cl == 1073 then
		updateMonika('1','d')
		cw('m', "No, qué va, ¡en absoluto!")
	elseif cl == 1074 then
		cw('m', "Aún queda un rato para irnos a casa.")
	elseif cl == 1075 then
		updateMonika('1','a')
		cw('m', "Que podríamos aprovechar para relajarnos un poco.")
	elseif cl == 1076 then
		cw('m', "Que además de charlar, también hacemos cosas relacionadas con la literatura en este club...")
	elseif cl == 1077 then
		cw('m', "Por lo que podrías plantearte coger un libro o escribir un poco.")
	elseif cl == 1078 then
		updateMonika('1','b')
		cw('m', "¡Después de todo, para eso está el club!")
	elseif cl == 1079 then
		updateSayori('2','j',-40)
		cw('s', "¡No estoy de acuerdo, Monika!")
	elseif cl == 1080 then
		updateMonika('1','d')
		cw('m', "¿Eh? ¿Con qué?")
	elseif cl == 1081 then
		updateSayori('2','i')
		cw('s', "¡Eso no es lo más importante del club de literatura!")
	elseif cl == 1082 then
		cw('s', "Lo más importante es...")
	elseif cl == 1083 then
		updateSayori('4','r')
		cw('s', "¡Divertirse!")
	elseif cl == 1084 then
		updateMonika('2','l')
		cw('m', "Ja, ja, claro...")
	elseif cl == 1085 then
		updateMonika('2','a')
		cw('m', "Bueno, supongo que por eso eres la vicepresidenta, Sayori.")
	elseif cl == 1086 then
		updateSayori('4','q')
		cw('s', "Je, je, je...")
	elseif cl == 1087 then
		hideMonika()
		hideSayori()
		cw('bl', "En el fondo, creo que Monika tiene razón.")
	elseif cl == 1088 then
		cw('bl', "Estar en el club de literatura probablemente significa que no puedo pasar mucho tiempo vagueando.")
	elseif cl == 1089 then
		cw('bl', "Pero en el fondo...")
	elseif cl == 1090 then
		cw('bl', "Creo que hasta ahora ha valido la pena unirme.")
	elseif cl == 1091 then
		scriptJump(1092)
	end
end

function ch1_end_yuri()
	if cl == 996 then
		audioUpdate('0')
		cw('mc',"Natsuki.")
	elseif cl == 997 then
		cw('mc', "Tenías razón cuando dijiste que me gustó tu poema.")
	elseif cl == 998 then
		updateNatsuki('1','e')
		cw('n', "¿¿Ves??")
	elseif cl == 999 then
		updateNatsuki('1','g')
		audioUpdate('8')
		cw('mc', "¡Espera!")
	elseif cl == 1000 then
		cw('mc', "¡Eso no es excusa para que te comportes así!")
	elseif cl == 1001 then
		cw('mc', "No deberías pelearte con nadie solo porque este tenga una opinión distinta a la tuya.")
	elseif cl == 1002 then
		updateNatsuki('1','m')
		cw('n', "¡Pero si eso no es lo que ha pasado!")
	elseif cl == 1003 then
		cw('n', "¡Yuri ni siquiera se tomó en serio mi poema!")
	elseif cl == 1004 then
		cw('mc', "Mmm...")
	elseif cl == 1005 then
		cw('mc', "Te entiendo.")
	elseif cl == 1006 then
		cw('mc',"Yuri.")
	elseif cl == 1007 then
		updateYuri('2','t')
		cw('y',"¿Eh?")
	elseif cl == 1008 then
		cw('mc', "Escribes con mucho talento.")
	elseif cl == 1009 then
		cw('mc', "No te voy a negar que me hayas impresionado.")
	elseif cl == 1010 then
		updateYuri('2','u')
		cw('y', "B-bueno, em...")
	elseif cl == 1011 then
		cw('mc', "Pero quiero decirte algo.")
	elseif cl == 1012 then
		cw('mc', "No importa cómo de simple o refinado sea el estilo de escritura de alguien...")
	elseif cl == 1013 then
		cw('mc', "Porque ese alguien plasma sus emociones en esa escritura, y la convierte en algo muy personal.")
	elseif cl == 1014 then
		cw('mc', "Por eso Natsuki se sintió insultada cuando dijiste que su poema era adorable.")
	elseif cl == 1015 then
		updateYuri('2','v')
		cw('y', "Ya... veo...")
	elseif cl == 1016 then
		cw('y', "No me percaté de que...")
	elseif cl == 1017 then
		updateYuri('2','w')
		cw('y', "L-lo siento...")
	elseif cl == 1018 then
		cw('y', "Eh...")
	elseif cl == 1019 then
		hideYuri()
		updateNatsuki('1','m',80)
		cw('mc', "¡Pero Natsuki, tú fuiste demasiado lejos!")
	elseif cl == 1020 then
		cw('mc', "Yuri es una persona con buenas intenciones. Si tan solo le hubieses dicho cómo te sentías...")
    elseif cl == 1021 then
		cw('mc', "Nada de esto hubiera ocurrido.")
	elseif cl == 1022 then
		updateNatsuki('1','e')
		cw('n', "¿Estás de coña?")
	elseif cl == 1023 then
		cw('n', "¡Pero si es exactamente lo que hice!")
	elseif cl == 1024 then
		cw('n', "Fue ella la que...")
	elseif cl == 1025 then
		updateNatsuki('1','e',10)
		updateMonika('2','i',150)
		cw('m', "Natsuki, creo que ya es suficiente.")
	elseif cl == 1026 then
		cw('m', "Las dos dijisteis cosas que no queríais.")
	elseif cl == 1027 then
		cw('m', "Yuri se disculpó. ¿No crees deberías hacerlo tú también?")
	elseif cl == 1028 then
		updateNatsuki('1','x')
		cw('n', "¡Nnn...!")
	elseif cl == 1029 then
		cw('bl', "Natsuki aprieta sus puños.")
	elseif cl == 1030 then
		cw('bl', "Al final, nadie se ha puesto de su lado.")
	elseif cl == 1031 then
		cw('bl', "Se siente atrapada, manteniéndose hostil solo porque es incapaz de soportar la presión.")
	elseif cl == 1032 then
		cw('bl', "Termino hasta sintiéndome mal por ella.")
	elseif cl == 1033 then
		updateSayori('2','h',-40)
		updateMonika('2','i',80)
		updateNatsuki('1','x',200)
		cw('s', "¡E-em!")
	elseif cl == 1034 then
		cw('s', "A veces, cuando estoy dolida...")
	elseif cl == 1035 then
		cw('s', "¡Dar un paseo me ayuda a despejarme!")
	elseif cl == 1036 then
		cw('mc', "Sayori, ella no necesita...")
	elseif cl == 1037 then
		updateNatsuki('2','q')
		cw('n', "¿Sabes qué?")
	elseif cl == 1038 then
		cw('n', "Eso haré.")
	elseif cl == 1039 then
		updateNatsuki('2','w')
		cw('n', "Así me libraré de tener que miraros el careto.")
	elseif cl == 1040 then
		hideNatsuki()
		cw('bl', "Sin previo aviso, Natsuki coge bruscamente su poema del escritorio y sale corriendo.")
	elseif cl == 1041 then
		cw('bl', "De camino a la salida, arruga su poema con las manos y lo tira a la papelera.")
	elseif cl == 1042 then
		updateSayori('1','k')
		cw('s',"Natsuki...")
	elseif cl == 1043 then
		updateMonika('1','r')
		cw('m', "No tenía por qué hacer eso...")
	elseif cl == 1044 then
		hideSayori()
		hideMonika()
		cw('bl', "Miro al resto.")
	elseif cl == 1045 then
		cw('bl', "Yuri tiene la barbilla apoyada sobre sus manos mientras mira fijamente a su pupitre.")
	elseif cl == 1046 then
		cw('bl', "Me acerco a ella cuidadosamente y me siento en una silla adyacente.")
	elseif cl == 1047 then
		updateYuri('4','b2',80)
		cw('y', "Ains...")
	elseif cl == 1048 then
		cw('mc', "¿Todo bien?")
	elseif cl == 1049 then
		cw('y', "Me siento tan avergonzada...")
	elseif cl == 1050 then
		cw('y', "No puedo creer que haya actuado así.")
	elseif cl == 1051 then
		cw('y', "Seguro que ahora me odias...")
	elseif cl == 1052 then
		cw('mc', "No... ¡Yuri!")
	elseif cl == 1053 then
		cw('mc', "¿Cómo podría alguien no sentirse frustrado tras ser tratado así?")
	elseif cl == 1054 then
		cw('mc', "Has manejado la situación como cualquiera hubiera hecho.")
	elseif cl == 1055 then
		cw('mc', "Y no esperaba menos de ti.")
	elseif cl == 1056 then
		updateYuri('2','v')
		cw('y', "Bueno...")
	elseif cl == 1057 then
		cw('y', "Está bien, te creo.")
	elseif cl == 1058 then
		updateYuri('2','s')
		cw('y', "Gracias, " .. player .. ". Eres demasiado bueno.")
	elseif cl == 1059 then
		cw('y', "Te agradezco que ahora seas parte del club.")
	elseif cl == 1060 then
		cw('mc', "Oh... No es nada.")
	elseif cl == 1061 then
		updateYuri('2','v')
		cw('y', "Una cosa más...")
	elseif cl == 1062 then
		cw('y', "Em, eso que dijo Natsuki...")
	elseif cl == 1063 then
		updateYuri('4','c2')
		cw('y', "Acerca de... Ya sabes...")
	elseif cl == 1064 then
		cw('y', "Yo nunca haría algo... tan vergonzoso...")
	elseif cl == 1065 then
		cw('y', "Así que...")
	elseif cl == 1066 then
		cw('mc', "¿Eh?")
	elseif cl == 1067 then
		cw('mc', "¿Qué dijo Natsuki?")
	elseif cl == 1068 then
		updateYuri('3','n')
		cw('y', "¡...!")
	elseif cl == 1069 then
		cw('y', "¡E-em!")
	elseif cl == 1070 then
		updateYuri('3','q')
		cw('y', "Bueno, olvídalo...")
	elseif cl == 1071 then
		cw('y', "I-iré a preparar algo de té...")
	elseif cl == 1072 then
		cw('mc', "Oh, buena idea.")
	elseif cl == 1073 then
		cw('mc', "Haz suficiente para más de una persona, ¿vale?")
	elseif cl == 1074 then
		cw('y', "C-claro.")
	elseif cl == 1075 then
		hideAll()
		scriptJump(1092)
	end
end

function ch1_end_sayori()
	if cl == 996 then
		cw('mc', "N-Natsuki...")
	elseif cl == 997 then
		updateNatsuki('5','f')
		cw('bl', "Natsuki me lanza miradas de odio, impidiéndome guardar las palabras en mi boca.")
	elseif cl == 998 then
		cw('bl', "Por lo que me giro hacia Yuri.")
	elseif cl == 999 then
		cw('mc',"Yuri...")
	elseif cl == 1000 then
		updateYuri('4','a2')
		cw('y',"...")
	elseif cl == 1001 then
		cw('bl', "Pero Yuri parece tan indefensa que no me atrevo a decirle nada.")
    elseif cl == 1002 then
		audioUpdate('0')
		cw('mc',"...")
	elseif cl == 1003 then
		cw('mc', "¡Sayori!")
	elseif cl == 1004 then
		updateSayori('4','m',-40)
		updateYuri('4','a2',80)
		updateNatsuki('5','f',200)
		cw('s', "¡¿Eh?!")
	elseif cl == 1005 then
		cw('mc', "¡Claro!")
	elseif cl == 1006 then
		cw('mc', "Vuestras peleas están incomodando a Sayori.")
	elseif cl == 1007 then
		cw('mc', "¿Cómo podéis seguir peleando cuando sabéis que hacéis sentir así a vuestra amiga?")
	elseif cl == 1008 then
		updateSayori('4','d')
		cw('s',player.."...")
	elseif cl == 1009 then
		updateNatsuki('4','w')
		cw('n', "Bueno... ¡Ese es su problema! Ella no tiene nada que ver en esto.")
	elseif cl == 1010 then
		updateYuri('2','g')
		cw('y', "L-lo mismo digo...")
	elseif cl == 1011 then
		cw('y', "No es justo que alguien intervenga en nuestro conflicto con sus sentimientos.")
	elseif cl == 1012 then
		updateNatsuki('4','c')
		cw('n', "Exacto, a menos que Sayori quiera decirle a Yuri lo estúpida que está siendo.")
	elseif cl == 1013 then
		audioUpdate('7')
		updateYuri('3','r')
		cw('y', "¡Ella nunca...!")
	elseif cl == 1014 then
		cw('y', "¡Para empezar, es tu inmadurez la que la incomoda!")
    elseif cl == 1015 then
		updateNatsuki('1','e')
		cw('n', "¿Disculpa?")
	elseif cl == 1016 then
		cw('n', "¿Te estás escuchando?")
	elseif cl == 1017 then
		updateNatsuki('1','x')
		cw('n', "Por esto...")
	elseif cl == 1018 then
		updateNatsuki('1','w')
		cw('n', "Por esto mismo a nadie le gus...")
	elseif cl == 1019 then
		audioUpdate('0')
		updateSayori('4','p')
		cw('s', "¡¡Suficiente!!")
	elseif cl == 1020 then
		updateNatsuki('3','f')
		updateNatsuki('1','o')
		cw('ny',"...")
    elseif cl == 1021 then
		audioUpdate('8')
		updateSayori('1','h')
		cw('s', "¡Natsuki! ¡Yuri!")
	elseif cl == 1022 then
		cw('s', "¡Sois mis amigas!")
	elseif cl == 1023 then
		updateSayori('1','v')
		cw('s', "¡Y-y yo solo quiero que todas os llevéis bien y seáis felices!")
	elseif cl == 1024 then
		cw('s', "Mis amigos son personas maravillosas...")
	elseif cl == 1025 then
		cw('s', "¡Y los amo por lo diferentes que son entre sí!")
	elseif cl == 1026 then
		updateSayori('1','g')
		cw('s', "Los poemas de Natsuki...")
	elseif cl == 1027 then
		cw('s', "¡Son increíbles porque son capaces de transmitirte muchas emociones con tan solo unas palabras!")
	elseif cl == 1028 then
		cw('s', "¡Y los poemas de Yuri también lo son porque pintan hermosos cuadros en tu cabeza!")
	elseif cl == 1029 then
		updateSayori('4','k')
		cw('s', "Tenéis todas tanto talento...")
	elseif cl == 1030 then
		cw('s', "Así que... ¿Por qué discutimos?...")
	elseif cl == 1031 then
		updateNatsuki('1','r')
		cw('n', "P-porque...")
	elseif cl == 1032 then
		updateYuri('3','v')
		cw('y', "Bueno...")
	elseif cl == 1033 then
		updateSayori('1','j')
		cw('s', "¡Otra cosa!")
	elseif cl == 1034 then
		cw('s', "¡Natsuki es adorable y eso no tiene nada de malo!")
	elseif cl == 1035 then
		updateSayori('1','i')
		cw('s', "¡Y los pechos de Yuri son los de siempre!")
	elseif cl == 1036 then
		updateSayori('1','j')
		cw('s', "¡¡Gigantes y hermosos!!")
	elseif cl == 1037 then
		updateSayori('1','i')
		updateNatsuki('1','o')
		cw('n',"...")
	elseif cl == 1038 then
		updateYuri('3','n')
		cw('y',"...")
	elseif cl == 1039 then
		cw('mc',"Sayori...")
	elseif cl == 1040 then
		cw('bl', "Sayori posa triunfante.")
	elseif cl == 1041 then
		cw('bl', "Monika se encuentra detrás de ella con una expresión de desconcierto.")
	elseif cl == 1042 then
		updateYuri('3','q')
		cw('y', "I-iré... a preparar algo de té...")
	elseif cl == 1043 then
		hideYuri()
		cw('bl', "Yuri sale corriendo del lugar.")
	elseif cl == 1044 then
		hideNatsuki()
		cw('bl', "Natsuki se sienta con una expresión vacía en su rostro, mirando a la nada.")
	elseif cl == 1045 then
		hideSayori()
		updateMonika('1','i',80)
		cw('mc', "Conque por cosas como esta, Sayori es la vicepresidenta...")
	elseif cl == 1046 then
		cw('bl', "Le susurro a Monika.")
	elseif cl == 1047 then
		cw('bl', "Me contesta asintiendo.")
	elseif cl == 1048 then
		updateMonika('1','d')
		cw('m', "La verdad es que...")
	elseif cl == 1049 then
		cw('m', "Puede que sea una buena líder y que se me dé bien organizar actividades...")
	elseif cl == 1050 then
		updateMonika('3','e')
		cw('m', "Pero no se me dan muy bien las personas...")
    elseif cl == 1051 then
		cw('m', "Ni siquiera pude intervenir en la discusión.")
	elseif cl == 1052 then
		updateMonika('1','m')
		cw('m', "Como presidenta, es algo que me resulta bastante vergonzoso.")
	elseif cl == 1053 then
		updateMonika('1','l')
		cw('m', "Ja, ja, ja...")
	elseif cl == 1054 then
		cw('mc', "Nah...")
	elseif cl == 1055 then
		cw('mc', "No puedo culparte.")
	elseif cl == 1056 then
		cw('mc', "Yo también fui incapaz de hacer nada.")
	elseif cl == 1057 then
		cw('m', "Bueno...")
	elseif cl == 1058 then
		updateMonika('2','a')
		cw('m', "Parece que eso solo significa que Sayori es increíble a su manera, ¿no?")
	elseif cl == 1059 then
		cw('mc', "Podría decirse.")
	elseif cl == 1060 then
		cw('mc', "Puede que sea una cabeza hueca, pero a veces me resulta tan sospechoso que sepa exactamente lo que está haciendo.")
	elseif cl == 1061 then
		updateMonika('5a','')
		cw('m', "Ya veo...")
	elseif cl == 1062 then
		cw('m', "Cuida bien de ella, ¿vale?")
	elseif cl == 1063 then
		cw('m', "No me gustaría verla haciéndose daño a sí misma.")
	elseif cl == 1064 then
		cw('mc', "Pues ya somos dos...")
	elseif cl == 1065 then
		cw('mc', "Puedes contar conmigo.")
	elseif cl == 1066 then
		cw('bl', "Monika me sonríe dulcemente, causándome un nudo en el estómago.")
	elseif cl == 1067 then
		cw('bl', "Ser tan auténtica la convierte en una buena presidenta, diga lo que diga.")
	elseif cl == 1068 then
		cw('bl', "Si tan solo pudiera hablar con ella un poco más...")
	elseif cl == 1069 then
		scriptJump(1092)
	end
end
