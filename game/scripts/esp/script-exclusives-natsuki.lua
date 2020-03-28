function Natsuki_exclusive_1()
	if cl == 423 then
		cw('n', "¡Ugh...!")
	elseif cl == 424 then
		cw('bl', "Oigo el suspiro exasperado de Natsuki desde dentro del armario.")
	elseif cl == 425 then
		cw('bl', "Parece estar molesta por algo.")
	elseif cl == 426 then
		cw('bl', "Me acerco a ella, por si necesita que le eche una mano.")
	elseif cl == 427 then
		bgUpdate('closet')
		audioUpdate('6')
		updateNatsuki('4','r',80)
		cw('mc', "¿Estás buscando algo?")
	elseif cl == 428 then
		updateNatsuki('4','x')
		cw('n', "Maldita Monika...")
	elseif cl == 429 then
		cw('n', "¡Nunca deja mis cosas en su sitio!")
	elseif cl == 430 then
		cw('n', "¿Qué sentido tiene mantener tu colección ordenada si después viene alguien a fastidiarlo?")
	elseif cl == 431 then
		cw('bl', "Natsuki desliza un montón de libros apilados y cajas a través de la estantería.")
	elseif cl == 432 then
		cw('mc', "Manga...")
	elseif cl == 433 then
		updateNatsuki('2','c')
		cw('n', "Lees manga, ¿verdad?")
	elseif cl == 434 then
		cw('mc',"Ah...")
	elseif cl == 435 then
		cw('mc', "A veces...")
	elseif cl == 436 then
		cw('bl', "El manga es una de esas cosas que no puedes admitir que te gustan a menos de que te percates de que a la otra persona también le gustan.")
	elseif cl == 437 then
		cw('mc', "¿Pero cómo te has dado cuenta?")
	elseif cl == 438 then
		updateNatsuki('4','k')
		cw('n', "Te escuché hablar de ello hace algún tiempo.")
	elseif cl == 439 then
		cw('n', "Además, está escrito en tu cara.")
	elseif cl == 440 then
		cw('bl', "¿Y qué se supone que significa eso?")
	elseif cl == 441 then
		cw('mc', "Y-ya veo...")
	elseif cl == 442 then
		cw('bl', "Hay un solitario volumen de manga en medio de un montón de libros de toda índole ubicados en el extremo de una de las estanterías.")
	elseif cl == 443 then
		cw('bl', "Atraído por él, lo tomo de dicho montón.")
	elseif cl == 444 then
		updateNatsuki('1','b')
		cw('n', "¡Ahí está!")
	elseif cl == 445 then
		cw('bl', "Natsuki me lo arrebata de las manos.")
	elseif cl == 446 then
		cw('bl', "Luego, centra su atención en una caja llena de manga y coloca el tomo junto al resto.")
	elseif cl == 447 then
		updateNatsuki('4','d')
		cw('n', "¡Ah, mucho mejor!")
	elseif cl == 448 then
		cw('n', "Ver una colección a la que le falta un libro es probablemente la imagen más irritante del mundo.")
	elseif cl == 449 then
		cw('mc', "Entiendo muy bien cómo te sientes...")
	elseif cl == 450 then
		cw('bl', "Miro más detenidamente la colección de tomos que ella está admirando.")
	elseif cl == 451 then
		cw('n', "¿...?")
	elseif cl == 452 then
		cw('bl', "Es una serie de la que no había oído hablar en mi vida.")
	elseif cl == 453 then
		cw('bl', "Supongo que eso significa que, o está fuera de mi demografía, o es simplemente terrible.")
	elseif cl == 454 then
		updateNatsuki('5','g')
		cw('n', "Si vas a juzgar, puedes hacerlo a través del cristal de esa puerta.")
	elseif cl == 455 then
		cw('bl', "Natsuki apunta a la puerta de clase.")
	elseif cl == 456 then
		cw('mc', "¡Oye, que no estaba juzgando ni nada parecido...!")
	elseif cl == 457 then
		cw('mc', "Ni siquiera he dicho nada.")
	elseif cl == 458 then
		updateNatsuki('5','c')
		cw('n', "Tu tono de voz te delató.")
	elseif cl == 459 then
		cw('n', "Pero te diré algo, " .. player .. ".")
	elseif cl == 460 then
		updateNatsuki('4','l')
		cw('n', "Considera esto directamente una lección del club de literatura: ¡No juzgues a un libro por su portada!")
	elseif cl == 461 then
		cw('n', "De hecho...")
	elseif cl == 462 then
		cw('bl', "Natsuki toma el primer tomo de Las chicas del postre de la caja.")
	elseif cl == 463 then
		cw('n', "¡Te enseñaré exactamente por qué!")
	elseif cl == 464 then
		cw('bl', "Natsuki coloca bruscamente el tomo en mis manos.")
	elseif cl == 465 then
		cw('mc', "Ah.")
	elseif cl == 466 then
		cw('bl', "Echo un vistazo a la portada.")
	elseif cl == 467 then
		cw('bl', "En ella, salen cuatro chicas con atuendos coloridos y posturas animadas y femeninas.")
	elseif cl == 468 then
		cw('bl', "Es... extremadamente moe.")
	elseif cl == 469 then
		updateNatsuki('4','b')
		cw('n', "¡No te quedes ahí parado!")
	elseif cl == 470 then
		cw('mc', "E-eh...")
	elseif cl == 471 then
		hideNatsuki()
		cw('bl', "Natsuki me agarra del brazo y me arrastra fuera del armario.")
	elseif cl == 472 then
		cw('bl', "Luego, toma asiento contra la pared, bajo las ventanas.")
	elseif cl == 473 then
		cw('bl', "Natsuki da palmaditas en el suelo a su lado, invitándome a tomar asiento ahí.")
	elseif cl == 474 then
		bgUpdate('club')
		updateNatsuki('2','a',80)
		cw('mc', "¿No sería más cómodo que nos sentásemos en sillas...?")
	elseif cl == 475 then
		cw('bl', "Tomo asiento.")
	elseif cl == 476 then
		updateNatsuki('2','k')
		cw('n', "Las sillas no nos servirían.")
	elseif cl == 477 then
		cw('n', "No podemos leer de la misma forma en ellas.")
	elseif cl == 478 then
		cw('mc', "¿Eh?")
	elseif cl == 479 then
		cw('mc', "Ah... Supongo que es más fácil que estemos juntos sentados de esta forma...")
	elseif cl == 480 then
		updateNatsuki('2','o')
		cw('n', "¡...!")
	elseif cl == 481 then
		updateNatsuki('5','r')
		cw('n', "¡N-no digas eso!")
	elseif cl == 482 then
		cw('n', "¡Me harás sentir extraña estando así!")
	elseif cl == 483 then
		cw('bl', "Natsuki se cruza de brazos y se aleja un par de centímetros de mí.")
	elseif cl == 484 then
		cw('mc', "Lo siento...")
	elseif cl == 485 then
		updateNatsuki('5','g')
		cw('bl', "Tampoco es que yo esperase sentarme tan cerca de ella, sinceramente...")
	elseif cl == 486 then
		cw('bl', "Aunque no puedo decir que me desagradara la idea.")
	elseif cl == 487 then
		cw('bl', "Abro el libro.")
	elseif cl == 488 then
		cw('bl', "Tras unos pocos segundos Natsuki vuelve a acercarse, estrechando el espacio entre nosotros con esperanzas de que no me percate de ello.")
	elseif cl == 489 then
		cw('bl', "Puedo sentir su mirada por encima de mi hombro, expresando más ganas por empezar a leer que yo.")
	elseif cl == 490 then
		updateNatsuki('1','k')
		cw('n', "Vaya, ¿cuánto tiempo ha pasado desde que terminé de leer el principio?")
	elseif cl == 491 then
		cw('mc', "¿Eh?")
	elseif cl == 492 then
		cw('mc', "¿No sueles volver atrás para ojear los tomos más viejos de vez en cuando?")
	elseif cl == 493 then
		updateNatsuki('2','k')
		cw('n', "No, realmente no.")
	elseif cl == 494 then
		cw('n', "A veces, cuando ya he terminado la serie, lo hago.")
	elseif cl == 495 then
		updateNatsuki('2','c')
		cw('n', "Eh, ¿me estás prestando atención?")
	elseif cl == 496 then
		cw('mc', "Eh...")
	elseif cl == 497 then
		cw('bl', "Se la estoy prestando, pero no veo nada oportuno que comentar.")
	elseif cl == 498 then
		cw('bl', "Parece que trata acerca de un grupo de amigos de secundaria.")
	elseif cl == 499 then
		cw('bl', "Típica trama de recuerdos de la vida.")
	elseif cl == 500 then
		cw('bl', "Acabé cansándome, ya que la escritura no suele compensar la falta de trama.")
	elseif cl == 501 then
		cw('mc', "Así que...")
	elseif cl == 502 then
		cw('mc', "¿Qué debería esperar de esto?")
	elseif cl == 503 then
		cw('mc', "¿Habrá trama?")
	elseif cl == 504 then
		updateNatsuki('4','w')
		cw('n', "¡Pues claro!")
	elseif cl == 505 then
		cw('n', "¿Crees que disfrutaría de algo que no la tuviese?")
	elseif cl == 506 then
		updateNatsuki('4','c')
		cw('n', "Quiero decir que...")
	elseif cl == 507 then 
		updateNatsuki('2','c')
		cw('n', "Bueno, supongo que sé a lo que te refieres...")
	elseif cl == 508 then
		updateNatsuki('2','k')
		cw('n', "Gran parte del principio trata acerca de cosas simples...")
	elseif cl == 509 then
		cw('n', "Como un capítulo bastante gracioso en el que están obsesionadas con un chico en la heladería...")
	elseif cl == 510 then
		updateNatsuki('2','c')
		cw('n', "¡Pero eso te ayuda a conocer mejor a los personajes!")
	elseif cl == 511 then
		cw('n', "Además, aún así es entretenido.")
	elseif cl == 512 then
		updateNatsuki('2','d')
		cw('n', "Pero luego, hay todo tipo de drama...")
	elseif cl == 513 then
		cw('n', "Como cuando exploran sus pasados, y cuando el romance empieza a florecer...")
	elseif cl == 514 then
		cw('n', "Eso es lo que hace que sea tan bueno.")
	elseif cl == 515 then
		updateNatsuki('2','a')
		cw('n', "Hay muchísimas partes que tocan la fibra sensible.")
	elseif cl == 516 then
		cw('mc', "Ah, ¿en serio?")
	elseif cl == 517 then
		cw('mc', "Parece que realmente sabes de lo que hablas.")
	elseif cl== 518 then
		cw('mc', "Puede que te haya subestimado.")
	elseif cl == 519 then
		updateNatsuki('2','z')
		cw('n', "Je, je, je.")
	elseif cl == 520  then
		updateNatsuki('1','f')
		cw('n', "¡Eh, espera un momento!")
	elseif cl == 521 then
		cw('n', "¡¿Qué se supone que significa eso?!")
	elseif cl == 522 then
		cw('mc', "E-eh...")
	elseif cl == 523 then
		cw('bl', "Natsuki me da un ligero empujón.")
	elseif cl == 524 then
		cw('mc', "Solo quería decir que todavía no he podido contemplar tu máximo poder...")
	elseif cl == 525 then
		updateNatsuki('5','s')
		cw('n', "Um. Te has salvado.")
	elseif cl == 526 then
		cw('mc', "Vaya, parece que este capítulo va sobre hornear cosas.")
	elseif cl == 527 then
		cw('mc', "¿En este manga la repostería es algo frecuente?")
	elseif cl == 528 then
		updateNatsuki('5','b')
		cw('n', "Pues...")
	elseif cl == 529 then
		cw('bl', "Natsuki duda un momento, como si no quisiera admitir algo.")
	elseif cl == 530 then
		updateNatsuki('2','q')
		cw('n', "Sí...")
	elseif cl == 531 then
		cw('n', "¿Pasa algo?")
	elseif cl == 532 then
		cw('mc', "Olvídalo, solo era curiosidad...")
	elseif cl == 533 then
		cw('mc', "Porque a ti también te gusta hornear cosas, ¿verdad?")
	elseif cl == 534 then
		updateNatsuki('1','o')
		cw('n',"Eso es...")
	elseif cl == 535 then
		cw('n', "¡Solo es una coincidencia!")
	elseif cl == 536 then
		updateNatsuki('1','t')
		cw('n', "Solo resulta que empecé a hornear al mismo tiempo que comencé con este manga.")
	elseif cl == 537 then
		cw('n', "No empezaría con una nueva afición solo por lo que esté escrito en un librucho.")
	elseif cl == 538 then
		updateNatsuki('4','y')
		cw('n', "De hecho, me sentiría mal por alguien así de impresionable.")
	elseif cl == 539 then
		cw('n', "¡Ja, ja, ja!")
	elseif cl == 540 then
		cw('bl', "Está claro que no ha sido una mera coincidencia...")
	elseif cl == 541 then
		cw('bl', "Supongo que eso explica el interés de Natsuki en hornear.")
	elseif cl == 542 then
		cw('bl', "De todas formas, de todas las aficiones que se pueden sacar del manga, sin lugar a duda esa es una de las mejores.")
	elseif cl == 543 then
		cw('bl', "Sin mencionar que lo hace genial, así que, ¿quién soy yo para juzgarla?")
	elseif cl == 544 then
		hideAll()
		bgUpdate('cg/n_cg1_base')
		persistent.clear[1] = 1
		if xaload == 1 then
			savepersistent()
		end
		cw('bl',"...")
	elseif cl == 545 then
		cw('bl', "Leemos unos cuantos minutos más.")
	elseif cl == 546 then
		cw('bl', "A estas alturas ya he terminado un par de capítulos.")
	elseif cl == 547 then
		cw('mc',"...")
	elseif cl == 548 then
		cw('mc', "¿Estás segura de que esto no te parece aburrido?")
	elseif cl == 549 then
		cw('n', "¡No lo es!")
	elseif cl == 550 then
		cw('mc', "¿Incluso aunque solo me estés viendo leer?")
	elseif cl == 551 then
		cw('n', "¡Bueno...!")
	elseif cl == 552 then
		cw('n', "A mí... con eso me basta.")
	elseif cl == 553 then
		cw('mc', "Si tú lo dices...")
	elseif cl == 554 then
		cw('mc', "Supongo que compartir lo que te gusta con alguien más resulta divertido.")
	elseif cl == 555 then
		cw('mc', "Siempre me emociono cuando convenzo a algún amigo de que se enganche a una serie que yo mismo he disfrutado.")
	elseif cl == 556 then
		cw('mc', "¿Sabes a lo que me refiero?")
	elseif cl == 557 then
		cw('n',"¿...?")
	elseif cl == 558 then
		cw('mc', "¿Eh?")
	elseif cl == 559 then
		cw('mc', "¿No lo sabes?")
	elseif cl == 560 then
		cgUpdate('n_cg1_exp2')
		cw('n', "Mmm...")
	elseif cl == 561 then
		cw('n', "Eso no...")
	elseif cl == 562 then
		cw('n', "Bueno, realmente no podría saberlo.")
	elseif cl == 563 then
		cw('mc', "¿Qué quieres decir con eso?")
	elseif cl == 564 then
		cw('mc', "¿No sueles compartir tus mangas con tus amigos?")
	elseif cl == 565 then
		cgUpdate('n_cg1_exp3')
		cw('n', "¿Podrías dejar de restregármelo?")
	elseif cl == 566 then
		cw('n', "Ainss...")
	elseif cl == 567 then
		cw('mc', "Oh, lo siento...")
	elseif cl == 568 then
		cw('n', "Jum.")
	elseif cl == 569 then
		cw('n', "Como si pudiese hacer que mis amigos leyesen esto...")
	elseif cl == 570 then
		cw('n', "Ellos piensan que el manga solo es para niños.")
	elseif cl == 571 then	
		cw('n', "Ni siquiera puedo sacar el tema sin que digan cosas como...")
	elseif cl == 572 then
		cw('n', "«¿Eh? ¿Todavía te gustan esas cosas?»")
	elseif cl == 573 then
		cw('n', "Me hace querer darles un puñetazo en la cara...")
	elseif cl == 574 then
		cw('mc', "Oh, sé a qué tipo de personas te refieres...")
	elseif cl == 575 then
		cw('mc', "Honestamente, es muy difícil encontrar a amigos que no te juzguen, y más incluso que también compartan tus gustos...")
	elseif cl == 576 then
		cw('mc', "Yo ya soy lo que podríamos llamar un perdedor, así que supongo que he empatizado con el resto de perdedores con el tiempo.")
	elseif cl == 577 then
		cw('mc', "Pero probablemente sea más difícil para alguien como tú...")
	elseif cl == 578 then
		cgHide()
		cw('n', "Ajá.")
	elseif cl == 579 then
		cw('n', "Sí, es bastante acertado.")
	elseif cl == 580 then
		cw('bl', "Espera, ¿qué parte de lo que he dicho?")
	elseif cl == 581 then
		cw('n', "Quiero decir, siento que ni siquiera lo puedo dejar en mi propia habitación...")
	elseif cl == 582 then
		cw('n', "No sé qué sería capaz de hacer mi padre si lo encontrase.")
	elseif cl == 583 then
		cw('n', "Por lo menos, las cosas están seguras aquí, en la habitación del club.")
	elseif cl == 584 then
		cgUpdate('n_cg1_exp3')
		cw('n', "Aunque Monika haya sido un poco imbecil al respecto...")
	elseif cl == 585 then
		cw('n', "¡Uh! No hay forma en la que pueda ganar, ¿no es así?")
	elseif cl == 586 then
		cw('mc', "Bueno, al final la cosa dio sus frutos, ¿no?")
	elseif cl == 587 then
		cw('mc', "Quiero decir, aquí estoy, leyéndolo.")
	elseif cl == 588 then
		cw('n', "Bueno, no es como si eso resolviese alguno de mis problemas.")
	elseif cl == 589 then
		cw('mc', "Tal vez...")
	elseif cl == 590 then
		cw('mc', "Pero al menos lo disfrutas, ¿no?")
	elseif cl == 591 then
		cgUpdate('n_cg1_exp2')
		cw('n', "...")
	elseif cl == 592 then
		cw('n',"...")
	elseif cl == 593 then
		cw('n', "¿Y bien...?")
	elseif cl == 594 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 595 then
		cgUpdate('n_cg1_exp3')
		cw('n', "Dios, ¡basta ya!")
	elseif cl == 596 then
		cw('n', "Vas a seguir leyendo, ¿o qué?")
	elseif cl == 597 then
		cw('mc', "Sí, sí...")
	elseif cl == 598 then
		cw('bl', "Paso la página.")
	elseif cl == 599 then
		cw('bl', "Repentinamente, Natsuki empieza a reírse.")
	elseif cl == 600 then
		cgUpdate('n_cg1_exp1')
		cw('n', "¡Ja, ja, ja!")
	elseif cl == 601 then
		cw('n', "¡Me había olvidado de que pasaba esto!")
	elseif cl == 602 then
		cw('bl', "Natsuki pone su dedo en uno de los paneles.")
	elseif cl == 603 then
		cw('n', "Minori es mi personaje favorito.")
	elseif cl == 604 then
		cw('n', "No puedes evitar sentirte un poco mal por ella debido a su mala suerte.")
	elseif cl == 605 then
		cw('n', "Pero las cosas realmente se tuercen cuando...")
	elseif cl == 606 then
		cgHide()
		cw('n', "Em...")
	elseif cl == 607 then
		cw('n', "¡No debería estar hablando de eso todavía!")
	elseif cl == 608 then
		cw('n', "¡Termina el capítulo de una vez!")
	elseif cl == 609 then
		bgUpdate('club')
		cw('bl', "La voz de Natsuki suena muy entusiasmada.")
	elseif cl == 610 then
		cw('bl', "Es un claro contraste respecto a su habitual tono mandón.")
	elseif cl == 611 then
		cw('bl', "Pero si no suele hablar de su manga favorito con sus amigas, puedo entender que esté así.")
	elseif cl == 612 then
		cw('bl', "Es difícil expresar con palabras el sentimiento de conectar con alguien de esa forma.")
	elseif cl == 613 then	
		cw('bl', "Y poder hacerlo por Natsuki, aunque no sea algo que me guste...")
	elseif cl == 614 then
		cw('bl', "Solo con pensarlo no puedo evitar dirigir una sonrisa.")
	elseif cl == 615 then
		updateMonika('3','b',10)
		cw('m',"¡Muy bien, chicos!")
	elseif cl == 616 then
		cw('mc',"¿Eh?")
	elseif cl == 617 then
		cw('m', "¿Tenéis listos ya vuestros poemas de hoy?")
	elseif cl == 618 then
		cw('mc',"...")
	elseif cl == 619 then
		updateNatsuki('4','w',150)
		cw('n', "¡Oh, venga ya!")
	elseif cl == 620 then
		cw('n', "¿No podrías haber elegido un peor momento?")
	elseif cl == 621 then
		updateMonika('5a','')
		cw('m', "¡Perdón~!")
	elseif cl == 622 then
		cw('m', "Solo quiero asegurarme de que disponemos del tiempo suficiente.")
	elseif cl == 623 then
		cw('m', "Aunque ya veo que estás bastante cómoda. ¡Ja, ja, ja!")
	elseif cl == 624 then
		updateNatsuki('4','o')
		cw('n', "¿Eh?")
	elseif cl == 625 then
		updateNatsuki('1','p')
		cw('n', "¡A-Ah!")
	elseif cl == 626 then
		cw('bl', "Natsuki de pronto se percata de lo cerca que está de mí.")
	elseif cl == 627 then
		cw('bl', "No duda un segundo en alejarse unos centímetros de donde estaba.")
	elseif cl == 628 then
		hideMonika()
		updateNatsuki('1','p',80)
		cw('mc', "Muy bien...")
	elseif cl == 629 then
		cw('mc', "Supongo que lo dejaremos aquí por hoy.")
	elseif cl == 630 then
		cw('bl', "Cierro el libro y se lo entrego a Natsuki.")
	elseif cl == 631 then
		updateNatsuki('2','m')
		cw('n', "¿Me lo estás devolviendo...?")
	elseif cl == 632 then
		cw('n', "¿No quieres saber lo que pasa después?")
	elseif cl == 633 then
		cw('mc', "Oh... Claro, pero...")
	elseif cl == 634 then
		cw('mc', "Monika acaba de decir que...")
	elseif cl == 635 then
		updateNatsuki('2','u')
		cw('n', "No seas estúpido.")
	elseif cl == 636 then
		cw('n', "Llévalo a casa contigo.")
	elseif cl == 637 then
		cw('mc',"¿Eh?")
	elseif cl == 638 then
		cw('mc', "¿Estás segura?")
	elseif cl == 639 then
		cw('bl', "Lo digo sobre todo porque no tenía intención alguna de desperdiciar mi tiempo libre en leer esto...")
	elseif cl == 640 then
		updateNatsuki('4','h')
		cw('n', "Oh, pues claro.")
	elseif cl == 641 then
		cw('n', "Tardarías una eternidad en leerlo si no te lo llevas contigo.")
	elseif cl == 642 then
		cw('n', "Tú termina ese para mañana, y así podremos empezar con el siguiente.")
	elseif cl == 643 then
		updateNatsuki('4','g')
		cw('n', "Y que sepas que si se te dobla o algo, te mataré.")
	elseif cl == 644 then
		cw('mc', "¿Para mañana...?")
	elseif cl == 645 then
		hideNatsuki()
		cw('bl', "Solo llevo un poco del volumen leído.")
	elseif cl == 646 then
		cw('bl', "Puede que me quede rezagado con bastantes series si intento avanzar con el libro...")
	elseif cl == 647 then 
		cw('bl', "Pero supongo que es un sacrificio necesario para ver la cara de entusiasmo de Natsuki.")
	elseif cl == 648 then
		cw('bl', "¿O acaso estoy más asustado de lo que podría pasar si no lo termino...?")
	elseif cl == 649 then
		cw('mc', "¡Muy bien, chicas!")
	elseif cl == 650 then
		cw('bl', "Me levanto.")
	elseif cl == 651 then
		cw('bl', "Regreso a por mis cosas y coloco cuidadosamente el libro en mi mochila.")
		--1: x=80
		--2: x=20 x=140 ..or.. x=10 x=150
		--3: x=0-40 x=80 x=200
		--4: x=0-60 x=30 x=120 x=220
	elseif cl == 1359 then
		scriptJump(423)
	end
end

function Natsuki_exclusive_2()
	if cl == 1359 then
		savevalue = 'n'
		audioUpdate('6')
		updateNatsuki('4','c',80)
		cw('n',"...")
	elseif cl == 1360 then
		cw('bl', "No pasa mucho tiempo hasta que Natsuki se acerca a mi con expectación.")
	elseif cl == 1361 then
		cw('mc', "Lo sé, lo sé.")
	elseif cl == 1362 then
		cw('mc', "No te preocupes, mantendré mi promesa.")
	elseif cl >= 1363 then
		Natsuki_exclusive_2_ch3()
	end
end
function Natsuki_exclusive_2_ch3()
	if cl < 1364 then
		cl = 1364
	elseif cl == 1364 then
		cw('bl', "Saco el primer volumen de Las chicas del postre de mi mochila.")
	elseif cl == 1365 then
		cw('bl', "Natsuki lo toma de mis manos para luego voltearlo en busca de alguna arruga.")
	elseif cl == 1366 then
		cw('mc', "Eh, no soy tan descuidado...")
	elseif cl == 1367 then
		cw('mc', "Lidio con manga todo el tiempo, ya lo sabes.")
	elseif cl == 1368 then
		updateNatsuki('1','m')
		cw('n', "¡Solo quería asegurarme!")
	elseif cl == 1369 then
		updateNatsuki('1','c')
		cw('n', "¿Puedes culparme por ser paranoica?")
	elseif cl == 1370 then
		cw('n', "No le presto mi manga a la gente todos los días, tenlo bien claro.")
	elseif cl == 1371 then
		cw('mc', "Eso es cierto...")
	elseif cl == 1372 then
		cw('mc', "No te culpo.")
	elseif cl == 1373 then
		updateNatsuki('2','j')
		cw('n', "Como sea, deja que coloque este en su sitio.")
	elseif cl == 1374 then
		cw('n', "Voy a por el siguiente, ¿te parece bien?")
	elseif cl == 1375 then
		hideNatsuki()
		cw('bl', "Natsuki se dirige al armario.")
	elseif cl == 1376 then
		cw('bl', "Yo la sigo.")
	elseif cl == 1377 then
		bgUpdate('closet')
		updateNatsuki('2','l',80)
		cw('n', "Me vas a decir todo lo que piensas de lo que has leído, ¿¿verdad??")
	elseif cl == 1378 then
		updateNatsuki('2','k')
		cw('n', "¿En qué punto de la trama se quedaba ese volumen? Lo he olvidado.")
	elseif cl == 1379 then
		cw('mc', "Oh, el capítulo terminó cuando Minori y Alice encontraron...")
	elseif cl == 1380 then
		updateNatsuki('1','e')
		cw('n', "¡Monika!")
	elseif cl == 1381 then
		cw('bl', "La voz de Natsuki resuena desde el interior del armario.")
	elseif cl == 1382 then
		cw('n', "¿Eh?")
	elseif cl == 1383 then
		cw('bl', "Miro adentro.")
	elseif cl == 1384 then
		cw('bl', "Todos los libros de Natsuki están alineados en el estante superior.")
	elseif cl == 1385 then
		cw('n', "¡¿Has vuelto a cambiar de sitio mi manga?!")
	elseif cl == 1386 then
		updateMonika('3','l',-50)
		cw('m', "Ah, ¡Perdón, perdón!")
	elseif cl == 1387 then
		cw('m', "La profe se enfadó conmigo por ocupar demasiado espacio en su armario...")
	elseif cl == 1388 then
		cw('m', "Así que tuve que mover algunas cosas de sitio y limpiar un poco.")
	elseif cl == 1389 then
		updateMonika('3','b')
		cw('m', "Todo sigue aquí, ¡solo lo he reorganizado un poquitín!")
	elseif cl == 1390 then
		hideMonika()
		updateNatsuki('1','r')
		cw('n', "Agh...")
	elseif cl == 1391 then
		cw('bl', "El estante superior está más alto que la cabeza de Natsuki.")
	elseif cl == 1392 then
		cw('bl', "Da un leve brinco, intentando averiguar cómo alcanzar su manga.")
	elseif cl == 1393 then
		updateNatsuki('1','q')
		cw('n', "¡Cielos...!")
	elseif cl == 1394 then
		cw('n', "¡Esto es muy inoportuno!")
	elseif cl == 1395 then
		updateNatsuki('1','c')
		cw('n', "Tengo que bajarlos todos.")
	elseif cl == 1396 then
		cw('n', "Hay muchísimo espacio en esos estantes.")
	elseif cl == 1397 then
		cw('n', "Y además...")
	elseif cl == 1398 then
		updateNatsuki('4','w')
		cw('n', "¡Quedan tan bonitos cuando están todos alineaditos!")
	elseif cl == 1399 then
		cw('n', "¿Por qué desperdiciarlos colocándolos en el estante superior?")
	elseif cl == 1400 then
		cw('mc', "Ah, Natsuki...")
	elseif cl == 1401 then
		cw('mc', "Hay un taburete al lado de esa pared.")
	elseif cl == 1402 then
		cw('bl', "Y, en el armario, hay un taburete plegable colgado de la pared.")
	elseif cl == 1403 then
		cw('mc', "Si quieres, lo traigo y te echo una mano...")
	elseif cl == 1404 then
		updateNatsuki('1','g')
		cw('n', "¡Puedo ir a cogerlos por mí misma!")
	elseif cl == 1405 then
		cw('bl', "Natsuki coge el taburete de la pared y lo despliega.")
	elseif cl == 1406 then
		cw('n', "¿Acaso crees que soy demasiado bajita?")
	elseif cl == 1407 then
		cw('mc', "Pues...")
	elseif cl == 1408 then
		updateNatsuki('5','x')
		cw('n', "¡Lo sabía!")
	elseif cl == 1409 then
		updateNatsuki('5','w')
		cw('n', "Pues bueno, ¿sabes qué?")
	elseif cl == 1410 then
		cw('n', "¡Fíjate bien!")
	elseif cl == 1411 then
		cw('bl', "Natsuki se sube al taburete, que tambalea un poco por su diseño plegable.")
	elseif cl == 1412 then
		updateNatsuki('1','f')
		cw('n', "A-Ah...")
	elseif cl == 1413 then
		cw('mc', "Con cuidado...")
	elseif cl == 1414 then
		updateNatsuki('1','r')
		cw('n', "¡¡Sé lo que estoy haciendo!!")
	elseif cl == 1415 then
		cw('bl', "Subida al taburete, los dedos de Natsuki alcanzan a duras penas el estante superior.")
	elseif cl == 1416 then
		cw('bl', "Si me subiese yo, llegaría fácilmente, pero Natsuki está siendo tan terca como de costumbre.")
	elseif cl == 1417 then
		cw('n', "U-uuuh...")
	elseif cl == 1418 then
		cw('bl', "Natsuki empuja con los dedos una de las cajas más pequeñas hacia el borde del estante.")
	elseif cl == 1419 then
		updateNatsuki('1','t')
		cw('n', "¿Ves...?")
	elseif cl == 1420 then
		updateNatsuki('1','v')
		cw('n', "¡Aaah...!")
	elseif cl == 1421 then
		cw('bl', "La caja se vuelca repentinamente.")
	elseif cl == 1422 then
		cw('bl',"Natsuki logra atraparla por los pelos antes de que caiga al suelo.")
	elseif cl == 1423 then
		cw('bl', "El taburete se tambalea.")
	elseif cl == 1424 then
		cw('n', "Wawaa...")
	elseif cl == 1425 then
		cw('bl', "Perdiendo el equilibrio, Natsuki se baja del taburete.")
	elseif cl == 1426 then
		cw('bl', "Afortunadamente, es capaz de recobrar el equilibrio.")
	elseif cl == 1427 then
		cw('bl', "Sostiene la caja con expresión triunfante.")
	elseif cl == 1428 then
		updateNatsuki('4','y')
		cw('n', "¡L-listo!")
	elseif cl == 1429 then
		cw('bl', "Habiendo estado a punto de caer, Natsuki está un poco agitada.")
	elseif cl == 1430 then
		cw('mc', "Cielos...")
	elseif cl == 1431 then
		cw('mc', "No necesitas demostrarme nada.")
	elseif cl == 1432 then
		cw('mc', "No conseguirás coger las cajas más grandes de esa forma.")
	elseif cl == 1433 then
		cw('mc', "Puedo alcanzarlas, solo necesito...")
	elseif cl == 1434 then
		updateNatsuki('2','h')
		cw('n', "¡He dicho que puedo hacerlo!")
	elseif cl == 1435 then
		cw('n', "No quiero tu ayuda, ¿entendido?")
	elseif cl == 1436 then
		cw('mc', "Ay...")
	elseif cl == 1437 then
		cw('n', "Iré a buscar una silla, solo espera.")
	elseif cl == 1438 then
		hideNatsuki()
		cw('bl', "Natsuki sale del armario a empujones.")
	elseif cl == 1439 then
		cw('n', "Veamos...")
	elseif cl == 1440 then
		cw('bl', "Las sillas de clase están unidas a los escritorios, así que no caben en el armario.")
	elseif cl == 1441 then
		cw('n', "¡Ajá!")
	elseif cl == 1442 then
		cw('bl', "Natsuki se dirige al escritorio del profesor, que tiene una silla para ordenador detrás de sí.")
	elseif cl == 1443 then
		cw('bl', "Natsuki hace rodar la silla hacia el armario.")
	elseif cl == 1444 then
		updateNatsuki('4','a',80)
		cw('mc', "Ah...")
	elseif cl == 1445 then
		cw('bl', "Es un poco peligroso, la silla podría salir rodando.")
	elseif cl == 1446 then
		cw('bl', "Pero ya aprendí la lección, así que me quedo callado.")
	elseif cl == 1447 then
		updateNatsuki('1','a')
		cw('n', "Ale-jop...")
	elseif cl == 1448 then
		cw('bl', "Natsuki se sube a la silla, intentando mantener el equilibrio.")
	elseif cl == 1449 then
		cw('bl', "Como rechazó mi ayuda, me siento apoyando mi espalda en la puerta del armario y me limito a mirar.")
	elseif cl == 1450 then
		hideAll()
		bgUpdate('cg/n_cg2_base')
		persistent.clear[2] = 1
		if xaload == 1 then
			savepersistent()
		end
		cw('n', "¡Ajá! ¡Vamos allá!")
	elseif cl == 1451 then
		cw('n', "¿Ves? Ya puedo hacerlo sin despeinarme.")
	elseif cl == 1452 then
		cw('bl', "Natsuki agarra una pila de manga y se agacha para ponerla en el estante inferior.")
	elseif cl == 1453 then
		cw('n', "W-waa...")
	elseif cl == 1454 then
		cw('bl', "La silla gira bruscamente.")
	elseif cl == 1455 then
		cw('bl', "Natsuki se mantiene en pie gracias al estante.")
	elseif cl == 1456 then
		cgUpdate('n_cg2_exp1')
		cw('n', "¿¿Qué estás haciendo??")
	elseif cl == 1457 then
		cw('n', "¿¿Podrías dignarte al menos a sujetar la silla en lugar de sentarte ahí sin hacer nada??")
	elseif cl == 1458 then
		cw('bl', "(¿Quién fue la que me dijo que podía solita...?)")
	elseif cl == 1459 then
		cw('mc', "Claro, claro... Te tengo.")
	elseif cl == 1460 then
		cgHide()
		cw('bl', "Sujeto la silla mientras Natsuki vuelve a su tarea.")
	elseif cl == 1461 then
		cw('mc', "¡...!")
	elseif cl == 1462 then
		cw('bl', "Casi puedo...")
	elseif cl == 1463 then
		cw('bl', "¡¿Casi puedo ver sus bragas?!")
	elseif cl == 1464 then
		cw('mc', "Uh...")
	elseif cl == 1465 then
		cw('bl', "Me fuerzo a mirar a otro lado.")
	elseif cl == 1466 then
		cw('bl', "¡Natsuki no ha pensado esto demasiado bien...!")
	elseif cl == 1467 then
		cw('bl', "En cuanto se percate, ¡seré hombre muerto!")
	elseif cl == 1468 then
		cw('n', "Alejop...")
	elseif cl == 1469 then
		cw('bl', "Natsuki pone los brazos alrededor de su colección de Las chicas del postre, la caja más grande del estante.")
	elseif cl == 1470 then
		cw('n', "Uf... Cómo pesa...")
	elseif cl == 1471 then
		cgUpdate('n_cg2_exp1')
		cw('n', "Oye, " .. player .. "...")
	elseif cl == 1472 then
		cw('n', "¡No creo que pueda bajar sin caerme...!")
	elseif cl == 1473 then
		cw('n', "Date prisa y toma esto...")
	elseif cl == 1474 then
		cw('mc',"¿Eh?")
	elseif cl == 1475 then
		cw('mc', "Pero es que entonces tendré que soltar la silla...")
	elseif cl == 1476 then
		cw('n', "¡No te preocupes...!")
	elseif cl == 1477 then
		cw('n', "¡Solo será un segundo!")
	elseif cl == 1478 then
		cw('n', "Date prisa...")
	elseif cl == 1479 then
		cw('mc', "¡De acuerdo...!")
	elseif cl == 1480 then
		cw('mc', "Pero deja que me levante.")
	elseif cl == 1481 then
		cw('bl', "Suelto la silla lentamente.")
	elseif cl == 1482 then
		cw('n', "¿A qué te refieres con «levantarte»?")
	elseif cl == 1483 then
		cw('bl', "Natsuki mira hacia abajo.")
	elseif cl == 1484 then
		cw('n', "Por qué estás...")
	elseif cl == 1485 then
		audioUpdate('0')
		cw('n', "¿E-eh...?")
	elseif cl == 1486 then
		cw('bl', "Natsuki parece haberse dado cuenta de la situación, pero perdería el equilibrio si se moviese.")
	elseif cl == 1487 then
		cw('mc', "Natsuki, la caja...")
	elseif cl == 1488 then
		audioUpdate('7')
		cgUpdate('n_cg2_exp2')
		cw('n', "¿Q-qué demonios estás mirando?!")
	elseif cl == 1489 then
		cw('mc', "¡...!")
	elseif cl == 1490 then
		cw('n', "Estás intentando verme las... l-las...")
	elseif cl == 1491 then
		cw('bl', "Las piernas de Natsuki comienzan a temblar.")
	elseif cl == 1492 then
		cw('mc', "¡Para nada! Yo solo estaba...")
	elseif cl == 1493 then
		cw('mc', "¡Natsuki, no intentes moverte!")
	elseif cl == 1494 then
		cw('mc', "¡Tan solo dame la caja!")
	elseif cl == 1495 then
		cw('n', "Gu... ¡Guarro!")
	elseif cl == 1496 then
		cw('n', "¡¡Me has engañado!!")
	elseif cl == 1497 then
		cw('n', "¡Fuera de aquí!")
	elseif cl == 1498 then
		cw('n', "¡Largo!")
	elseif cl == 1499 then
		cw('mc', "Pero...")
	elseif cl == 1500 then
		cw('n', "¡¡Lo haré yo sola!!")
	elseif cl == 1501 then
		cgHide()
		cw('mc', "Ah...")
	elseif cl == 1502 then
		cw('bl', "La silla da un repentino giro bajo los pies de Natsuki.")
	elseif cl == 1503 then
		cw('mc', "¡Natsuki...!")
	elseif cl == 1504 then
		cgUpdate('n_cg2_exp2')
		cw('n', "¡Kyaaaaa!")
	elseif cl == 1505 then
		cw('bl', "El panorama se torna en un caos por un instante.")
	elseif cl == 1506 then
		cw('bl', "La silla sale volando desde los pies de Natsuki.")
	elseif cl == 1507 then
		cw('bl', "Intento atraparla frenéticamente.")
	elseif cl == 1508 then
		cw('bl', "La caja se cae de sus manos, lo que hace que los libros salgan volando.")
	elseif cl == 1509 then
		cw('mc', "Te tengo...")
	elseif cl == 1510 then
		cgHide()
		bgUpdate('black')
		audioUpdate('0')
		sfxplay('fall2')
		cw('bl', "¡Catapún!")
	elseif cl == 1511 then
		cw('bl', "El peso del cuerpo de Natsuki hace que me caiga al suelo.")
	elseif cl == 1512 then
		cw('bl', "Una pila de libros me golpean en la cara.")
	elseif cl == 1513 then
		cw('bl', "Natsuki trata de protegerse con los brazos mientras su cara cae sobre mi pecho.")
	elseif cl == 1514 then
		cw('mc', "Uuh...")
	elseif cl == 1515 then
		cw('bl', "Siento intensamente el impacto en mi brazo derecho y mi espalda.")
	elseif cl == 1516 then
		audioUpdate('8')
		bgUpdate('closet')
		updateNatsuki('f_1','f_v',80) --show natsuki 1v at face
		cw('n', "U-uh...")
	elseif cl == 1517 then
		cw('bl', "Lentamente, Natsuki recobra el sentido.")
	elseif cl == 1518 then
		cw('mc', "¡Agh–!")
	elseif cl == 1519 then
		cw('bl', "Apoya sus brazos en mí para impulsarse hacia arriba.")
	elseif cl == 1520 then
		updateNatsuki('f_1','f_h') --1h at face
		cw('n',"¿Eh...?")
	elseif cl == 1521 then
		cw('bl', "Natsuki se percata de que lo que está debajo de ella no es precisamente el suelo.")
	elseif cl == 1522 then
		updateNatsuki('f_1','f_o') --1o at face
		cw('n', "¡¡A-aaaaa...!!")
	elseif cl == 1523 then
		cw('n', "¡Asqueroso!")
	elseif cl == 1524 then
		cw('mc', "¡Agh...!")
	elseif cl == 1525 then
		cw('bl', "Me da un puñetazo en el pecho.")
	elseif cl == 1526 then
		cw('bl', "Tras eso, Natsuki intenta levantarse.")
	elseif cl == 1527 then
		updateNatsuki('1','x')
		cw('n', "¡¿En qué estabas pensando?!")
	elseif cl == 1528 then
		cw('n', "¡Cerdo!")
	elseif cl == 1529 then
		updateMonika('1','d',-50)
		cw('m', "¿Todo bien por aquí...?")
	elseif cl == 1530 then
		cw('m', "Es que escuché un estruendo...")
	elseif cl == 1531 then
		cw('bl', "Monika se asoma repentinamente.")
	elseif cl == 1532 then
		updateNatsuki('1','e')
		cw('n',"¡Monika!")
	elseif cl == 1533 then
		cw('n', "¡¿Ves lo que ocurre cuando pones los mangas en el estante de arriba?!")
	elseif cl == 1534 then
		updateNatsuki('1','w')
		cw('n', "¿Acaso intentas acabar con los miembros de tu club o algo?")
	elseif cl == 1535 then
		cw('n', "¡Cielos!")
	elseif cl == 1536 then
		updateMonika('5a')
		cw('m', "¡L-lo siento!")
	elseif cl == 1537 then
		cw('m', "Ja, ja, ja...")
	elseif cl == 1538 then
		updateNatsuki('5','r')
		cw('n', "Oh, y una cosita más.")
	elseif cl == 1539 then
		cw('n', "Parece que el nuevo recluta de nuestro club es un completo pervertido.")
	elseif cl == 1540 then
		cw('n', "Así que espero que estés contenta.")
	elseif cl == 1541 then
		cw('mc', "¡Y-yo no...!")
	elseif cl == 1542 then
		cw('bl', "Por algún motivo, soy incapaz de explicar esta situación tan extraña a Monika.")
	elseif cl == 1543 then
		cw('mc', "¡Yo no he hecho nada, lo juro...!")
	elseif cl == 1544 then
		updateMonika('1','l')
		cw('m', "Lo sé, lo sé, no te preocupes~")
	elseif cl == 1545 then
		hideMonika()
		cw('bl', "Monika lo dice de forma muy calmada.")
	elseif cl == 1546 then
		cw('bl', "Parece que me he librado de esta...")
	elseif cl == 1547 then
		audioUpdate('0')
		updateNatsuki('1','p')
		cw('n', "¡Oh no...!")
	elseif cl == 1548 then
		cw('n', "Mi... mi...")
	elseif cl == 1549 then
		updateNatsuki('1','m')
		cw('mc',"¿Eh?")
	elseif cl == 1550 then
		cw('bl', "Miro hacia abajo.")
	elseif cl == 1551 then
		cw('bl', "Natsuki está de rodillas en el suelo, sosteniendo uno de los libros desperdigados por ahí.")
	elseif cl == 1552 then
		cw('bl', "Hay un gran pliegue diagonal a lo largo de una de las páginas e intenta borrarla desesperadamente.")
	elseif cl == 1553 then
		cw('mc', "Oh, parece que se cayó justo encima de esa página...")
	elseif cl == 1554 then
		cw('bl', "Natsuki sigue intentando arreglar la página, pero no hay manera.")
	elseif cl == 1555 then
		updateNatsuki('1','2b')
		cw('bl', "Repentinamente, se rinde y cierra el libro, estrellándolo después contra el suelo.")
	elseif cl == 1556 then
		cw('bl', "En lugar de seguir gritando, solo baja la cabeza.")
	elseif cl == 1557 then
		audioUpdate('9')
		updateNatsuki('1','2d')
		cw('n', "*Llora*")
	elseif cl == 1558 then
		cw('mc', "Natsuki, no estarás...")
	elseif cl == 1559 then
		updateNatsuki('1','2f')
		cw('n', "¡No!")
	elseif cl == 1560 then
		cw('bl', "La voz de Natsuki se quiebra.")
	elseif cl == 1561 then
		cw('bl', "Veo las lágrimas en su cara.")
	elseif cl == 1562 then
		cw('mc',"Ah...")
	elseif cl == 1563 then
		cw('mc', "Te ayudaré a borrar el pliegue, ¿de acuerdo?")
	elseif cl == 1564 then
		cw('mc', "En parte es culpa mía, así que...")
	elseif cl == 1565 then
		cw('bl', "Natsuki agita la cabeza, aún cabizbaja.")
	elseif cl == 1566 then
		cw('n', "No...")
	elseif cl == 1567 then
		cw('n', "Ni siquiera me importa tanto...")
	elseif cl == 1568 then
		cw('n', "Es solo que...")
	elseif cl == 1569 then
		cw('n', "Hoy estoy teniendo un día realmente horrible...")
	elseif cl == 1570 then
		cw('bl', "Natsuki vuelve a sollozar.")
	elseif cl == 1571 then
		updateNatsuki('1','2i')
		cw('n', "No pretendía pagarlo contigo...")
	elseif cl == 1572 then
		cw('n', "¡De verdad que no!")
	elseif cl == 1573 then
		cw('mc', "Es... está bien.")
	elseif cl == 1574 then
		cw('mc', "¿Hay algo de lo que quieras hablar...?")
	elseif cl == 1575 then
		updateNatsuki('1','2f')
		cw('bl', "Natsuki vuelve a agitar la cabeza.")
	elseif cl == 1576 then
		cw('n', "Es solo que...")
	elseif cl == 1577 then
		cw('n', "Cada día...")
	elseif cl == 1578 then
		cw('n', "todo es... tan difícil.")
	elseif cl == 1579 then
		cw('n', "Yo solo quiero...")
	elseif cl == 1580 then
		cw('n', "venir al club y...")
	elseif cl == 1581 then
		cw('n',"...")
	elseif cl == 1582 then
		cw('bl', "Natsuki vuelve a quedarse callada.")
	elseif cl == 1583 then
		cw('bl', "No puedo presionarla, así que lo único que puedo hacer es aquello que mejor sé hacer.")
	elseif cl == 1584 then
		cw('mc', "Muy bien...")
	elseif cl == 1585 then
		cw('mc', "Bueno, te ayudaré a limpiar todo esto.")
	elseif cl == 1586 then
		cw('mc', "Y me encargaré de recolocar el resto del manga por ti.")
	elseif cl == 1587 then
		cw('mc',"Ah.")
	elseif cl == 1588 then
		cw('bl', "Recojo el segundo volumen de Las chicas del postre.")
	elseif cl == 1589 then
		cw('mc', "Apartaremos este.")
	elseif cl == 1590 then
		cw('mc', "Te ayudará a animarte un poco, ¿vale?")
	elseif cl == 1591 then
		cw('mc', "Podemos empezarlo una vez termine con esto.")
	elseif cl == 1592 then
		updateNatsuki('1','2h')
		cw('bl', "Natsuki me mira con los ojos llorosos.")
	elseif cl == 1593 then
		cw('bl', "Le tiemblan los labios.")
	elseif cl == 1594 then
		cw('n', "Eres...")
	elseif cl == 1595 then
		cw('n', "Eres muy bueno conmigo...")
	elseif cl == 1596 then
		cw('mc',"¿Eh?")
	elseif cl == 1597 then
		cw('bl', "Eso suena muy extraño, especialmente viniendo de Natsuki.")
	elseif cl == 1598 then
		cw('bl', "No me lo esperaba en absoluto.")
	elseif cl == 1599 then
		cw('mc', "Bueno...")
	elseif cl == 1600 then
		cw('mc', "Solo te estoy tratando como lo haría un amigo.")
	elseif cl == 1601 then
		updateNatsuki('1','2f')
		cw('n', "Nn...")
	elseif cl == 1602 then
		hideAll()
		cw('bl', "Natsuki vuelve a bajar la cabeza y solloza un poco más.")
	elseif cl == 1603 then
		cw('bl', "No tengo ni idea de qué puede haberle pasado hoy, pero ser amable con ella es lo menos que puedo hacer.")
	elseif cl == 1604 then
		cw('bl', "Mientras, voy recogiendo los libros del suelo, pero los dos nos quedamos en silencio durante unos minutos.")
	elseif cl == 1605 then
		cw('bl', "Me aseguro de colocarlos cada uno en su caja en el orden correcto.")
	elseif cl == 1606 then
		cw('bl', "Después de un rato, Natsuki comienza a ayudarme.")
	elseif cl == 1607 then
		cw('bl', "No tardamos mucho en terminar, y cuando lo hacemos, coloco la caja en el estante donde Natsuki quería ponerla.")
	elseif cl == 1608 then
		cw('bl', "Después, me subo al taburete y rápidamente termino de sacar el resto de libros del estante superior.")
	elseif cl == 1609 then
		cw('mc', "¡Hecho...!")
	elseif cl == 1610 then
		cw('mc', "Con esto debería estar todo.")
	elseif cl == 1611 then
		cw('bl', "Me bajo del taburete.")
	elseif cl == 1612 then
		cw('bl', "Natsuki aparta la mirada.")
	elseif cl == 1613 then
		updateNatsuki('5','u',80)
		cw('n', "G-gracias...")
	elseif cl == 1614 then
		cw('mc', "Ja, ja, ja...")
	elseif cl == 1615 then
		cw('mc', "No ha sido nada.")
	elseif cl == 1616 then
		cw('bl', "Natsuki sostiene entre sus manos el volumen que aparté antes.")
	elseif cl == 1617 then
		cw('mc', "Muy bien, estoy listo.")
	elseif cl == 1618 then
		updateNatsuki('2','n')
		cw('n', "Bien.")
	elseif cl == 1619 then
		cw('n', "Incluso si no lo estuvieses, te obligaría a estarlo.")
	elseif cl == 1620 then
		updateNatsuki('2','u')
		cw('n', "Tienes que responsabilizarte por lo que dijiste.")
	elseif cl == 1621 then
		cw('n', "Ya sabes, sobre aquello de animarme.")
	elseif cl == 1622 then
		cw('mc', "¡Si insistes!")
	elseif cl == 1623 then
		audioUpdate('8')
		bgUpdate('club')
		hideNatsuki()
		cw('bl', "Nos sentamos en el mismo lugar que la otra vez, y abro el segundo volumen.")
	elseif cl == 1624 then
		cw('bl', "El estado de ánimo de Natsuki se recupera rápidamente, haciendo que se ría y empiece a señalarme cosas.")
	elseif cl == 1625 then
		cw('bl', "Es sorprendentemente perspicaz, dándose cuenta de las bromas recurrentes más sutiles y de elementos secundarios.")
	elseif cl == 1626 then
		cw('bl', "Al final, me siento embelesado por cómo todo se entrelaza en este manga.")
	elseif cl == 1627 then
		cw('bl', "Supongo que, al fin y al cabo, Natsuki tiene buen gusto.")
	elseif cl == 1628 then
		cw('bl', "Después de un rato, Monika capta nuestra atención como de costumbre, y vuelve a ser la hora de compartir nuestros poemas.")
	elseif cl == 1629 then
		updateNatsuki('2','j',80)
		cw('mc', "Supongo que por ahora tendré que conformarme con esto.")
	elseif cl == 1630 then
		cw('n', "¡Sip!")
	elseif cl == 1631 then
		cw('n', "Incluso suenas más entusiasmado esta vez.")
	elseif cl == 1632 then
		cw('mc', "Bueno, es que estoy comenzando a engancharme.")
	elseif cl == 1633 then
		updateNatsuki('4','z')
		cw('n', "Je, je, je.")
	elseif cl == 1634 then
		cw('n', "Te lo dije.")
	elseif cl == 1635 then
		cw('mc', "Sí, sí...")
	elseif cl == 1636 then
		hideNatsuki()
		cw('bl', "Regreso a mi asiento y guardo el libro en mi mochila.")
	elseif cl == 1637 then
		poeminitialize()
	end
end
