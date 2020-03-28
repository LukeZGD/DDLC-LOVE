function poemresponses()
	if cl == 666 then
		audioUpdate('5')
		--set up menutext
		if poemsread == 0 then
			menutext = "¿A quién debería mostrarle primero mi poema?"
		else
			menutext = "¿A quién debería mostrar ahora mi poema?"
		end

		if menu_enabled ~= true then
			hideAll()
			menu_enable('choice')
		end
		
	elseif cl == 667 or cl == 668 then --first time poem script
		if (chapter == 1 or chapter == 21) and poemsread == 0 then
			if choicepick == tr.names[1] then
                if cl == 667 then cw('bl',"Claramente, me sentiría más cómodo compartiéndolo primero con Sayori..")
                elseif cl == 668 then cw('bl', "Después de todo, es una buena amiga mía.") end
			elseif choicepick == tr.names[2] then
                if cl == 667 then cw('bl',"Ayer le dije a Natsuki que me interesaban sus poemas.")
                elseif cl == 668 then cw('bl',"Lo más justo sería enseñarle el mío primero.") end
            elseif choicepick == tr.names[3] then
                if cl == 667 then cw('bl',"Yuri parece ser la más curtida, así que debería empezar con ella.")
                elseif cl == 668 then cw('bl',"Seguro que su opinión será imparcial.") end
            elseif choicepick == tr.names[4] then
				if cl == 667 then cw('bl',"Debería empezar con Monika.")
				elseif cl == 668 then cw('bl',"Ayer parecía que tenía ganas de leer mi poema, y quiero que sepa que le estoy echando ganas.") end
			end
		elseif chapter > 1 or poemsread > 0 then
			scriptJump(669)
		end
		
	elseif cl >= 669 then
		if choicepick == tr.names[1] then
			poemresponse_sayori()
		elseif choicepick == tr.names[2] then
			poemresponse_natsuki()
		elseif choicepick == tr.names[3] then
			poemresponse_yuri()
		elseif choicepick == tr.names[4] then
			poemresponse_monika()
		end
		
		if cl == 669 then scriptJump(670) end
	end
end

function poemfinish(a)
	local c_remove
	
	if a == 's' then
		readpoem.s = 1
		c_remove = tr.names[1]
	elseif a == 'n' then
		readpoem.n = 1
		c_remove = tr.names[2]
	elseif a == 'y' then
		readpoem.y = 1
		c_remove = tr.names[3]
	elseif a == 'm' then
		readpoem.m = 1
		c_remove = tr.names[4]
	end
	
	for i = 1, #choices do
		if choices[i] == c_remove then table.remove(choices, i) end
	end
	
	poemsread = poemsread + 1
	hideAll()
	if poemsread == 4 or (poemsread == 3 and persistent.ptr == 2) then
		--poem finish, jump to script depending on chapter
		poemsread = -1
		readpoem = {s=0,n=0,y=0,m=0}
		if chapter == 1 then
			scriptJump(900, 'ch1script')
		elseif chapter == 2 then
			scriptJump(1638, 'ch2script')
		elseif chapter == 3 then
			scriptJump(2114, 'ch3script')
		elseif chapter == 21 then
			scriptJump(900, 'ch21script')
		elseif chapter == 22 then
			scriptJump(1446, 'ch22script')
		elseif chapter == 23 then
			scriptJump(1806, 'ch23script')
		end
	else --go back to choices menu
		scriptJump(666, 'poemresponses', 0)
	end
end
	
function poemresponse_sayori()
	if cl <= 669 then
		updateSayori('1','a',80)
	end
	
	poemopinion = "med"
	if s_poemappeal[chapter] < 0 then
		poemopinion = "bad"
	elseif s_poemappeal[chapter] > 0 then
		poemopinion = "good"
	end
	
	loadstring("ch"..chapter.."_s_"..poemopinion.."()")()
end

function poemresponse_natsuki()
    if cl <= 669 then
		updateNatsuki('1','c',80)
	end
	
    poemopinion = "med"
	if persistent.ptr == 0 then
		if n_poemappeal[chapter] < 0 then
			poemopinion = "bad"
		elseif n_poemappeal[chapter] > 0 then
			poemopinion = "good"
		end
	else
		if n_poemappeal[chapter-20] < 0 then
			poemopinion = "bad"
		elseif n_poemappeal[chapter-20] > 0 then
			poemopinion = "good"
		end
	end
	
	loadstring("ch"..chapter.."_n_"..poemopinion.."()")()
end

function poemresponse_yuri()
	if cl <= 669 then
		updateYuri('1','a',80)
	end
	
    poemopinion = "med"
	if persistent.ptr == 0 then
		if y_poemappeal[chapter] < 0 then
			poemopinion = "bad"
		elseif y_poemappeal[chapter] > 0 then
			poemopinion = "good"
		end
	else
		if y_poemappeal[chapter-20] < 0 then
			poemopinion = "bad"
		elseif y_poemappeal[chapter-20] > 0 then
			poemopinion = "good"
		end
	end
	
	loadstring("ch"..chapter.."_y_"..poemopinion.."()")()
end

function poemresponse_monika()
	if cl <= 669 then 
		updateMonika('1','a',80) 
	end
	
	loadstring("ch"..chapter.."_m_start()")()
end

function ch1_y_bad()
	if cl == 670 then
		cw('y', "...")
	elseif cl == 671 then
		cw('y', "Mmm...")
	elseif cl == 672 then
		cw('y',"...")
	elseif cl == 673 then
		cw('bl', "Yuri se queda mirando el poema.")
	elseif cl == 674 then
		cw('bl', "Tras un minuto, seguro que ha tenido tiempo más que de sobra para leerlo.")
	elseif cl == 675 then
		cw('y', "Mmm...")
	elseif cl == 675 then
		cw('y', "¡Oh!")
	elseif cl == 676 then
		updateYuri('3','n')
		cw('y', "¡L-lo siento...!")
	elseif cl == 677 then
		cw('y', "Se me ha olvidado hablar...")
	elseif cl == 678 then
		cw('y', "¡E-ejem!")
	elseif cl == 679 then
		cw('mc', "Tranquila, no te fuerces.")
	elseif cl == 680 then
		updateYuri('2','v')
		cw('y', "No lo hago...")
	elseif cl == 681 then
		cw('y', "Tan solo necesito verbalizar mis pensamientos.")
	elseif cl == 682 then
		cw('y', "Un momento...")
	elseif cl == 683 then
		cw('y', "Vale...")
	elseif cl == 684 then
		updateYuri('1','f')
		cw('y', "Es tu primera vez componiendo un poema, ¿verdad?")
	elseif cl == 685 then
		cw('mc', "Em, sí...")
	elseif cl == 686 then
		cw('mc', "¿Por qué lo preguntas?")
	elseif cl == 687 then
		cw('y', "Solo quería asegurarme.")
	elseif cl == 688 then
		cw('y', "Me lo imaginaba después de leerlo.")
	elseif cl == 689 then
		cw('mc', "Uf, pues sí que es malo.")
	elseif cl == 690 then
		updateYuri('2','p')
		cw('y', "¡¡No!!")
	elseif cl == 691 then
		updateYuri('2','o')
		cw('y', "¿...?")
	elseif cl == 692 then
		updateYuri('4','c2')
		cw('y', "Ejem, lo siento mucho...")
	elseif cl == 693 then
		cw('bl', "Yuri se tapa la cara con las manos.")
	elseif cl == 694 then
		cw('bl', "No puedo evitar notar que ya ha pasado un buen rato y que no hemos llegado a ninguna parte.")
	elseif cl == 695 then
		cw('bl', "Parece que a Yuri le cuesta acostumbrarse a la gente nueva...")
	elseif cl == 696 then
		cw('mc', "Tranquila, no pasa nada.")
	elseif cl == 697 then
		cw('mc', "¿Qué decías?")
	elseif cl == 698 then
		updateYuri('2','u')
		cw('y', "Sí, em...")
	elseif cl >= 699 then
		ch1_y_shared()
	end
end

function ch1_y_med()
	ch1_y_bad()
end

function ch1_y_shared()
	if cl < 705 and cl ~= 666 then
		scriptJump(705)
	elseif cl == 705 then
		updateYuri('1','a')
		cw('y', "Es solo que he notado ciertos patrones habituales en los principiantes.")
	elseif cl == 706 then
		cw('y', "Y tras pasar yo misma por ellos, he aprendido a detectarlos.")
	elseif cl == 707 then
		updateYuri('1','i')
		cw('y', "Creo que el más notable es pensar demasiado en el estilo.")
	elseif cl == 708 then
		cw('y', "Es decir, tienden a elegir un estilo sin considerar la temática del poema y luego los unen.")
	elseif cl == 709 then
		updateYuri('1','a')
		cw('y', "Y como resultado, tanto el estilo como la expresividad se debilitan.")
	elseif cl == 710 then
		cw('bl', "Tras centrarse un poco, Yuri parece otra.")
	elseif cl == 711 then
		cw('bl', "Su tartamudeo ha desaparecido por completo, y, hasta parece una experta.")
	elseif cl == 712 then
		updateYuri('1','k')
		cw('y', "Aunque obviamente, no puedo culparte por ello.")
	elseif cl == 713 then
		cw('y', "Se usan muchas técnicas para componer hasta el más simple de los poemas.")
	elseif cl == 714 then
		updateYuri('1','a')
		cw('y', "No se trata solo de encontrarlas e implementarlas, sino que lo más difícil es hacer que se complementen.")
	elseif cl == 715 then
		cw('y', "Puede llevarte algo de tiempo, pero lo lograrás si practicas, aprendes de los demás y pruebas cosas nuevas.")
	elseif cl == 716 then
		cw('y', "Espero que el resto del club también te haga una crítica constructiva.")
	elseif cl == 717 then
		updateYuri('1','l')
		cw('y', "Aunque Natsuki suele ser algo imparcial...")
	elseif cl == 718 then
		cw('mc', "¿Imparcial? ¿A qué te refieres?")
	elseif cl == 719 then
		updateYuri('2','a')
		cw('y', "P-pues...")
	elseif cl == 720 then
		cw('y', "Bueno...")
	elseif cl == 721 then
		cw('y', "Olvídalo...")
	elseif cl == 722 then
		cw('y', "No debería hablar así de la gente...")
	elseif cl == 723 then
		cw('y', "Lo siento...")
	elseif cl == 724 then
		cw('mc', "No pasa nada.")
	elseif cl == 725 then
		cw('bl', "No sé si se ha disculpado consigo misma, conmigo o con Natsuki.")
	elseif cl == 726 then
		cw('mc', "¿Te importaría dejarme leer ahora tu poema?")
	elseif cl == 727 then
		updateYuri('3','c')
		cw('y', "¡Adelante!")
	elseif cl == 728 then
		cw('y', "Me encantaría compartir contigo el razonamiento que hay tras él...")
	elseif cl == 729 then
		cw('bl', "Yuri sonríe con ilusión, como si se tratara de una oportunidad única para ella.")
	elseif cl == 730 then
		cw('bl', "Lo cual es bastante gracioso...")
	elseif cl == 731 then
		cw('bl', "Después de todo, ¿no estamos en un club de literatura?...")
	elseif cl == 732 then
		poem("poem_y1")
	elseif cl == 733 then
		poem_disable()
		updateYuri('3','t')
		cw('y',"...")
	elseif cl == 734 then
		cw('y', "¡Si-siento tener una letra tan horrible!")
	elseif cl == 735 then
		cw('mc', "¿¿Qué??")
	elseif cl == 736 then
		cw('mc', "No pensaba en eso...")
	elseif cl == 737 then
		updateYuri('2','v')
		cw('y', "Pero has tardado mucho en leerlo...")
	elseif cl == 738 then
		cw('mc', "Oh...")
	elseif cl == 739 then
		cw('mc', "Bueno, es que no suelo leer mucho...")
	elseif cl == 740 then
		cw('mc', "De hecho, tu letra me parece bonita.")
	elseif cl == 741 then
		updateYuri('2','t')
		cw('y', "¿Eh?")
	elseif cl == 742 then
		updateYuri('2','u')
		cw('y', "Qué... alivio...")
	elseif cl == 743 then
		cw('mc', "Ah, y también me ha gustado tu poema.")
	elseif cl == 744 then
		cw('mc', "Aunque sea corto, es muy descriptivo.")
	elseif cl == 745 then
		updateYuri('2','t')
		cw('y', "¿No te ha parecido demasiado corto?")
	elseif cl == 746 then
		cw('y', "Normalmente compongo poemas más largos...")
	elseif cl == 747 then
		cw('mc', "En absoluto.")
	elseif cl == 748 then
		updateYuri('1','m')
		cw('y', "Me... alegra tanto que te haya gustado.")
	elseif cl == 749 then
		cw('y', "Sinceramente...")
	elseif cl == 750 then
		updateYuri('1','a')
		cw('y', "Como era la primera vez que compartíamos nuestros poemas, quería componer uno algo más suave.")
	elseif cl == 751 then
		cw('y', "Algo que fuera «fácil de digerir», ¿sabes?")
	elseif cl == 752 then
		cw('mc', "¿Te gustan los fantasmas, Yuri?")
	elseif cl == 753 then
		updateYuri('1','m')
		cw('y', "Je, je.")
	elseif cl == 754 then
		cw('y', "En realidad, la historia no va sobre fantasmas, " .. player .. ".")
	elseif cl == 755 then
		cw('mc', "¿En serio?")
	elseif cl == 756 then
		cw('mc', "Pues entonces no lo he entendido para nada...")
	elseif cl == 757 then
		updateYuri('1','u')
		cw('y', "Bueno, supongo después de todo, tan solo lo has mirado por encima...")
	elseif cl == 758 then
		cw('y', "Pero recuerda que los poetas suelen expresar sus pensamientos, sentimientos y vivencias en sus obras.")
	elseif cl == 759 then
		updateYuri('1','a')
		cw('y', "Normalmente, hacen mucho más que explicar una simple historia o pintar un cuadro.")
	elseif cl == 760 then
		cw('y', "En este caso, es posible que el tema principal del poema se compare simbólicamente con un fantasma.")
	elseif cl == 761 then
		updateYuri('2','l')
		cw('y', "Vagando por su último lugar de confort, incapaz de pasar página.")
	elseif cl == 762 then
		cw('y', "Y que pronto se quedará sin nada...")
	elseif cl == 763 then
		cw('mc', "Dicho así, suena mucho más solemne...")
    elseif cl == 764 then
		cw('mc', "Ni lo había pensado...")
	elseif cl == 765 then
		cw('mc', "Es impresionante.")
	elseif cl >= 766 then
		if poemopinion == "good" then
			if cl == 766 then
				updateYuri('2','f')
				cw('y',"¿Eh?")
			elseif cl == 767 then
		cw('y', "¡N-no es para tanto! ¡En serio!")
			elseif cl == 768 then
		cw('y', "El tuyo también era impresionante...")
			elseif cl == 769 then
		cw('mc', "Nah...")
			elseif cl == 770 then
		cw('mc', "En cualquier caso, podría aprender un par de cosillas de ti.")
			elseif cl == 771 then
				updateYuri('3','a')
		cw('y', "¿Tú crees?...")
			elseif cl == 772 then
		cw('mc', "Y tanto.")
			elseif cl == 773 then
		cw('y', "Ah...")
			elseif cl == 774 then
				updateYuri('2','s')
		cw('y', "¿Sabes...?")
			elseif cl == 775 then
		cw('y', "Hacer todo esto me tenía de los nervios.")
			elseif cl == 776 then
		cw('y', "Pero al final, me ha gustado.")
			elseif cl == 777 then
		cw('y', "Seguiré esforzándome por ti, " .. player .. ".")
			elseif cl == 778 then
				cw('mc',"Oh...")
			elseif cl == 779 then
		cw('mc', "Yo también.")
			elseif cl == 780 then
				poemfinish('y')
			end
		else
			if cl == 766 then
				updateYuri('1','u')
		cw('y', "No es nada, en serio...")
			elseif cl == 767 then
		cw('y', "Bueno..., me alegra que pienses eso.")
			elseif cl == 768 then
				updateYuri('1','a')
		cw('y', "Aunque, recuerda, que no tardarás mucho en corregir esos detalles.")
			elseif cl == 769 then
		cw('mc', "Sí, quizás tengas razón.")
			elseif cl == 770 then
		cw('mc', "Supongo que tendré que seguir esforzándome.")
			elseif cl == 771 then
		cw('y', "Cuento contigo.")
			elseif cl == 772 then
				poemfinish('y')
			end
		end
	end
end

function ch1_y_good()
	if cl == 670 then
		updateYuri('1','e')
		cw('y',"...")
	elseif cl == 671 then
		cw('bl', "Veo como se le iluminan los ojos a Yuri mientras lee el poema.")
	elseif cl == 672 then
		updateYuri('2','f')
		cw('y', "Excepcional.")
	elseif cl == 673 then
		cw('mc', "¿Eh? ¿Qué has dicho?")
	elseif cl == 674 then
		cw('y',"¿...?")
	elseif cl == 675 then
		updateYuri('1','n')
		cw('y', "¿L-lo he dicho en voz alta?")
	elseif cl == 676 then
		cw('bl', "Al principio se tapa la boca, pero al final se tapa toda la cara.")
	elseif cl == 677 then
		updateYuri('4','c2')
		cw('y', "¡Yo...!")
	elseif cl == 678 then
		cw('y', "Em...")
	elseif cl == 679 then
		cw('y', "(Va a odiarme...)")
	elseif cl == 680 then
		cw('y', "Mmm...")
	elseif cl == 681 then
		cw('mc', "Yuri...")
	elseif cl == 682 then
		updateYuri('4','a2')
		cw('mc', "¿Eh?")
	elseif cl == 683 then
		cw('y', "Eso...")
	elseif cl == 684 then
		updateYuri('2','q')
		cw('y', "Su-supongo que tienes razón...")
	elseif cl == 685 then
		cw('y', "¿Por qué me estoy poniendo tan nerviosa?")
	elseif cl == 686 then
		cw('mc', "Ja, ja, ja.")
	elseif cl == 687 then
		updateYuri('2','l')
		cw('bl', "Yuri respira hondo.")
	elseif cl == 688 then
		cw('y', "Así que...")
	elseif cl == 689 then
		updateYuri('1','a')
		cw('y', "¿Qué experiencia tienes componiendo?")
	elseif cl == 690 then
		cw('y', "Tu uso de las imágenes y metáforas indica que ya tienes algo de experiencia.")
	elseif cl == 691 then
		cw('mc', "¿De verdad?...")
	elseif cl == 692 then
		cw('mc', "Guau, es un gran cumplido viniendo de ti.")
	elseif cl == 693 then
		cw('mc', "En realidad, esta es mi primera vez.")
	elseif cl == 694 then
		updateYuri('1','e')
		cw('y', "¿Eh?")
	elseif cl == 695 then
		cw('bl', "Yuri se me queda mirando y luego vuelve a leer mi poema.")
	elseif cl == 696 then
		updateYuri('2','h')
		cw('y',"...")
	elseif cl == 697 then
		cw('y', "¡Bueno, ya lo sabía!")
	elseif cl == 698 then
		cw('y', "Tan solo quería decir, em...")
	elseif cl == 699 then
		cw('bl', "Yuri se estanca, incapaz de encontrar una excusa.")
	elseif cl == 700 then
		cw('bl', "Repasa las líneas del poema con su dedo como si lo estuviese analizando con más profundidad.")
	elseif cl == 701 then
		updateYuri('2','l')
		cw('y', "Sí...")
	elseif cl == 702 then
		cw('y', "Vale.")
	elseif cl == 703 then
		cw('y', "Es por esto que me he dado cuenta.")
	elseif cl >= 704 then 
		ch1_y_shared()
	end
end

function ch1_n_end()
	if cl < 705 and cl ~= 666 then
		scriptJump(705)
	elseif cl == 705 then
		poem('poem_n1')
	elseif cl == 706 then
		poem_disable()
		updateNatsuki('2','q')
		cw('mc', "Sí...")
	elseif cl == 707 then
		cw('n', "Te dije que no te gustaría.")
	elseif cl == 708 then
		cw('mc', "Me gusta.")
	elseif cl == 709 then
		updateNatsuki('2','h')
		cw('n', "¿Cómo?")
	elseif cl == 710 then
		cw('n', "¡Sé sincero!")
	elseif cl == 711 then
		cw('mc', "Lo soy.")
	elseif cl == 712 then
		cw('mc', "¿Por qué estás tan convencida de que no iba a gustarme?")
	elseif cl == 713 then
		updateNatsuki('5','w')
		cw('n', "Bueno...")
	elseif cl == 714 then
		cw('n', "¡Pues porque...!")
	elseif cl == 715 then
		cw('n', "Todo el instituto piensa que los poemas tienen que ser supersofisticados y tal...")
	elseif cl == 716 then
		updateNatsuki('2','q')
		cw('n', "Por eso la gente no se toma en serio mis poemas.")
	elseif cl == 717 then
		cw('mc', "¿Pero no es ese el propósito de los poemas? ¿Expresar tus sentimientos?")
	elseif cl == 718 then
		cw('mc', "Tu estilo de composición no debería quitarle peso a tu mensaje. ")
	elseif cl == 719 then
		updateNatsuki('1','k')
		cw('n', "¡Sí! ¡Exacto!")
	elseif cl == 720 then
		cw('n', "Me gusta que los poemas sean sencillos pero contundentes.")
	elseif cl == 721 then
		updateNatsuki('1','c')
		cw('n', "Como este.")
	elseif cl == 722 then
		cw('n', "Ver a tu alrededor que todos consiguen sus metas puede resultar muy desmotivador...")
	elseif cl == 723 then
		cw('n', "Así que decidí que el poema tratara sobre eso.")
	elseif cl == 724 then
		cw('mc', "Sí, lo entiendo.")
	elseif cl == 725 then
		updateNatsuki('2','a')
		cw('n', "Y otro punto a favor de los poemas simples es que los juegos de palabras tienen más peso.")
	elseif cl == 726 then
		cw('n', "Como cuando parecía que había preparado una rima para el final pero hice que terminara a propósito en un verso blanco.")
	elseif cl == 727 then
		cw('n', "Eso ayuda a realzar las emociones del último verso.")
	elseif cl == 728 then
		cw('mc', "Ya veo...")
	elseif cl == 729 then
		cw('mc', "Parece que tenía mucho más trabajo detrás del que me esperaba.")
	elseif cl == 730 then
		updateNatsuki('4','y')
		cw('n', "¡Es lo que tiene ser una profesional!")
	elseif cl == 731 then
		cw('n', "Me alegro de que hayas aprendido algo.")
	elseif cl == 732 then
		cw('n', "No te lo esperabas de la más joven del club, ¿eh?")
	elseif cl == 733 then
		cw('mc', "Sí.")
	elseif cl == 734 then
		cw('bl', "Decido seguirle la corriente.")
	elseif cl == 735 then
		cw('bl', "Me da igual la edad que tenga, si Natsuki se siente orgullosa, no voy a chafarle la alegría.")
	elseif cl == 736 then
		poemfinish('n')
	end
end

local n_blackeyeschance = math.random(0,2)

function ch1_n_bad()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then
		if persistent.ptr == 2 and n_blackeyeschance == 0 then
			audioUpdate('0')
			event_initstart('n_blackeyes')
		else
			cw('mc',"¿...?")
		end
	elseif cl == 672 then
		audioUpdate('5')
		updateNatsuki('2','b')
		cw('n', "" .. player .. ", si no te vas a tomar el club en serio, vete a casa.")
	elseif cl == 673 then
		cw('mc', "¿¿Qu-qué??")
	elseif cl == 674 then
		cw('mc', "Qué directa...")
	elseif cl == 675 then
		updateNatsuki('4','2c')
		cw('n', "¿Qué pasa? ¿Pretendes que me trague que te has esforzado lo más mínimo en esto?")
	elseif cl == 676 then
		cw('n', "¿Te crees que soy estúpida?")
	elseif cl == 677 then
		cw('mc', "¡No soy poeta!")
	elseif cl == 678 then
		cw('mc', "Puede que no sea muy bueno, pero me he esforzado.")
	elseif cl == 679 then
		cw('mc', "Todos empezamos por algo, ¿no?")
	elseif cl == 680 then
		cw('mc', "Si tan orgullosa estás de tu primer poema, me encantaría leerlo.")
	elseif cl == 681 then
		updateNatsuki('1','o')
		cw('mc', "¡¡Oh!!")
	elseif cl == 682 then
		cw('mc', "¿Qué? ¿Duele, eh?")
	elseif cl == 683 then
		updateNatsuki('1','r')
		cw('n',"...")
	elseif cl == 684 then
		updateNatsuki('4','q')
		cw('n', "Vale.")
	elseif cl == 685 then
		cw('n', "Bueno, perdona.")
	elseif cl == 686 then
		updateNatsuki('4','c')
		cw('n', "De todas formas ya mejorarás.")
	elseif cl == 687 then
		cw('n', "Te diría qué necesitas mejorar, pero creo que lo mejor será que lo vuelvas a intentar.")
	elseif cl == 688 then
		cw('mc', "Me parece justo...")
	elseif cl == 689 then
		cw('mc', "Bueno, para gustos, colores supongo.")
	elseif cl == 690 then
		updateNatsuki('4','q')
		cw('n', "Bueno, supongo que me toca enseñarte el mío ahora...")
	elseif cl == 691 then
		cw('n', "Conociéndote, seguramente pensarás que es estúpido.")
	elseif cl >= 692 then
		ch1_n_end()
	end
end

function ch1_n_med()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then 
		cw('mc',"¿...?")
	elseif cl == 672 then 
		updateNatsuki('2','k')
		cw('n', "Bueno, es lo que me esperaba de alguien como tú.")
	elseif cl == 673 then 
		cw('mc', "Qué directa...")
	elseif cl == 674 then 
		updateNatsuki('2','c')
		cw('n', "Ay, perdona.")
	elseif cl == 675 then 
		cw('n', "No es que esté mal.")
	elseif cl == 676 then 
		cw('n', "Es solo que no me ha transmitido nada.")
	elseif cl == 677 then
		cw('mc', "Entonces, ¿no es lo suficientemente adorable para tu gusto?")
	elseif cl == 678 then
		updateNatsuki('4','f')
		cw('n', "¿Quieres que te dé una hostia?")
	elseif cl == 679 then
		cw('mc', "Mejor paso...")
	elseif cl == 680 then
		updateNatsuki('2','2b')
		cw('n', "Ay...")
	elseif cl == 681 then 
		updateNatsuki('2','c')
		cw('n', "Bueno, supongo que me toca enseñarte el mío.")
	elseif cl == 682 then 
		updateNatsuki('4','q')
		cw('n', "Pero tampoco creo que te vaya a gustar.")
	elseif cl >= 683 then
		ch1_n_end()
	end
end

function ch1_n_good()
	if cl == 670 then
		cw('n',"...")
	elseif cl == 671 then
		cw('mc',"¿...?")
	elseif cl == 672 then
		updateNatsuki('1','t')
		cw('n', "Vale, ¡empecemos con las cosas que no me han gustado!")
	elseif cl == 673 then
		cw('n', "Lo primero, em...")
	elseif cl == 674 then
		cw('mc',"...")
	elseif cl == 675 then
		cw('bl', "Natsuki vuelve a leer mi poema.")
	elseif cl == 676 then
		updateNatsuki('4','c')
		cw('n',"D-da igual. No me apetece darte mi opinión.")
	elseif cl == 677 then
		cw('mc', "¿Eh? ¿Entonces para que sirve esto de compartirlos?")
	elseif cl == 678 then
		cw('mc', "Lo he escrito a pesar de que podría haber hecho otras cosas.")
	elseif cl == 679 then
		updateNatsuki('4','r')
		cw('n', "Em...")
	elseif cl == 680 then
		cw('mc', "De hecho, ¿te acuerdas de que te dije que quería leer tus poemas?")
	elseif cl == 681 then
		cw('mc', "Es lo que tenía en mente al componer esto.")
	elseif cl == 682 then
		cw('mc', "Quiero que te sientas cómoda para poder enseñarme el tuyo.")
	elseif cl == 683 then
		cw('mc', "Tal y como dijo Monika.")
	elseif cl == 684 then
		updateNatsuki('4','x')
		cw('n', "¡Eeem...!")
	elseif cl == 685 then
		updateNatsuki('1','h')
		cw('n', "¡Pues me sentiría más cómoda si el tuyo fuese una bazofia!")
	elseif cl == 686 then
		updateNatsuki('1','w')
		cw('n', "Tendrías que haberme enseñado un poema que me haga pensar «¡Ja, no es tan bueno! ¡Déjame que te muestre lo que es la literatura de verdad!»")
	elseif cl == 687 then
		updateNatsuki('1','h')
		cw('n', "¡Y tú vas y lo arruinas todo!")
	elseif cl == 688 then
		cw('n', "¡Estarás contento!")
	elseif cl == 689 then
		cw('mc',"...")
	elseif cl == 690 then
		cw('mc', "Entonces, dicho de otra forma... ¿te ha gustado?")
	elseif cl == 691 then
		updateNatsuki('1','o')
		cw('n', "Agh...")
	elseif cl == 692 then
		cw('bl', "Natsuki se atraganta al intentar protestar.")
	elseif cl == 693 then
		updateNatsuki('1','x')
		cw('n', "Uuuf... ¡Serás...!")
	elseif cl == 694 then
		cw('n', "Tú... tú... no entiendes nada, ¿no?")
	elseif cl == 695 then
		updateNatsuki('5','q')
		cw('n', "¡Ya te he dicho que no tienes que ir por ahí gritándolo a los cuatro vientos como si fueras el ombligo del mundo!")
	elseif cl == 696 then
		cw('mc', "Estoy bastante seguro de que no has dicho eso en ningún momento...")
	elseif cl == 697 then
		cw('bl', "Lo digo por lo bajini.")
	elseif cl == 698 then
		cw('bl', "Natsuki debe de odiarme o algo.")
	elseif cl == 699 then
		cw('bl', "No sé si es bueno o malo que le haya gustado mi poema.")
	elseif cl == 700 then
		cw('mc', "En cualquier caso, todavía me tienes que enseñar el tuyo, ¿verdad?")
	elseif cl == 701 then
		updateNatsuki('5','s')
		cw('n', "Grr... Está bien, supongo.")
	elseif cl == 702 then
		cw('n', "Pero solo porque Monika me iba a obligar igualmente.")
	elseif cl >= 703 then
		ch1_n_end()
	end
end

function ch1_m_end2()
	if cl < 750 then
		scriptJump(750)
	elseif cl == 750 then
		poem_disable()
		updateMonika('1','a')
		cw('m', "Bueno, ¿qué opinas?")
	elseif cl == 751 then
		cw('mc', "Jumm... es bastante... libre, si es así como se llaman.")
	elseif cl == 752 then
		cw('mc', "Lo siento, no soy el más adecuado para opinar sobre esto...")
	elseif cl == 753 then
		updateMonika('2','e')
		cw('m', "Ja, ja, ja. No pasa nada.")
	elseif cl == 754 then
		updateMonika('2','b')
		cw('m', "Sí, este estilo se ha puesto de moda últimamente.")
	elseif cl == 755 then
		cw('m', "Es porque muchos poemas le ponen más énfasis al ritmo que tengan.")
	elseif cl == 756 then
		updateMonika('2','a')
		cw('m', "Cuando se recita suena con más fuerza.")
	elseif cl == 757 then
		cw('mc', "¿En qué te inspiraste para este?")
	elseif cl == 758 then
		cw('m',"Ah...")
	elseif cl == 759 then
		updateMonika('3','d')
		cw('m', "Bueno, no sé si podré explicarlo bien...")
	elseif cl == 760 then
		updateMonika('3','a')
		cw('m', "Se podría decir que hace poco tuve algo parecido a una epifanía.")
	elseif cl == 761 then
		cw('m', "Y eso ha estado influenciando mis poemas.")
	elseif cl == 762 then
		cw('mc', "¿Una epifanía?")
	elseif cl == 763 then
		updateMonika('1','a')
		cw('mc', "Sí.")
	elseif cl == 764 then
		cw('m', "No me siento muy cómoda hablando de temas tan profundos, ya que es algo personal...")
	elseif cl == 765 then
		cw('m', "Puede que lo deje para cuando todos seáis más amigos.")
	elseif cl == 766 then
		updateMonika('1','j')
		cw('m', "Bueno...")
	elseif cl == 767 then
		updateMonika('3','b')
		cw('m', "¡Aquí viene el superconsejito del día!")
	elseif cl == 768 then
		cw('m', "A veces, al escribir un poema o una historia, te centras demasiado en una única cosa...")
	elseif cl == 769 then
		cw('m', "Si te dedicas demasiado en intentar que sea perfecto, no avanzarás nunca.")
	elseif cl == 770 then
		cw('m', "¡Simplemente escribe algo y ya luego lo arreglarás!")
	elseif cl == 771 then
		cw('m', "O visto de otra forma:")
	elseif cl == 772 then
		cw('m', "Si presionas mucho rato el papel con tu boli, se acabará formando un charco de tinta.")
	elseif cl == 773 then
		cw('m', "¡Así que limítate a mover la mano y déjate llevar!")
	elseif cl == 774 then
		updateMonika('3','k')
		cw('m', "¡Y ese es el superconsejito del día!")
	elseif cl == 775 then
		cw('m', "Gracias por tu atención~")
	elseif cl == 776 then
		poemfinish('m')
	end
end

function m_eval()
	if persistent.ptr == 0 then
		if poemwinner[chapter] == 'Sayori' then
			loadstring('m_sayori_'..appeal.s..'()')()
		elseif poemwinner[chapter] == 'Natsuki' then
			loadstring('m_natsuki_'..appeal.n..'()')()
		elseif poemwinner[chapter] == 'Yuri' then
			loadstring('m_yuri_'..appeal.y..'()')()
		end
	else
		if poemwinner[1] == 'Natsuki' then
			m2_natsuki_1()
		elseif poemwinner[1] == 'Yuri' then
			m2_yuri_1()
		end
	end
	
	if cl < 692 and cl ~= 666 then
		scriptJump(692)
	end
end

function m_end()
	loadstring('ch'..chapter..'_m_end()')()
	
	if cl < 730 and cl ~= 666 then
		scriptJump(730)
	end
end
