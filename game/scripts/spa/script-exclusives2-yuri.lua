local gtext24 = glitchtext(24)
local gtext80 = glitchtext(80)
local gtext200 = glitchtext(200)
local y_gtimer = 0

function yuri_dragon()
	y_gtimer = y_gtimer + dt
	if y_gtimer > 0.55 and y_gtimer < 0.6 then
		updateYuri('3','a')
		xaload = -1
	elseif y_gtimer > 0.25 and y_gtimer < 0.3 then
		updateYuri('dragon2')
		xaload = -1
	elseif y_gtimer < 0.1 then
		updateYuri('dragon1')
		xaload = -1
	end
end

function Yuri_exclusive2_1()
	if cl == 358 then
		cw('bl', "Siento mucha curiosidad por hablar un poco más con Yuri...")
	elseif cl == 359 then
		cw('bl', "Pero, a la vez, me sabe mal interrumpirle la lectura.")
	elseif cl == 360 then
		cw('bl', "Echo un vistazo a la portada de su libro.")
	elseif cl == 361 then
		cw('bl', "Parece el mismo libro que me prestó...")
	elseif cl == 362 then
		cw('bl', "Encima, parece que aún va por el principio.")
	elseif cl == 363 then
	audioUpdate('6')
	updateYuri('4','a2',80)
		cw('mc', "Oh...")
	elseif cl == 364 then
		cw('bl', "Mierda...")
	elseif cl == 365 then
		cw('bl', "Creo que se ha dado cuenta de que la estaba mirando...")
	elseif cl == 366 then
		cw('bl', "Yuri vuelve a mirarme, ocasionando que nuestras miradas se crucen.")
	elseif cl == 367 then
	updateYuri('4','b2')
	y "..."
	elseif cl == 368 then
		cw('bl', "Pero eso solo la hace esconderse más tras su libro.")
	elseif cl == 369 then
		cw('mc', "Lo siento...")
	elseif cl == 370 then
		cw('mc', "Me quedé pensando en las musarañas...")
	elseif cl == 371 then
		cw('bl', "Murmuro, al sentir que la había hecho sentir incómoda.")
	elseif cl == 372 then
	updateYuri('1','oneeye')
		cw('y', "Oh...")
	elseif cl == 373 then
		cw('y', "No pasa nada...")
	elseif cl == 374 then
		cw('y', "Si estuviera centrada en el libro, ni me habría dado cuenta.")
	elseif cl == 375 then
		cw('y', "Pero solo estoy releyendo una parte de este, así que...")
	elseif cl == 376 then
		cw('mc', "Ese es el libro que me dejaste, ¿no?")
	elseif cl == 377 then
		cw('y', "Ajá.")
	elseif cl == 378 then
		cw('y', "Quería reelérmelo un poco.")
	elseif cl == 379 then
	updateYuri('2','q')
		cw('y', "¡Pero no por nada en particular!...")
	elseif cl == 380 then
		cw('mc', "Solo por curiosidad, ¿cómo es que tienes dos copias del mismo libro?")
	elseif cl == 381 then
		cw('y', "Ah...")
	elseif cl == 382 then
		cw('y', "Bueno, cuando fui ayer a la librería...")
	elseif cl == 383 then
	updateYuri('3','o')
		cw('y', "Ejem, bueno...")
	elseif cl == 384 then
		cw('y', "Pues...")
	elseif cl == 385 then
	updateYuri('1','w')
		cw('y', "C-compré dos copias.")
	elseif cl == 386 then
		cw('mc', "Ah, ya veo.")
	elseif cl == 387 then
		cw('bl', "Es bastante obvio que Yuri me está ocultando algo, pero decido dejarlo pasar.")
	elseif cl == 388 then
		cw('mc', "¡Pues comenzaré a leerlo ya!")
	elseif cl == 389 then
	updateYuri('2','u')
		cw('y', "Me alegra oír eso...")
	elseif cl == 390 then
		cw('y', "En cuanto la historia empiece a animarse, no podrás parar.")
	elseif cl == 391 then
	updateYuri('2','c')
		cw('y', "Es una historia muy interesante con la que además te sientes identificado.")
	elseif cl == 392 then
		cw('mc', "¿Ah, sí?...")
	elseif cl >= 393 then
	Yuri_exclusive2_1_ch22()
	end
end

function Yuri_exclusive2_1_ch22()
	if cl == 393 then
		cw('mc', "¿Y de qué trata exactamente?")
	elseif cl == 394 then
	updateYuri('1','f')
		cw('y', "Pues...")
	elseif cl == 395 then
		cw('y', "Mmm...")
	elseif cl == 396 then
		cw('bl', "Miro la portada del libro.")
	elseif cl == 397 then
		cw('bl', "El libro se titula El retrato de Markov.")
	elseif cl == 398 then
		cw('bl', "En su portada, se encuentra el siniestro símbolo de un ojo.")
	elseif cl == 399 then
	updateYuri('1','a')
		cw('y', "Básicamente, trata sobre un campamento religioso que fue convertido en una prisión para realizar experimentos humanos...")
	elseif cl == 400 then
		cw('y', "Y las personas atrapadas allí tienen este rasgo que los convierte en máquinas de matar sedientas de sangre.")
	elseif cl == 401 then
	updateYuri('1','m')
		cw('y', "Pero la cosa se pone aún peor, y comienzan a engendrar personas a base de cortar sus extremidades y recolocarlas para...")
	elseif cl == 402 then
	updateYuri('1','q')
		cw('y', "E-eh, creo que eso podría considerarse un «destripe» de la trama...")
	elseif cl == 403 then
	updateYuri('3','q')
		cw('y', "¡En cualquier caso, n-no puedo quitarle los ojos de encima!")
	elseif cl == 404 then
	updateYuri('3','n')
		cw('y', "... ¡Al libro, digo!")
	elseif cl == 405 then
	updateYuri('3','q')
		cw('y', "N-no a la parte de las extremidades...")
	elseif cl == 406 then
		cw('mc', "¡Qué...!")
	elseif cl == 407 then
		cw('bl', "Qué siniestro, ¿no?")
	elseif cl == 408 then
		cw('bl', "Yuri empezó contando la historia como si esta fuera a ser bonita, pero ese giro oscuro me pilló por sorpresa.")
	elseif cl == 409 then
	updateYuri('1','s')
		cw('mc', "Ah...")
	elseif cl == 410 then
		cw('m', "¿" .. player .. "?")
	elseif cl == 411 then
		cw('mc', "No, no es eso...")
	elseif cl == 412 then
		cw('mc', "No tengo problemas con esa clase de historias, por lo que no te preocupes.")
	elseif cl == 413 then
	updateYuri('2','u')
		cw('y', "Eso espero...")
	elseif cl == 414 then
		cw('bl', "Es verdad... Se me olvidó por completo que a Yuri le iban ese tipo de cosas.")
	elseif cl == 415 then
		cw('bl', "Es muy tímida y huraña por fuera, pero por dentro, parece ser alguien completamente distinta.")
	elseif cl == 416 then
		cw('y', "Es solo que este tipo de historias...")
	elseif cl == 417 then
	updateYuri('1','a')
		cw('y', "Son de las que te incitan a ver la vida desde una nueva y extraña perspectiva.")
	elseif cl == 418 then
		cw('y', "Cuando ocurren cosas horribles que no son obra de alguien malvado...")
	elseif cl == 419 then
	style_edited = true
		cw('y', "Es porque el mundo ya está lleno de gente así, porque todos somos escoria.")
	elseif cl == 420 then
		cw('y', "Luego, de repenteeeeeeeeeeeeeeeeeee eeeeeeeeeeeeeeeeeeeee")
	elseif cl == 421 then
	style_edited = false
	updateYuri('3','v')
		cw('y', "Es... Estoy divagando, ¿no?...")
	elseif cl == 422 then
		cw('y', "Otra vez no...")
	elseif cl == 423 then
	updateYuri('4','b2')
		cw('y', "Lo siento...")
	elseif cl == 424 then
		cw('mc', "¡Eh, no tienes por qué disculparte!...")
	elseif cl == 425 then
		cw('mc', "No he perdido el interés por el libro ni nada por el estilo.")
	elseif cl == 426 then
		cw('y', "Bueno...")
	elseif cl == 427 then
		cw('y', "En ese caso, supongo que no ha sido nada...")
	elseif cl == 428 then
	updateYuri('4','a2')
		cw('y', "Pero creo que debería hablarte sobre mi problema...")
	elseif cl == 429 then
		cw('y', "Cuando dejo que cosas como los libros y la escritura colmen mis pensamientos...")
	elseif cl == 430 then
	style_edited = true
	cw('y',"me pongo increíblemente "..gtext24,'nw')
	elseif cl == 431 then
	style_edited = false
		cw('y', "Se me olvida prestarle atención a los demás...")
	elseif cl == 432 then
	updateYuri('3','t')
		cw('y', "¡Discúlpame si termino diciendo algo extraño!")
	elseif cl == 433 then
		cw('y', "¡Y, por favor, fréname si empiezo a hablar demasiado!")
	elseif cl == 434 then
		cw('mc', "Pues...")
	elseif cl == 435 then
		cw('mc', "No creo que necesites preocuparte por ello...")
	elseif cl == 436 then
		cw('mc', "Eso solo significa que te apasiona la lectura.")
	elseif cl == 437 then
		cw('mc', "Y lo menos que puedo hacer es escucharte.")
	elseif cl == 438 then
		cw('mc', "Al fin y al cabo, somos un club de literatura...")
	elseif cl == 439 then
	updateYuri('4','a2')
		cw('y', "Oh...")
	elseif cl == 440 then
		cw('y', "Pues...")
	elseif cl == 441 then
		cw('y', "Sí, tienes razón...")
	elseif cl == 442 then
		cw('mc', "De hecho...")
	elseif cl == 443 then
		cw('mc', "¿Qué te parece si comienzo ya a leer el libro?")
	elseif cl == 444 then
	sfxplay('glitch3')
	scriptJump(445)
	elseif cl == 445 then
	yuri_dragon()
		cw('y', "¡Ge-genial!")
	elseif cl == 446 then
	updateYuri('3','n')
		cw('y', "¡Qu-quiero decir, no tienes por qué hacerlo, pero...!")
	elseif cl == 447 then
		cw('mc', "Ja, ja, ¿qué dices?")
	elseif cl == 448 then
	updateYuri('3','o')
	y "..."
	elseif cl == 449 then
		cw('mc', "Permíteme que coja el libro...")
	elseif cl == 450 then
		cw('bl', "Saco rápidamente el libro que había metido en mi mochila.")
	elseif cl == 451 then
		cw('mc', "Muy bien... ¿Puedo sentarme aquí?")
	elseif cl == 452 then
		cw('bl', "Me siento en la silla situada al lado de Yuri.")
	elseif cl == 453 then
	updateYuri('3','n')
		cw('y', "¡Ah!...")
	elseif cl == 454 then
		cw('y', "Claro...")
	elseif cl == 455 then
		cw('mc', "¿Estás segura?")
	elseif cl == 456 then
		cw('mc', "Te noto algo inquieta...")
	elseif cl == 457 then
		cw('y', "Em...")
	elseif cl == 458 then
	updateYuri('4','b2')
		cw('y', "Lo siento...")
	elseif cl == 459 then
		cw('y', "¡No es que no quiera que lo hagas!")
	elseif cl == 460 then
		cw('y', "Es solo que no estoy muy acostumbrada...")
	elseif cl == 461 then
		cw('y', "A leer con alguien.")
	elseif cl == 462 then
		cw('mc', "Ya veo...")
	elseif cl == 463 then
		cw('mc', "Bueno, si acabo distrayéndote o algo, me lo dices.")
	elseif cl == 464 then
		cw('y', "V-vale...")
	elseif cl == 465 then
	hideYuri()
		cw('bl', "Abro el libro y empiezo a leer el prólogo.")
	elseif cl == 466 then
		cw('bl', "Pronto entiendo a lo que Yuri se refería con «leer con alguien».")
	elseif cl == 467 then
		cw('bl', "Es como si pudiera sentir su presencia sobre mi hombro mientras leo.")
	elseif cl == 468 then
		cw('bl', "Aunque tampoco es algo malo.")
	elseif cl == 469 then
		cw('bl', "Puede que me distraiga un poco, pero en verdad es una sensación reconfortante.")
	elseif cl == 470 then
		cw('bl', "Puedo ver a Yuri a través del rabillo del ojo.")
	elseif cl == 471 then
		cw('bl', "Me doy cuenta de que no está leyendo su propio libro.")
	elseif cl == 472 then
		cw('bl', "Alzo la mirada.")
	elseif cl == 473 then
		cw('bl', "Parece que en realidad está leyendo mi libro en lugar del...")
	elseif cl == 474 then
	updateYuri('3','n',80)
		cw('y', "¡L-lo siento!")
	elseif cl == 475 then
		cw('y', "¡Tan solo estaba...!")
	elseif cl == 476 then
	style_edited = true
		cw('y', "¡Tan solo estaba embriagado con el calor que desprende tu piel cccccccccccccomer calorrrrrrr!")
	elseif cl == 477 then
	style_edited = false
		cw('mc', "Yuri, te disculpas demasiado, ¿no?")
	elseif cl == 478 then
		cw('y', "¿A-ah, sí?...")
	elseif cl == 479 then
	updateYuri('4','a2')
		cw('y', "No lo hago a propósito...")
	elseif cl == 480 then
		cw('y', "Lo siento...")
	elseif cl == 481 then
	updateYuri('4','c2')
		cw('y', "¡Quiero decir...!")
	elseif cl == 482 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 483 then
		cw('mc', "¿Qué te parece esto?")
	elseif cl == 484 then
		cw('bl', "Pongo mi pupitre frente al de Yuri para luego sostener mi libro entre ambos.")
	elseif cl == 485 then
	updateYuri('2','v')
	y "Ah..."
	elseif cl == 486 then
		cw('y', "S-supongo...")
	elseif cl == 487 then
		cw('bl', "Yuri cierra su libro tímidamente.")
	elseif cl == 488 then
		cw('bl', "Nos vamos inclinando poco a poco, haciendo que nuestros hombros casi entren en contacto.")
	elseif cl == 489 then
		cw('bl', "Parece que mi brazo izquierdo estorba, por lo que paso a usar mi mano derecha para mantener el libro abierto.")
	elseif cl == 490 then
		cw('mc', "Uy, pero parece que eso dificulta un poco el pasar de página...")
	elseif cl == 491 then
		cw('y', "¿Y si...?")
	elseif cl == 492 then
	hideAll()
	persistent.clear[3] = 1
	if xaload == 0 then
		savepersistent()
	end
	bgUpdate('cg/y_cg1_base')
		cw('bl', "Yuri levanta su brazo izquierdo y sostiene la parte izquierda del libro entre su pulgar y su dedo índice.")
	elseif cl == 493 then
	mc "Ah..."
	elseif cl == 494 then
		cw('bl', "Hago lo mismo con mi brazo derecho, sosteniendo el lado derecho del libro.")
	elseif cl == 495 then
		cw('bl', "De esa forma, cada vez que paso una página, Yuri la desliza bajo su pulgar.")
	elseif cl == 496 then
		cw('bl', "Pero al agarrar el libro de esta forma...")
	elseif cl == 497 then
		cw('bl', "Estamos aún más acurrucados que antes.")
	elseif cl == 498 then
		cw('bl', "¡Esto sí que me distrae!...")
	elseif cl == 499 then
		cw('bl', "Es como si pudiese sentir el calor de la cara de Yuri, y además, puedo verla de reojo...")
	elseif cl == 500 then
	cgUpdate('y_cg1_exp1')
		cw('y', "¿Has terminado ya?")
	elseif cl == 501 then
		cw('y', "¿Eh?")
	elseif cl == 502 then
		cw('y', "Para pasar de página...")
	elseif cl == 503 then
		cw('mc', "Ah... ¡Lo siento!")
	elseif cl == 504 then
		cw('mc', "Me he distraído un poco...")
	elseif cl == 505 then
		cw('bl', "Vuelvo a mirar a Yuri, y nuestras miradas se cruzan.")
	elseif cl == 506 then
		cw('bl', "No sé cómo podré seguirle el ritmo...")
	elseif cl == 507 then
	y "Ah..."
	elseif cl == 508 then
	cgUpdate('y_cg1_exp2')
		cw('y', "Tranquilo, no pasa nada.")
	elseif cl == 509 then
		cw('y', "No estás tan acostumbrado a leer, ¿no?")
	elseif cl == 510 then
		cw('y', "No me importa esperarte...")
	elseif cl == 511 then
		cw('y', "Probablemente sea lo menos que puedo hacer...")
	elseif cl == 512 then
		cw('y', "Ya que has tenido mucha paciencia conmigo...")
	elseif cl == 513 then
		cw('mc', "S-sí...")
	elseif cl == 514 then
		cw('mc', "Gracias.")
	elseif cl == 515 then
	cgHide()
		cw('bl', "Continuamos leyendo.")
	elseif cl == 516 then
		cw('bl', "Yuri deja de preguntarme si estoy listo para pasar de página.")
	elseif cl == 517 then
		cw('bl', "En su lugar, me limito a asumir que ya ha terminado la página, por lo que las voy pasando a mi ritmo.")
	elseif cl == 518 then
		cw('bl', "Continuamos leyendo el primer capítulo en silencio.")
	elseif cl == 519 then
		cw('bl', "Incluso podría decirse que pasar cada página es algo así como un intercambio íntimo...")
	elseif cl == 520 then
		cw('bl', "Mi pulgar suelta gentilmente la página, dejándola caer hacia su lado y haciendo que su dedo índice la atrape.")
	elseif cl == 521 then
		cw('mc', "Eh, Yuri...")
	elseif cl == 522 then
		cw('mc', "Puede que te parezca una tontería, pero...")
	elseif cl == 523 then
		cw('mc', "La protagonista me recuerda un poco a ti.")
	elseif cl == 524 then
	cgUpdate('y_cg1_exp3')
		cw('y', "¿E-eh?")
	elseif cl == 525 then
		cw('y', "¡N-no, no me identifico nada con ese personaje!")
	elseif cl == 526 then
		cw('y', "¡Nada de nada!")
	elseif cl == 527 then
		cw('mc', "¿De verdad?...")
	elseif cl == 528 then
		cw('mc', "Solo pensaba en la forma en la que duda de todo lo que dice y tal...")
	elseif cl == 529 then
	cgUpdate('y_cg1_exp1')
		cw('y', "A-ah...")
	elseif cl == 530 then
		cw('y', "Conque es por eso...")
	elseif cl == 531 then
	cgUpdate('y_cg1_exp2')
		cw('y', "Lo siento...")
	elseif cl == 532 then
		cw('y', "Pensaba que era por... otra cosa.")
	elseif cl == 533 then
		cw('mc', "¿Otra cosa?...")
	elseif cl == 534 then
	cgUpdate('y_cg1_exp3')
		cw('y', "¡O-olvídalo!")
	elseif cl == 535 then
		cw('y', "Aún no hemos avanzado tanto...")
	elseif cl == 536 then
		cw('y', "Así que no sé por qué se me vino eso a la cabeza...")
	elseif cl == 537 then
		cw('y', "¡Ja, ja, ja!")
	elseif cl == 538 then
		cw('mc', "Yuri, ¿estás bien?")
	elseif cl == 539 then
	cgUpdate('y_cg1_exp1')
		cw('y', "¿Eh?...")
	elseif cl == 540 then
		cw('bl', "Yuri está algo inquieta desde que hemos empezado a leer...")
	elseif cl == 541 then
		cw('mc', "Si te sientes mal o algo, paramos.")
	elseif cl == 542 then
		cw('mc', "Tu respiración es algo...")
	elseif cl == 543 then
		cw('y', "¿Mi respiración?...")
	elseif cl == 544 then
	cgHide()
		cw('bl', "Yuri pone su mano sobre su pecho, como si quisiera sentir los latidos de su corazón.")
	elseif cl == 545 then
		cw('y', "N-no... me había dado cuenta...")
	elseif cl == 546 then
	cgUpdate('y_cg1_exp3')
		cw('y', "¡Da igual, estoy bien!")
	elseif cl == 547 then
		cw('y', "¡Solo necesito algo de agua!...")
	elseif cl == 548 then
		cw('mc', "Está bien... No te presiones.")
	elseif cl == 549 then
	cgHide()
	bgUpdate('club')
		cw('bl', "Yuri se levanta y sale corriendo del aula.")
	elseif cl == 550 then
		cw('mc', "¿Pero qué narices...?")
	elseif cl == 551 then
	updateMonika('1','d',80)
	cw('m',"¿"..player.."?")
	elseif cl == 552 then
		cw('m', "¿Ha ocurrido algo?")
	elseif cl == 553 then
	mc "¿Eh?"
	elseif cl == 554 then
		cw('mc', "No tengo ni idea de lo que le pasa...")
	elseif cl == 555 then
		cw('mc', "Solo sé que se comportaba de forma algo extraña...")
	elseif cl == 556 then
	updateMonika('1','r')
		cw('m', "Conque no sabes nada...")
	elseif cl == 557 then
		cw('mc', "Lo siento, la verdad es que no.")
	elseif cl == 558 then
		cw('mc', "¿Te preocupa Yuri?")
	elseif cl == 559 then
	updateMonika('1','a')
		cw('m', "Oh... No, no te creas.")
	elseif cl == 560 then
		cw('m', "Solo quería asegurarme de que no le hubieras hecho nada.")
	elseif cl == 561 then
		cw('mc', "¡N-no, no le he hecho ni dicho nada!")
	elseif cl == 562 then
	updateMonika('5a')
		cw('m', "Ja, ja, tranquilo... Te creo, tontín.")
	elseif cl == 563 then
		cw('m', "Yuri hace esas cosas de vez en cuando, no es nada de lo que debas preocuparte.")
	elseif cl == 564 then
		cw('mc', "Vale... Si tú lo dices.")
	elseif cl == 565 then
	updateMonika('2','b')
		cw('m', "En cualquier caso, ¿por qué no empezamos a compartir nuestros poemas?")
	elseif cl == 566 then
	mc "¿Eh?"
	elseif cl == 567 then
		cw('mc', "¿No deberíamos esperar a Yuri?")
	elseif cl == 568 then
	updateMonika('2','a')
		cw('m', "Bueno, puede que tarde bastante en volver, así que supuse que podríamos empezar sin ella.")
	elseif cl == 569 then
		cw('m', "¿Te parece eso bien?")
	elseif cl == 570 then
		cw('mc', "Sí, solo preguntaba...")
	elseif cl == 571 then
		cw('bl', "Me levanto.")
	elseif cl == 572 then
		cw('bl', "Memorizo en qué parte del libro me he quedado y lo guardo en mi mochila.")
	elseif cl == 573 then
	poeminitialize('y_ranaway')
	end
end

function Yuri_exclusive2_2_ch22()
	if cl == 1235 then
	updateYuri('3','a')
		cw('y', "Aunque antes he de preguntarte algo...")
	elseif cl == 1236 then
		cw('y', "¿Te importa si antes preparo algo de té?")
	elseif cl == 1237 then
		cw('mc', "En absoluto.")
	elseif cl == 1238 then
	updateYuri('1','c')
		cw('y', "Muchísimas gracias.")
	elseif cl == 1239 then
	updateYuri('1','a')
		cw('y', "No hay nada como una buena taza de té mientras lees algo.")
	elseif cl == 1240 then
		cw('y', "También prepararé para ti.")
	elseif cl == 1241 then
	hideYuri()
		cw('bl', "Yuri se levanta y se dirige al armario.")
	elseif cl == 1242 then
		cw('bl', "La sigo y observo como saca una pequeña jarra de agua de las que tienen un filtro del estante del armario.")
	elseif cl == 1243 then
	updateYuri('1','f',80)
		cw('y', "¿Puedes sujetarla un momento?")
	elseif cl == 1244 then
		cw('mc', "Claro...")
	elseif cl == 1245 then
		cw('bl', "Yuri me da la jarra de agua y también un hervidor eléctrico.")
	elseif cl == 1246 then
		cw('y', "Voy a conectar esto en el escritorio del profesor y luego iré a por algo de agua.")
	elseif cl == 1247 then
	hideYuri()
		cw('bl', "Yuri camina hasta el escritorio del profesor y conecta el hervidor.")
	elseif cl == 1248 then
		cw('bl', "Me limito a observarla.")
	elseif cl == 1249 then
		cw('bl', "Para mi sorpresa, su forma de moverse es completamente opuesta a su forma de hablar.")
	elseif cl == 1250 then
		cw('bl', "Yuri parece elegante y metódica, en especial, gracias a sus largas piernas.")
	elseif cl == 1251 then
	updateYuri('1','f',80)
		cw('y', "¿Me puedes dar la jarra de agua?")
	elseif cl == 1252 then
	updateYuri('1','a')
		cw('y', "Gracias. Vuelvo enseguida.")
	elseif cl == 1253 then
		cw('mc', "Oh, creo que también debería acompañarte...")
	elseif cl == 1254 then
	updateYuri('1','q')
		cw('y', "¡N-no hace falta!")
	elseif cl == 1255 then
		cw('y', "Quédate aquí...")
	elseif cl == 1256 then
		cw('y', "Volveré enseguida.")
	elseif cl == 1257 then
	hideYuri()
		cw('bl', "Sosteniendo la jarra, Yuri sale corriendo del aula.")
	elseif cl == 1258 then
	updateMonika('2','i',80)
	m "Ah..."
	elseif cl == 1259 then
		cw('m', "¿Yuri te ha vuelto a dejar solo?")
	elseif cl == 1260 then
		cw('mc', "No, esta vez no es el caso.")
	elseif cl == 1261 then
		cw('mc', "Solo ha ido a llenar la jarra de agua para preparar té.")
	elseif cl == 1262 then
	updateMonika('5a')
		cw('m', "¡Ah, vale!")
	elseif cl == 1263 then
		cw('m', "Perdóname por el malentendido~")
	
	elseif cl == 1264 then
	event_initstart('wipe')
	elseif cl == 1265 then
	bl "..."
	elseif cl == 1266 then
		cw('bl', "Transcurren diez minutos.")
	elseif cl == 1267 then
		cw('bl', "Yuri dijo que no tardaría mucho...")
	elseif cl == 1268 then
		cw('bl', "¿Le habrá pasado algo?")
	elseif cl == 1269 then
		cw('bl', "Me canso de esperar, así que decido ir a buscarla.")
	elseif cl == 1270 then
	event_initstart('wipe','corridor')
	elseif cl == 1271 then
	audioUpdate('6o')
		cw('mc', "Veamos...")
	elseif cl == 1272 then
		cw('bl', "Lo más lógico sería que estuviera en la fuente más cercana...")
	elseif cl == 1273 then
		cw('bl', "Me dirijo al pasillo.")
	elseif cl == 1274 then
		cw('???', "Arf, ah...")
	elseif cl == 1275 then
		cw('???', "... Arf, arf...")
	elseif cl == 1276 then
		cw('bl', "¿Qué es ese ruido?")
	elseif cl == 1277 then
		cw('bl', "Viene de esa esquina...")
	elseif cl == 1278 then
		cw('bl', "Parece alguien jadeando.")
	elseif cl == 1279 then
		cw('???', "Fssssss...")
	elseif cl == 1280 then
		cw('bl', "Es una respiración muy aguda, como si alguien estuviera absorbiendo el aire entre sus dientes.")
	elseif cl == 1281 then
		cw('bl', "¿Estará sufriendo esa persona?...")
	elseif cl == 1282 then
		cw('bl', "Llego a la esquina y miro alrededor.")
	elseif cl == 1283 then
		cw('mc', "¿Yuri?...")
	elseif cl == 1284 then
	updateYuri('cuts','',80)
		cw('y', "¡Aaah...!")
	elseif cl == 1285 then
	event_initstart('show_vignette')
	audioUpdate('6r')
	hideAll()
	cw('mc',"¿Yuri?...",'nwfast')
	elseif cl == 1286 then
	cw('bl',"Llego a la esquina y miro alrededor.",'nwfast')
	elseif cl == 1287 then
	cw('bl',"¿Estará esa persona sufriendo?...",'nwfast')
	elseif cl == 1288 then
	cw('bl',"Es una respiración muy aguda, como si alguien estuviera absorbiendo el aire entre sus dientes.",'nwfast')
	elseif cl == 1289 then
	cw('???',"Fssssss...",'nwfast')
	elseif cl == 1290 then
	cw('bl',"Parece alguien jadeando.",'nwfast')
	elseif cl == 1291 then
	cw('bl',"Viene de esa esquina...",'nwfast')
	elseif cl == 1292 then
	cw('bl',"¿Qué es ese ruido?",'nwfast')
	elseif cl == 1293 then
		cw('???', "... Arf, arf...",'nwfast')
	elseif cl == 1293 then
	cw('???',"Arf, ah...",'nwfast')
	elseif cl == 1294 then
	cw('bl',"Me dirijo al pasillo.",'nwfast')
	elseif cl == 1295 then
	cw('bl',"Lo más lógico sería que estuviera en la fuente más cercana...",'nwfast')
	elseif cl == 1296 then
	cw('mc',"Veamos...",'nwfast')
	elseif cl == 1297 then
	bgUpdate('club')
	cw('bl',"Me canso de esperar, así que decido ir a buscarla.",'nwfast')
	elseif cl == 1298 then
	cw('bl',"¿Le habrá pasado algo?",'nwfast')
	elseif cl == 1299 then
	cw('bl',"Yuri dijo que no tardaría mucho...",'nwfast')
	elseif cl == 1300 then
	cw('bl',"Transcurren diez minutos.",'nwfast')
	elseif cl == 1301 then
	cw('bl',"...",'nwfast')
	
	elseif cl == 1302 then
		history = {}
		event_end('show_vignette')
		if poemwinner[1] == 'Yuri' and chapter == 23 then
			scriptJump(1723)
		else
			scriptJump(1303)
		end
		
	elseif cl == 1303 then
	audioUpdate('6')
	bgUpdate('club')
	updateYuri('1','a')
		cw('y', "Ya estoy aquí.")
	elseif cl == 1304 then
		cw('y', "Gracias por esperar.")
	elseif cl == 1305 then
		cw('y', "" .. player .. ", ¿te gusta el té oolong?")
	elseif cl == 1306 then
		cw('mc', "Ah, claro.")
	elseif cl == 1307 then
		cw('mc', "Cualquier cosa me vale.")
	elseif cl == 1308 then
		cw('y', "Vale.")
	elseif cl == 1309 then
		cw('bl', "Yuri pone el hervidor a unos 90 grados centígrados.")
	elseif cl == 1310 then
	updateYuri('1','f')
		cw('y', "Ahora toca la tetera.")
	elseif cl == 1311 then
		cw('mc', "Qué bien lo preparas, ¿no?")
	elseif cl == 1312 then
	updateYuri('1','u')
		cw('y', "Pues claro...")
	elseif cl == 1313 then
		cw('y', "Y debo hacerlo aún mejor cuando es para otra persona.")
	elseif cl == 1314 then
		cw('mc', "¿Aunque no sea un experto del té?...")
	elseif cl == 1315 then
	updateYuri('2','m')
		cw('y', "Je, je.")
	elseif cl == 1316 then
	updateYuri('2','a')
		cw('y', "En ese caso, podré sorprenderte aún más.")
	elseif cl == 1317 then
		cw('mc', "Ah... ¡Pues sí!")
	elseif cl == 1318 then
	hideYuri()
		cw('bl', "Yuri agarra la tetera y comienza a medir las hojas de té.")
	elseif cl == 1319 then
		cw('bl', "Para mi sorpresa, incluso empieza a tararear un poco para sí misma.")
	elseif cl == 1320 then
	updateYuri('1','c',80)
		cw('mc', "Parece que estás de buen humor...")
	elseif cl == 1321 then
	updateYuri('1','a')
		cw('y', "¿Tú crees?")
	elseif cl == 1322 then
		cw('y', "Lo estaba dejando ver...")
	elseif cl == 1323 then
		cw('y', "Y te has dado cuenta.")
	elseif cl == 1324 then
	updateYuri('2','u')
		cw('y', "He estado dándole vueltas...")
	elseif cl == 1325 then
		cw('y', "Y he decidido que voy a intentar ser un poco más expresiva.")
	elseif cl == 1326 then
		cw('y', "Parece que tampoco me es tan difícil...")
	elseif cl == 1327 then
	updateYuri('1','c')
		cw('y', "Pero solo cuando estás cerca de mí.")
	elseif cl == 1328 then
	updateYuri('1','a')
	mc "Ah..."
	elseif cl == 1329 then
		cw('mc', "¡Eso es genial, Yuri!")
	elseif cl == 1330 then
		cw('mc', "Pero intenta no presionarte demasiado.")
	elseif cl == 1331 then
	updateYuri('3','u')
		cw('y', "" .. player .. "...")
	elseif cl == 1332 then
		cw('y', "Me resulta tan entrañable.")
	elseif cl == 1333 then
		cw('mc', "Em...")
	elseif cl == 1334 then
		cw('bl', "Yuri no lo decía en broma...")
	elseif cl == 1335 then
		cw('bl', "¡Creo que no voy a poder seguir con esto!...")
	elseif cl == 1336 then
		cw('bl', "Miro a Yuri servirnos una taza de té a ambos.")
	elseif cl == 1337 then
	updateYuri('1','a')
		cw('y', "" .. player .. ", quiero pedirte algo más.")
	elseif cl == 1338 then
		cw('y', "¿Te importaría que hoy nos sentásemos en el suelo?")
	elseif cl == 1339 then
		cw('mc', "¿Eh? ¿Por qué?")
	elseif cl == 1340 then
	updateYuri('1','h')
		cw('y', "Es que así tengo la espalda más cómoda...")
	elseif cl == 1341 then
		cw('y', "Puedo leer pegándola a la pared en lugar de inclinarla sentada en mi pupitre.")
	elseif cl == 1342 then
		cw('mc', "Ah, lo siento, no me había dado cuenta de ello.")
	elseif cl == 1343 then
	updateYuri('1','a')
		cw('y', "No te preocupes.")
	elseif cl == 1344 then
		cw('y', "Sufro de dolores de espalda con bastante regularidad, así que hago todo lo posible para paliarlos.")
	elseif cl == 1345 then
		cw('mc', "¿Ah, sí?")
	elseif cl == 1346 then
		cw('mc', "Me pregunto por qué serán...")
	elseif cl == 1347 then
	updateYuri('1','f')
		cw('y', "Muy probablemente sea por mi...")
	elseif cl == 1348 then
	updateYuri('1','n')
		cw('y', "Em...")
	elseif cl == 1349 then
	updateYuri('1','o')
		cw('y', "M-mi...")
	elseif cl == 1350 then
		cw('mc', "Tu postura a la hora de leer, ¿no?")
	elseif cl == 1351 then
		cw('mc', "Siempre tan encorvada...")
	elseif cl == 1352 then
	updateYuri('2','p')
		cw('y', "¡Sí!")
	elseif cl == 1352 then
	updateYuri('2','q')
		cw('y', "¡Tengo una postura terrible para leer!")
	elseif cl == 1353 then
		cw('y', "Así que por eso mismo deberíamos sentarnos en el suelo.")
	elseif cl == 1354 then
		cw('mc', "Está bien.")
	elseif cl == 1355 then
		cw('mc', "Me adelantaré e iré a por el libro.")
	elseif cl == 1356 then
	hideYuri()
		cw('bl', "Saco el libro de mi mochila.")
	elseif cl == 1357 then
		cw('mc', "Oh, también tengo algo de chocolate...")
	elseif cl == 1358 then
		cw('bl', "Es una bolsa de bombones.")
	elseif cl == 1359 then
		cw('bl', "La saco, ya que irán bien con el té.")
	elseif cl == 1360 then
		cw('bl', "Yuri y yo nos sentamos contra la pared, con las tazas de té a nuestros lados.")
	elseif cl == 1361 then
		cw('bl', "En sincronía, asumimos la misma posición de lectura de la vez pasada, sosteniendo cada uno una mitad del libro.")
	elseif cl == 1362 then
		cw('bl', "Solo que esta vez...")
	elseif cl == 1363 then
		cw('bl', "Nuestros cuerpos están aún más cerca el uno del otro.")
	elseif cl == 1364 then
	updateYuri('2','b',80)
		cw('y', "No puedo ver muy bien...")
	elseif cl == 1365 then
		cw('mc', "¡...!")
	elseif cl == 1366 then
	updateYuri('2','e')
		cw('bl', "Yuri se acerca más hasta que nuestros hombros se tocan.")
	elseif cl == 1367 then
		cw('bl', "¡¿Cómo se supone que voy a concentrarme así?!...")
	elseif cl == 1368 then
		cw('bl', "Yuri siempre ha sido bastante adorable, pero...")
	elseif cl == 1369 then
		cw('bl', "¡Cuando es menos temerosa, me supera!")
	elseif cl == 1370 then
	updateYuri('2','f')
		cw('y', "Tu taza de té...")
	elseif cl == 1371 then
		cw('bl', "Yuri me da mi taza de té.")
	elseif cl == 1372 then
		cw('bl', "Sosteniéndola con la mano que no está agarrando el libro, termino en una posición con la que me es aún más complicado concentrarme.")
	elseif cl == 1373 then
		cw('bl', "¡Porque ahora he de asegurarme de no tocar su pecho por accidente!...")
	elseif cl == 1374 then
		cw('bl', "Mientras tanto, Yuri no se ha inmutado de nada.")
	elseif cl == 1375 then
		cw('bl', "Está con su típica cara de concentración, cosa que me lleva a suponer que el mundo a su alrededor se ha desvanecido.")
	elseif cl == 1376 then
		cw('bl', "Uso toda mi fuerza de voluntad para concentrarme en la lectura.")
	elseif cl == 1377 then
	bl "..."
	elseif cl == 1378 then
		cw('bl', "Tras unos minutos, consigo relajarme un poco.")
	elseif cl == 1379 then
		cw('bl', "Pongo mi taza de té entre mis piernas y empiezo a hacer ruido con el envoltorio de los bombones.")
	elseif cl == 1380 then
		cw('mc', "Uy, lo siento...")
	elseif cl == 1381 then
		cw('bl', "Suelto brevemente el libro para terminar de abrir el envoltorio.")
	elseif cl == 1382 then
		cw('mc', "Pilla los que quieras.")
	elseif cl == 1383 then
	updateYuri('2','s')
		cw('y', "Ah, em...")
	elseif cl == 1384 then
		cw('y', "Gracias, pero no cogeré ninguno...")
	elseif cl == 1385 then
		cw('mc', "¿Eh? ¿Estás segura?")
	elseif cl == 1386 then
	updateYuri('2','v')
		cw('y', "Bueno...")
	elseif cl == 1387 then
		cw('y', "Es que tras tocarlos, podría ensuciar las páginas...")
	elseif cl == 1388 then
		cw('mc', "Oh, tienes razón...")
	elseif cl == 1389 then
		cw('mc', "No se me había pasado por la cabeza.")
	elseif cl == 1390 then
		cw('mc', "Lo siento...")
	elseif cl == 1391 then
	updateYuri('2','a')
		cw('y', "No tienes por qué disculparte.")
	elseif cl == 1392 then
		cw('y', "Yo sostendré el libro, ¿vale?")
	elseif cl == 1393 then
		cw('mc', "¿Estás segura?...")
	elseif cl == 1394 then
		cw('y', "Por supuesto.")
	elseif cl == 1395 then
	persistent.clear[4] = 1
	if xaload == 0 then
		savepersistent()
	end
	hideAll()
	bgUpdate('cg/y_cg2_nochoc')
		cw('bl', "Yuri abre el libro con ambas manos.")
	elseif cl == 1396 then
		cw('bl', "Lo sostiene de forma que no me sea complicado leerlo.")
	elseif cl == 1397 then
		cw('bl', "Pero como resultado, su brazo izquierdo reposa sobre la parte superior de mi pierna.")
	elseif cl == 1398 then
		cw('mc', "Bueno, en ese caso...")
	elseif cl == 1399 then
		cw('bl', "Yuri vuelve a estar totalmente absorta en la lectura.")
	elseif cl == 1400 then
		cw('bl', "Cojo un bombón y me lo meto en la boca.")
	elseif cl == 1401 then
		cw('bl', "Luego, cojo otro bombón...")
	elseif cl == 1402 then
		cw('bl', "Y se lo ofrezco a Yuri.")
	elseif cl == 1403 then
		cw('bl', "Ella no aparta la mirada del libro.")
	elseif cl == 1404 then
		cw('bl', "Simplemente hace un gesto con los labios, como si la situación fuera completamente normal.")
	elseif cl == 1405 then
		cw('bl', "¡Puedo seguir aprovechando la situación!")
	elseif cl == 1406 then
	bgUpdate('cg/y_cg2')
		cw('bl', "Cuidadosamente, coloco el bombón en su boca.")
	elseif cl == 1407 then
		cw('bl', "Y acto seguido, Yuri lo absorbe con los labios.")
	elseif cl == 1408 then
		cw('y', "¿Eh?...")
	elseif cl == 1409 then
	cgUpdate('y_cg2_exp2')
		cw('bl', "La expresión de Yuri se quiebra repentinamente.")
	elseif cl == 1410 then
		cw('y', "¿Acabo...?")
	elseif cl == 1411 then
		cw('y', "¿Acabo de...?")
	elseif cl == 1412 then
		cw('bl', "Yuri me mira como si necesitara confirmar lo que acaba de ocurrir.")
	elseif cl == 1413 then
	cgUpdate('y_cg2_exp3')
		cw('y', "E-em...")
	elseif cl == 1414 then
	cw('y',player.."...")
	elseif cl == 1415 then
		cw('mc', "¡L-lo siento!")
	elseif cl == 1416 then
		cw('mc', "Creo que no debería haber hecho eso...")
	elseif cl == 1417 then
	audioUpdate('0')
		cw('y', "A-ah...")
	elseif cl == 1418 then
		cw('bl', "Yuri empieza a jadear.")
	elseif cl == 1419 then
		cw('y', "N...")
	elseif cl == 1420 then
		cw('y', "No puedo...")
	elseif cl == 1421 then
	cw('y',player.."...")
	elseif cl == 1422 then
		cw('bl', "De golpe, Yuri me agarra el brazo con fuerza y me hace levantarme.")
	elseif cl == 1423 then
		cw('bl', "Mi taza de té es volcada en el acto.")
	elseif cl == 1424 then
	bgUpdate('closet')
	updateYuri('2','t',80)
	cgHide()
	cw('y',player.."...")
	event_init('yuri_eyes')
	elseif cl == 1425 then
	sfxplay('closet-close')
	event_start('show_dark')
		cw('y', "Mi corazón...")
	elseif cl == 1426 then
	updateYuri('2','y6')
		cw('y', "Mi corazón no deja de latir, " .. player .. "...")
	elseif cl == 1427 then
		cw('y', "No puedo calmarme.")
	elseif cl == 1428 then
		cw('y', "¡Ya no puedo concentrarme en nada!...")
	elseif cl == 1429 then
		cw('y', "¿Puedes sentirlo, " .. player .. "?")
	elseif cl == 1430 then
		cw('bl', "Yuri presiona mi mano contra su pecho bruscamente.")
	elseif cl == 1431 then
	audioUpdate('heartbeat')
	updateYuri('3','t')
		cw('y', "¿Por qué me está pasando esto?")
	elseif cl == 1432 then
		cw('y', "Siento que estoy perdiendo la cabeza...")
	elseif cl == 1433 then
	updateYuri('3','y4')
		cw('y', "No puedo hacer que pare.")
	elseif cl == 1434 then
	updateYuri('3','y6')
		cw('y', "Incluso hace que no quiera leer...")
	elseif cl == 1435 then
		cw('y', "Solo...")
	elseif cl == 1436 then
	updateYuri('3','s')
		cw('y', "quiero...")
	elseif cl == 1437 then
		cw('y', "mirarte.")
	elseif cl == 1438 then
	event_end('next')
	elseif cl == 1439 then
	if xaload < 3 then event_start('yuri_eyes') end
		cw('y', "Ja, ja...")
	elseif cl == 1440 then
		cw('y', "Ja, ja...")
	elseif cl == 1441 then
	y "Ja, ja..."
	elseif cl == 1443 then
	sfxplay('closet-open')
	audioUpdate('0')
	updateYuri('3','n')
	updateMonika('3','l',-40)
		cw('m', "Mmm...")
	elseif cl == 1444 then
		cw('m', "Es... hora de compartir nuestros poemas...")
	elseif cl == 1445 then
	bgUpdate('club')
	poeminitialize()
	end
end

function Yuri_exclusive2_2_ch23()
	if cl == 1723 then
	bgUpdate('corridor')
	event_initstart('yuri_ch23')
	audioUpdate('6g-')
	elseif cl == 1724 then
	audioUpdate('g1')
	cw('y',gtext80,'nw')
	elseif cl == 1725 then
	updateYuri('2','n',80)
	event_end('yuri_ch23')
	audioUpdate('0')
		cw('y', "Mmm...")
	elseif cl == 1726 then
		cw('y', "Espera...")
	elseif cl == 1727 then
	updateYuri('2','o')
		cw('y', "¿Cómo he...?")
	elseif cl == 1728 then
	updateYuri('2','y6')
	y  "Lo siento, acabo de tener un déjà vu muy extraño..."
	elseif cl == 1729 then
		cw('y', "Nada de esto había ocurrido antes... ¿Verdad?")
	elseif cl == 1730 then
	updateYuri('2','t')
		cw('y', "Últimamente, me siento algo mareada...")
	elseif cl == 1731 then
	updateYuri('3','t')
		cw('y', "¡Espero que no se me haya notado mucho!")
	elseif cl == 1732 then
		cw('y', "Odiaría que ahora que hemos empezado a pasar tiempo juntos, pensarás que soy un bicho raro...")
	elseif cl == 1733 then
		cw('y', "Me refiero a que...")
	elseif cl == 1734 then
	if xaload < 3 then event_initstart('yuri_ch23_2') end
	audioUpdate('9')
		cw('y', "Todos tenemos nuestras rarezas.")
	elseif cl == 1735 then
	updateYuri('1','v')
		cw('y', "Pero expresarlas tan rápido tras conocer a alguien suele ser feo... o incluso desagradable.")
	elseif cl == 1736 then
		cw('y', "O al menos, eso es lo que he descubierto.")
	elseif cl == 1737 then
		cw('y', "Cuando era algo más joven, reaccionaba ante todo con mucha fuerza, hasta el punto de emocionarme demasiado...")
	elseif cl == 1738 then
		cw('y', "Eso hizo que la gente no me quisiera a su lado.")
	elseif cl == 1739 then
	updateYuri('2','w')
		cw('y', "Así que... Empecé a odiar esas cosas de mí misma.")
	elseif cl == 1740 then
		cw('y', "Mi obsesión con ciertas aficiones.")
	elseif cl == 1741 then
		cw('y', "Y la forma en la que no puedo controlarme cuando estoy demasiado emocionada respecto a algo.")
	elseif cl == 1742 then
		cw('y', "Así que...")
	elseif cl == 1743 then
	updateYuri('1','v')
		cw('y', "Acabé por dejar de intentar hablarle a la gente.")
	elseif cl == 1744 then
		cw('y', "Si jamás podría gustarle a nadie por las cosas que más me importan...")
	elseif cl == 1745 then
	updateYuri('1','u')
		cw('y', "Lo mejor es encerrarme en mí misma.")
	elseif cl == 1746 then
	updateYuri('1','h')
		cw('y', "Pero últimamente, he notado que algo anda mal.")
	elseif cl == 1747 then
		cw('y', "No sé lo que es.")
	elseif cl == 1748 then
	updateYuri('2','y6')
		cw('y', "Pero cada vez que venimos al club, mi corazón enloquece.")
	elseif cl == 1749 then
		cw('y', "Como si fuese a salírseme del pecho.")
	elseif cl == 1750 then
		cw('y', "Me llena de energía y emociones que no puedo dejar salir.")
	elseif cl == 1751 then
		cw('y', "Me ha estado haciendo hacer cosas raras.")
	elseif cl == 1752 then
	updateYuri('2','t')
		cw('y', "¡Y no sé por qué me ocurre esto!")
	elseif cl == 1753 then
	audioUpdate('0')
	updateYuri('1','t')
	cw('y',player.."...")
	elseif cl == 1754 then
		cw('y', "¿Es cosa mía, o Monika está rara últimamente?")
	elseif cl == 1755 then
	updateYuri('1','v')
		cw('y', "Siempre había sido un amor desde que me uní al club...")
	elseif cl == 1756 then
		cw('y', "Pero últimamente, he estado sintiendo que algo no cuadra cuando ella está cerca.")
	elseif cl == 1757 then
	updateYuri('2','y4')
		cw('y', "No estoy loca, ¿no?")
	elseif cl == 1758 then
	updateYuri('2','y1')
		cw('y', "¡Por favor, dime que no lo estoy!")
	elseif cl == 1759 then
		cw('y', "¡No pude decir nada antes, porque siempre está escuchando!")
	elseif cl == 1760 then
	updateYuri('2','y3')
		cw('y', "Pero al fin estamos solos...")
	elseif cl == 1761 then
		cw('y', "¿Podemos quedarnos aquí un rato?")
	elseif cl == 1762 then
	updateYuri('1','m')
		cw('y', "Sí...")
	elseif cl == 1763 then
	y "..."
	elseif cl == 1764 then
	audioUpdate('heartbeat')
	updateYuri('1','s')
	updateMonika('1','a',80)
		cw('y', "Solo quiero quedarme aquí.")
	elseif cl == 1765 then
		cw('y', "Los dos solos.")
	elseif cl == 1766 then
		cw('y', "Podemos quedarnos aquí hasta que el club termine.")
	elseif cl == 1767 then
	updateYuri('1','m')
		cw('y', "Y así tendremos el aula para nosotros solos.")
	elseif cl == 1768 then
		cw('y', "Nadie interferirá nuestra lectura.")
	elseif cl == 1769 then
	updateYuri('1','y4')
		cw('y', "Nadie hará que me entren ganas de apuñalarme la garganta.")
	elseif cl == 1770 then
	updateYuri('1','q')
		cw('y', "Ja, ja, ja...")
	elseif cl == 1771 then
		cw('y', "¡Era broma!")
	elseif cl == 1772 then
		cw('y', "Solo era una broma.")
	elseif cl == 1773 then
	updateYuri('1','i')
		cw('y', "Aunque me gustan los cuchillos...")
	elseif cl == 1774 then
		cw('y', "Sonará raro, pero no lo entenderás si nunca has visto lo bonitos que pueden llegar a ser.")
	elseif cl == 1775 then
	updateYuri('1','f')
		cw('y', "Tengo una idea.")
	elseif cl == 1776 then
		cw('y', "¿Por qué no vienes algún día a mi casa?")
	elseif cl == 1777 then
	updateYuri('1','y6')
		cw('y', "Puedo enseñarte mi colección.")
	elseif cl == 1778 then
		cw('y', "Todos los que tengo los he conseguido de varios artesanos.")
	elseif cl == 1779 then
	updateYuri('1','a')
		cw('y', "Me aseguro de darles a todos la misma frecuencia de uso.")
	elseif cl == 1780 then
	updateYuri('1','m')
		cw('y', "No quiero que se sientan solos ni nada por el estilo...")
	elseif cl == 1781 then
	updateYuri('1','y6')
		cw('y', "Nadie merece sentirse solo.")
	elseif cl == 1782 then
	updateYuri('1','y4')
		cw('y', "Nadie.")
	elseif cl == 1783 then
	updateYuri('1','c')
		cw('y', "Y por eso me alegra tanto que hayas decidido unirte al club de literatura, " .. player .. ".")
	elseif cl == 1784 then
	updateYuri('1','a')
		cw('y', "Ahora no tenemos por qué estar solos nunca más.")
	elseif cl == 1785 then
		cw('y', "Porque nos tenemos el uno al otro.")
	elseif cl == 1786 then
		cw('y', "Cada día.")
	elseif cl == 1787 then
		cw('y', "Eso es todo lo que necesitamos.")
	elseif cl == 1788 then
	updateYuri('1','y6')
		cw('y', "¿Sabes qué?")
	elseif cl == 1789 then
		cw('y', "Abandonemos el club de literatura.")
	elseif cl == 1790 then
		cw('y', "Ya no tenemos por qué estar cerca de la lengua viperina de Monika nunca más.")
	elseif cl == 1791 then
	updateYuri('1','y4')
		cw('y', "Sin mencionar a esa patética niñata.")
	elseif cl == 1792 then
	updateYuri('1','s')
		cw('y', "Podemos volver a casa juntos todos los días tras las clases.")
	elseif cl == 1793 then
		cw('y', "Y leer juntos.")
	elseif cl == 1794 then
	updateYuri('1','m')
		cw('y', "Comer juntos.")
	elseif cl == 1795 then
		cw('y', "Dormir juntos.")
	elseif cl == 1796 then
	updateYuri('1','s')
		cw('y', "¿No te parece perfecto?")
	elseif cl == 1797 then
		cw('y', "Es todo con lo que podríamos soñar.")
	elseif cl == 1798 then
	updateYuri('1','a')
		cw('y', "¿No es esa la principal razón por la que te uniste al club?")
	elseif cl == 1799 then
		cw('y', "Ha sido casi cosa del destino.")
	elseif cl == 1800 then
		cw('y', "El destino quiso que nos conociéramos el uno al otro.")
	elseif cl == 1801 then
		cw('y', "Y ahora tenemos el final feliz por el cual hemos estado esperando pacientemente durante años.")
	elseif cl == 1802 then
		cw('y', "¿Harás todo eso conmigo, " .. player .. "?")
	elseif cl == 1803 then
	cw('y',"¿Harás"..space(60)..gtext200,'nw')
	elseif cl == 1804 then
	event_end()
	if bg1 ~= 'club' then bgUpdate('club',true)
	else poeminitialize() end
	end
end
