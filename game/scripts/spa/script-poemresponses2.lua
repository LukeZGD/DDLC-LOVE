local y_gave
local y_timer = 0
local gtext80 = glitchtext(80)

function ch21_n_bad()
	ch1_n_bad()
end

function ch21_n_med()
	ch1_n_med()
end

function ch21_n_good()
	ch1_n_good()
end

function ch22_n_bad()
	if n_poemappeal[1] < 0 then
		if cl == 670 then
		updateNatsuki('1','r')
		cw('n', "...")
		elseif cl == 671 then
		cw('n', "Claro, justo como pensaba...")
		elseif cl == 672 then
		cw('mc', "¿...?")
		elseif cl == 673 then
		updateNatsuki('2','w')
		cw('n', "Venga, " .. player .. ".")
		elseif cl == 674 then
		cw('n', "Que no soy estúpida.")
		elseif cl == 675 then
		updateNatsuki('2','h')
		cw('n', "Sé que pasas mucho tiempo con Yuri...")
		elseif cl == 676 then
		cw('n', "Está más claro que el agua que te importa más impresionarla, que mejorar tu capacidad de componer poemas.")
		elseif cl == 677 then
		updateNatsuki('2','w')
		cw('n', "Sin rodeos, es un poco patético.")
		elseif cl == 678 then
		updateNatsuki('4','h')
		cw('n', "¿Por qué estás en este club, " .. player .. "?")
		elseif cl == 679 then
		cw('n', "Sinceramente...")
		elseif cl == 680 then
		cw('n', "Pensaba que tener un nuevo miembro en el club ayudaría a tener más trabajo en equipo.")
		elseif cl == 681 then
		updateNatsuki('4','s')
		cw('n', "Y no a separarnos.")
		elseif cl == 682 then
		updateNatsuki('1','u')
		cw('n', "De todas formas, estas actividades son muy estúpidas...")
		elseif cl == 683 then
		updateNatsuki('1','2c')
		cw('n', "Mira... hoy no me encuentro de buen humor y no tengo muchas ganas de hablar.")
		elseif cl == 684 then
		cw('n', "Por favor, vete.")
		elseif cl == 685 then
		poemfinish('n')
		end
	else
		if cl == 670 then
		updateNatsuki('1','k')
		cw('n', "Mmm...")
		elseif cl == 671 then
		cw('n', "Me gustó más el anterior.")
		elseif cl == 672 then
		cw('y', "¿Eh?")
		elseif cl == 673 then
		updateNatsuki('2','c')
		cw('n', "Claro. En este te veo mucho más osado.")
		elseif cl == 674 then
		cw('n', "Pero todavía te falta mucho. Qué desastre.")
		elseif cl == 675 then
		cw('mc', "Tienes toda la razón, estaba intentando probar algo diferente.")
		elseif cl == 676 then
		cw('mc', "Todavía le estoy dando muchas vueltas a esto.")
		elseif cl >= 677 then
		ch22_n_med_shared()
		end
	end
end

function ch22_n_med()
	if n_poemappeal[1] < 0 then
		if cl == 670 then
		cw('n', "Mmm...")
		elseif cl == 671 then
		updateNatsuki('2','k')
		cw('n', "Bueno, lo que sí es verdad, es que este está mucho mejor que el anterior.")
		elseif cl == 672 then
		cw('n', "Es bueno ver que estás poniendo de tu parte.")
		elseif cl == 673 then
		cw('mc', "Eso es bueno...")
		elseif cl >= 674 then
		ch22_n_med_shared()
		end
	elseif n_poemappeal[1] == 0 then
		if cl == 670 then
		cw('n', "Mmm...")
		elseif cl == 671 then
		updateNatsuki('2','k')
		cw('n', "Bueno, este no es tan malo como el anterior.")
		elseif cl == 672 then
		cw('n', "Pero tampoco puedo decir que sea mejor.")
		elseif cl == 673 then
		cw('mc', "Uf...")
		elseif cl == 674 then
		updateNatsuki('2','c')
		cw('n', "¿Eh? ¿«Uf...» qué?")
		elseif cl == 675 then
		cw('mc', "Bueno... cualquier cosa que no sea una patada en la entrepierna, lo veo como un logro.")
		elseif cl == 676 then
		cw('mc', "Además, tengo la sensación que eres la que más critica mis poemas.")
		elseif cl == 677 then
		updateNatsuki('1','p')
		cw('n', "¡P-pero bueno! ¿¡Qué te hace...!?")
		elseif cl == 678 then
		updateNatsuki('1','q')
		cw('n', "(Un segundo, ¿eso era un cumplido...?)")
		elseif cl == 679 then
		updateNatsuki('4','y')
		cw('n', "¡Ja, ja, ja! ¡Me alegra saber que por fin alguien reconoce mi experiencia!")
		elseif cl == 680 then
		cw('n', "Bueno, ¡pues sigue practicando y tal vez algún día serás tan bueno como yo!")
		elseif cl == 681 then
		cw('mc', "Eso es... esto...")
		elseif cl == 682 then
		cw('bl', "Creo que Natsuki no tiene ni pajolera idea de a qué me estaba refiriendo.")
		elseif cl >= 683 then
		ch22_n_med_shared()
		end
	else
		if cl == 670 then
		cw('n', "Mmm...")
		elseif cl == 671 then
		updateNatsuki('2','c')
		cw('n', "Bueno, por lo menos este no es tan malo.")
		elseif cl == 672 then
		cw('n', "Pero es bastante decepcionante respecto al último.")
		elseif cl == 673 then
		updateNatsuki('2','s')
		cw('n', "También te digo, que si este hubiese sido igual de bueno que el anterior, me habría puesto de muy mala hostia.")
		elseif cl == 674 then
		cw('mc', "Bueno, intentaba probar algo distinto respecto al anterior.")
		elseif cl == 675 then
		updateNatsuki('2','c')
		cw('n', "Me parece bien. Todavía estás verde en esto, es normal que no hayas encontrado tu estilo por ahora.")
		elseif cl == 676 then
		cw('n', "Quiero decir, todo el mundo compone de manera distinta...")
		elseif cl == 677 then
		cw('n', "Tal vez encuentres un poco de influencia de todas nosotras.")
		elseif cl == 678 then
		updateNatsuki('2','q')
		cw('n', "Como por ejemplo...")
		elseif cl == 679 then
		updateNatsuki('5','q')
		cw('n', "Me he dado cuenta de que hoy has pasado algo de tiempo con Yuri...")
		elseif cl == 680 then
		cw('n', "No es que me importe con quién pasas tu tiempo.")
		elseif cl == 681 then
		updateNatsuki('5','w')
		cw('n', "Después de todo, me enseñaron a que no espere nada de nadie.")
		elseif cl == 682 then
		updateNatsuki('5','s')
		cw('n', "No es que estuviera esperando algo de ti, o algo parecido.")
		elseif cl == 683 then
		updateNatsuki('5','h')
		cw('n', "Por lo menos, podrías mirar mi poema...")
		elseif cl == 684 then
		cw('n', "Tal vez puedas aprender algo gracias a él.")
		elseif cl >= 685 then
		ch22_n_end()
		end
	end
end

function ch22_n_med_shared()
	if cl < 683 then
	scriptJump(683)
	elseif cl == 683 then
	updateNatsuki('2','c')
		cw('n', "Solo procura influenciarte un poquito de las demás.")
	elseif cl == 684 then
		cw('n', "Pero si no me equivoco, estás un pelín más influenciado por Yuri, ¿verdad?")
	elseif cl == 685 then
	updateNatsuki('5','q')
		cw('n', "Ya sabes, sé que has estado...")
	elseif cl == 686 then
		cw('n', "Pasando más tiempo con ella, o lo que sea...")
	elseif cl == 687 then
	updateNatsuki('1','w')
		cw('n', "Pero para que te enteres, ¡Monika y yo somos tan buenas como ella!")
	elseif cl == 688 then
	updateNatsuki('1','q')
		cw('n', "¡Q-quiero decir, en los poemas!")
	elseif cl == 689 then
	updateNatsuki('1','h')
		cw('n', "Así que deberías de aprender de alguien más, ¡o te estancarás!")
	elseif cl == 690 then
		cw('n', "Toma, este es el que he compuesto...")
	elseif cl == 691 then
		cw('n', "Asegúrate de leértelo de pe a pa para al menos aprender algo.")
	elseif cl >= 692 then
	ch22_n_end()
	end
end

function ch22_n_good()
	ch22_n_med()
end

function ch22_n_end()
	if appeal.n >= 2 then
		ch22_n_end2()
	else
		if cl < 700 then
		scriptJump(700)
		elseif cl == 700 then
		poem('poem_n2')
		elseif cl == 701 then
		scriptJump(703)
		elseif cl == 703 then
		poem_disable()
		updateNatsuki('2','a')
		n "Nada mal, ¿eh?"
		elseif cl == 704 then
		cw('mc', "Es un poco más largo que el de ayer.")
		elseif cl == 705 then
		updateNatsuki('2','w')
		cw('n', "El de ayer era demasiado corto...")
		elseif cl == 706 then
		cw('n', "¡Solo estaba calentando!")
		elseif cl == 707 then
		updateNatsuki('2','c')
		cw('n', "Espero no haberte dado la impresión de que eso era lo mejor que podía hacer.")
		elseif cl == 708 then
		cw('mc', "Por supuesto que no...")
		elseif cl == 709 then
		updateNatsuki('2','a')
		cw('n', "De todas formas, está claro el mensaje que tiene el poema.")
		elseif cl == 710 then
		cw('n', "No creo que haga falta explicarlo.")
		elseif cl == 711 then
		updateNatsuki('2','g')
		cw('n', "Cualquiera estaría de acuerdo con que el sujeto de este poema es un puto ignorante...")
		elseif cl == 712 then
		cw('n', "Todo el mundo tiene algún pasatiempo raro o algún gusto inconfesable.")
		elseif cl == 713 then
		updateNatsuki('5','q')
		cw('n', "Es algo que temes a que la gente se entere, se burlarían o pensarían muy mal de ti.")
		elseif cl == 714 then
		updateNatsuki('1','e')
		cw('n', "¡Eso es lo que les hace estúpidos!")
		elseif cl == 715 then
		cw('n', "¿A quién le importa lo que le guste a esa persona? Siempre y cuando le haga feliz sin hacer daño a nadie.")
		elseif cl == 716 then
		updateNatsuki('1','q')
		cw('n', "Creo que la gente debería aprender a respetar a los demás por gustarles cosas raras...")
		elseif cl == 717 then
		updateNatsuki('1','x')
		cw('n', "Como ciertas chicas de este club, cuyos nombres no diré por respeto.")
		elseif cl == 718 then
		updateNatsuki('1','s')
		cw('n', "Es irónico que, incluso en mi zona de confort, ni siquiera puedo hacer que la gente me respete...")
		elseif cl == 719 then
		updateNatsuki('1','u')
		cw('n', "¡Joder, por tu culpa no paro de quejarme!")
		elseif cl == 720 then
		cw('bl', "(¿Y ahora qué he hecho...?)")
		elseif cl == 721 then
		cw('mc', "Si te sirve de consuelo, yo sí te respeto...")
		elseif cl == 722 then
		updateNatsuki('1','h')
		cw('n', "Bueno...")
		elseif cl == 723 then
		cw('n', "Gracias... supongo.")
		elseif cl == 724 then
		updateNatsuki('1','s')
		cw('n', "Pero está más claro que el agua que «respetas» más a Yuri, así que...")
		elseif cl == 725 then
		updateNatsuki('4','2c')
		cw('n', "Lo que sea... Ya hemos compartido los poemas, así que ya puedes irte.")
		elseif cl == 726 then
		poemfinish('n')
		end
	end
end

function ch22_n_end2()
	if cl < 700 then
	scriptJump(700)
	elseif cl == 700 then
	poem('poem_n2b')
	elseif cl == 701 then
	poem_disable(-1)
	style_edited = true
	updateNatsuki('1','g')
	cw('n',player..'...')
	elseif cl == 702 then
		cw('n', "¿Por qué no has venido a leer conmigo hoy?")
	elseif cl == 703 then
	updateNatsuki('1','m')
		cw('n', "Te estaba esperando.")
	elseif cl == 704 then
		cw('n', "Te he estado esperando un buen rato.")
	elseif cl == 705 then
		cw('n', "Era lo único que anhelaba hacer hoy.")
	elseif cl == 706 then
		cw('n', "¿Por qué lo has jodido?")
	elseif cl == 707 then
		cw('n', "¿Te gusta más Yuri?")
	elseif cl == 708 then
	updateNatsuki('1','k')
		cw('n', "Creo que lo mejor para ti es que no te juntes más con ella.")
	elseif cl == 709 then
		cw('n', "¿Me estás escuchando?")
	elseif cl == 710 then
	event_initstart('natsuki_ch22')
	audioUpdate('5_ghost')
		cw('n', "Yuri es una tía que está mal de la cabeza.")
	elseif cl == 711 then
		cw('n', "Cosa que debería ser más que obvia.")
	elseif cl == 712 then
		cw('n', "A partir de ahora, te divertirás solo conmigo.")
	elseif cl == 713 then
		cw('n', "¿Te parece?")
	elseif cl == 714 then
		cw('n', "" .. player .. ", tú no me odias, ¿verdad?")
	elseif cl == 715 then
		cw('n', "¿Me odias?")
	elseif cl == 716 then
	updateNatsuki('ghost1')
		cw('n', "¿Quieres que me vaya a casa llorando?")
	elseif cl == 717 then
		cw('n', "Este club es el único sitio donde me siento segura.")
	elseif cl == 718 then
		cw('n', "No lo estropees.")
	elseif cl == 719 then
		cw('n', "No lo hagas.")
	elseif cl == 720 then
		cw('n', "Por favor.")
	elseif cl == 721 then
		cw('n', "Solo deja de hablarle a Yuri.")
	elseif cl == 722 then
		cw('n', "Y diviértete conmigo.")
	elseif cl == 723 then
		cw('n', "Es todo lo que tengo...")
	elseif cl == 724 then
		cw('n', "Diviértete conmigo.")
	elseif cl == 725 then
	audioUpdate('0')
	updateNatsuki('ghost2')
		cw('n', "¡¡¡DIVIÉRTETE CONMIGO!!")
	elseif cl == 726 then
	style_edited = false
	elseif cl == 727 then
	event_initstart('endscreen','flipped')
	elseif cl == 728 then
	bgUpdate('club')
	poemfinish('n')
	end
end

function ch23_n_bad()
	y_gavecheck()
	if y_gave then
		ch23_n_ygave()
	elseif n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
		if cl == 670 then
		updateNatsuki('5','x')
		cw('n', "No quiero leer otro poema asqueroso basado en Yuri.")
		elseif cl == 671 then
		updateNatsuki('5','s')
		cw('n', "Por eso quiero que leas el mío.")
		elseif cl == 672 then
		cw('n', "Hay una razón para ello.")
		elseif cl == 673 then
		updateNatsuki('5','x')
		cw('n', "Ojalá no tuviera que hacer esto...")
		elseif cl == 674 then
		cw('n', "Pero por desgracia no me queda otra.")
		elseif cl == 675 then
		updateNatsuki('5','h')
		cw('n', "Tú limítate... a leerlo con atención, ¿vale?")
		elseif cl == 676 then
		cw('n', "Después puedes irte.")
		elseif cl >= 677 then
		ch23_n_end()
		end
	elseif n_poemappeal[1] < 0 or n_poemappeal[2] < 0 then
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','c')
		cw('n', "Pfff...")
		elseif cl == 672 then
		cw('n', "Por lo que veo, después de todo este tiempo no has aprendido nada.")
		elseif cl == 673 then
		cw('n', "Si te digo la verdad, no sé ni para qué me hice ilusiones contigo.")
		elseif cl >= 674 then
		ch23_n_bad_shared()
		end
	else
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','r')
		cw('n', "Jolines.")
		elseif cl == 672 then
		cw('n', "Menudo retroceso has pegado.")
		elseif cl == 673 then
		mc "¿Eh?"
		elseif cl == 674 then
		updateNatsuki('2','c')
		cw('n', "Me gustaron mucho más los dos anteriores.")
		elseif cl >= 675 then
		ch23_n_bad_shared()
		end
	end
end
	
function ch23_n_bad_shared()
	if cl < 676 then
	scriptJump(676)
	elseif cl == 676 then
	updateNatsuki('4','2c')
		cw('n', "Está claro que esto es obra de Yuri...")
	elseif cl == 677 then
		cw('n', "No sabía que fueras tan fácil de impresionar.")
	elseif cl == 678 then
		cw('n', "Eso de pasar tanto tiempo con ella en el club...")
	elseif cl == 679 then
		cw('n', "Y ahora esto de intentar imitar su estilo...")
	elseif cl == 680 then
	updateNatsuki('1','s')
		cw('n', "Es estúpido.")
	elseif cl == 681 then
		cw('n', "Al menos Monika sabe apreciar mi escritura...")
	elseif cl == 682 then
	updateNatsuki('1','r')
		cw('n', "Agh.")
	elseif cl == 683 then
	updateNatsuki('1','q')
		cw('n', "Vale, supongo que tengo que compartir mi poema contigo.")
	elseif cl == 684 then
		cw('n', "Me repatea tener que hacer esto.")
	elseif cl == 685 then
		cw('n', "Pero por desgracia no me queda otra.")
	elseif cl == 686 then
	updateNatsuki('1','h')
		cw('n', "Tú limítate... a leerlo con atención, ¿vale?")
	elseif cl == 687 then
		cw('n', "Después, ya te darás el piro.")
	elseif cl >= 688 then
	ch23_n_end()
	end
end

function ch23_n_med()
	y_gavecheck()
	if y_gave then
		ch23_n_ygave()
	elseif n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
		ch23_n_bad()
	elseif n_poemappeal[2] < 0 then
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','k')
		cw('n', "Este está bien.")
		elseif cl == 672 then
		cw('mc', "¿Bien?")
		elseif cl == 673 then
		cw('n', "Sí, al menos este es mejor que el de ayer.")
		elseif cl >= 674 then
		ch23_n_shared()
		end
	else
		if cl == 670 then
		n "..."
		elseif cl == 671 then
		updateNatsuki('2','k')
		cw('n', "Este está bien.")
		elseif cl == 672 then
		cw('mc', "¿Bien?")
		elseif cl == 673 then
		cw('n', "Bueno, sí.")
		elseif cl == 674 then
		cw('n', "Tan bien como el de ayer, supongo.")
		elseif cl >= 675 then
		ch23_n_shared()
		end
	end
end

function ch23_n_good()
	ch23_n_med()
end

function ch23_n_shared()
	if cl < 676 then
	scriptJump(676)
	elseif cl == 676 then
	updateNatsuki('2','c')
		cw('n', "Sigo sin saber cuánto te importa esto de componer, pero lo estás haciendo bien.")
	elseif cl == 677 then
	updateNatsuki('4','r')
		cw('n', "Aunque te pases todo el tiempo pegadito a Yuri...")
	elseif cl == 678 then
	updateNatsuki('4','h')
		cw('n', "Sigo pensando que tener actividades para participar todos es genial.")
	elseif cl == 679 then
	updateNatsuki('4','w')
		cw('n', "¡Así que más te vale seguir trabajando duro!")
	elseif cl == 680 then
		cw('n', "O sea...")
	elseif cl == 681 then
	updateNatsuki('1','h')
		cw('n', "Ya sé que no soy ni la presidenta ni la vicepresidenta...")
	elseif cl == 682 then
		cw('n', "Pero no por eso vayas a decepcionarme, ¿vale?")
	elseif cl == 683 then
	updateNatsuki('1','q')
		cw('n', "Así que, por lo menos léete el mío también.")
	elseif cl == 684 then
		cw('n', "Pero para que quede claro...")
	elseif cl == 685 then
	updateNatsuki('1','h')
		cw('n', "Este poema... significa mucho para mí.")
	elseif cl == 686 then
		cw('n', "Así léelo detenidamente, ¿vale?")
	elseif cl >= 687 then
	ch23_n_end()
	end
end

function ch23_n_ygave()
	if cl == 670 then
	updateNatsuki('1','h')
		cw('n', "¿Cómo?")
	elseif cl == 671 then
		cw('n', "¿Le has dado tu poema a Yuri?")
	elseif cl == 672 then
	updateNatsuki('4','x')
		cw('n', "¡Puaj!")
	elseif cl == 673 then
		cw('n', "¿Qué os traéis vosotros dos?")
	elseif cl == 674 then
	updateNatsuki('1','s')
		cw('n', "Jum...")
	elseif cl == 675 then
		cw('n', "Tampoco es que me apeteciera leerlo ni nada así.")
	elseif cl == 676 then
	updateNatsuki('1','r')
		cw('n', "Es solo que me cabrea que no hayáis pensado en enseñármelo ni nada.")
	elseif cl == 677 then
	updateNatsuki('1','x')
		cw('n', "Agh.")
	elseif cl == 678 then
	updateNatsuki('1','q')
		cw('n', "Vale, supongo que aun así te dejaré ver mi poema.")
	elseif cl == 679 then
		cw('n', "Me repatea tener que hacer esto.")
	elseif cl == 680 then
		cw('n', "Pero por desgracia no me queda otra.")
	elseif cl == 681 then
	updateNatsuki('1','h')
		cw('n', "Tú limítate... a leerlo con atención, ¿vale?")
	elseif cl == 682 then
		cw('n', "Después, ya te darás el piro.")
	elseif cl >= 683 then
	ch23_n_end()
	end
end

function ch23_n_end()
	if cl < 700 then
	scriptJump(700)
	elseif cl == 700 then
	poem('poem_n23')
	elseif cl == 701 then
	scriptJump(702)
	elseif cl == 702 then
	poem_disable(0)
	pause(3)
	elseif cl == 703 then
	style_edited = true
	updateNatsuki('ghost1')
		cw('n', "He cambiado de opinión.")
	elseif cl == 704 then
		cw('n', "Ignora todo lo que has leído.")
	elseif cl == 705 then
		cw('n', "No tiene sentido que siga con esto.")
	elseif cl == 706 then
		cw('n', "Es culpa de Yuri que ella sea tan despreciable.")
	elseif cl == 707 then
		cw('n', "¿Me estás escuchando, " .. player .. "?")
	elseif cl == 708 then
		cw('n', "Si pasaras más tiempo con Monika, desaparecerían todos esos problemas.")
	elseif cl == 709 then
		cw('n', "Yuri y yo somos escoria para una persona tan maravillosa como tú.")
	elseif cl == 710 then
		cw('n', "Solo piensa en Monika a partir de ahora.")
	elseif cl == 711 then
		cw('n', "Solo Monika.")
	elseif cl == 712 then
		event_init('just_monika')
		hideAll()
		cw('bl', "Solo Monika.")
	elseif cl == 713 then
	menutext = 'Solo Monika.'
	choice_enable('dialog')
	elseif cl == 714 then
	if xaload < 3 then event_start('just_monika') end
	audioUpdate('1')
	elseif cl == 715 then
	style_edited = false
	poemfinish('n')
	end
end

function ch21_y_bad()
	ch1_y_bad()
end

function ch21_y_med()
	ch1_y_bad()
end

function ch21_y_good()
	ch1_y_good()
end

function ch22_y_bad()
	ch22_y_med()
end

function ch22_y_med()
	if cl == 670 then
	updateYuri('2','b')
		cw('y', "Lo esperaba con ansias...")
	elseif cl == 671 then
		cw('y', "Veamos qué has compuesto para hoy.")
	elseif cl == 672 then
	updateYuri('3','m')
	y "..."
	elseif cl == 673 then
		cw('bl', "Yuri sonríe y coge aire.")
	elseif cl == 674 then
		cw('y', "Solo con cogerlo soy feliz.")
	elseif cl == 675 then
	mc "¿...?"
	elseif cl == 676 then
	updateYuri('3','p')
		cw('y', "Ah, quería decir...")
	elseif cl == 677 then
		cw('y', "¡Que el poema te ha quedado genial!")
	elseif cl == 678 then
	updateYuri('3','o')
		cw('y', "Es, ah...")
	elseif cl == 679 then
	updateYuri('2','q')
		cw('y', "Bueno, hay cosas que podrías pulir...")
	elseif cl == 680 then
		cw('y', "Pero eso no importa demasiado.")
	elseif cl == 681 then
	updateYuri('2','s')
		cw('y', "Siento que compongas lo que compongas es un tesoro.")
	elseif cl == 682 then
	updateYuri('2','d')
		cw('y', "Ja, ja, ja...")
	elseif cl == 683 then
	updateYuri('2','o')
		cw('y', "Eso ha sonado un poco raro...")
	elseif cl == 684 then
		cw('y', "Co-corramos un tupido velo...")
	elseif cl == 685 then
	updateYuri('2','t')
		cw('y', "Aquí tienes mi poema.")
	elseif cl == 686 then
		cw('y', "No tiene por qué gustarte ni nada...")
	elseif cl >= 687 then
	ch22_y_end()
	end
end

function ch22_y_good()
	if y_poemappeal[1] < 1 then
		if cl == 670 then
		updateYuri('2','b')
		cw('y', "Lo esperaba con ansias...")
		elseif cl == 671 then
		cw('y', "Veamos qué has compuesto para hoy.")
		elseif cl == 672 then
		updateYuri('2','e')
		y "..."
		elseif cl == 673 then
		cw('y', "...")
		elseif cl == 674 then
		cw('bl', "Yuri se queda mirando al poema ojiplática.")
		elseif cl == 675 then
		cw('mc', "¿Te... gusta?")
		elseif cl == 676 then
		cw('y', "" .. player .. "...")
		elseif cl == 677 then
		cw('y', "¿Cómo lo has comprendido tan rápido?")
		elseif cl >= 678 then
		ch22_y_good_shared()
		end
	else
		if cl == 670 then
		updateYuri('2','b')
		cw('y', "Lo esperaba con ansias...")
		elseif cl == 671 then
		cw('y', "Veamos qué has compuesto para hoy.")
		elseif cl == 672 then
		updateYuri('2','e')
		y "..."
		elseif cl == 673 then
		cw('y', "...")
		elseif cl == 674 then
		cw('bl', "Yuri se queda mirando al poema ojiplática.")
		elseif cl == 675 then
		cw('mc', "¿Te... gusta?")
		elseif cl == 676 then
		cw('y',player.."...")
		elseif cl == 677 then
		updateYuri('2','t')
		cw('y', "Creo que este es incluso mejor que el de ayer...")
		elseif cl == 678 then
		cw('y', "¿Cómo has comprendido esto tan rápido?")
		elseif cl >= 679 then
		ch22_y_good_shared()
		end
	end
end

function ch22_y_good_shared()
	if cl < 680 then
	scriptJump(680)
	elseif cl == 680 then
	updateYuri('2','v')
		cw('y', "Ayer mismo te estaba diciendo qué técnicas podrías practicar...")
	elseif cl == 681 then
		cw('mc', "Quizás es por eso...")
	elseif cl == 682 then
		cw('mc', "Has hecho un buen trabajo explicándolo.")
	elseif cl == 683 then
		cw('mc', "Quería darle mucho más simbolismo.")
	elseif cl == 684 then
	updateYuri('4','b2')
		cw('bl', "Yuri traga saliva.")
	elseif cl == 685 then
		cw('bl', "Hasta sus manos parecen sudorosas.")
	elseif cl == 686 then
	updateYuri('4','e2')
		cw('y', "A-ah...")
	elseif cl == 687 then
		cw('y', "Me hace tan feliz...")
	elseif cl == 688 then
	updateYuri('3','y5')
		cw('y', "¡Es increíble sentirse valorada, " .. player .. "!")
	elseif cl == 689 then
		cw('y', "Todo lo que compones es un tesoro para mí.")
	elseif cl == 690 then
	updateYuri('3','m')
		cw('y', "Mi corazón se acelera con solo sostenerlo...")
	elseif cl == 691 then
	updateYuri('3','q')
		cw('y', "Ja, ja, ja.")
	elseif cl == 692 then
		cw('y', "Quiero componer un poema sobre este sentimiento...")
	elseif cl == 693 then
	updateYuri('3','y6')
		cw('y', "¿Está mal, " .. player .. "?")
	elseif cl == 694 then
		cw('y', "No estoy siendo rara, ¿verdad?")
	elseif cl == 695 then
	updateYuri('3','s')
		cw('y', "M-me está costando más de lo normal ocultar mis sentimientos...")
	elseif cl == 696 then
	updateYuri('3','m')
		cw('y', "Estoy algo avergonzada.")
	elseif cl == 697 then
	updateYuri('3','y6')
		cw('y', "Pero ahora, lo que quiero es que tú también leas mi poema.")
	elseif cl == 698 then
	updateYuri('3','y5')
		cw('y', "¿Te parece?")
	elseif cl >= 699 then
	ch22_y_end()
	end
end

function ch22_y_end()
	if cl < 700 then
	scriptJump(700)
	elseif cl == 700 then
	yuri_2 = true
	poem('poem_y22')
	elseif cl == 701 then
	scriptJump(702)
	elseif cl == 702 then
	poem_disable(0)
	updateYuri('2','q')
		cw('y', "Ja, ja, ja...")
	elseif cl == 703 then
		cw('y', "En verdad no importa de qué trata.")
	elseif cl == 704 then
		cw('y', "Mi mente ha estado un poco hiperactiva últimamente, así que tuve que componerlo con tu bolígrafo.")
	elseif cl == 705 then
	updateYuri('2','o')
		cw('y', "Ah...")
	elseif cl == 706 then
	updateYuri('2','q')
		cw('y', "Eso es... u-un bolígrafo que se cayó ayer de tu mochila, así que me lo llevé para mantenerlo a salvo y...")
	elseif cl == 707 then
		cw('y', "Yo, esto...")
	elseif cl == 708 then
	updateYuri('2','y6')
		cw('y', "Es solo que... me gusta mucho... la forma... en la que escribe.")
	elseif cl == 709 then
		cw('y', "Así que compuse... este poema... con ese bolígrafo.")
	elseif cl == 710 then
		cw('y', "Y ahora lo estás tocando...")
	elseif cl == 711 then
	updateYuri('2','y5')
		cw('y', "Ja, ja, ja.")
	elseif cl == 712 then
	updateYuri('3','p')
		cw('y', "¡E-estoy bien!")
	elseif cl == 713 then
	updateYuri('3','o')
		cw('y', "Qué acabo de...")
	elseif cl == 714 then
	y "..."
	elseif cl == 715 then
	updateYuri('4','c2')
		cw('y', "¿Podemos... fingir que esta conversación no ha ocurrido?")
	elseif cl == 716 then
		cw('y', "Si quieres... te puedes quedar con el poema.")
	elseif cl == 717 then
	yuri_2 = false
	poemfinish('y')
	end
end

function ch23_y_bad()
	ch23_y_good()
end

function ch23_y_med()
	ch23_y_good()
end

function ch23_y_good()
	if cl == 670 then
	updateYuri('1','d')
		cw('y', "Por fin...")
	poemwinner = {'','',''}
	elseif cl == 671 then
	updateYuri('3','y5')
		cw('y', "Ja, ja, ja...")
	elseif cl == 672 then
	updateYuri('3','m')
		cw('bl', "Yuri pone mi poema en su cara y respira hondo.")
	elseif cl == 673 then
	updateYuri('3','y6')
		cw('y', "Me encanta.")
	elseif cl == 674 then
		cw('y', "Me encanta completamente.")
	elseif cl == 675 then
	updateYuri('3','y5')
		cw('y', "" .. player .. ", quiero llevármelo a casa.")
	elseif cl == 676 then
		cw('y', "¿Me dejas quedármelo?")
	elseif cl == 677 then
		cw('y', "¿Porfa?")
	elseif cl == 678 then
		cw('mc', "Claro, me da igual...")
	elseif cl == 679 then
	updateYuri('2','y5')
		cw('y', "Ja, ja, ja, eres demasiado bueno conmigo, " .. player .. "...")
	elseif cl == 680 then
		cw('y', "No he conocido a nadie tan amable como tú.")
	elseif cl == 681 then
	updateYuri('2','y6')
		cw('y', "Podría morirme...")
	elseif cl == 682 then
	updateYuri('3','y5')
		cw('y', "¡N-no va en serio, pero...!")
	elseif cl == 683 then
		cw('y', "Es que no sé cómo describirlo.")
	elseif cl == 684 then
		cw('y', "No pasa nada por sentirse así, ¿no?")
	elseif cl == 685 then
	y_timer = y_timer + dt
	if y_timer > 0.4 and y_timer < 0.43 then
		xaload = 0
		updateYuri('3','y6')
	else
		updateYuri('3','y4')
	end
		cw('y', "No está mal, ¿no?")
	elseif cl == 686 then
		cw('bl', "Yuri acerca mi poema a su pecho.")
	elseif cl == 687 then
	updateYuri('3','m')
		cw('y', "Voy a llevármelo a casa y guardarlo en mi habitación.")
	elseif cl == 688 then
		cw('y', "Espero que te haga sentir bien sabiendo que lo tengo yo.")
	elseif cl == 689 then
	updateYuri('3','y5')
		cw('y', "¡Lo voy a cuidar mucho!")
	elseif cl == 690 then
	style_edited = true
	updateYuri('3','y6')
		cw('y', "Incluso me tocaré una y otra vez mientras lo lea.")
	elseif cl == 691 then
		cw('y', "Y me cortaré con su papel para que tus aceites corporales entren a mi riego sanguíneo.")
	elseif cl == 692 then
	updateYuri('3','y1')
		cw('y', "Ja, ja, ja, ja, ja, ja, ja, ja, ja.")
	elseif cl == 693 then
	style_edited = false
	updateYuri('2','s')
		cw('y', "Tú también puedes quedarte mi poema.")
	elseif cl == 694 then
		cw('y', "De hecho, tras leerlo, estoy segura de que te lo querrás quedar.")
	elseif cl == 695 then
	updateYuri('2','y6')
		cw('y', "Toma. No puedo esperar más.")
	elseif cl == 696 then
	updateYuri('2','y5')
		cw('y', "¡Venga! ¡Léelo!")
	
	--ch23_y_end
	elseif cl == 697 then
	event_initstart('show_darkred','')
	yuri_3 = true
	poem('poem_y23')
	elseif cl == 700 then
	poem_disable(-1)
	updateYuri('eyes1','',0)
		cw('y', "¿Te gusta?")
	elseif cl == 701 then
		cw('y', "¡Lo he compuesto para ti!")
	elseif cl == 702 then
	updateYuri('1','b',80)
	cw('y',"En el caso de que no supieras decirme, el poema trata de "..gtext80)
	elseif cl == 703 then
	updateYuri('1','y6')
		cw('y', "Y lo más importante, lo he adornado con mi perfume.")
	elseif cl == 704 then
		cw('y', "¿Ves? ¿A que soy la persona más encantadora del club?")
	elseif cl == 705 then
	sfxplay('glitch2')
	updateYuri('glitch2')
	pause(0.25)
	elseif cl == 706 then
	event_end()
	audioUpdate('5')
	updateYuri('3','y2')
	y "..."
	elseif cl == 707 then
	updateYuri('4','d2')
		cw('y', "Yo...")
	elseif cl == 708 then
		cw('y', "Creo... que voy a vomitar.")
	elseif cl == 709 then
	hideYuri()
	pause(1)
	elseif cl == 710 then
	yuri_3 = false
	poemfinish('y')
	end
end
	

function ch21_m_start()
	if cl == 670 then
	updateMonika('1','b')
		cw('m', "¡Hola, " .. player .. "!")
	elseif cl == 671 then
		cw('m', "¿Te lo estás pasando bien?")
	elseif cl == 672 then
		cw('mc', "Ah, sí.")
	elseif cl == 673 then
	updateMonika('1','k')
		cw('m', "¡Genial! ¡Me alegro!")
	elseif cl == 674 then
	updateMonika('4','a')
		cw('m', "Por cierto, ya que eres nuevo y tal...")
	elseif cl == 675 then
		cw('m', "Si tienes alguna sugerencia para el club, como actividades nuevas o cosas que podamos mejorar...")
	elseif cl == 676 then
	updateMonika('4','b')
		cw('m', "¡Soy toda oídos!")
	elseif cl == 677 then
		cw('m', "Que no te dé miedo decir nada, ¿vale?")
	elseif cl == 678 then
		updateMonika('4','a')
		cw('mc', "Muy bien, lo tendré en cuenta.")
	elseif cl == 679 then
		cw('bl', "Por supuesto que me dará miedo decir algo. Lo mejor será que me deje llevar hasta que me asiente en el club.")
	elseif cl == 680 then
	updateMonika('1','a')
		cw('m', "Bueno...")
	elseif cl == 681 then
		cw('m', "¿Quieres enseñarme tu poema?")
	elseif cl == 682 then
		cw('mc', "Me da un poco de vergüenza, pero supongo que tengo que hacerlo.")
	elseif cl == 683 then
	updateMonika('5a')
		cw('m', "¡Ja, ja, ja, ja!")
	elseif cl == 684 then
		cw('m', "¡No te preocupes, " .. player .. "!")
	elseif cl == 685 then
		cw('m', "A todos nos da vergüenza, ¿sabes?")
	elseif cl == 686 then
		cw('m', "Pero es ese tipo de vergüenza que terminas superando.")
	elseif cl == 687 then
		cw('mc', "Sí, tienes razón.")
	elseif cl == 688 then
		cw('bl', "Le doy mi poema a Monika.")
	elseif cl == 689 then
	updateMonika('2','a')
		cw('m', "¡Mmm!")
	elseif cl >= 690 then
	m_eval()
	end
end

function ch21_m_end()
	if cl == 730 then
	updateMonika('1','a')
		cw('m', "Bueno, ¿quieres leer mi poema?")
	elseif cl == 731 then
	updateMonika('1','e')
		cw('m', "No te preocupes, no se me da tan bien...")
	elseif cl == 732 then
		cw('mc', "Pareces muy segura para estar diciendo que no se te da tan bien.")
	elseif cl == 733 then
	updateMonika('1','j')
		cw('m', "Bueno, eso es porque tengo que parecer segura.")
	elseif cl == 734 then
	updateMonika('1','b')
		cw('m', "Pero no significa que lo sea siempre, ¿sabes?")
	elseif cl == 735 then
		cw('mc', "Ya veo...")
	elseif cl == 736 then
		cw('mc', "Bueno, vamos a leerlo.")
	elseif cl == 737 then
	poem('poem_m21')
	elseif cl == 738 then
	scriptJump(739)
	elseif cl >= 739 then
	ch1_m_end2()
	end
end

function ch22_m_start()
	if appeal.y < 2 then
		if cl == 670 then
		updateMonika('1','b')
		cw('m', "¡Hola de nuevo, " .. player .. "!")
		elseif cl == 671 then
		cw('m', "¿Cómo se te está dando componer?")
		elseif cl == 672 then
		cw('mc', "Bien, supongo...")
		elseif cl == 673 then
		updateMonika('2','k')
		cw('m', "Me vale.")
		elseif cl == 674 then
		updateMonika('2','b')
		cw('m', "¡Mientras no me digas que te va mal!")
		elseif cl == 675 then
		updateMonika('2','a')
		cw('m', "Me alegra que te estés aplicando.")
		elseif cl == 676 then
		cw('m', "¡Quizá compongas una obra maestra dentro de nada!")
		elseif cl == 677 then
		cw('mc', "Ja, ja, ja. No contaría con ello...")
		elseif cl == 678 then
		updateMonika('2','a')
		cw('m', "¡Nunca se sabe!")
		elseif cl == 679 then
		cw('m', "¿Quieres enseñarme tu poema?")
		elseif cl == 680 then
		cw('mc', "Claro, aquí tienes.")
		elseif cl == 681 then
		cw('bl', "Le doy mi poema a Monika.")
		elseif cl == 682 then
		m "..."
		elseif cl == 683 then
		cw('m', "¡Muy bien!")
		elseif cl >= 684 then
		m2_yuri_1()
		end
	else
		m2_yuri_2()
	end
end

function ch22_m_end()
	if cl == 730 then
	updateMonika('1','a')
		cw('m', "Pero aún así...")
	elseif cl == 731 then
		cw('m', "¿Quieres leer mi poema ahora?")
	elseif cl == 732 then
		cw('m', "Me gusta cómo me ha quedado este, así que espero que a ti también.")
	elseif cl == 733 then
	poem('poem_m22')
	elseif cl == 734 then
	scriptJump(737)
	elseif cl == 737 then
	poem_disable()
	audioUpdate('0')
	pause(2.5)
	elseif cl == 738 then
	audioUpdate('5')
	updateMonika('5a')
		cw('m', "Perdona, sé que es algo abstracto.")
	elseif cl == 739 then
		cw('m', "Solo estaba intentando... esto...")
	elseif cl == 740 then
	updateMonika('1','r')
		cw('m', "Bueno, dejémoslo.")
	elseif cl == 741 then
		cw('m', "No tiene sentido intentar explicarlo.")
	elseif cl == 742 then
	updateMonika('1','i')
		cw('m', "Bueno...")
	elseif cl == 743 then
	updateMonika('3','b')
		cw('m', "¡Aquí viene el superconsejito del día!")
	elseif cl == 744 then
		cw('m', "A veces, puedes encontrarte situaciones la mar de duras...")
	elseif cl == 745 then
		cw('m', "Cuando eso ocurra, ¡no olvides guardar la partida!")
	elseif cl == 746 then
	updateMonika('3','k')
		cw('m', "Nunca se sabe cuando... esto...")
	elseif cl == 747 then
	updateMonika('3','i')
		cw('m', "¿Con quién estoy hablando?")
	elseif cl == 748 then
		cw('m', "¿Me escuchas?")
	elseif cl == 749 then
	updateMonika('3','g')
		cw('m', "Dime si puedes escucharme.")
	elseif cl == 750 then
		cw('m', "Lo que sea.")
	elseif cl == 751 then
	menutext = "Por favor, ayúdame."
	choice_enable('dialog')
	elseif cl == 752 then
	updateMonika('3','k')
		cw('m', "¡Y ese es el superconsejito del día!")
	elseif cl == 753 then
		cw('m', "Gracias por tu atención~")
	elseif cl == 754 then
	poemfinish('m')
	end
end

function ch23_m_start()
	if appeal.y >= 3 then
		if cl == 670 then
		audioUpdate('0')
		updateMonika('1','i')
		cw('m', "Luego no digas que no te avisé, " .. player .. ".")
		elseif cl == 671 then
		poemfinish('m')
		end
	elseif appeal.y < 3 then
		m2_yuri_2()
	end
end

function ch23_m_end()
	y_gavecheck()
	if cl == 730 then
		updateMonika('1','a')
		cw('m', "Bueno...")
	elseif cl == 731 then
		if y_gave then
			updateMonika('1','m')
		cw('m', "Supongo que no tendremos que preocuparnos por tu poema...")
		else
			scriptJump(736)
		end
	elseif cl == 732 then
		cw('m', "Aunque Yuri podría haber tenido la amabilidad de compartirlo antes de quedárselo.")
	elseif cl == 733 then
		updateMonika('1','r')
		cw('m', "Bueno, da igual.")
	elseif cl == 734 then
		cw('m', "Si eso le hace feliz, adelante.")
	elseif cl == 735 then
		updateMonika('1','a')
		cw('m', "En cuanto a mí...")
	elseif cl == 736 then
		updateMonika('1','e')
		cw('m', "He trabajado mucho... muchísimo en este poema, así que...")
	elseif cl == 737 then
		cw('m', "Espero que sea, em, eficaz.")
	elseif cl == 738 then
		updateMonika('1','r')
		cw('m', "Allá va...")
		event_init('m_ch23ex')
		persistent.chr.s = 6
		if xaload == 0 then
			savepersistent()
		end
	elseif cl == 739 then
		if xaload < 3 then event_start('m_ch23ex') end
		audioUpdate('0')
	elseif cl == 740 then
		cw('m', "¡Cielos! ¡Qué susto me he pegado!")
	elseif cl == 741 then
		cw('m', "Mmm...")
	elseif cl == 742 then
		updateMonika('1','m')
		cw('m', "Bueno, supongo que me equivoqué «componiendo» este poema.")
	elseif cl == 743 then
		cw('m', "Solo intentaba...")
	elseif cl == 744 then
		updateMonika('1','i')
		cw('m', "Da igual.")
	elseif cl == 745 then
		cw('m', "Sigamos...")
	elseif cl == 746 then
		event_end('m_ch23ex')
		poemfinish('m')
	end
end

function m2_natsuki_1()
	if cl == 692 then
	updateMonika('2','b')
		cw('m', "¡Me encanta, " .. player .. "!")
	elseif cl == 693 then
		cw('mc', "¿De verdad?...")
	elseif cl == 694 then
	updateMonika('2','e')
		cw('m', "Es mucho más adorable de lo que me esperaba.")
	elseif cl == 695 then
	updateMonika('2','k')
		cw('m', "¡Ja, ja, ja, ja!")
	elseif cl == 696 then
		cw('mc', "Oh, vaya...")
	elseif cl == 697 then
	updateMonika('1','b')
		cw('m', "¡No, no!")
	elseif cl == 698 then
		cw('m', "Me recuerda un poco a algo que escribiría Natsuki.")
	elseif cl == 699 then
		cw('m', "Y es una buena escritora.")
	elseif cl == 700 then
	updateMonika('5a')
		cw('m', "¡Así que tómate eso como un halago!")
	elseif cl == 701 then
		cw('mc', "Ja, ja, ja...")
	elseif cl == 702 then
		cw('mc', "Si tú lo dices.")
	elseif cl == 703 then
		cw('m', "¡Sip!")
	elseif cl == 704 then
	updateMonika('3','b')
		cw('m', "Si te interesa Natsuki, lleva siempre contigo algo para picar.")
	elseif cl == 705 then
		cw('m', "Se aferrará a ti como un cachorrito.")
	elseif cl == 706 then
	updateMonika('3','k')
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 707 then
	updateMonika('1','a')
		cw('m', "Su padre no le da dinero para el almuerzo ni le deja comida en la casa, así que a menudo está quisquillosa...")
	elseif cl == 708 then
		cw('m', "Pero hay veces que se queda sin energía y le da un bajón.")
	elseif cl == 709 then
		cw('m', "Como antes.")
	elseif cl == 710 then
	updateMonika('2','d')
		cw('m', "Es solo una suposición, pero creo que es tan bajita porque su desnutrición interfiere con su crecimiento...")
	elseif cl == 711 then
	updateMonika('2','b')
		cw('m', "Pero bueno, a algunos les van las bajitas, ¿sabes?")
	elseif cl == 712 then
	updateMonika('5a')
		cw('m', "Perdona... ¡intentaba ver el lado bueno!")
	elseif cl >= 713 then
	m_end()
	end
end

function m2_yuri_1()
	if cl < 692 then
	scriptJump(692)
	elseif cl == 692 then
	updateMonika('1','a')
		cw('m', "¡Buen trabajo, " .. player .. "!")
	elseif cl == 693 then
		cw('m', "Mi cabeza decía «oooh» mientras lo leía.")
	elseif cl == 694 then
	updateMonika('1','j')
		cw('m', "¡Es muy metafórico!")
	elseif cl == 695 then
	updateMonika('1','a')
		cw('m', "No sé por qué, pero no me imaginaba que se te fuera a ocurrir algo tan profundo.")
	elseif cl == 696 then
	updateMonika('3','b')
		cw('m', "¡Supongo que te he subestimado!")
	elseif cl == 697 then
		cw('mc', "Me es más fácil mantener las expectativas bajas con todo el mundo.")
	elseif cl == 698 then
		cw('mc', "De esa forma, se nota cuando le echo ganas.")
	elseif cl == 699 then
	updateMonika('5a')
		cw('m', "¡Ja, ja, ja! ¡Eso no es justo!")
	elseif cl == 700 then
		cw('m', "Pero bueno, supongo que ha funcionado.")
	elseif cl == 701 then
	updateMonika('2','a')
		cw('m', "Sabes que a Yuri le gustan este tipo de poemas, ¿no?")
	elseif cl == 702 then
		cw('m', "Poemas llenos de imágenes y simbolismo.")
	elseif cl == 703 then
	updateMonika('2','d')
		cw('m', "A veces, me da la sensación de que Yuri está totalmente desconectada de la realidad.")
	elseif cl == 704 then
		cw('m', "No lo digo como algo malo, ¿eh?")
	elseif cl == 705 then
	updateMonika('2','a')
		cw('m', "Pero a veces, me da la impresión de que se ha rendido con la gente.")
	elseif cl == 706 then
		cw('m', "Pasa tanto tiempo a sus cosas, que seguramente le parezca hasta más interesante...")
	elseif cl == 707 then
	updateMonika('2','b')
		cw('m', "Es por eso mismo, que cuando la tratas con amabilidad se pone tan feliz.")
	elseif cl == 708 then
		cw('m', "No creo que esté acostumbrada a que la traten así.")
	elseif cl == 709 then
	updateMonika('2','j')
		cw('m', "Debe de estar desesperada por un poco de interacción social, así que no le culpes por ser tan directa.")
	elseif cl == 710 then
	updateMonika('2','d')
		cw('m', "Como antes...")
	elseif cl == 711 then
		cw('m', "Creo que si la estimulan demasiado, se va y busca un sitio en el que estar sola un rato.")
	elseif cl == 712 then
		cw('bl', "De repente, la puerta se abre.")
	elseif cl == 713 then
	updateMonika('2','b')
		cw('m', "¡Yuri!")
	elseif cl == 714 then
	updateMonika('2','a')
	updateYuri('1','s',-40)
		cw('y', "He vuelto...")
	elseif cl == 715 then
		cw('y', "¿Me he perdido algo?")
	elseif cl == 716 then
	updateMonika('2','a')
		cw('m', "No mucho...")
	elseif cl == 717 then
		cw('m', "Bueno, ya hemos empezado a enseñar los poemas.")
	elseif cl == 718 then
	updateYuri('2','t')
	y "¿Eh?"
	elseif cl == 719 then
		cw('y', "¿Ya?")
	elseif cl == 720 then
	updateYuri('2','v')
		cw('y', "Pe-perdón por llegar tan tarde...")
	elseif cl == 721 then
	updateMonika('2','j')
		cw('m', "¡No tienes por qué disculparte!")
	elseif cl == 722 then
	updateMonika('2','a')
		cw('m', "Todavía hay tiempo de sobra, así que me alegra que te hayas tomado el tiempo que necesitases.")
	elseif cl == 723 then
	updateYuri('1','s')
		cw('y', "Vale...")
	elseif cl == 724 then
		cw('y', "Gracias, Monika.")
	elseif cl == 725 then
		cw('y', "Supongo que debería ir a por mi poema.")
	elseif cl == 726 then
	hideAll()
	scriptJump(727)
	table.insert(choices, 'Yuri')
	elseif cl >= 727 then
	m_end()
	end
end

function m2_yuri_2()
	if cl == 670 then
	updateMonika('1','i')
		cw('m', "" .. player .. ", creo que antes viste algo que no deberías.")
	elseif cl == 671 then
		cw('m', "No quería decirte esto, pero no me queda otra.")
	elseif cl == 672 then
	updateMonika('1','r')
		cw('m', "Creo que es peligroso que pases tanto tiempo con Yuri.")
	elseif cl == 673 then
	updateMonika('1','i')
		cw('m', "No sé por qué, pero cuando está contigo tiene los nervios a flor de piel...")
	elseif cl == 674 then
	updateMonika('3','d')
		cw('m', "Lo cual no es un problema como tal.")
	elseif cl == 675 then
		cw('m', "Pero cuando se emociona demasiado, se esconde en algún sitio y se corta con una navaja de bolsillo.")
	elseif cl == 676 then
	updateMonika('2','e')
		cw('m', "¿No es algo retorcido?")
	elseif cl == 677 then
		cw('m', "Hasta se trae uno diferente cada día, como si tuviera una colección o algo...")
	elseif cl == 678 then
	updateMonika('2','d')
		cw('m', "¡Quiero decir, no es porque esté deprimida o algo!")
	elseif cl == 679 then
		cw('m', "Creo que se excita con eso.")
	elseif cl == 680 then
	updateMonika('2','m')
		cw('m', "Puede que, hasta sea algún tipo de fetiche sexual...")
	elseif cl == 681 then
	updateMonika('1','i')
		cw('m', "Pero lo que quiero decir es que le has dado cuerda.")
	elseif cl == 682 then
	updateMonika('1','d')
		cw('m', "¡No quiero decir que sea tu culpa!")
	elseif cl == 683 then
	updateMonika('1','a')
		cw('m', "Pero supongo que es por eso que te lo expliqué todo...")
	elseif cl == 684 then
		cw('m', "Así que piensa en mantener las distancias, por su bien.")
	elseif cl == 685 then
	updateMonika('5a')
		cw('m', "Y mientras tanto, que no te dé corte pasar tiempo conmigo...")
	elseif cl == 686 then
		cw('m', "Para empezar, al menos tengo la cabeza bien amueblada... y sé como tratar a los miembros de mi club.")
	elseif cl >= 687 then
	m_end()
	end
end

function y_gavecheck()
	if xaload <= 1 then
		if choices[1] == 'Yuri' or choices[2] == 'Yuri' or choices[3] == 'Yuri' then y_gave = false
		else y_gave = true
		end
	end
end
