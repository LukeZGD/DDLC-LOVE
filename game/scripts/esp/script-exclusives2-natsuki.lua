local ntext = glitchtext(96)
local ntext2 = glitchtext(96)

function Natsuki_exclusive2_1()
	if cl == 358 then
		cw('n', "¡Ugh...!")
	elseif cl == 359 then
		cw('bl', "Oigo el suspiro exasperado de Natsuki desde dentro del armario.")
	elseif cl == 360 then
		cw('bl', "Parece estar molesta por algo.")
	elseif cl == 361 then
		cw('bl', "Me acerco a ella, por si necesita que le eche una mano.")
	elseif cl == 362 then
	audioUpdate('6')
	bgUpdate('closet')
	updateNatsuki('4','r',80)
		cw('mc', "¿Estás buscando algo?")
	elseif cl == 363 then
	style_edited = true
	updateNatsuki('4','x')
		cw('n', "Puta monikammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm")
	elseif cl == 364 then
	style_edited = false
		cw('n', "¡Nunca deja mis cosas en su sitio!")
	elseif cl == 365 then
		cw('n', "¿Qué sentido tiene mantener tu colección ordenada si después viene alguien a fastidiarlo?")
	elseif cl == 366 then
		cw('bl', "Natsuki desliza un montón de libros apilados y cajas a través de la estantería.")
	elseif cl == 367 then
		cw('mc', "Manga...")
	elseif cl == 368 then
	updateNatsuki('2','c')
		cw('n', "Lees manga, ¿verdad?")
	elseif cl == 369 then
		cw('mc', "Ah...")
	elseif cl == 370 then
		cw('mc', "A veces...")
	elseif cl == 371 then
		cw('bl', "El manga es una de esas cosas que no puedes admitir que te gustan a menos de que te percates de que a la otra persona también le gustan.")
	elseif cl == 372 then
		cw('mc', "¿Pero cómo te has dado cuenta?")
	elseif cl == 373 then
	updateNatsuki('2','k')
		cw('n', "Te escuché hablar de ello hace algún tiempo.")
	elseif cl == 374 then
		cw('n', "Además, está escrito en tu cara.")
	elseif cl == 375 then
		cw('bl', "¿Y qué se supone que significa eso?")
	elseif cl == 376 then
		cw('mc', "Y-ya veo...")
	elseif cl == 377 then
		cw('bl', "Hay un solitario volumen de manga en medio de un montón de libros de toda índole ubicados en el extremo de una de las estanterías.")
	elseif cl == 378 then
		cw('bl', "Atraído por él, lo tomo de dicho montón.")
	elseif cl == 379 then
	updateNatsuki('1','b')
		cw('n', "¡Ahí está!")
	elseif cl == 380 then
		cw('bl', "Natsuki me lo arrebata de las manos.")
	elseif cl == 381 then
		cw('bl', "Luego, centra su atención en una caja llena de manga y coloca el tomo junto al resto.")
	elseif cl == 382 then
		updateNatsuki('4','d')
		cw('n', "¡Ah, mucho mejor! Ver una colección a la que le falta un libro es probablemente la imagen más irritante del mundo.")
	elseif cl == 383 then
		cw('mc', "Entiendo muy bien cómo te sientes...")
	elseif cl == 384 then
		cw('bl', "Miro más detenidamente la colección de tomos que ella está admirando.")
	elseif cl == 385 then
		cw('n', "¿...?")
	elseif cl == 386 then
		cw('bl', "Es una serie de la que no había oído hablar en mi vida.")
	elseif cl == 387 then
		cw('bl', "Supongo que eso significa que, o está fuera de mi demografía, o es simplemente terrible.")
	elseif cl == 388 then
	updateNatsuki('5','g')
		cw('n', "Si vas a juzgar, puedes hacerlo a través del cristal de esa puerta.")
	elseif cl == 389 then
		cw('mc', "¡Oye, que no estaba juzgando ni nada parecido...!")
	elseif cl == 390 then
		cw('mc', "Ni siquiera he dicho nada.")
	elseif cl == 391 then
	updateNatsuki('5','c')
		cw('n', "Tu tono de voz te delató.")
	elseif cl == 392 then
		cw('n', "Pero te diré algo, " .. player .. ".")
	elseif cl == 393 then
	updateNatsuki('4','l')
		cw('n', "Considera esto una lección del club de Literatura:")
	elseif cl == 394 then
	style_edited = true
	cw('n',"no juzgues un libroooooooooooooo ooooo oo"..space(20)..'o'..space(40)..'o'..space(120)..'o'..space(160)..'o'..space(200)..'o')
	elseif cl == 395 then
	style_edited = false
		cw('n', "De hecho...")
	elseif cl == 396 then
		cw('bl', "Natsuki toma el primer tomo de Las chicas del postre de la caja.")
	elseif cl == 397 then
		cw('n', "¡Te enseñaré exactamente por qué!")
	elseif cl == 398 then
		cw('bl', "Natsuki coloca bruscamente el tomo en mis manos.")
	elseif cl == 399 then
	mc "Ah..."
	elseif cl == 400 then
		cw('bl', "Echo un vistazo a la portada.")
	elseif cl == 401 then
		cw('bl', "En ella, salen cuatro chicas con atuendos coloridos y posturas animadas y femeninas.")
	elseif cl == 402 then
		cw('bl', "Es... extremadamente moe.")
	elseif cl == 403 then
	updateNatsuki('4','b')
		cw('n', "¡No te quedes ahí parado!")
	elseif cl == 404 then
		cw('mc', "E-eh...")
	elseif cl == 405 then
	hideNatsuki()
		cw('bl', "Natsuki me agarra del brazo y me arrastra fuera del armario.")
	elseif cl == 406 then
		cw('bl', "Luego, toma asiento contra la pared, bajo las ventanas.")
	elseif cl == 407 then
		cw('bl', "Natsuki da palmaditas en el suelo a su lado, invitándome a tomar asiento ahí.")
	elseif cl == 408 then
	bgUpdate('club')
	updateNatsuki('2','a',80)
		cw('mc', "¿No sería más cómodo que nos sentásemos en sillas...?")
	elseif cl == 409 then
		cw('bl', "Tomo asiento.")
	elseif cl == 410 then
	updateNatsuki('2','k')
		cw('n', "Las sillas no nos servirían.")
	elseif cl == 411 then
		cw('n', "No podemos leer de la misma forma en ellas.")
	elseif cl == 412 then
		cw('mc', "¿Eh? ¿Y eso por qué?")
	elseif cl == 413 then
		cw('mc', "Ah... Supongo que es más fácil que estemos juntos sentados de esta forma...")
	elseif cl == 414 then
	updateNatsuki('2','o')
		cw('n', "¡...!")
	elseif cl == 415 then
	updateNatsuki('5','r')
		cw('n', "¡N-no digas eso!")
	elseif cl == 416 then
		cw('n', "¡Me harás sentir extraña estando así!")
	elseif cl == 417 then
		cw('bl', "Natsuki se cruza de brazos y se aleja un par de centímetros de mí.")
	elseif cl == 418 then
		cw('mc', "Lo siento...")
	elseif cl == 419 then
	updateNatsuki('5','g')
		cw('bl', "Tampoco es que yo esperase sentarme tan cerca de ella, sinceramente...")
	elseif cl == 420 then
		cw('bl', "Aunque no puedo decir que me desagradara la idea.")
	elseif cl == 421 then
		cw('bl', "Abro el libro.")
	elseif cl == 422 then
		cw('bl', "Tras unos pocos segundos Natsuki vuelve a acercarse, estrechando el espacio entre nosotros con esperanzas de que no me percate de ello.")
	elseif cl == 423 then
		cw('bl', "Puedo sentir su mirada por encima de mi hombro, expresando más ganas por empezar a leer que yo.")
	elseif cl == 424 then
	updateNatsuki('1','k')
		cw('n', "Vaya, ¿cuánto tiempo ha pasado desde que terminé de leer el principio?")
	elseif cl == 425 then
		cw('mc', "¿Eh?")
	elseif cl == 426 then
		cw('mc', "¿No sueles volver atrás para ojear los tomos más viejos de vez en cuando?")
	elseif cl == 427 then
	updateNatsuki('2','k')
		cw('n', "Pues no, la verdad.")
	elseif cl == 428 then
		cw('n', "A veces, cuando ya he terminado la serie, lo hago.")
	elseif cl == 429 then
	updateNatsuki('2','c')
		cw('n', "Eh, ¿me estás prestando atención?")
	elseif cl == 430 then
		cw('mc', "Eh...")
	elseif cl == 431 then
		cw('bl', "Se la estoy prestando, pero no veo nada oportuno que comentar.")
	elseif cl == 432 then
		cw('bl', "Parece que trata acerca de un grupo de amigos de secundaria.")
	elseif cl == 433 then
		cw('bl', "Típica trama de recuerdos de la vida.")
	elseif cl == 434 then
		cw('bl', "Acabé cansándome, ya que la escritura no suele compensar la falta de trama.")
	elseif cl == 435 then
	hideAll()
	bgUpdate('cg/n_cg1_base')
	persistent.clear[1] = 1
	if xaload == 1 then
		savepersistent()
	end
		cw('mc', "¿Estás segura de que esto no te parece aburrido?")
	elseif cl == 436 then
	scriptJump(437)
	elseif cl == 437 then
		cw('n', "¡No lo es!")
	elseif cl == 438 then
		cw('mc', "¿Incluso aunque solo me estés viendo leer?")
	elseif cl == 439 then
		cw('n', "¡Bueno...!")
	elseif cl == 440 then
		cw('n', "A mí... con eso me basta.")
	elseif cl == 441 then
		cw('mc', "Si tú lo dices...")
	elseif cl == 442 then
		cw('mc', "Supongo que compartir lo que te gusta con alguien más resulta divertido.")
	elseif cl == 443 then
		cw('mc', "Siempre me emociono cuando convenzo a algún amigo de que se enganche a una serie que yo mismo he disfrutado.")
	elseif cl == 444 then
		cw('mc', "¿Sabes a lo que me refiero?")
	elseif cl == 445 then
	n "¿...?"
	elseif cl == 446 then
		cw('mc', "¿Eh?")
	elseif cl == 447 then
		cw('mc', "¿No lo sabes?")
	elseif cl == 448 then
	cgUpdate('n_cg1_exp2')
		cw('n', "Mmm...")
	elseif cl == 449 then
		cw('n', "Eso no...")
	elseif cl == 450 then
		cw('n', "Bueno, realmente no podría saberlo.")
	elseif cl == 451 then
		cw('mc', "¿Qué quieres decir con eso?")
	elseif cl == 452 then
		cw('mc', "¿No sueles compartir tus mangas con tus amigos?")
	elseif cl == 453 then
	cgUpdate('n_cg1_exp3')
		cw('n', "¿Podrías dejar de restregármelo?")
	elseif cl == 454 then
		cw('n', "Ainss...")
	elseif cl == 455 then
		cw('mc', "Oh, lo siento...")
	elseif cl == 456 then
		cw('n', "Jum.")
	elseif cl == 457 then
		cw('n', "Como si pudiese hacer que mis amigos leyesen esto...")
	elseif cl == 458 then
		cw('n', "Ellos piensan que el manga solo es para niños.")
	elseif cl == 459 then
		cw('n', "Ni siquiera puedo sacar el tema sin que digan cosas como...")
	elseif cl == 460 then
		cw('n', "«¿Eh? ¿Todavía te gustan esas cosas?»")
	elseif cl == 461 then
		cw('n', "Me hace querer darles un puñetazo en la cara...")
	elseif cl == 462 then
		cw('mc', "Oh, sé a qué tipo de personas te refieres...")
	elseif cl == 463 then
		cw('mc', "Honestamente, es muy difícil encontrar a amigos que no te juzguen, y más incluso que también compartan tus gustos...")
	elseif cl == 464 then
		cw('mc', "Yo ya soy lo que podríamos llamar un perdedor, así que supongo que he empatizado con el resto de perdedores con el tiempo.")
	elseif cl == 465 then
		cw('mc', "Pero probablemente sea más difícil para alguien como tú...")
	elseif cl == 466 then
	cgHide()
		cw('n', "Ajá.")
	elseif cl == 467 then
		cw('n', "Sí, es bastante acertado.")
	elseif cl == 468 then
		cw('bl', "Espera, ¿qué parte de lo que he dicho?")
	elseif cl == 469 then
		cw('n', "Quiero decir, siento que ni siquiera lo puedo dejar en mi propia habitación...")
	elseif cl == 470 then
	style_edited = true
		cw('n', "Mi padre me pegaría hasta en la foto del DNI si se enterara de esto.")
	elseif cl == 471 then
	style_edited = false
		cw('n', "Por lo menos, las cosas están seguras aquí, en la habitación del club.")
	elseif cl == 472 then
	cgUpdate('n_cg1_exp3')
		cw('n', "Aunque Monika es muy cabrona...")
	elseif cl == 473 then
		cw('n', "¡Uh! No hay forma en la que pueda ganar, ¿no es así?")
	elseif cl == 474 then
		cw('mc', "Bueno, al final la cosa dio sus frutos, ¿no?")
	elseif cl == 475 then
		cw('mc', "Quiero decir, aquí estoy, leyéndolo.")
	elseif cl == 476 then
		cw('n', "Bueno, no es como si eso resolviese alguno de mis problemas.")
	elseif cl == 477 then
		cw('mc', "Puede...")
	elseif cl == 478 then
		cw('mc', "Pero al menos lo disfrutas, ¿no?")
	elseif cl == 479 then
	cgUpdate('n_cg1_exp2')
		cw('n', "...")
	elseif cl == 480 then
	n "..."
	elseif cl == 481 then
		cw('n', "¿Y bien...?")
	elseif cl == 482 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 483 then
	cgUpdate('n_cg1_exp3')
		cw('n', "Dios, ¡basta ya!")
	elseif cl == 484 then
		cw('n', "Vas a seguir leyendo, ¿o qué?")
	elseif cl == 485 then
		cw('mc', "Sí, sí...")
	elseif cl == 486 then
		cw('bl', "Paso la página.")
	elseif cl == 487 then
	cgHide()
	event_initstart('wipe','black')
	elseif cl == 488 then
	bl "..."
	elseif cl == 489 then
	bl "..."
	elseif cl == 490 then
		cw('bl', "... ...")
	elseif cl == 491 then
		cw('bl', "... ... ...")
	elseif cl == 492 then
		cw('bl', "... ... ... ...")
	elseif cl == 493 then
		cw('bl', "El tiempo pasa.")
	elseif cl == 494 then
		cw('bl', "Natsuki está extrañamente quieta ahora.")
	elseif cl == 495 then
		cw('bl', "La miro.")
	elseif cl == 496 then
	bgUpdate('cg/n_cg1_base')
	cgUpdate('n_cg1_exp4')
		cw('bl', "Parece que está empezando a quedarse dormida.")
	elseif cl == 497 then
		cw('mc', "Eh, Natsuki...")
	elseif cl == 498 then
	cgUpdate('n_cg1_exp5')
		cw('n', "¿S-Sí...?")
	elseif cl == 499 then
		cw('bl', "Repentinamente, Natsuki se desploma directamente hacia mí.")
	elseif cl == 500 then
	sfxplay('fall')
		cw('mc', "O-oye...")
	
	elseif cl == 501 then
	cgHide()
	bgUpdate('cg/n_cg1b')
	audioUpdate('6g')
	event_initstart('n_rects_ghost')
	style_edited = true
	cw('n',ntext)
	elseif cl == 502 then
	cw('n',ntext2)

	elseif cl == 503 then
	event_end()
	audioUpdate('0')
	bgUpdate('club')
	updateMonika('1','r',80)
	style_edited = false
		cw('m', "Oh, vaya...")
	elseif cl == 504 then
	updateMonika('1','d')
		cw('m', "Natsuki, ¿estás bien?")
	elseif cl == 505 then
	updateMonika('1','d',10)
	updateNatsuki('1','2b',150)
	n "..."
	elseif cl == 506 then
	updateMonika('1','a')
		cw('m', "Toma...")
	elseif cl == 507 then
		cw('bl', "Monika saca de su mochila algo que parece una barrita de proteínas.")
	elseif cl == 508 then
		cw('bl', "Luego, la tira en dirección a Natsuki.")
	elseif cl == 509 then
		cw('bl', "Los ojos de Natsuki de repente vuelven a iluminarse.")
	elseif cl == 510 then
		cw('bl', "Coge la barrita del suelo e inmediatamente quita el envoltorio.")
	elseif cl == 511 then
	updateNatsuki('1','s')
		cw('n', "Te dije que no me dieras... Ñamñam...")
	elseif cl == 512 then
		cw('bl', "Ni siquiera termina su frase antes de metérsela en la boca.")
	elseif cl == 513 then
	hideNatsuki()
	updateMonika('3','b',80)
		cw('m', "No te preocupes, " .. player .. ".")
	elseif cl == 514 then
		cw('m', "Natsuki está bien.")
	elseif cl == 515 then
		cw('m', "Solo son cosas que le ocurren de vez en cuando.")
	elseif cl == 516 then
	updateMonika('1','a')
		cw('m', "Por eso siempre guardo tentempiés en mi mochila para ella.")
	elseif cl == 517 then
	updateMonika('5a')
		cw('m', "¡En fin!")
	elseif cl == 518 then
		cw('m', "¿Por qué no aprovechamos todos para compartir nuestros poemas?")
	elseif cl == 519 then
	poeminitialize()
	end
end
