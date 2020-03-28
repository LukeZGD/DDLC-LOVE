function ch2_y_end()
	if cl < 714 then
		scriptJump(714)
	elseif cl == 714 then
		poem('poem_y2')
	elseif cl == 715 then
		scriptJump(716)
	elseif cl == 716 then
		poem_disable()
		updateYuri('2','m')
		cw('y', "Mmm...")
	elseif cl == 717 then
		cw('y', "Con este he sido mucho más atrevida que con el de ayer...")
	elseif cl == 718 then
		cw('mc', "Ya veo.")
	elseif cl == 719 then
		cw('mc', "Es mucho más metafórico...")
	elseif cl == 720 then
		cw('bl', "No sé si soy yo, pero no tengo ni idea sobre de qué podría ir.")
	elseif cl == 721 then
		updateYuri('1','a')
		cw('y', "Exacto.")
	elseif cl == 722 then
		cw('y', "Se acerca más a mi estilo de composición...")
	elseif cl == 723 then
		cw('y', "Usando el poema como si fuese un lienzo para expresar imágenes vívidas y transmitir mis emociones a través de ellos.")
	elseif cl == 724 then
		cw('mc', "Ya, a primera vista soy incapaz de entender de qué va...")
	elseif cl == 725 then
		updateYuri('2','f')
		cw('y', "Bueno...")
	elseif cl == 726 then
		cw('y', "Creo que eso es algo con lo que mucha gente se siente identificada de una forma u otra.")
	elseif cl == 727 then
		cw('y', "Quería expresar cómo me siento cuando me dejo llevar por mis aficiones más extravagantes...")
	elseif cl == 728 then
		updateYuri('2','v')
		cw('y', "Es una de esas cosas que me siento obligada a ocultar.")
	elseif cl == 729 then
		cw('y', "Así que, a veces me gusta escribir sobre ellas.")
	elseif cl >= 730 then
		if readpoem.n == 1 and (n_poemappeal[1] >= 0 or n_poemappeal[1] >= 0) then
			if cl == 730 then
		cw('mc', "Ja, qué raro...")
			elseif cl == 730 then
				updateYuri('2','e')
		cw('y', "¿...?")
			elseif cl == 731 then
		cw('mc', "¿No había compuesto Natsuki uno con un tema similar?")
			elseif cl == 732 then
		cw('mc', "¿Sobre alguien siendo ridiculizado por una afición extravagante?")
			elseif cl == 733 then
				updateYuri('2','h')
		cw('y', "¿Eh?")
			elseif cl == 734 then
		cw('y', "A-ah... ¿sí?")
			elseif cl == 735 then
		cw('mc', "Sí...")
			elseif cl == 736 then
		cw('mc', "Hablaba de que da igual lo que te guste, siempre y cuando no dañes a nadie con ello.")
			elseif cl == 737 then
				updateYuri('3','r')
		cw('y', "¡T-tiene razón!")
			elseif cl == 738 then
				updateYuri('3','o')
		cw('mc', "Oh...")
			elseif cl == 739 then
		cw('y', "¿De verdad se siente así...?")
			elseif cl == 740 then
		cw('mc', "Sí.")
			elseif cl == 741 then
		cw('mc', "Parece que las dos tenéis eso en común...")
			elseif cl == 742 then
				updateYuri('3','h')
		cw('y', "Eso es... bueno, interesante...")
			elseif cl == 743 then
		cw('y', "Siempre me ha parecido alguien que se reiría de mis aficiones...")
			elseif cl == 744 then
		cw('y', "Pero supongo que es mi culpa por juzgarla, ¿no?")
			elseif cl == 745 then
				updateYuri('3','p')
		cw('y', "¡Ah! ¡Por favor, no le digas que he dicho eso!")
			elseif cl == 746 then
		cw('mc', "Ja, ja, ja. No te preocupes, no tengo ninguna razón para hacerlo.")
			elseif cl == 747 then
				updateYuri('1','l')
		cw('y', "Vale...")
			elseif cl == 748 then
				updateYuri('1','a')
		cw('y', "Bueno, gracias por compartirlo conmigo.")
			end
		else
			if cl == 730 then
		cw('mc', "¿Y por qué te los guardas para ti?")
			elseif cl == 731 then
				updateYuri('3','v')
		cw('y', "Po-porque...")
			elseif cl == 732 then
		cw('y', "Me dan vergüenza...")
			elseif cl == 733 then
		cw('y', "Y la gente se reiría de mí.")
			elseif cl == 734 then
		cw('y', "¿No tienes algo parecido, " .. player .. "?")
			elseif cl == 735 then
		cw('mc', "Bueno...")
			elseif cl == 736 then
		cw('mc', "Sí, supongo...")
			elseif cl == 737 then
				updateYuri('2','h')
		cw('y', "Creo que todo el mundo tiene algo así.")
			elseif cl == 738 then
		cw('y', "Lo que deberíamos hacer es respetarnos entre nosotros y a nuestras diferencias.")
			elseif cl == 739 then
		cw('y', "Aunque a veces sea difícil y otras nos hagan sentir incómodos...")
			elseif cl == 740 then
				updateYuri('1','a')
		cw('y', "Después de todo, si no hubiese aprendido a aceptar mis rarezas, me odiaría a mí misma.")
			elseif cl == 741 then
				updateYuri('2','u')
		cw('y', "L-lo siento por desahogarme contigo...")
			elseif cl == 742 then
		cw('y', "Pero me alegra que sepas escuchar.")
			elseif cl == 743 then
				scriptJump(749)
			end
		end
		if cl >= 749 then
			if appeal.y >= 2 then
				if cl == 749 then
					updateYuri('2','s')
		cw('y', "Se te dan bien muchas cosas...")
				elseif cl == 750 then
		cw('y', "Componer, escuchar...")
				elseif cl == 751 then
					updateYuri('2','u')
		cw('y', "" .. player .. ".")
				elseif cl == 752 then
		cw('mc', "C-creo que exageras...")
				elseif cl == 753 then
					updateYuri('2','v')
		cw('y', "Es... como me siento.")
				elseif cl == 754 then
		cw('y', "Nunca imaginé que me sentiría tan cómoda compartiendo mis poemas...")
				elseif cl == 755 then
					updateYuri('2','s')
		cw('y', "Pero ahora, espero con ansias el siguiente...")
				elseif cl == 756 then
					updateYuri('2','m')
		cw('y', "Es... un sentimiento muy agradable.")
				elseif cl == 757 then
		cw('y', "Y es gracias a ti.")
				elseif cl == 758 then
		cw('mc', "N-no ha sido nada, de verdad...")
				elseif cl == 759 then
		cw('bl', "Yuri me sonríe con sinceridad.")
				elseif cl == 760 then
		cw('bl', " Por un segundo, parecía que su timidez se había esfumado.")
				elseif cl == 761 then
					poemfinish('y')
				end
			else
				poemfinish('y')
			end
		end
	end
end

function ch2_y_bad()
	if y_poemappeal[1] < 0 then
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			updateYuri('2','h')
		cw('y', "Mmm...")
		elseif cl == 672 then
		cw('y', "¿Todavía estás enfadado conmigo?")
		elseif cl == 673 then
		cw('mc', "¡¿Eh?!")
		elseif cl == 674 then
		cw('y', "Por faltarle el respeto a Natsuki ayer...")
		elseif cl == 675 then
		cw('y', "Porque al leer este poema...")
		elseif cl == 676 then
		cw('y', "Ahora entiendo por qué te enfadaste.")
		elseif cl == 677 then
		cw('y', "Porque tú...")
		elseif cl == 678 then
			updateYuri('3','v')
		cw('y', "¡Prefieres sus poemas a los míos!")
		elseif cl == 679 then
		cw('mc', "¡No es verdad!")
		elseif cl == 680 then
		cw('y', "Por lo que cuando le falté el respeto a ella...")
		elseif cl == 681 then
		cw('y', "También te lo falté a ti, ¿no?")
		elseif cl == 682 then
			updateYuri('4','c2')
		cw('y', "Oh, no...")
		elseif cl == 683 then
		cw('mc', "Yuri...")
		elseif cl == 684 then
		cw('mc', "Creo que le estás dando demasiadas vueltas a esto...")
		elseif cl == 685 then
		cw('y', "¿Cómo he podido ser tan estúpida?")
		elseif cl == 686 then
		cw('y', "Siempre me acaban pasando este tipo de cosas...")
		elseif cl == 687 then
		cw('y', "Siempre que pienso antes de hablar parezco rara y repugnante.")
		elseif cl == 688 then
		cw('y', "Pero si hablo sin pensar, acabo soltando cosas que no quiero y hago que la gente me odie.")
		elseif cl == 689 then
			updateYuri('2','v')
		cw('y', "Así que...")
		elseif cl == 690 then
		cw('y', "Sé que es lo que quiere Monika.")
		elseif cl == 691 then
		cw('y', "Pero no es justo si pudieses estar disfrutando con Natsuki y Sayori.")
		elseif cl == 692 then
		cw('mc', "Yuri...")
		elseif cl == 693 then
			updateYuri('4','b2')
		cw('y', "Por favor...")
		elseif cl == 694 then
		cw('y', "Me es más fácil si no te veo preocupado.")
		elseif cl == 695 then
		cw('y', "Además...")
		elseif cl == 696 then
		cw('y', "Tengo a mis libros conmigo.")
		elseif cl == 697 then
			updateYuri('3','u')
		cw('y', "Eso...")
		elseif cl == 698 then
			cw('mc',"...")
		elseif cl == 699 then
		cw('bl', "Yuri sonríe con tristeza y agacha su cabeza hacia el pupitre.")
		elseif cl == 700 then
		cw('bl', "Estoy frustrado.")
		elseif cl == 701 then
		cw('bl', "No la odio, pero es incapaz de escucharme a mí en vez de a sus pensamientos.")
		elseif cl == 702 then
		cw('bl', "Suspiro para mis adentros.")
		elseif cl == 703 then
		cw('bl', "Solo puedo aceptarla tal y como es.")
		elseif cl == 704 then
		cw('bl', "Si quiere que la deje sola, no me queda más remedio que aceptarlo.")
		elseif cl == 705 then
			poemfinish('y')
		end
	else
		if cl == 670 then
			updateYuri('2','a')
		cw('y', "Ah, ¿es mi turno?")
		elseif cl == 671 then
		cw('y', "Veamos qué tal este en comparación con el de ayer...")
		elseif cl == 672 then
		cw('y', "Mmm...")
		elseif cl == 673 then
		cw('mc', "Ya veo...")
		elseif cl == 674 then
		cw('y', "Es un poco diferente.")
		elseif cl == 675 then
			updateYuri('1','a')
		cw('y', "Te respeto por probar cosas distintas, " .. player .. ".")
		elseif cl == 676 then
		cw('y', "¿Te has inspirado en los poemas de Natsuki?")
		elseif cl == 677 then
		cw('y', "¿O quizá, en Sayori?")
		elseif cl == 678 then
		cw('mc', "Bueno...")
		elseif cl == 679 then
		cw('mc', "Supongo que algo así...")
		elseif cl == 680 then
		cw('y', "Me lo imaginaba.")
		elseif cl == 681 then
			updateYuri('2','u')
		cw('y', "Me alegro por ti.")
		elseif cl == 682 then
		cw('y', "No necesitas inspirarte en mis poemas.")
		elseif cl == 683 then
		cw('y', "Los compongo para mí...")
		elseif cl == 684 then
			updateYuri('4','b2')
		cw('y', "Y no para nadie más.")
		elseif cl == 685 then
		cw('y', "Así que me da igual... que a la gente no le gusten.")
		elseif cl == 686 then
		cw('mc', "¡Yuri!")
		elseif cl == 687 then
			updateYuri('3','t')
		cw('y', "¿E-eh?")
		elseif cl == 688 then
		cw('mc', "Perdona por ser tan directo, pero creo que le estás dando demasiadas vueltas.")
		elseif cl == 689 then
		cw('mc', "Que nuestros estilos sean diferentes no significa que no me gusten tus poemas...")
		elseif cl == 690 then
		cw('mc', "De hecho, si intentara usar tu estilo, sería un fracaso estrepitoso.")
		elseif cl == 691 then
			updateYuri('4','a2')
		cw('mc', "Ya veo...")
		elseif cl == 692 then
		cw('y', "Lo siento...")
		elseif cl == 693 then
		cw('y', "A veces, a mi estúpido cerebro le gusta hacer esto.")
		elseif cl == 694 then
		cw('m', "Bueno...")
		elseif cl >= 695 then
			ch2_y_shared()
		end
	end
end

function ch2_y_shared()
	if cl < 695 and cl ~= 666 then
		scriptJump(695)
	elseif cl == 695 then
		updateYuri('2','h')
		cw('y', "No tiene que darte miedo ser un poco más atrevido...")
	elseif cl == 696 then
		cw('y', "Las metáforas pueden llegar a ser muy útiles.")
	elseif cl == 697 then
		cw('y', "No creas que necesitas usar tu cerebro de forma lógica.")
	elseif cl == 698 then
		updateYuri('1','m')
		cw('y', "Intenta divagar entre tus sentimientos...")
	elseif cl == 699 then
		cw('y', "Y apunta las cosas que veas y escuches.")
	elseif cl == 700 then
		cw('y', "Esa es una forma de dejar que el lector pueda ver qué hay realmente en tu cabeza.")
	elseif cl == 701 then
		updateYuri('2','u')
		cw('y', "Es un ejercicio muy íntimo...")
	elseif cl == 702 then
		cw('mc', "Ya veo.")
	elseif cl == 703 then
		cw('mc', "Sí que es una técnica interesante.")
	elseif cl == 704 then
		cw('mc', "Gracias por enseñármelo.")
	elseif cl == 705 then
		updateYuri('2','v')
		cw('y', "Tengo, em...")
	elseif cl == 706 then
		cw('y', "Bueno, un ejemplo de lo que decía, por si quieres verlo...")
	elseif cl == 707 then
		cw('mc', "Por supuesto.")
	elseif cl == 708 then
		cw('mc', "¿Es el poema de hoy?")
	elseif cl == 709 then
		cw('bl', "Yuri asiente y me da su poema con timidez.")
	elseif cl >= 710 then
		ch2_y_end()
	end
end

function ch2_y_med()
	if y_poemappeal[1] <= 0 then
		if cl == 670 then
			updateYuri('1','a')
		cw('y', "Veamos qué has compuesto para hoy.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
		cw('y', "Mmm...")
		elseif cl == 673 then
			updateYuri('1','c')
		cw('y', "Bien hecho, " .. player .. ".")
		elseif cl == 674 then
		cw('y', "Estás mejorando mucho.")
		elseif cl == 675 then
		cw('mc', "¿En serio?")
		elseif cl == 676 then
		cw('mc', "Gracias, Yuri.")
		elseif cl == 677 then
		cw('mc', "Significa mucho viniendo de ti.")
		elseif cl == 678 then
			updateYuri('3','f')
			cw('y',"¿Eh?")
		elseif cl == 679 then
			updateYuri('3','v')
		cw('y', "¡Qu-qué va!")
		elseif cl == 680 then
		cw('y', "Me hace feliz ayudar a mis compañeros escritores...")
		elseif cl == 681 then
		cw('y', "Ya sé que eres nuevo en esto, así que no te preocupes si no te sale perfecto.")
		elseif cl >= 682 then
			ch2_y_shared()
		end
	else
		if cl == 671 then
			updateYuri('1','a')
		cw('y', "Veamos qué has compuesto para hoy.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
		cw('y', "Mmm...")
		elseif cl == 673 then
		cw('y', "Está bastante bien, " .. player .. ".")
		elseif cl == 674 then
		cw('y', "¿Te ha influido que vieras ayer los estilos de composición de todas?")
		elseif cl == 675 then
		cw('mc', "Supongo que algo así...")
		elseif cl == 676 then
			updateYuri('1','m')
		cw('y', "A mí también me sorprendió la variedad de estilos que tenemos.")
		elseif cl == 677 then
		cw('y', "Así que no te juzgaré por probar cosas nuevas.")
		elseif cl >= 678 then
			ch2_y_shared()
		end
	end
end

function ch2_y_good()
	if y_poemappeal[1] < 1 then
		if cl == 670 then
			updateYuri('1','a')
		cw('y', "Veamos qué has compuesto para hoy.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
			updateYuri('2','e')
		cw('y', "...")
		elseif cl == 673 then
		cw('bl', "Yuri se queda mirando al poema ojiplática.")
		elseif cl == 674 then
		cw('mc', "¿Te... gusta?")
		elseif cl == 675 then
			cw('y',player.."...")
		elseif cl == 676 then
		cw('y', "¿Cómo has comprendido esto tan rápido?")
		elseif cl >= 677 then
			ch2_y_good_shared()
		end
	else
		if cl == 670 then
			updateYuri('1','a')
		cw('y', "Veamos qué has compuesto para hoy.")
		elseif cl == 671 then
			cw('y',"...")
		elseif cl == 672 then
			updateYuri('2','e')
		cw('y', "...")
		elseif cl == 673 then
		cw('bl', "Yuri se queda mirando al poema ojiplática.")
		elseif cl == 674 then
		cw('mc', "¿Te... gusta?")
		elseif cl == 675 then
			cw('y',player.."...")
		elseif cl == 676 then
		cw('y', "Creo que este es incluso mejor que el de ayer...")
		elseif cl == 677 then
			cw('y',"¿Cómo has comprendido esto tan rápido?")
		elseif cl >= 678 then
			ch2_y_good_shared()
		end
	end
end

function ch2_y_good_shared()
	if cl == 677 then
		scriptJump(678)
	elseif cl == 678 then
		 updateYuri('2','v')
		cw('y', "Ayer mismo te estaba diciendo qué técnicas podrías practicar...")
	elseif cl == 679 then
		cw('mc', "Quizás es por eso...")
	elseif cl == 680 then
		cw('mc', "Has hecho un buen trabajo explicándolo.")
	elseif cl == 681 then
		cw('mc', "Quería darle mucho más simbolismo.")
	elseif cl == 682 then
		updateYuri('4','b2')
		cw('bl', "Yuri traga saliva.")
	elseif cl == 683 then
		cw('bl', "Hasta sus manos parecen sudorosas.")
	elseif cl == 684 then
		cw('y', "No lo hago...")
	elseif cl == 685 then
		cw('mc', "¿Acostumbrada a qué?")
	elseif cl == 686 then
		updateYuri('3','o')
		cw('y', "¡No lo sé!")
	elseif cl == 687 then
		cw('mc', "No pasa nada, tómate tu tiempo...")
	elseif cl == 688 then
		updateYuri('3','l')
		cw('bl', "Yuri respira hondo y se concentra.")
	elseif cl == 689 then
		cw('bl', "Sé que a Yuri le gusta pensar antes de hablar, así que le dejo su tiempo.")
	elseif cl == 690 then
		updateYuri('4','a2')
		cw('mc', "Sí.")
	elseif cl == 691 then
		cw('y', "El hecho... de que me aprecien de esta manera... supongo.")
	elseif cl == 692 then
		cw('y', "Seguramente parecerá estúpido...")
	elseif cl == 693 then
		cw('y', "Pero ver que mis poemas motivan a alguien...")
	elseif cl == 694 then
		cw('y', "Me hace...")
	elseif cl == 695 then
		cw('y', "Muy feliz...")
	elseif cl == 696 then
		cw('mc', "¿Me estás diciendo que nunca habías enseñado tus poemas?")
	elseif cl == 697 then
		cw('bl', "Yuri asiente.")
	elseif cl == 698 then
		cw('mc', "¿En serio? No me lo creo.")
	elseif cl == 699 then
		cw('y', "La verdad es que solo escribo para mí...")
	elseif cl == 700 then
		cw('y', "Y además...")
	elseif cl == 701 then
		updateYuri('3','w')
		cw('y', "¡La gente se reiría de mí!")
	elseif cl == 702 then
		cw('mc', "¿De verdad crees eso?")
	elseif cl == 703 then
		cw('bl', "Yuri asiente.")
	elseif cl == 704 then
		cw('mc', "Mmm...")
	elseif cl == 705 then
		cw('mc', "¿Hasta tus amigos más cercanos?")
	elseif cl == 706 then
		updateYuri('2','v')
		cw('y',"...")
	elseif cl == 707 then
		cw('bl', "Yuri no responde.")
	elseif cl == 708 then
		cw('bl', "Me pregunto por qué...")
	elseif cl == 709 then
		cw('mc', "Bueno...")
	elseif cl == 710 then
		cw('mc', "¿Me enseñas el poema que has compuesto hoy?")
	elseif cl == 711 then
		cw('mc', "Sí.")
	elseif cl == 712 then
		updateYuri('3','t')
		cw('y', "¡Claro!")
	elseif cl == 713 then
		cw('y', "Si es a ti...")
	elseif cl >= 714 then
		ch2_y_end()
	end
end

function ch3_y_bad12_shared()
	if cl == 670 then
		updateYuri('4','b2')
		cw('y',"...")
	elseif cl == 671 then
		updateYuri('4','b2')
		cw('bl', "Yuri no parece muy ilusionada por pasar tiempo conmigo...")
	elseif cl == 672 then
		cw('bl', "Supongo que ya vendrá a verme, si cambia de opinión.")
	elseif cl == 673 then
		cw('bl', "Pero de momento debería dejarla en paz.")
	elseif cl == 674 then
		poemfinish('y')
	end
end

function ch3_y_end()
	if cl < 768 and cl ~= 666 then
		scriptJump(768)
	elseif cl >= 768 then
		if appeal.y >= 3 then
			ch3_y_end_special()
		else
			if cl == 768 then
				poem('poem_y3')
			elseif cl == 769 then
				scriptJump(771)
			elseif cl == 771 then
				poem_disable()
				updateYuri('2','v')
		cw('y', "Mmm...")
			elseif cl == 772 then
		cw('y', "Soy consciente de que escribir sobre la playa es un sinsentido.")
			elseif cl == 773 then
		cw('y', "Pero me he esforzado para darle un toque metafórico.")
			elseif cl >= 774 then
				if readpoem.n == 0 or appeal.n >= 3 then
					if cl == 774 then
		cw('mc', "Lo dices como si no hubieses querido hacerlo sobre ese tema...")
					elseif cl == 775 then
						updateYuri('2','e')
		cw('y', "Ah, ¿te has enterado?")
					elseif cl == 776 then
						updateYuri('2','h')
		cw('y', "Después de lo de ayer, Natsuki y yo, bueno...")
					elseif cl == 777 then
		cw('y', "Fue... gracioso que las dos hubiéramos escrito sobre lo mismo de una forma tan diferente.")
					elseif cl == 778 then
		cw('y', "Así que, Natsuki ha querido que escribamos sobre el mismo tema otra vez.")
					elseif cl == 779 then
						if readpoem.n == 1 then
		cw('mc', "Entiendo...")
						else
							scriptJump(782)
						end
					elseif cl == 780 then
		cw('bl', "Algo me dice que el poema que me ha enseñado Natsuki pretende no enseñárselo a nadie...")
					elseif cl == 781 then
		cw('bl', "Por razones obvias, decido no mencionarle nada a Yuri.")
					end
				else
					if cl == 774 then
		cw('mc', "Sí, Natsuki me lo ha contado.")
					elseif cl == 775 then
						updateYuri('3','t')
		cw('y', "A-ah, ¿sí?")
					elseif cl == 776 then
		cw('y', "No ha dicho nada raro, ¿verdad?")
					elseif cl == 777 then
		cw('y', "Es solo que quiere que escribamos sobre el mismo tema otra vez...")
					elseif cl == 778 then
						scriptJump(782)
					end
				end
				if cl == 782 then
					updateYuri('2','f')
		cw('y', "Supongo que para comparar las diferencias entre nuestros estilos... o nuestras ideas.")
				elseif cl == 783 then
					updateYuri('2','w')
		cw('y', "Bueno, ¡que ha sido idea suya!")
				elseif cl == 784 then
		cw('y', "Conociéndola no me sorprende que haya querido hacer algo así.")
				elseif cl == 785 then
		cw('y', "Seguramente querrá fardar.")
				elseif cl == 786 then
					updateYuri('2','v')
		cw('y', "Y tampoco es que me interese su estilo...")
				elseif cl == 787 then
		cw('y', "Solo le he seguido la corriente.")
				elseif cl == 788 then
		cw('y', "Pero...")
				elseif cl == 789 then
					updateYuri('1','s')
		cw('y', "Bueno, supongo que no está tan mal escribir sobre algo simple de vez en cuando.")
				elseif cl == 790 then
					updateYuri('1','m')
		cw('y', "Puede resultar algo innovador, ¿no crees?")
				elseif cl == 791 then
		cw('y', "Me va bien despejarme de vez en cuando.")
				elseif cl == 792 then
		cw('mc', "Sí, creo que tienes razón.")
				elseif cl == 793 then
		cw('mc', "Gracias por compartirla.")
				elseif cl == 794 then
					poemfinish('y')
				end
			end
		end
	end
end

function ch3_y_end_special()
	if cl == 768 then
		poem('poem_y3b')
	elseif cl == 769 then
		scriptJump(770)
	elseif cl == 770 then
		poem_disable()
		cw('bl', "Tras acabar el poema, se lo devuelvo a Yuri.")
	elseif cl == 771 then
		cw('bl', "Pero en lugar de cogerlo, aparta la mirada.")
	elseif cl == 772 then
		cw('y',"...")
	elseif cl == 773 then
		cw('y', "Acaso... ¿no te gusta?")
	elseif cl == 774 then
		cw('mc', "Ah, no, no es eso.")
	elseif cl == 775 then
		cw('mc', "Es solo que... no sé cómo responder.")
	elseif cl == 776 then
		cw('bl', "A pesar de que los poemas de Yuri suelen ser enrevesados, no fue difícil entender de qué trataba este.")
	elseif cl == 777 then
		if readpoem.n == 1 then
		cw('bl', "Además, no hay duda de que este no es el poema del que hablaba Natsuki...")
		else
			scriptJump(779)
		end
	elseif cl == 778 then
		cw('bl', "Por lo tanto, esto significa que seguramente sea el único al que se lo ha enseñado.")
	elseif cl == 779 then
		updateYuri('2','v')
		cw('y', "N-no sé si podré explicar bien este...")
	elseif cl == 780 then
		cw('mc', "No pasa nada.")
	elseif cl == 781 then
		cw('mc', "Este lo he entendido.")
	elseif cl == 782 then
		updateYuri('4','c2')
		cw('y',"...")
	elseif cl == 783 then
		cw('bl', "A Yuri le está costando hablar más de lo normal.")
	elseif cl == 784 then
		cw('mc', "¿Este... significa mucho para ti?")
	elseif cl == 785 then
		cw('bl', "Yuri asiente.")
	elseif cl == 786 then
		cw('mc', "No soy muy bueno expresándome, pero...")
	elseif cl == 787 then
		cw('mc', "Me alegro de que lo hayas compartido conmigo.")
	elseif cl == 788 then
		cw('mc', "Así que, gracias.")
	elseif cl == 789 then
		cw('mc', "Espero que podamos seguir pasando tiempo juntos.")
	elseif cl == 790 then
		updateYuri('4','e2')
		cw('bl', "A pesar de que apenas puedo mantener contacto visual con Yuri, veo como sonríe levemente.")
	elseif cl == 791 then
		cw('bl', "Intento devolverle el poema otra vez.")
	elseif cl == 792 then
		updateYuri('4','a2')
		cw('bl', "Pero esta vez, Yuri empuja mis manos suavemente hacia mí.")
	elseif cl == 793 then
		cw('bl', "Vacilo al sentir su cálido tacto.")
	elseif cl == 794 then
		updateYuri('1','v')
		cw('y', "Puedes...")
	elseif cl == 795 then
		cw('y', "Mmm...")
	elseif cl == 796 then
		cw('y', "Este poema...")
	elseif cl == 797 then
		cw('bl', "Yuri vuelve a dejar sus frases incompletas.")
	elseif cl == 798 then
		cw('mc', "¿Quieres decir que me lo puedo quedar?")
	elseif cl == 799 then
		cw('bl', "Yuri asiente.")
	elseif cl == 800 then
		cw('mc', "Me encantaría.")
	elseif cl == 801 then
		updateYuri('1','u')
		cw('bl', "De nuevo, Yuri sonríe levemente como si quisiese que no me dé cuenta.")
	elseif cl == 802 then
		cw('y', "Tú siempre...")
	elseif cl == 803 then
		cw('y', "Tú siempre... me haces sentir bien.")
	elseif cl == 804 then
		cw('y', "Sé que no se me da bien estar con gente, pero...")
	elseif cl == 805 then
		cw('y', "Espero... poder devolverte el favor.")
	elseif cl == 806 then
		cw('mc', "Sí.")
	elseif cl == 807 then
		cw('mc', "No te preocupes.")
	elseif cl == 808 then
		cw('mc', "Creo que haces un buen trabajo.")
	elseif cl == 809 then
		cw('bl', "Por fin Yuri se gira hacia mí.")
	elseif cl == 810 then
		updateYuri('1','s')
		cw('y', "Supongo... que deberíamos movernos antes de que Monika diga algo.")
	elseif cl == 811 then
		cw('y', "Pero estoy segura de que podremos hablar más tarde.")
	elseif cl == 812 then
		cw('mc', "Sí.")
	elseif cl == 813 then
		cw('mc', "Yo también lo estoy.")
	elseif cl == 814 then
		cw('bl', "Tras eso, Yuri me sonríe tímidamente y yo vuelvo a mi sitio para guardar su poema.")
	elseif cl == 815 then
		poemfinish('y')
	end
end

function ch3_y_bad()
	if y_poemappeal[1] < 0 and y_poemappeal[2] < 0 then
		ch3_y_bad12_shared()
	elseif y_poemappeal[1] < 0 or y_poemappeal[2] < 0 then
		if cl == 670 then
			updateYuri('1','i')
			cw('y',"...")
		elseif cl == 671 then
		cw('y', "Ya veo.")
		elseif cl == 672 then
		cw('y', "Creo que estás mejorando en general, " .. player .. ".")
		elseif cl == 673 then
			updateYuri('2','i')
		cw('y', "Pero no puedo evitar sentirme algo tonta.")
		elseif cl == 674 then
		cw('mc', "¿Eh? ¿Y eso?")
		elseif cl == 675 then
		cw('y', "Es solo que...")
		elseif cl == 676 then
		cw('y', "Creo que no paraba de darte consejos...")
		elseif cl == 677 then
		cw('y', "Cuando estaba claro que preferías otro estilo lírico.")
		elseif cl == 678 then
			updateYuri('3','w')
		cw('y', "¡Seguro que he quedado como una arrogante!")
		elseif cl == 679 then
		cw('y', "Qué estúpida soy...")
		elseif cl == 680 then
		cw('mc', "Yuri, eres un poco...")
		elseif cl == 681 then
			updateYuri('4','b2')
		cw('y', "No...")
		elseif cl == 682 then
		cw('y', "Tú no lo entiendes.")
		elseif cl == 683 then
		cw('y', "He pasado demasiado tiempo preocupándome por lo que es mejor y lo que es peor.")
		elseif cl == 684 then
		cw('y', "No solo contigo...")
		elseif cl == 685 then
		cw('y', "Con Natsuki y Sayori...")
		elseif cl == 686 then
		cw('y', "Es obvio que nadie se lo pasa bien cuando habla conmigo...")
		elseif cl == 687 then
		cw('y', "Y por eso...")
		elseif cl == 688 then
			updateYuri('4','c2')
		cw('y', "¡Cerraré el pico y no opinaré sobre tu poema!")
		elseif cl == 689 then
			cw('mc',"...")
		elseif cl == 690 then
		cw('bl', "Yuri se tapa la cabeza con los brazos en el pupitre.")
		elseif cl == 691 then
		cw('bl', "No es la primera vez que le veo hacer eso.")
		elseif cl == 692 then
		cw('mc', "Creo que no es tan malo como tú te crees...")
		elseif cl == 693 then
			cw('y',"...")
		elseif cl == 694 then
		cw('mc', "Creo que si de verdad no les gustase hablar contigo...")
		elseif cl == 695 then
		cw('mc', "Sería mucho más obvio.")
		elseif cl == 696 then
		cw('mc', "Sé que te gusta encontrar significados ocultos a todo.")
		elseif cl == 697 then
		cw('mc', "Pero hay cosas que no tienen ningún trasfondo.")
		elseif cl == 698 then
			updateYuri('4','b2')
		cw('n', "Yo solo...")
		elseif cl == 699 then
		cw('y', "Estoy tan acostumbrada...")
		elseif cl == 700 then
		cw('y', "Que me cuesta comprender que haya alguna otra posibilidad.")
		elseif cl == 701 then
		cw('mc', "¿Acostumbrada a qué?")
		elseif cl == 702 then
		cw('mc', "¿A buscar significados ocultos?")
		elseif cl == 703 then
		cw('y', "A no gustarle a la gente.")
		elseif cl == 704 then
			cw('mc',"Yuri...")
		elseif cl == 705 then
			updateYuri('2','v')
		cw('y', "¿Qu-Qué estoy diciendo?")
		elseif cl == 706 then
		cw('y', "Lo siento...")
		elseif cl == 707 then
		cw('y', "No pretendía sacar el tema...")
		elseif cl == 708 then
		cw('bl', "Yuri me da la espalda.")
		elseif cl == 709 then
			updateYuri('4','b2')
		cw('y', "Deberías irte...")
		elseif cl == 710 then
		cw('mc', "¿Eh?")
		elseif cl == 711 then
		cw('y', "Por favor...")
		elseif cl == 712 then
		cw('y', "Por favor, no me mires.")
		elseif cl == 713 then
		cw('y', "Quiero reflexionar...")
		elseif cl == 714 then
		cw('mc', "¿Estás segura...?")
		elseif cl == 715 then
		cw('bl', "Yuri asiente.")
		elseif cl == 716 then
		cw('mc', "Vale.")
		elseif cl == 717 then
		cw('bl', "Dejo en paz a Yuri.")
		elseif cl == 718 then
		cw('bl', "Animarla es prácticamente imposible cuando se pone así.")
		elseif cl == 719 then
		cw('bl', "Así que cuando quiere estar sola creo que solo conseguiré empeorarlo todo.")
		elseif cl == 720 then
		cw('bl', "Me siento mal, pero al menos no lo paga conmigo...")
		elseif cl == 721 then
		cw('bl', "Esperaré a que se sienta algo mejor.")
		elseif cl == 722 then
			poemfinish('y')
		end
	else
		if cl == 670 then
			updateYuri('1','a')
			cw('y',"...")
		elseif cl == 671 then
		cw('y', "Ah.")
		elseif cl == 672 then
		cw('y', "¿Hoy has decidido probar algo diferente?")
		elseif cl == 673 then
		cw('mc', "Supongo.")
		elseif cl == 674 then
		cw('mc', "¿Eso es bueno o malo?")
		elseif cl == 675 then
			updateYuri('2','g')
		cw('y', "Bueno, ninguna de las dos.")
		elseif cl == 676 then
		cw('y', "Tengo mis gustos.")
		elseif cl == 677 then
		cw('y', "Así que decir si es bueno o malo en base a eso sería erróneo.")
		elseif cl >= 678 then
			ch3_y_shared()
		end
	end
end

function ch3_y_shared()
	if cl < 692 and cl ~= 666 then
		scriptJump(692)
	elseif cl == 692 then
		updateYuri('1','f')
		cw('y', "Como siempre, creo que lo importante es explorar y descubrirse a uno mismo.")
	elseif cl == 693 then
		cw('mc', "Eso me anima.")
	elseif cl == 694 then
		cw('mc', "Me da miedo decepcionarte de alguna forma.")
	elseif cl == 695 then
		updateYuri('2','t')
		cw('y', "¿Eh?")
	elseif cl == 696 then
		cw('y', "¿Por qué a mí?")
	elseif cl == 697 then
		cw('mc', "Bueno, tienes un estilo mucho más sofisticado y eres la que más consejos ofrece.")
	elseif cl == 698 then
		updateYuri('4','a2')
		cw('y', "¿Ah, sí?...")
	elseif cl == 699 then
		cw('y',"...")
	elseif cl == 700 then
		cw('bl', "Yuri se queda pensativa.")
	elseif cl == 701 then
		updateYuri('4','c2')
		cw('y', "Eso tiene que ser horrible.")
	elseif cl == 702 then
		cw('mc',"¿Eh?")
	elseif cl == 703 then
		cw('y', "Convertirme en alguien cuya opinión temas...")
	elseif cl == 704 then
		cw('y', "Qué desagradable por mi parte...")
	elseif cl == 705 then
		cw('mc',"Yuri...")
	elseif cl == 706 then
		cw('mc', "No es tan malo como tú te crees.")
	elseif cl == 707 then
		cw('mc', "Me refiero a que respeto tu opinión.")
	elseif cl == 708 then
		updateYuri('2','v')
		cw('y', "Ya veo...")
	elseif cl == 709 then
		cw('y', "Perdona por darle tantas a vueltas a todo y llegar a conclusiones precipitadas...")
	elseif cl == 710 then
		cw('y', "Es que... estoy acostumbrada.")
	elseif cl == 711 then
		cw('mc', "¿A darle vueltas a las cosas?")
	elseif cl == 712 then
		cw('y', "A no gustarle a la gente.")
	elseif cl == 713 then
		cw('mc',"Yuri...")
	elseif cl == 714 then
		updateYuri('3','w')
		cw('y', "¿Qu-qué estoy diciendo?")
	elseif cl == 715 then
		cw('y', "Lo siento, no pretendía sacar el tema...")
	elseif cl == 716 then
		cw('y', "Corramos un tupido velo...")
	elseif cl == 717 then
		cw('mc', "Muy bien.")
	elseif cl == 718 then
		cw('mc', "¿Quieres enseñarme tu poema?")
	elseif cl == 719 then
		updateYuri('2','i')
		cw('y', "Vale.")
	elseif cl == 720 then
		cw('y', "Toma.")
	elseif cl >= 721 then
		ch3_y_end()
	end
end

function ch3_y_med()
	if y_poemappeal[1] < 0 and y_poemappeal[2] < 0 then
		ch3_y_bad12_shared()
	elseif y_poemappeal[1] < 1 or y_poemappeal[2] < 1 then
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			updateYuri('1','a')
		cw('y', "Bien hecho, " .. player .. ".")
		elseif cl == 672 then
		cw('y', "Está claro que has mejorado muchísimo a lo largo de estos días.")
		elseif cl == 673 then
		cw('y', "¿Te han sido de ayuda mis consejos?")
		elseif cl == 674 then
		cw('mc', "Sí, por supuesto.")
		elseif cl == 675 then
			updateYuri('2','m')
		cw('y', "Me alegro...")
		elseif cl == 676 then
		cw('y', "Compartir nuestros poemas de esta forma...")
		elseif cl == 677 then
		cw('y', "Es mucho más divertido y agradable de lo que me imaginaba.")
		elseif cl == 678 then
		cw('y', "Tengo que darle las gracias a Monika...")
		elseif cl == 679 then
		cw('y', "Creo que al principio todos nos sentíamos un poco incómodos.")
		elseif cl == 680 then
			updateYuri('1','a')
		cw('y', "Pero parece que ahora a todos nos gusta compartir los poemas y escuchar la opinión de los demás.")
		elseif cl == 681 then
		cw('mc', "Supongo que tienes razón.")
		elseif cl == 682 then
		cw('mc', "Tenía miedo de que todo esto fuera una lata...")
		elseif cl == 683 then
		cw('bl', "Pero es una buena forma de pasar más tiempo con todas las chicas del club.")
		elseif cl == 684 then
		cw('mc', "Pero supongo que es divertido conocer al resto y su estilo.")
		elseif cl == 685 then
		cw('mc', "Y supongo que haber compuesto algunos poemas...")
		elseif cl == 686 then
			updateYuri('2','a')
		cw('mc', "Bueno...")
		elseif cl == 687 then
		cw('y', "¿Has aprendido algo sobre ti, " .. player .. "?")
		elseif cl == 688 then
			cw('mc',"¿Eh?")
		elseif cl == 689 then
			updateYuri('2','i')
		cw('y', "Bueno, ya sabes que para mí escribir es una forma de conocerse a uno mismo...")
		elseif cl == 690 then
			updateYuri('1','a')
		cw('y', "Al final da igual si se te da bien o mal.")
		elseif cl == 691 then
		cw('y', "Y las opiniones, son eso, opiniones, ¿no?")
		elseif cl >= 692 then
			ch3_y_shared()
		end
	else
		if cl == 670 then
			updateYuri('1','e')
			cw('y',"...")
		elseif cl == 671 then
		cw('y', "Ah.")
		elseif cl == 672 then
		cw('y', "¿Hoy has decidido probar algo diferente?")
		elseif cl == 673 then
		cw('mc', "Supongo.")
		elseif cl == 674 then
		cw('mc', "¿Eso es bueno o malo?")
		elseif cl == 675 then
			updateYuri('2','i')
		cw('y', "Bueno, ninguna de las dos.")
		elseif cl == 676 then
		cw('y', "Tengo mis gustos.")
		elseif cl == 677 then
		cw('y', "Así que decir si es bueno o malo en base a eso sería erróneo.")
		elseif cl >= 678 then
			ch3_y_shared()
		end
	end
end

function ch3_y_good()
	if y_poemappeal[1] < 0 and y_poemappeal[2] < 0 then
		ch3_y_bad12_shared()
	elseif y_poemappeal[2] < 1 then
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			updateYuri('2','u')
			cw('y',player.."...")
		elseif cl == 672 then
		cw('y', "Es maravilloso.")
		elseif cl == 673 then
		cw('y', "Puedo sentir la emoción que has volcado en el poema.")
		elseif cl == 674 then
		cw('y', "¿Es este el resultado de lo que te sugerí ayer?")
		elseif cl == 675 then
		cw('mc', "Sí, supongo...")
		elseif cl == 676 then
		cw('mc', "Has hecho un buen trabajo explicándolo.")
		elseif cl == 677 then
		cw('mc', "La verdad es que quería darle mucho más sentimiento.")
		elseif cl == 678 then
			updateYuri('4','b2')
		cw('bl', "Yuri traga saliva.")
		elseif cl == 679 then
		cw('bl', "Hasta sus manos parecen sudorosas.")
		elseif cl == 680 then
			audioUpdate('9')
		cw('y', "No estoy... acostumbrada a esto...")
		elseif cl == 681 then
		cw('mc', "¿Acostumbrada a qué?")
		elseif cl == 682 then
			updateYuri('3','o')
		cw('y', "¡No lo sé!")
		elseif cl == 683 then
		cw('mc', "No pasa nada, tómate tu tiempo...")
		elseif cl == 684 then
		cw('bl', "Yuri respira hondo y se concentra.")
		elseif cl == 685 then
		cw('bl', "Sé que a Yuri le gusta pensar antes de hablar, así que le dejo su tiempo.")
		elseif cl == 686 then
			updateYuri('4','a2')
		cw('mc', "Sí...")
		elseif cl == 687 then
		cw('y', "El hecho... de que me aprecien de esta manera... supongo.")
		elseif cl == 688 then
		cw('y', "Seguramente parecerá estúpido...")
		elseif cl == 689 then
		cw('y', "Pero ver que mis poemas motivan a alguien...")
		elseif cl == 690 then
		cw('y', "Me hace...")
		elseif cl == 691 then
		cw('y', "Muy feliz...")
		elseif cl == 692 then
		cw('mc', "¿Me estás diciendo que nunca habías enseñado tus poemas?")
		elseif cl == 693 then
			cw('bl',"Yuri asiente.")
		elseif cl == 694 then
		cw('mc', "¿En serio? No me lo creo.")
		elseif cl == 695 then
		cw('y', "La verdad es que solo escribo para mí...")
		elseif cl == 696 then
		cw('y', "Y además...")
		elseif cl == 697 then
			updateYuri('3','w')
		cw('y', "¡La gente se reiría de mí!")
		elseif cl == 698 then
		cw('mc', "¿De verdad crees eso?")
		elseif cl == 699 then
		cw('bl', "Yuri vuelve a asentir.")
		elseif cl == 700 then
		cw('mc', "Mmm...")
		elseif cl == 701 then
		cw('mc', "¿Hasta tus amigos más cercanos?")
		elseif cl == 702 then
			updateYuri('2','v')
			cw('y',"...")
		elseif cl == 703 then
		cw('bl', "Por alguna razón, Yuri no responde.")
		elseif cl == 704 then
		cw('mc', "¿Yuri?...")
		elseif cl >= 705 then
			ch3_y_good_shared()
		end
	else
		if cl == 670 then
			cw('y',"...")
		elseif cl == 671 then
			cw('y',player..".")
		elseif cl == 672 then
			updateYuri('2','s')
		cw('y', "No has hecho más que mejorar últimamente.")
		elseif cl == 673 then
		cw('y', "Todos los poemas que me has enseñado son espectaculares.")
		elseif cl == 674 then
		cw('y', "Puedo sentir tus emociones...")
		elseif cl == 675 then
			updateYuri('2','m')
		cw('y', "Hasta estoy un poco celosa...")
		elseif cl == 676 then
		cw('y', "Creo que nunca me ha salido tan natural.")
		elseif cl == 677 then
		cw('mc', "Yuri, te estás equivocando.")
		elseif cl == 678 then
		cw('mc', "Esto no me ha salido tan natural sin más.")
		elseif cl == 679 then
		cw('mc', "Sino que he podido mejorar tanto gracias a ti.")
		elseif cl == 680 then
		cw('mc', "Eres el ejemplo que estaba buscando.")
		elseif cl == 681 then
			updateYuri('3','u')
		cw('y', "¿A-ah, sí?")
		elseif cl == 682 then
		cw('bl', "Yuri sonríe ligeramente.")
		elseif cl == 683 then
		cw('y', "Esta sensación...")
		elseif cl == 684 then
		cw('y', "Me alegro tanto... de haber podido compartir mis poemas.")
		elseif cl == 685 then
			updateYuri('4','e2')
		cw('y', "No me imaginaba que me sentiría así.")
		elseif cl == 686 then
		cw('mc', "Recuerdo que ayer dijiste algo parecido.")
		elseif cl == 687 then
		cw('mc', "No me creo que seas tan buena en algo y no lo hayas compartido nunca.")
		elseif cl == 688 then
		cw('mc', "Es una pena.")
		elseif cl == 689 then
			updateYuri('2','u')
		cw('y', "Quizá, pero...")
		elseif cl == 690 then
		cw('y', "Tampoco es... que tuviera otra opción.")
		elseif cl == 691 then
		cw('mc', "¿Qué quieres decir?")
		elseif cl == 692 then
		cw('y', "Bueno...")
		elseif cl >= 693 then
			ch3_y_good_shared()
		end
	end
end

function ch3_y_good_shared()
	if cl < 705 and cl ~= 666 then
		scriptJump(705)
	elseif cl == 705 then
		audioUpdate('9')
		cw('bl', "Yuri sonríe con tristeza.")
	elseif cl == 706 then
		updateYuri('1','u')
		cw('y', "" .. player .. ", yo como sola a la hora de la comida.")
	elseif cl == 707 then
		cw('y', "¿Lo sabías?")
	elseif cl == 708 then
		cw('y', "Es un momento perfecto para encontrar un sitio tranquilo en el que leer.")
	elseif cl == 709 then
		cw('y', "De hecho...")
	elseif cl == 710 then
		updateYuri('2','s')
		cw('y', "Siempre llevo un libro encima.")
	elseif cl == 711 then
		cw('y', "Se podría decir que me encanta la lectura...")
	elseif cl == 712 then
		cw('y', "Bueno, al menos es una forma de decirlo...")
	elseif cl == 713 then
		cw('s', "Pero...")
	elseif cl == 714 then
		cw('y', "Los libros están llenos de personajes increíbles e inspiradores.")
	elseif cl == 715 then
		cw('y', "Personajes de los que te quieres enamorar.")
	elseif cl == 716 then
		cw('y', "O personajes de los cuales sabes que serían buenos amigos.")
	elseif cl == 717 then
		updateYuri('1','m')
		cw('y', "Personajes alegres, que siempre logran hacerte sonreír...")
	elseif cl == 718 then
		cw('y', "O pensadores, de los que resuelven problemas y que descubren los misterios de la vida.")
	elseif cl == 719 then
		cw('y', "Así que si lo miras de esa forma...")
	elseif cl == 720 then
		cw('y', "Estoy rodeada de amigos cada día.")
	elseif cl == 721 then
		cw('y', "¿Sabes?")
	elseif cl == 722 then
		updateYuri('2','s')
		cw('y', "Y estos no se ríen de mí...")
	elseif cl == 723 then
		cw('y', "No se meten conmigo por quedarme en babia todo el rato...")
	elseif cl == 724 then
		cw('y', "No se ríen de mi cuerpo...")
	elseif cl == 725 then
		cw('y', "Y...")
	elseif cl == 726 then
		updateYuri('3','v')
		cw('y', "¡Y no me odian por parecer una sabelotodo!")
	elseif cl == 727 then
		cw('mc', "¿La gente... dice eso de ti?")
	elseif cl == 728 then
		cw('y', "¡No soy una sabelotodo, " .. player .. "!")
	elseif cl == 729 then
		cw('y', "Al contrario. ¡No sé nada!")
	elseif cl == 730 then
		updateYuri('4','b2')
		cw('y', "No sé cómo hablarle a la gente.")
	elseif cl == 731 then
		cw('y', "No sé cómo hacer que la gente me vea como a una persona normal.")
	elseif cl == 732 then
		cw('y', "¡Ni siquiera sé cómo ser feliz!")
	elseif cl == 733 then
		cw('y', "Así es como me siento...")
	elseif cl == 734 then
		cw('y', "Y lo único que puedo hacer es leer y escribir...")
	elseif cl == 735 then
		cw('y', "Pero no ha sido hasta ahora...")
	elseif cl == 736 then
		updateYuri('2','s')
		cw('y', "Que he empezado a compartir todo contigo...")
	elseif cl == 737 then
		cw('y', "Es cuando he entendido qué es lo que me faltaba.")
	elseif cl == 738 then
		cw('mc', "Pero si no he hecho nada...")
	elseif cl == 739 then
		cw('y',"No...")
	elseif cl == 740 then
		cw('y', "Te equivocas.")
	elseif cl == 741 then
		cw('y', "Has sido paciente y respetuoso...")
	elseif cl == 742 then
		updateYuri('3','u')
		cw('y', "Todo eso es... muy importante para mí.")
	elseif cl == 743 then
		cw('y', "Sé que soy algo difícil de lidiar, " .. player .. "...")
	elseif cl == 744 then
		cw('y', "Hablo lentamente...")
	elseif cl == 745 then
		cw('y', "No paro de corregirme todo el rato...")
	elseif cl == 746 then
		cw('y', "Siempre le doy demasiadas vueltas a las cosas...")
	elseif cl == 747 then
		cw('y', "Pero siempre...")
	elseif cl == 748 then
		cw('y', "Tú siempre me has tratado como al resto.")
	elseif cl == 749 then
		cw('y', "Es tan raro que ahora me siento cómoda hablando con los demás...")
	elseif cl == 750 then
		cw('y', "Pero por eso, cada vez que hablo contigo...")
	elseif cl == 751 then
		updateYuri('2','s')
		cw('y', "Me siento muy feliz.")
	elseif cl == 752 then
		cw('mc', "Ya veo...")
	elseif cl == 753 then
		cw('mc', "Bueno, te trato como mereces que te traten, Yuri.")
	elseif cl == 754 then
		cw('mc', "Y si los demás no lo ven, que les den.")
	elseif cl == 755 then
		cw('mc', "Mira, me uní al club esperando hacer nuevos amigos.")
	elseif cl == 756 then
		cw('mc', "Y, al menos, puedo decir que he tenido éxito una vez.")
	elseif cl == 757 then
		cw('mc', "¿No crees?")
	elseif cl == 758 then
		updateYuri('4','b2')
		cw('mc', "Mmm...")
	elseif cl == 759 then
		cw('y', "Diciéndolo así...")
	elseif cl == 760 then
		cw('y', "Pues sí.")
	elseif cl == 761 then
		updateYuri('4','e2')
		cw('y', "Ya somos amigos de verdad, ¿no?")
	elseif cl == 762 then
		cw('bl', "Yuri se pone las manos en la cabeza.")
	elseif cl == 763 then
		cw('bl', "Pero esta vez sonríe.")
	elseif cl == 764 then
		cw('mc', "¿Quieres enseñarme tu poema?")
	elseif cl == 765 then
		updateYuri('3','s')
		cw('y', "Sí.")
	elseif cl == 766 then
		cw('y', "¡Claro!")
	elseif cl == 767 then
		cw('y', "Déjame ir a por él.")
	elseif cl >= 768 then
		ch3_y_end()
	end
end

function ch2_n_end()
	if cl < 760 and cl ~= 666 then
		scriptJump(760)
	elseif cl == 760 then
		poem('poem_n2')
	elseif cl == 761 then
		scriptJump(763)
	elseif cl == 763 then
		poem_disable()
		updateNatsuki('2','a')
		cw('n', "Nada mal, ¿eh?")
	elseif cl == 764 then
		cw('mc', "Es un poco más largo que el de ayer.")
	elseif cl == 765 then
		updateNatsuki('2','w')
		cw('n', "El de ayer era demasiado corto...")
	elseif cl == 766 then
		cw('n', "¡Solo estaba calentando!")
	elseif cl == 767 then
		updateNatsuki('2','c')
		cw('n', "Espero no haberte dado la impresión de que eso era lo mejor que podía hacer.")
	elseif cl == 768 then
		cw('mc', "Por supuesto que no...")
	elseif cl == 769 then
		updateNatsuki('2','a')
		cw('n', "De todas formas, está claro el mensaje que tiene el poema.")
	elseif cl == 770 then
		cw('n', "No creo que haga falta explicarlo.")
	elseif cl == 771 then
		updateNatsuki('2','c')
		cw('n', "A veces puedes explicar algo complejo con analogías mucho más simples...")
	elseif cl == 772 then
		cw('n', "Además, ayuda a que la gente se dé cuenta de lo estúpida que es.")
	elseif cl == 773 then
		updateNatsuki('2','g')
		cw('n', "Cualquiera estaría de acuerdo con que el sujeto de este poema es un puto ignorante...")
	elseif cl == 774 then
		cw('mc', "¿Conoces a gente así?")
	elseif cl == 775 then
		updateNatsuki('2','c')
		cw('n', "Claro, es lo que piensa todo el mundo de mí...")
	elseif cl == 776 then
		updateNatsuki('5','w')
		cw('n', "¡Eso da igual! ¡Puede ser sobre cualquier cosa!")
	elseif cl == 777 then
		updateNatsuki('5','h')
		cw('n', "Lo compuse para que fuese fácil sentirse identificado...")
	elseif cl == 778 then
		cw('n', "Todo el mundo tiene algún pasatiempo raro o algún gusto inconfesable.")
	elseif cl == 779 then
		updateNatsuki('5','q')
		cw('n', "Es algo que temes a que la gente se entere, se burlarían o pensarían muy mal de ti.")
	elseif cl == 780 then
		updateNatsuki('1','e')
		cw('n', "¡Eso es lo que les hace estúpidos!")
	elseif cl == 781 then
		cw('n', "¿A quién le importa lo que le guste a esa persona? Siempre y cuando le haga feliz sin hacer daño a nadie.")
	elseif cl == 782 then
		updateNatsuki('1','q')
		cw('n', "Creo que la gente debería aprender a respetar a los demás por gustarles cosas raras...")
	elseif cl == 783 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
		cw('mc', "Ja, qué raro...")
		else
		cw('mc', "Bueno, tenías toda la razón.")
		end
	elseif cl == 784 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
		cw('mc', "Yuri compuso hoy un poema parecido.")
		else
		cw('mc', "Al menos puedo sentirme identificado con esto.")
		end
	elseif cl == 785 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
			updateNatsuki('1','h')
		cw('n', "¿Eh?")
		else
		cw('mc', "Y estoy seguro de que hay mucha más gente que también.")
		end
	elseif cl == 786 then
		if readpoem.y == 1 and (y_poemappeal[1] >= 0 or y_poemappeal[2] >= 0) then
		cw('n', "¿Has dicho Yuri?")
		else
			scriptJump(805)
		end
	elseif cl == 787 then
		cw('mc', "Sí...")
	elseif cl == 788 then
		cw('mc', "Dijo que su poema iba sobre uno de sus pasatiempos raros.")
	elseif cl == 789 then
		cw('mc', "No lo he pillado, pero me ha dicho algo parecido a lo tuyo.")
	elseif cl == 790 then
		cw('mc', "Que la gente no debería hacer sentir incómodo a nadie con este tipo de cosas.")
	elseif cl == 791 then
		updateNatsuki('1','q')
		cw('n', "¿En serio?")
	elseif cl == 792 then
		cw('n', "Bueno...")
	elseif cl == 793 then
		updateNatsuki('1','t')
		cw('n', "A ver, Yuri es bastante rarita, así que no me extraña que tenga pasatiempos raros...")
	elseif cl == 794 then
		cw('n', "¡Aunque tampoco hay nada malo en eso!")
	elseif cl == 795 then
		updateNatsuki('1','u')
		cw('n', "Em...")
	elseif cl == 796 then
		cw('n', "No es... como si fuera a juzgarla ni nada...")
	elseif cl == 797 then
		cw('bl', "A Natsuki le cuesta expresarse.")
	elseif cl == 798 then
		updateNatsuki('1','q')
		cw('n', "Su-supongo que debería intentar ser menos borde con ella...")
	elseif cl == 799 then
		cw('n', "Si se siente incómoda sobre sus comportamientos tan raros y tal...")
	elseif cl == 800 then
		cw('n', "O sea, yo odio a quienes me hacen sentir incómoda...")
	elseif cl == 801 then
		updateNatsuki('1','w')
		cw('n', "¡Y ayer Yuri me hizo sentir incómoda!")
	elseif cl == 802 then
		updateNatsuki('1','s')
		cw('n', "Pero por lo que dices, parece que ya ha aprendido la lección...")
	elseif cl == 803 then
		cw('mc', "Bueno, eso parece.")
	elseif cl == 804 then
		cw('mc', "Aunque tengáis un estilo muy diferente, seguro que aprecia el mensaje de tu poema.")
	elseif cl >= 805 then
		if appeal.n >= 2 then
			if cl == 805 then
				updateNatsuki('4','h')
		cw('n', "Ya sabes...")
			elseif cl == 806 then
		cw('n', "Me alegra que puedas apreciar este estilo de composición...")
			elseif cl == 807 then
				updateNatsuki('4','q')
		cw('n', "Quiero decir, ya sé que ayer estuvimos hablando sobre el mismo tema.")
			elseif cl == 808 then
		cw('n', "Pero... bueno, me ha gustado compartir mis poemas contigo, así que...")
			elseif cl == 809 then
				updateNatsuki('4','w')
		cw('n', "Así que considérate afortunado, ¿vale?")
			elseif cl == 810 then
		cw('mc', "Ja, ja, ja.")
			elseif cl == 811 then
		cw('mc', "Bueno, gracias por ser sincera.")
			elseif cl == 812 then
				updateNatsuki('1','n')
		cw('n', "¿Qué quieres decir con eso?")
			elseif cl == 813 then
		cw('n', "¡Yo siempre soy sincera!")
			elseif cl == 814 then
				updateNatsuki('1','2b')
		cw('n', "Ainss...")
			elseif cl == 815 then
		cw('n', "Tú espera a mañana y verás, ¿vale?")
			elseif cl == 816 then
		cw('mc', "Vale.")
			elseif cl == 817 then
				poemfinish('n')
			end
		else	
			if cl == 805 then
				updateNatsuki('4','c')
		cw('n', "Después de todo, ¡es lo que mejor se me da!")
			elseif cl == 806 then
		cw('n', "No me gusta componer a menos que pueda sacar algo de ello.")
			elseif cl == 807 then
		cw('n', "Transmitir emociones y tal es importante...")
			elseif cl == 808 then
		cw('n', "No solo quiero que sientan, también quiero que piensen.")
			elseif cl == 809 then
				updateNatsuki('4','b')
		cw('n', "¡Que te quede claro!")
			elseif cl == 810 then
		cw('n', "Mañana volveré a componer otro, así que más te vale tener ganas.")
			elseif cl == 811 then
				poemfinish('n')
			end
		end
	end
end

function ch2_n_bad()
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
		elseif cl == 674 then
			updateNatsuki('2','c')
		cw('n', "Pero sigue sin gustarme hacer esto.")
		elseif cl == 675 then
		cw('n', "Creo que pretende ser demasiado serio.")
		elseif cl == 676 then
		cw('mc', "¿Eh? ¿Qué quieres decir con eso?")
		elseif cl >= 677 then
			ch2_n_bad_sharedwithch3()
		end
	else
		if cl == 670 then
			updateNatsuki('1','k')
		cw('n', "Mmm...")
		elseif cl == 671 then
		cw('n', "Me gustó más el anterior.")
		elseif cl == 672 then
		cw('mc', "¿Eh? ¿En serio?")
		elseif cl == 673 then
			updateNatsuki('2','c')
		cw('n', "Claro. En este te veo mucho más osado.")
		elseif cl == 674 then
		cw('n', "Pero todavía te falta mucho. Qué desastre.")
		elseif cl == 675 then
		cw('mc', "Tienes toda la razón, estaba intentando probar algo diferente.")
		elseif cl == 676 then
		cw('mc', "Todavía le estoy dando muchas vueltas a esto.")
		elseif cl == 677 then
			updateNatsuki('2','k')
		cw('n', "A ver, a mí me gustan los poemas más simples.")
		elseif cl == 678 then
			updateNatsuki('2','q')
		cw('n', "Odio cuando alguien quiere sonar más pijo o le mete más significados usando palabras pomposas y complicadas.")
		elseif cl == 679 then
			updateNatsuki('4','b')
		cw('n', "¡Lo mejor es simple, adorable y conciso!")
		elseif cl == 680 then
			updateNatsuki('4','y')
		cw('n', "A Yuri le pirra este tipo de mensajes tan crípticos, pero yo sé cuál es su rollo. ¡Ja!")
		elseif cl == 681 then
			updateNatsuki('4','2a')
		cw('n', "Hacer que el lector tenga que buscar algo tan profundo no es más que una fachada para la falta de significado.")
		elseif cl == 682 then
		cw('mc', "Supongo que es una forma de verlo.")
		elseif cl == 683 then
		cw('n', "Bueno, cada uno tiene su opinión.")
		elseif cl == 684 then
		cw('n', "Pero la mía es la mejor. Estoy segura de que ya te has dado cuenta.")
		elseif cl == 685 then
		cw('mc', "Em...")
		elseif cl == 686 then
			updateNatsuki('2','a')
		cw('n', "Bueno, aquí tienes mi poema. Quizá aprendas algo.")
		elseif cl >= 687 then
			ch2_n_end()
		end
	end
end

function ch2_n_bad_sharedwithch3()
	if cl < 678 and cl ~= 666 then
		scriptJump(678)
	elseif cl == 678 then
		updateNatsuki('4','c')
		cw('n', "Los poemas no tienen por qué ser superprofundos para expresar algo.")
	elseif cl == 679 then
		cw('n', "A no ser que seas un experto, parecerá que lo estás forzando.")
	elseif cl == 680 then
		updateNatsuki('4','w')
		cw('n', "Si te soy sincera, no te molestes en escribir poemas así hasta que llegues al nivel de Yuri...")
	elseif cl == 681 then
		updateNatsuki('4','o')
		cw('bl', "Natsuki se corta de repente.")
	elseif cl == 682 then
		updateNatsuki('1','o')
		cw('n', "N-no... me digas que...")
	elseif cl == 683 then
		cw('mc',"¿Eh?")
	elseif cl == 684 then
		cw('n', "No estarás... intentado impresionar a Yuri, ¡¿no?!")
	elseif cl == 685 then
		cw('mc', "¿¿D-de qué estás hablando?? ¡Baja la voz!")
	elseif cl == 686 then
		updateNatsuki('1','x')
		cw('n', "¡¡Sabías que a Yuri le encantaría... este tipo de angustia!!")
	elseif cl == 687 then
		cw('mc', "Solo por que sea una escritora con talento no significa que... Qui-quiero decir...")
	elseif cl == 688 then
		updateNatsuki('1','o')
		cw('n', "Em...")
	elseif cl == 689 then
		cw('bl', "Parece que me he metido en un lío.")
	elseif cl == 690 then
		cw('bl', "Creo que he dado de lleno en una de sus inseguridades, pero no tengo ni idea de qué le he hecho.")
	elseif cl == 691 then
		updateNatsuki('1','c')
		cw('n', "Estoy hasta el moño de ti.")
	elseif cl == 692 then
		cw('bl', "Natsuki me tira el poema que le había dejado.")
	elseif cl == 693 then
		updateNatsuki('5','w')
		cw('n', "Toma tu estúpido poema. ¡Si lo escribiste para otra persona, no me lo enseñes!")
	elseif cl == 694 then
		cw('mc', "Au...")
	elseif cl == 695 then
		cw('bl', "Esto es lo que me pasa por dejar que se meta de por medio una chica más joven.")
	elseif cl == 696 then
		cw('bl', "Estaba destinado a sufrir con ella a no ser que fuera mentalista.")
	elseif cl == 697 then
		cw('bl', "Al menos Natsuki no era la chica a la que intentaba sorprender...")
	elseif cl == 698 then
		poemfinish('n')
	end
end

function ch2_n_med()
	if n_poemappeal[1] < 0 then
		if cl == 670 then
		cw('n', "Mmm...")
		elseif cl == 671 then
			updateNatsuki('2','k')
		cw('n', "Bueno, lo que sí es verdad, es que este está mucho mejor que el anterior.")
		elseif cl == 673 then
		cw('n', "Es bueno ver que estás poniendo de tu parte.")
		elseif cl == 672 then
		cw('mc', "Eso es bueno...")
		elseif cl >= 674 then
			ch2_n_med_shared()
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
			ch2_n_med_shared()
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
		elseif cl >= 676 then
			ch2_n_med_shared()
		end
	end
end

function ch2_n_med_shared()
	if cl < 684 and cl ~= 666 then
		scriptJump(684)
	elseif cl == 684 then
		updateNatsuki('2','c')
		cw('n', "Ahora que lo pienso, me recuerda un poco al poema de ayer de Sayori...")
	elseif cl == 685 then
		cw('mc', "¿Eh? ¿Tú crees?")
	elseif cl == 686 then
		updateNatsuki('2','j')
		cw('n', "Sí. Bueno, supongo que si lleváis tanto tiempo siendo amigos estaréis sincronizados o algo.")
	elseif cl == 687 then
		updateNatsuki('2','k')
		cw('n', "Aunque no tenías pinta de ser su tipo.")
	elseif cl == 688 then
		cw('mc', "Ah, ¿pero que resulta que ahora Sayori tiene un «tipo»?")
	elseif cl == 689 then
		updateNatsuki('4','2c')
		cw('n', "¡Bueno, yo qué sé! Pero entonces, ¿cómo puede ser que alguien tan... em, dulce... pase tanto tiempo contigo?")
	elseif cl == 690 then
		cw('n', "Es como si estuviera arrastrando un peso muerto.")
	elseif cl == 691 then
		cw('mc', "Agh, eso sí que era innecesario...")
	elseif cl == 692 then
		cw('mc', "Pero piénsalo así, de no ser por mí, se podría haber ido volando como un globo al dejarlo ir.")
	elseif cl == 693 then
		cw('mc', "Se podría decir que cuidamos el uno del otro a nuestra manera.")
	elseif cl == 694 then
		updateNatsuki('2','q')
		cw('n', "Sea lo que sea, no lo pillo...")
	elseif cl == 695 then
		cw('n', "Ah, sí... supongo que ahora te tengo que enseñar mi poema.")
	elseif cl == 696 then
		cw('n', "Toma.")
	elseif cl >= 697 then
		if chapter == 2 then ch2_n_end()
		elseif chapter == 3 then ch3_n_end()
		end
	end
end
	
function ch2_n_good()
	if n_poemappeal[1] ~= 1 then
		if cl == 670 then
			updateNatsuki('1','h')
			cw('n',"...")
		elseif cl == 671 then
		cw('bl', "Natsuki lee mi poema.")
		elseif cl == 672 then
		cw('bl', "Va alternando entre mirarme a mí y al poema.")
		elseif cl == 673 then
		cw('bl', "Seguramente le haya dado tiempo a leerlo más de una vez.")
		elseif cl == 674 then
			updateNatsuki('1','q')
		cw('n', "¿No se supone que se te debería dar mal esto?")
		elseif cl == 675 then
		cw('mc', "¿Eso es un cumplido?")
		elseif cl == 676 then
			updateNatsuki('1','o')
		cw('n', "Ya sabes...")
		elseif cl == 677 then
		cw('bl', "A Natsuki le cuesta encontrar las palabras adecuadas.")
		elseif cl == 678 then
			updateNatsuki('5','w')
		cw('n', "Es solo que... me esperaba algo peor después de lo de ayer.")
		elseif cl == 679 then
		cw('n', "Eso es todo.")
		elseif cl == 680 then
		cw('mc', "Bueno, supongo que he tenido suerte con este.")
		elseif cl == 681 then
			updateNatsuki('4','t')
		cw('n', "¡¡S-sí!! ¡Exacto!")
		elseif cl == 682 then
		cw('n', "Solo has tenido suerte, ¿sabes?")
		elseif cl == 683 then
			updateNatsuki('4','y')
		cw('n', "No te acostumbres.")
		elseif cl == 684 then
		cw('n', "No siempre podrás componer poemas así de adorables. ¡Es decir...!")
		elseif cl == 685 then
			updateNatsuki('1','p')
		cw('n', "¡Quería decir bien estructurado! No, digo...")
		elseif cl == 686 then
		cw('mc', "Ah, así es eso. ¿Mi poema es adorable?")
		elseif cl == 687 then
			updateNatsuki('1','v')
		cw('n', "¡No! ¡¿Por qué sonríes?! ¡Ni que me gustaran las cosas adorables!")
		elseif cl == 688 then
		cw('bl', "Natsuki me devuelve mi poema.")
		elseif cl == 689 then
			updateNatsuki('4','w')
		cw('n', "¡J-ja! Ahora que lo leo otra vez, opino que no está tan bien como te había dicho.")
		elseif cl == 690 then
		cw('n', "Es demasiado adorable y doki-doki.")
		elseif cl == 691 then
			updateNatsuki('4','t')
		cw('n', "Con eso solo impresionarás... ya sabes, a las chicas... que les gusten este tipo de cosas.")
		elseif cl == 692 then
		cw('n', "¡Ja, ja, ja!")
		elseif cl == 693 then
		cw('bl', "Por alguna razón, Natsuki es como un libro abierto.")
		elseif cl == 694 then
			updateNatsuki('1','w')
		cw('n', "¡Bueno, da igual!")
		elseif cl == 695 then
			updateNatsuki('1','h')
		cw('n', "Ahora vamos a leer el mío, ¿sí?")
		elseif cl == 696 then
		cw('n', "A juzgar por tus gustos, este te gustará mucho.")
		elseif cl == 697 then
			updateNatsuki('2','q')
		cw('n', "Seguramente también aprenderás algo. No te olvides de quién es la verdadera profesional.")
		elseif cl >= 698 then
			if chapter == 2 then ch2_n_end()
			elseif chapter == 3 then ch3_n_end()
			end
		end
	else
		ch2_n_good_sharedwithch3()
	end
end

function ch2_n_good_sharedwithch3()
	local unfairto = 'Sayori'
	if readpoem.s == 1 then
		unfairto = "Yuri"
	end
	if cl == 670 then
		updateNatsuki('1','n')
		cw('n',"...")
	elseif cl == 671 then
		cw('bl', "Natsuki lee mi poema.")
	elseif cl == 672 then
		cw('bl', "Va alternando entre mirarme a mí y al poema.")
	elseif cl == 673 then
		cw('bl', "Seguramente le haya dado tiempo a leerlo más de una vez.")
	elseif cl == 674 then
		updateNatsuki('1','u')
		cw('n', "Argh...")
	elseif cl == 675 then
		cw('mc',"¿...?")
	elseif cl == 676 then
		cw('mc', "¿Tan malo es?")
	elseif cl == 677 then
		updateNatsuki('1','r')
		cw('n', "¡No! ¡Para nada!")
	elseif cl == 678 then
		cw('n', "Es bueno, ¿vale? ¡Es muy bueno!")
	elseif cl == 679 then
		updateNatsuki('5','w')
		cw('n', "¡Hale! ¡Ya lo he dicho!")
	elseif cl == 680 then
		cw('n', "¡Agh! ¡Esto no tenía que pasar!")
	elseif cl == 681 then
		updateNatsuki('5','s')
		cw('n', "¿Por qué no se te puede dar mal y ya?")
	elseif cl == 682 then
		cw('n', "¡Se supone que mis poemas te tienen que impresionar a ti y no al revés!")
	elseif cl == 683 then
		cw('mc', "¿Estás intentando impresionarme?")
	elseif cl == 684 then
		updateNatsuki('1','2c')
		cw('n', "¡Obviamente! ¿Crees que voy a dejar que te gusten más los poemas de Yuri que los míos?")
	elseif cl == 685 then
		cw('n', "Venga ya.")
	elseif cl == 686 then
		cw('mc', "Bueno...")
	elseif cl == 687 then
		cw('mc', "En ese caso, ¿qué problema hay si te intento impresionar?")
	elseif cl == 688 then
		updateNatsuki('1','e')
		cw('n', "¡Pues te lo voy a decir! Tú...")
	elseif cl == 689 then
		updateNatsuki('1','p')
		cw('n',"...")
	elseif cl == 690 then
		cw('bl', "Natsuki se queda paralizada, como si se hubiese dado cuenta de algo.")
	elseif cl == 691 then
		cw('n', "T-t-tú...")
	elseif cl == 692 then
		cw('n', "¿Estás intentando sorprenderme... a mí?")
	elseif cl == 693 then
		updateNatsuki('1','q')
		cw('bl', "Natsuki vuelve a leerse mi poema enérgicamente.")
	elseif cl == 694 then
		cw('bl', "Entonces, el poema se le cae de las manos y este cae lentamente hasta el suelo.")
	elseif cl == 695 then
		updateNatsuki('1','p')
		cw('n', "¡Tengo... que ir al baño!")
	elseif cl == 696 then
		hideNatsuki()
		cw('bl', "Roja como un tomate, Natsuki sale corriendo del aula.")
	elseif cl == 697 then
		updateMonika('1','d',80)
		cw('m', "Oye, " .. player .. "...")
	elseif cl == 698 then
		cw('m', "¿Qué le has hecho a Natsuki?")
	elseif cl == 699 then
		cw('m', "Acabo de verla salir corriendo...")
	elseif cl == 700 then
		updateMonika('2','g')
		cw('m', "No le habrás hecho nada malo, ¿no?")
	elseif cl == 701 then
		cw('mc', "¡N-no!")
	elseif cl == 702 then
		cw('mc', "Solo le he dicho que...")
	elseif cl == 703 then
		cw('bl', "Se me corta la voz.")
	elseif cl == 704 then
		cw('bl', "No puedo decirle a Monika que intentaba impresionar a Natsuki.")
	elseif cl == 705 then
		updateMonika('2','d')
		cw('m', "¿Sí?")
	elseif cl == 706 then
		cw('bl', "Monika ve el poema en el suelo y se agacha para cogerlo.")
	elseif cl == 707 then
		if readpoem.m == 1 then
		cw('bl', "Le echa otro vistazo rápido sin perder la sonrisa.")
		else
		cw('bl', "Lo vuelve a leer sin perder la sonrisa.")
		end
	elseif cl == 708 then
		updateMonika('2','a')
		cw('mc', "Ya veo.")
	elseif cl == 709 then
		if readpoem.m == 1 then
		cw('m', "Al principio pensaba que te gustaba su estilo...")
		else
		cw('m', "Lo has compuesto para Natsuki, ¿no?")
		end
	elseif cl == 710 then
		if readpoem.m == 1 then
		cw('m', "Pero lo has compuesto para Natsuki, ¿verdad?")
		else
			scriptJump(711)
		end
	elseif cl == 711 then
		cw('mc', "Pu-pues...")
	elseif cl == 712 then
		cw('mc', "No creas...")
	elseif cl == 713 then
		updateMonika('2','d')
		cw('m', "De hecho, el otro día también le encantó tu poema, ¿no?")
	elseif cl == 714 then
		cw('m', "Me sorprende que ya conozcas tan bien sus gustos.")
	elseif cl == 715 then
		updateMonika('4','a')
		cw('m', "Seguro que no estás haciendo trampas, ¿" .. player .. "?")
	elseif cl == 716 then
		cw('mc', "¿Trampas?")
	elseif cl == 717 then
		cw('mc', "¿Qué insinúas?")
	elseif cl == 718 then
		updateMonika('5a')
		cw('m', "Da igual, era broma. ¡Ja, ja, ja!")
	elseif cl == 719 then
		cw('bl', "No he entendido la broma de Monika.")
	elseif cl == 720 then
		cw('m', "Bueno...")
	elseif cl == 721 then
		updateMonika('1','a')
		cw('m', "¿Qué crees que siente Natsuki por ti?")
	elseif cl == 722 then
		cw('m', "Ah, no tienes por qué responder.")
	elseif cl == 723 then
		cw('m', "Lo he dicho para que reflexiones sobre ello.")
	elseif cl == 724 then
		updateNatsuki('4','e',-40)
		cw('n', "¡Oye!")
	elseif cl == 725 then
		cw('bl', "Natsuki vuelve y le quita el poema a Monika.")
	elseif cl == 726 then
		cw('bl', "Ninguno de los dos la ha visto entrar.")
	elseif cl == 727 then
		cw('n', "¿Lo has leído, Monika?")
	elseif cl == 728 then
		updateMonika('1','j')
		cw('m', "¡Por supuesto! ¡Me ha encantado!")
	elseif cl == 729 then
		updateMonika('1','a')
		updateNatsuki('1','r')
		cw('n', "Agh.")
	elseif cl == 730 then
		cw('n', "Pues no deberías leer cosas que no van dirigidas a ti.")
	elseif cl == 731 then
		cw('n', "Tienes la mala costumbre.")
	elseif cl == 732 then
		updateMonika('1','d')
		cw('m',"¿Eh?")
	elseif cl == 733 then
		cw('m', "Pero lo ha compuesto " .. player .. ".")
	elseif cl == 734 then
		updateMonika('1','a')
		cw('m', "Y se supone que tenemos que enseñarlos a todos, ¿no?")
	elseif cl == 735 then
		updateNatsuki('1','x')
		cw('n', "Uuuh...")
	elseif cl == 736 then
		cw('bl', "Natsuki se queda de piedra.")
	elseif cl == 737 then
		cw('bl', "Al parecer, se ha olvidado de que técnicamente todos pueden leer el poema.")
	elseif cl == 738 then
		updateNatsuki('4','2c')
		cw('n', "Bueno, vale, creo que " .. player .. " ya ha terminado de enseñar el poema.")
	elseif cl == 739 then
		cw('n', "Tampoco creo que nadie vaya a querer leer esto.")
	elseif cl == 740 then
		updateNatsuki('4','h')
		cw('n', "De hecho, me lo voy a quedar.")
	elseif cl == 741 then
		updateMonika('5a')
		cw('m', "Si insistes~")
	elseif cl == 742 then
		updateNatsuki('1','i')
		cw('n', "¿Cómo?")
	elseif cl == 743 then
		cw('n', "¿¿Por qué me miras así??")
	elseif cl == 744 then
		cw('m', "¿Así cómo?")
	elseif cl == 745 then
		updateNatsuki('1','2b')
		cw('n', "Agh.")
	elseif cl == 746 then
		cw('n', "Déjalo.")
	elseif cl == 747 then
		if poemsread >= 3 then
		cw('bl', "Bueno, supongo Natsuki se queda con mi poema.")
		else
		cw('mc', "Ah, Natsuki...")
		end
	elseif cl == 748 then
		if poemsread >= 3 then
		cw('bl', "Tampoco tenía intención de quedármelo.")
		else
			cw('mc',"Quédate el poema, pero no es justo para "..unfairto.."...")
		end
	elseif cl == 749 then
		if poemsread >= 3 then
			scriptJump(757)
		else
		cw('mc', "Aún no ha podido leerlo.")
		end
	elseif cl == 750 then
		updateNatsuki('2','q')
		cw('n', "¿Y qué?")
	elseif cl == 751 then
		updateMonika('2','a')
		cw('m', "Bueno, supongo que " .. player .. " tiene razón, Natsuki...")
	elseif cl == 752 then
		cw('m', "No es justo impedir que el resto lo lea.")
	elseif cl == 753 then
		cw('n',"...")
	elseif cl == 754 then
		updateNatsuki('2','h')
		cw('n', "Vale.")
	elseif cl == 755 then
		cw('bl', "Natsuki me devuelve el poema.")
	elseif cl == 756 then
		cw('n', "Ni que le vaya a gustar.")
	elseif cl == 757 then
		hideMonika()
		updateNatsuki('2','h',80)
		cw('n', "Bueno, ahora lee mi poema.")
	elseif cl == 758 then
		updateNatsuki('4','h')
		cw('n', "Y no, no podrás quedártelo.")
	elseif cl == 759 then
		cw('n', "Es mi única copia.")
	elseif cl >= 760 then
		if chapter == 2 then ch2_n_end()
		elseif chapter == 3 then ch3_n_end()
		end
	end
end

function ch3_n_end()
	if cl < 760 then
		scriptJump(760)
	elseif cl >= 760 then
		if appeal.n >= 3 then
			ch3_n_end_special()
		else
			if cl == 760 then
				poem('poem_n3')
			elseif cl == 761 then
				scriptJump(764)
			elseif cl == 764 then
				poem_disable()
				updateNatsuki('2','a')
		cw('n', "...")
			elseif cl == 765 then
		cw('n', "Me había fijado en que solo escribía sobre cosas negativas, así que, quería que este tuviese un mensaje bonito para variar.")
			elseif cl == 766 then
				updateNatsuki('2','z')
		cw('n', "Además... ¡la playa es genial!")
			elseif cl == 767 then
				updateNatsuki('2','j')
		cw('n', "Resulta difícil escribir algo negativo sobre la playa.")
			elseif cl == 768 then
				if readpoem.y == 0 or appeal.y >= 3 then
		cw('mc', "Entonces, primero te decidiste por la playa, ¿y luego se te ocurrió el mensaje?")
				else
		cw('mc', "Bueno, la interpretación de Yuri era un poco más solemne.")
				end
			elseif cl == 769 then
				if readpoem.y == 0 or appeal.y >= 3 then	
					updateNatsuki('2','c')
		cw('n', "Sí, bueno...")
				else
					updateNatsuki('5','h')
		cw('n', "Bueno, eso...")
				end
			elseif cl == 770 then
				if readpoem.y == 0 or appeal.y >= 3 then
		cw('n', "Es por lo que ocurrió ayer.")
				else
					updateNatsuki('4','2c')
		cw('n', "Buf, ¡más le vale que no haya dicho nada malo sobre mí!")
				end
			elseif cl == 771 then
				if readpoem.y == 0 or appeal.y >= 3 then
					updateNatsuki('5','q')
		cw('n', "Es decir, después de que Yuri y yo nos diésemos cuenta de que habíamos escrito sobre lo mismo...")
				else
		cw('n', "Después de todo, ella es la que quería escribir sobre el mismo tema.")
				end
			elseif cl == 772 then
				if readpoem.y == 0 or appeal.y >= 3 then
		cw('n', "Ella quería que escogiéramos el mismo tema, o algo así.")
				else
					scriptJump(776)
				end
			elseif cl == 773 then
				if readpoem.y == 1 then
		cw('mc', "Ya veo...")
				else
					scriptJump(776)
				end
			elseif cl == 774 then
		cw('bl', "Algo me dice que el poema que me ha enseñado Yuri no es el que pretende enseñar al resto...")
			elseif cl == 775 then
		cw('bl', "Por razones obvias, decido no mencionarle nada a Natsuki.")
			elseif cl == 776 then
				updateNatsuki('1','s')
		cw('n', "Agh, no me extrañaría nada viniendo de ella.")
			elseif cl == 777 then
		cw('n', "Hacer que las dos escribamos sobre el mismo tema, para después impresionarme con algo superelaborado.")
			elseif cl == 778 then
				updateNatsuki('1','w')
		cw('n', "Bueno, me da bastante igual.")
			elseif cl == 779 then
		cw('n', "A lo hecho, pecho.")
			elseif cl == 780 then
				updateNatsuki('1','q')
		cw('n', "Además, el mío también ha acabado siendo algo metafórico...")
			elseif cl == 781 then
		cw('n', "¡Ni que fuera malo de vez en cuando!")
			elseif cl == 782 then
		cw('n', "Al menos me ha servido para practicar.")
			elseif cl == 783 then
				poemfinish('n')
			end
		end
	end
end

function ch3_n_end_special()
	if cl < 760 then
		scriptJump(760)
	elseif cl == 760 then
		poem('poem_n3b')
	elseif cl == 761 then
		scriptJump(764)
	elseif cl == 764 then
		poem_disable()
		updateNatsuki('1','q')
		cw('n',"...")
	elseif cl == 765 then
		cw('n', "¿Por qué me miras así?")
	elseif cl == 766 then
		cw('n', "Si no te gusta, dímelo y ya está.")
	elseif cl == 767 then
		updateNatsuki('1','u')
		cw('n', "No me... cabrearé.")
	elseif cl == 768 then
		cw('mc', "¡No, no es eso!")
	elseif cl == 769 then
		cw('mc', "Es solo que... me he sorprendido al leerlo.")
	elseif cl == 770 then
		if readpoem.y == 1 then
		cw('bl', "No hay duda de que este no es el poema del que me habló Yuri...")
		else
			scriptJump(772)
		end
	elseif cl == 771 then
		cw('bl', "Lo que significa, que seguramente sea el único al que se lo ha enseñado...")
	elseif cl == 772 then
		cw('mc', "Em, supongo que no estoy acostumbrado a oír cosas tan bonitas viniendo de ti...")
	elseif cl == 773 then
		updateNatsuki('1','h')
		cw('n', "¡N-no digas eso!")
	elseif cl == 774 then
		updateNatsuki('1','n')
		cw('n', "Idiota...")
	elseif cl == 775 then
		cw('n', "¿De qué crees... que va?")
	elseif cl == 776 then
		updateNatsuki('1','u')
		cw('n', "Va sobre las cosas que no puedes decir sin más...")
	elseif cl == 777 then
		cw('mc', "Sí, lo entiendo.")
	elseif cl == 778 then
		cw('mc', "Perdona por no entender a veces de que va.")
	elseif cl == 779 then
		cw('mc', "No lo hago a propósito...")
	elseif cl == 780 then
		cw('mc', "Y... me alegro de que me lo hayas enseñado.")
	elseif cl == 781 then
		cw('mc', "Me gusta.")
	elseif cl == 782 then
		updateNatsuki('1','h')
		cw('n', "Bueno, claro...")
	elseif cl == 783 then
		updateNatsuki('1','q')
		cw('n', "So-soy una profesional, así que...")
	elseif cl == 784 then
		cw('bl', "Natsuki tartamudea, haciendo que no suene tan segura como de costumbre.")
	elseif cl == 785 then
		cw('n',"Tú solo...")
	elseif cl == 786 then
		updateNatsuki('1','2c')
		cw('n', "Recuerda que... ¡yo también puedo pensar estas cosas!")
	elseif cl == 787 then
		cw('n', "Que seas tan amable conmigo es...")
	elseif cl == 788 then
		updateNatsuki('1','2a')
		cw('n',"...")
	elseif cl == 789 then
		cw('n', "Muy importante para mí.")
	elseif cl == 790 then
		cw('mc', "Ah, me alegro.")
	elseif cl == 791 then
		cw('bl', "Sintiendo que Natsuki está satisfecha, le intento devolver el poema.")
	elseif cl == 792 then
		cw('bl', "Pero Natsuki coge mis manos y las empuja hacia mí.")
	elseif cl == 793 then
		cw('bl', "Me sorprende la decisión que tiene a pesar de sus diminutas y suaves manos.")
	elseif cl == 794 then
		updateNatsuki('1','2b')
		cw('n', "No lo quiero.")
	elseif cl == 795 then
		cw('mc', "¿Eh?")
	elseif cl == 796 then
		cw('mc', "¿Por qué no?")
	elseif cl == 797 then
		updateNatsuki('1','2c')
		cw('n', "¡No lo quiero y ya!")
	elseif cl == 798 then
		cw('n', "Ainss...")
	elseif cl == 799 then
		cw('bl', "Ya sé que es lo que intenta Natsuki.")
	elseif cl == 800 then
		cw('bl', "Está intentado poner una excusa para dármelo ya que no puede ser sincera.")
	elseif cl == 801 then
		cw('mc', "Bueno, en ese caso me lo quedo.")
	elseif cl == 802 then
		cw('bl', "En vez de meterme con ella, le sigo el rollo.")
	elseif cl == 803 then
		updateNatsuki('1','t')
		cw('n', "Bien.")
	elseif cl == 804 then
		cw('n', "Si no te lo hubieses quedado, habría...")
	elseif cl == 805 then
		cw('n',"...")
	elseif cl == 806 then
		updateNatsuki('1','h')
		cw('n', "Da igual...")
	elseif cl == 807 then
		updateNatsuki('1','q')
		cw('n', "Es solo que... me alegro de que lo quieras.")
	elseif cl == 808 then
		cw('bl', "Natsuki se corta y deja la frase a medias.")
	elseif cl == 809 then
		cw('bl', "A pesar de sus esfuerzos para ocultarlo, puedo ver cómo sonríe débilmente.")
	elseif cl == 810 then
		cw('n', "Eso es todo por ahora, así que...")
	elseif cl == 811 then
		updateNatsuki('1','s')
		cw('n', "Ve a guardarlo antes de que alguien lo vea, ¿vale?")
	elseif cl == 812 then
		cw('mc', "Ah, sí.")
	elseif cl == 813 then
		cw('mc', "Eso haré.")
	elseif cl == 814 then
		cw('bl', "Tras eso, vuelvo a mi sitio a guardar el poema de Natsuki.")
	elseif cl == 815 then
		poemfinish('n')
	end
end

function ch3_n_bad12_shared()
	if cl == 670 then
		updateNatsuki('5','x')
		cw('n', "Pensándolo mejor, no, gracias.")
	elseif cl == 671 then
		cw('mc', "¿Eh? Si ni siquiera...")
	elseif cl == 672 then
		updateNatsuki('5','w')
		cw('n', "¡Siguiente!")
	elseif cl == 673 then
		poemfinish('n')
	end
end

function ch3_n_bad()
	if n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
		ch3_n_bad12_shared()
	elseif n_poemappeal[1] < 0 or n_poemappeal[2] < 0 then
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','c')
		cw('n', "Pfff...")
		elseif cl == 672 then
		cw('n', "Por lo que veo, después de todo este tiempo no has aprendido nada.")
		elseif cl == 673 then
		cw('n', "Si te digo la verdad, no sé ni para qué me hice ilusiones contigo.")
		elseif cl == 674 then
		cw('n', "¿Qué?")
		elseif cl == 675 then
		cw('mc', "¿Qué he hecho mal?")
		elseif cl >= 676 then
			ch2_n_bad_sharedwithch3()
		end
	else
		if cl == 670 then
			cw('n',"...")
		elseif cl == 672 then
			updateNatsuki('2','r')
		cw('n', "Jolines.")
		elseif cl == 673 then
		cw('n', "Menudo retroceso has pegado.")
		elseif cl == 674 then
			cw('mc',"¿Eh?")
		elseif cl == 675 then
			updateNatsuki('2','c')
		cw('n', "Me gustaron mucho más los dos anteriores.")
		elseif cl == 676 then
			updateNatsuki('1','k')
		cw('n', "Quiero decir que...")
		elseif cl == 677 then
		cw('n', "Supongo que no puedo enfadarme contigo por experimentar.")
		elseif cl == 678 then
			updateNatsuki('1','c')
		cw('n', "Siempre y cuando no estés intentando impresionar a Yuri o algo por el estilo.")
		elseif cl == 679 then
			updateNatsuki('5','x')
		cw('n', "Qué asco.")
		elseif cl == 680 then
		cw('mc', "Vale, vale.")
		elseif cl == 681 then
		cw('mc', "Tal y como has dicho, puedo probar cosas nuevas.")
		elseif cl >= 682 then
			ch3_n_shared()
		end
	end
end

function ch3_n_shared()
	if cl < 685 and cl ~= 666 then
		scriptJump(685)
	elseif cl == 685 then
		updateNatsuki('5','g')
		cw('mc', "¿Por qué te involucras tanto emocionalmente en mis poemas?")
	elseif cl == 686 then
		cw('mc', "¿Eso no contaría más como un cumplido?")
	elseif cl == 687 then
		updateNatsuki('1','o')
		cw('n', "¿Eh?")
	elseif cl == 688 then
		updateNatsuki('4','x')
		cw('n', "¡N-no! ¡Qué asco!")
	elseif cl == 689 then
		updateNatsuki('4','w')
		cw('n', "¡No es que me importe!")
	elseif cl == 690 then
		cw('n', "Es solo que alguien se tendrá que asegurar de que no vagueas.")
	elseif cl == 691 then
		cw('mc', "¿En serio?")
	elseif cl == 692 then
		cw('mc', "Bueno, ¿y si terminas espantándome?")
	elseif cl == 693 then
		updateNatsuki('1','t')
		cw('n', "Pues, em...")
	elseif cl == 694 then
		cw('n', "No creo que te vayas.")
	elseif cl == 695 then
		cw('mc', "Sí, tienes razón.")
	elseif cl == 696 then
		cw('mc', "Estar aquí es divertido, incluso cuando tengo que aguantar tus tonterías.")
	elseif cl == 697 then
		updateNatsuki('1','x')
		cw('mc', "¡¡Agh!!")
	elseif cl == 698 then
		cw('bl', "Natsuki me da un codazo en el estómago.")
	elseif cl == 699 then
		updateNatsuki('2','y')
		cw('n', "¿Oh?")
	elseif cl == 700 then
		cw('n', "Después de todo, creo que ya no me importa espantarte.")
	elseif cl == 701 then
		cw('mc', "Estaba... de coña...")
	elseif cl == 702 then
		updateNatsuki('4','z')
		cw('n', "¡Ah, ya lo sé!")
	elseif cl == 703 then
		cw('n', "Y yo, no te preocupes.")
	elseif cl == 704 then
		cw('n', "¡Ja, ja, ja, ja!")
	elseif cl == 705 then
		updateNatsuki('4','j')
		cw('mc',"...")
	elseif cl == 706 then
		cw('bl', "¿Cómo narices puedes llamar broma a eso?")
	elseif cl == 707 then
		cw('bl', "Eso ha dolido de verdad.")
	elseif cl == 708 then
		cw('bl', "Bueno, quizá a ella le ha hecho gracia...")
	elseif cl == 709 then
		cw('bl', "Supongo que esa era la intención.")
	elseif cl == 710 then
		cw('bl', "Debería vigilar lo que le digo a Natsuki.")
	elseif cl == 711 then
		updateNatsuki('2','c')
		cw('m', "Bueno...")
	elseif cl == 712 then
		cw('bl', "Natsuki me da su poema como si no hubiese pasado nada.")
	elseif cl >= 713 then
		ch3_n_end()
	end
end

function ch3_n_med()
	if n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
		ch3_n_bad12_shared()
	elseif n_poemappeal[2] ~= 0 then
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','k')
		cw('n', "Este está bien.")
		elseif cl == 672 then
		cw('mc', "¿Bien?")
		elseif cl == 673 then
		cw('n', "Bueno, sí.")
		elseif cl == 674 then
		cw('n', "No es nada del otro mundo.")
		elseif cl == 675 then
		cw('n', "Aunque no hay nada en concreto que odie.")
		elseif cl == 676 then
		cw('n', "Es solo que no es de mi estilo. Quiero decir, que no está mal.")
		elseif cl >= 677 then
			ch2_n_med_shared()
		end
	else
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','k')
		cw('n', "Este está bien.")
		elseif cl == 672 then
		cw('mc', "¿Bien?")
		elseif cl == 673 then
		cw('n', "Bueno, sí.")
		elseif cl == 674 then
		cw('n', "Tan bien como el de ayer, supongo.")
		elseif cl == 675 then
		cw('n', "Veo qué es lo que pretendes, pero simplemente no es mi estilo.")
		elseif cl == 676 then
			updateNatsuki('2','a')
		cw('n', "Quiero decir, no está mal.")
		elseif cl == 677 then
		cw('n', "Me alegra más el hecho de que te esfuerces.")
		elseif cl == 678 then
		cw('mc', "Hombre, pues claro que me esfuerzo.")
		elseif cl >= 679 then
			ch3_n_shared()
		end
	end
end

function ch3_n_good()
	if n_poemappeal[1] < 0 and n_poemappeal[2] < 0 then
		ch3_n_bad12_shared()
	elseif n_poemappeal[1] > 0 and n_poemappeal[2] > 0 then
		if cl == 670 then
			updateNatsuki('1','l')
		cw('n', "¡Vamos a ver, vamos a ver!")
		elseif cl == 671 then
		cw('mc', "Hoy te veo entusiasmada.")
		elseif cl == 672 then
			updateNatsuki('2','j')
		cw('mc', "Por supuesto.")
		elseif cl == 673 then
		cw('n', "Ya sabes que me gusta tu estilo.")
		elseif cl == 674 then
		cw('mc', "Es solo que me sorprende.")
		elseif cl == 675 then
		cw('mc', "Parecía que antes te costaba más admitirlo.")
		elseif cl == 676 then
			updateNatsuki('5','w')
		cw('n', "Bueno... ¡Pues claro!")
		elseif cl == 677 then
			updateNatsuki('5','q')
		cw('n', "¡Tenía que dejarte claro cuál era tu lugar!")
		elseif cl == 678 then
		cw('n', "No es que...")
		elseif cl == 679 then
		cw('n', "Es decir, no es que sea tímida ni nada así de estúpido.")
		elseif cl == 680 then
			updateNatsuki('5','t')
		cw('n', "¡O que estuviese celosa!")
		elseif cl == 681 then
		cw('n', "Te juro que no estaba celosa.")
		elseif cl == 682 then
		cw('n', "¿Solo porque resulta que al final eres bueno componiendo?")
		elseif cl == 683 then
			updateNatsuki('4','y')
		cw('n', "Es de idiotas estar celosa por eso.")
		elseif cl == 684 then
		cw('n', "¡Ja, ja, ja!")
		elseif cl == 685 then
			cw('mc',"Natsuki...")
		elseif cl == 686 then
			updateNatsuki('1','h')
		cw('mc', "¿¿Qué??")
		elseif cl == 687 then
		cw('mc', "Por lo que veo, no tienes mucha confianza en tus poemas, ¿no?")
		elseif cl == 688 then
			updateNatsuki('1','n')
		cw('n', "¿Eh?")
		elseif cl == 689 then
		cw('n', "¿D-de qué hablas?")
		elseif cl == 690 then
			updateNatsuki('1','u')
		cw('n', "Mis poemas son claramente los mejores...")
		elseif cl == 691 then
		cw('n', "¿A que sí?")
		elseif cl == 692 then
			cw('mc',"...")
		elseif cl == 693 then
		cw('bl', "Me ha costado un poco, pero ya lo he pillado.")
		elseif cl == 694 then
		cw('bl', "Quizá Natsuki es tan arrogante para ocultar sus inseguridades.")
		elseif cl == 695 then
		cw('bl', "Si actúa como si fuese la mejor, el resto acabarán pensado que es verdad.")
		elseif cl == 696 then
			updateNatsuki('1','m')
		cw('n', "¿Verdad?")
		elseif cl == 697 then
			cw('n',player.."...")
		elseif cl == 698 then
		cw('n', "Por favor, tú solo dime que te gustan mis poemas.")
		elseif cl == 699 then
			updateNatsuki('1','u')
		cw('n', "Me da igual si los odias.")
		elseif cl == 700 then
		cw('n', "Tú solo dime que soy la mejor.")
		elseif cl == 701 then
		cw('n', "Yo solo...")
		elseif cl == 702 then
			updateNatsuki('1','q')
		cw('n', "Yo solo necesito que alguien me diga eso.")
		elseif cl == 703 then
		cw('n', "Sé que suena estúpido.")
		elseif cl == 704 then
		cw('n', "Pero hay una razón por la que nunca he enseñado mis poemas.")
		elseif cl == 705 then
			cw('mc',"Natsuki...")
		elseif cl == 706 then
		cw('n', "Es porque...")
		elseif cl == 707 then
			updateNatsuki('1','2c')
		cw('n', "¡Porque nadie me toma en serio!")
		elseif cl == 708 then
			cw('n',"Qué sentido tiene enseñar mis poemas si la gente solo se reirá y dirá «¡Es tan adorable como tú, Natsuki!»")
		elseif cl == 709 then
		cw('n', "¡Hay veces que no quiero ser adorable!")
		elseif cl == 710 then
			updateNatsuki('1','2d')
		cw('n', "¡Pero nadie lo entiende!")
		elseif cl == 711 then
		cw('n', "Me esfuerzo muchísimo cuando compongo.")
		elseif cl == 712 then
			updateNatsuki('1','2e')
		cw('n', "El estilo da igual.")
		elseif cl == 713 then
		cw('n', "Mis sentimientos siguen ahí.")
		elseif cl == 714 then
			updateNatsuki('1','n')
		cw('n', "¿Por qué nadie lo entiende?")
		elseif cl == 715 then
			updateNatsuki('1','u')
		cw('n', "Solo quiero...")
		elseif cl == 716 then
		cw('bl', "La voz de Natsuki suena apagada.")
		elseif cl == 717 then
		cw('bl', "Quizá es porque su labio ha empezado a temblar.")
		elseif cl == 718 then
		cw('bl', "Miro hacia abajo.")
		elseif cl == 719 then
		cw('bl', "Está apretando mucho los puños.")
		elseif cl == 720 then
		cw('mc', "Oye, Natsuki.")
		elseif cl == 721 then
		cw('mc', "Si no tienes cuidado, romperás tu poema.")
		elseif cl == 722 then
		cw('bl', "Cojo su poema con cuidado hasta que se relaja un poco.")
		elseif cl == 723 then
		cw('bl', "Lo pongo en la mesa e intento aplanar las arrugas que ha formado.")
		elseif cl == 724 then
			updateNatsuki('1','h')
		cw('n', "¡N-no lo leas!")
		elseif cl == 725 then
		cw('bl', "Antes de que pueda cogerlo, Natsuki lo agarra del pupitre.")
		elseif cl == 726 then
			updateNatsuki('5','q')
		cw('n', "No vale la pena.")
		elseif cl == 727 then
		cw('n', "Y sé que odias mis poemas.")
		elseif cl == 728 then
		cw('n', "Así que no tienes por qué leer este, ¿vale?")
		elseif cl == 729 then
		cw('mc', "Pero quiero leerlo.")
		elseif cl == 730 then
		cw('n', "¿P-por qué?")
		elseif cl == 731 then
		cw('mc', "Es obvio.")
		elseif cl == 732 then
		cw('mc', "Me gustan tus poemas.")
		elseif cl == 733 then
		cw('mc', "Lo digo de verdad.")
		elseif cl == 734 then
			updateNatsuki('5','h')
		cw('mc', "¿Cómo podría juzgarte por tu estilo?")
		elseif cl == 735 then
		cw('mc', "Ni que el mío sea el descubrimiento del siglo.")
		elseif cl == 736 then
		cw('mc', "Aunque es verdad que la primera vez que leí un poema tuyo no le di mucha más importancia.")
		elseif cl == 737 then
		cw('mc', "Pero ahora te conozco mejor.")
		elseif cl == 738 then
		cw('mc', "Y está mal que Yuri piense que tu estilo es más de novato que el suyo.")
		elseif cl == 739 then
		cw('mc', "Y Sayori... Ella solo quiere lo mejor para todos...")
		elseif cl == 740 then
		cw('mc', "Aunque a veces se centra tanto en la felicidad, que no entiende qué es lo que verdaderamente necesita la gente.")
		elseif cl == 741 then
		cw('mc', "Sí, supongo que nunca he pensado en lo difícil es para ti.")
		elseif cl == 742 then
		cw('mc', "Y lo siento si tengo parte de la culpa.")
		elseif cl == 743 then
		cw('mc', "Ahora lo entiendo.")
		elseif cl == 744 then
		cw('mc', "No solo eres adorable, eres mucho más.")
		elseif cl == 745 then
			updateNatsuki('1','2d')
		cw('mc', "Ah... Natsuki, lo estás volviendo a hacer...")
		elseif cl == 746 then
		cw('bl', "Natsuki vuelve a agarrar muy fuerte su poema.")
		elseif cl == 747 then
		cw('bl', "Baja su mirada, evitando el contacto visual conmigo.")
		elseif cl == 748 then
		cw('bl', "Nunca me había dado cuenta de lo difícil que era para ella.")
		elseif cl == 749 then
		cw('bl', "Pero al final, se fuerza a abrir los brazos y dejar el poema en la mesa.")
		elseif cl == 750 then
			updateNatsuki('1','2e')
		cw('n', "Puedes... leerlo.")
		elseif cl == 751 then
		cw('n', "Pero gírate.")
		elseif cl == 752 then
		cw('n', "No quiero... que me mires a la cara ahora mismo.")
		elseif cl == 753 then
		cw('mc', "Vale.")
		elseif cl >= 754 then
			ch3_n_end()
		end
	elseif n_poemappeal[1] > 0 or n_poemappeal[2] > 0 then
		ch2_n_good_sharedwithch3()
	else
		if cl == 670 then
			cw('n',"...")
		elseif cl == 671 then
			updateNatsuki('2','k')
		cw('n', "¡Por fin!")
		elseif cl == 672 then
			cw('mc',"¿Eh?")
		elseif cl == 673 then
			updateNatsuki('2','l')
		cw('n', "¡Este sí que es bueno!")
		elseif cl == 674 then
		cw('n', "Me preguntaba cuánto más ibas a tardar.")
		elseif cl == 675 then
		cw('mc', "¡Genial!")
		elseif cl == 676 then
			updateNatsuki('4','y')
		cw('n', "De verdad, lo digo en serio.")
		elseif cl == 677 then
		cw('n', "No le hagas caso al resto.")
		elseif cl == 678 then
		cw('n', "Sobre todo a Yuri.")
		elseif cl == 679 then
			updateNatsuki('4','a')
		cw('n', "Tú sigue componiendo poemas así. ¡Es todo lo que necesitas!")
		elseif cl == 680 then
		cw('mc', "Em...")
		elseif cl == 681 then
		cw('mc', "¿Estás segura de que esto no es lo que tú quieres?")
		elseif cl == 682 then
			updateNatsuki('2','h')
		cw('n', "¿Disculpa?")
		elseif cl == 683 then
		cw('n', "Estás hablando con una profesional, ¿sabes?")
		elseif cl == 684 then
		cw('n', "¿No crees que te deberías de fiar más de mi opinión?")
		elseif cl == 685 then
		cw('mc', "Supongo que depende.")
		elseif cl == 686 then
		cw('mc', "¿No te gustan más los poemas simples y adorables?")
		elseif cl == 687 then
			updateNatsuki('2','w')
		cw('n', "¿Que me gustan más?")
		elseif cl == 688 then
		cw('n', "Claro que no.")
		elseif cl == 689 then
			updateNatsuki('4','y')
		cw('n', "Es solo que mi opinión es la mejor.")
		elseif cl == 690 then
			cw('mc', "...")
		elseif cl == 691 then
		cw('bl', "Hay algo que todavía no puedo decir.")
		elseif cl == 692 then
		cw('bl', "¿Se dará cuenta de que se comporta como una malcriada?")
		elseif cl == 693 then
		cw('bl', "A este paso, dudo que lo descubra.")
		elseif cl == 694 then
		cw('mc', "Tiene sentido.")
		elseif cl == 695 then
		cw('mc', "Después de todo, me alegro de que te haya gustado mi poema.")
		elseif cl == 696 then
			updateNatsuki('4','z')
		cw('n', "¡Ja, ja, ja!")
		elseif cl == 697 then
			updateNatsuki('4','j')
		cw('n', "Sabía que lo acabarías entendiendo.")
		elseif cl == 698 then
		cw('n', "Tú limítate a enseñarme tus poemas y serás un profesional en lo que canta un gallo.")
		elseif cl == 699 then
		cw('n', "Bueno, aquí tienes el mío.")
		elseif cl >= 700 then
			ch3_n_end()
		end
	end
end

function ch1_s_med()
	if cl == 670 then
		cw('s',"...")
	elseif cl == 671 then
		updateSayori('2','x')
		cw('s', "¡Es un buen poema, " .. player .. "!")
	elseif cl == 672 then
		cw('s', "¿Seguro que es tu primera vez?")
	elseif cl == 673 then
		cw('mc', "Pues claro...")
	elseif cl == 674 then
		cw('mc', "No es tan bueno.")
	elseif cl == 675 then
		cw('mc', "¿Acaso soy el tipo de persona que se dedicaría a componer en su tiempo libre?")
	elseif cl == 676 then
		updateSayori('2','q')
		cw('s', "Je, je, je, supongo que tienes razón~")
	elseif cl == 677 then
		updateSayori('1','q')
		cw('s', "¡Pero por eso me ha impresionado!")
	elseif cl == 678 then
		updateSayori('2','d')
		cw('s', "Bueno, para serte sincera...")
	elseif cl == 679 then
		cw('s', "Me temía que no fueras a tomártelo en serio...")
	elseif cl == 680 then
		cw('s', "O que ni compondrías.")
	elseif cl >= 681 then
		ch1_s_shared()
	end
end

function ch1_s_bad()
	if cl == 670 then
		updateSayori('1','b')
		cw('s',"...")
	elseif cl == 671 then
		cw('s', "¡Guau!")
	elseif cl == 672 then
		cw('s',player.."...")
	elseif cl == 673 then
		updateSayori('4','r')
		cw('s', "¡Tu poema es espantoso!")
	elseif cl == 674 then
		cw('s', "¡Ja, ja, ja, ja!")
	elseif cl == 675 then
		cw('mc',"¡¿Eh?!")
	elseif cl == 676 then
		updateSayori('4','a')
		cw('s', "No pasa nada, no pasa nada~")
	elseif cl == 677 then
		cw('s', "Es tu primera vez.")
	elseif cl == 678 then
		cw('s', "Además...")
	elseif cl >= 679 then
		ch1_s_shared()
	end
end

function ch1_s_shared()
	if cl < 700 and cl ~= 666 then
		scriptJump(700)
	elseif cl == 700 then
		updateSayori('1','a')
		cw('s', "Me alegra el simple hecho de que lo hayas compuesto.")
	elseif cl == 701 then
		cw('s', "Me recuerda que de verdad eres un miembro del club~")
	elseif cl == 702 then
		cw('bl', "(¿Es que no cuenta el hecho de que esté contigo en el aula del club?)")
	elseif cl == 703 then
		cw('mc', "Eh... claro, por supuesto.")
	elseif cl == 704 then
		cw('mc', "En realidad no me apasiona mucho, pero no pienso romper mi promesa.")
	elseif cl == 705 then
		updateSayori('1','d')
		cw('s', "¿Ves?")
	elseif cl == 706 then
		cw('s', "Es lo que decía antes, " .. player .. "...")
	elseif cl == 707 then
		cw('s', "No eres para nada egoísta, ¿sabes?")
	elseif cl == 708 then
		cw('s', "Darle una oportunidad a esto por el bien de las demás...")
	elseif cl == 709 then
		updateSayori('2','q')
		cw('s', "¡Eso solo lo haría una buena persona!")
	elseif cl == 710 then
		cw('mc', "Gracias, Sayori.")
	elseif cl == 711 then
		cw('bl', "... No creo que Sayori se haya dado cuenta de mis verdaderos planes.")
	elseif cl == 712 then
		cw('bl', "Pero bueno...")
	elseif cl == 713 then
		cw('bl', "No puedo negar que en parte me he unido al club por ella.")
	elseif cl == 714 then
		cw('bl', "Después de saber lo mucho que le importa todo esto...")
	elseif cl == 715 then
		updateSayori('1','x')
		cw('s',"Sí.")
	elseif cl == 716 then
		cw('s', "Y yo me aseguraré de que te lo pases genial, ¿vale?")
	elseif cl == 717 then
		cw('s', "Será mi forma de darte las gracias~")
	elseif cl == 718 then
		cw('mc', "Muy bien, lo tendré en cuenta.")
	elseif cl == 719 then
		updateSayori('4','r')
		cw('s', "¡Bien~!")
	elseif cl == 720 then
		cw('s', "Ahora te toca leer mi poema, ¿verdad?")
	elseif cl == 721 then
		updateSayori('1','y')
		cw('s', "No te preocupes, en realidad soy bastante mala.")
	elseif cl == 722 then
		cw('s', "Je, je, je...")
	elseif cl == 723 then
		cw('mc', "Ya lo veremos.")
	elseif cl == 724 then
		poem('poem_s1')
	elseif cl == 725 then
		scriptJump(726)
	elseif cl == 726 then
		poem_disable()
		cw('mc',"Sayori...")
	elseif cl == 727 then
		cw('mc', "Es solo una suposición, pero...")
	elseif cl == 728 then
		cw('mc', "¿Lo has escrito esta mañana a prisas?")
	elseif cl == 729 then
		updateSayori('4','h')
		cw('s',"¡No!")
	elseif cl == 730 then
		updateSayori('4','l')
		cw('s', "Bu-bueno, ¡puede que un poquito!")
	elseif cl == 731 then
		cw('mc', "No puedes responder eso en una pregunta de sí o no.")
	elseif cl == 732 then
		updateSayori('5b','')
		cw('s', "Se me olvidó hacerlo anoche...")
	elseif cl == 733 then
		cw('mc', "Bueno, al menos eso me hace sentir algo mejor conmigo mismo...")
	elseif cl == 734 then
		updateSayori('1','h')
		cw('s', "¡No seas malo!")
	elseif cl == 735 then
		cw('s', "Aún así me he esforzado al máximo...")
	elseif cl == 736 then
		cw('mc', "Ah, ya...")
	elseif cl == 737 then
		cw('mc', "No lo decía porque el poema sea malo.")
	elseif cl == 738 then
		cw('mc', "Te ha salido bien, o cómo podría decirlo...")
	elseif cl == 739 then
		cw('mc', "Te pega mucho.")
	elseif cl == 740 then
		updateSayori('1','d')
		cw('s',"¿De verdad?")
	elseif cl == 741 then
		cw('mc',"Sí.")
	elseif cl == 742 then
		cw('mc', "Especialmente este último verso...")
	elseif cl == 743 then
		updateSayori('4','r')
		cw('s', "¡He hecho tostadas con huevos!")
	elseif cl == 744 then
		cw('mc', "¿Aun sabiendo que llegabas tarde al insti?")
	elseif cl == 745 then
		updateSayori('5d','')
		cw('s', "¡No es bueno saltarse el desayuno!")
	elseif cl == 746 then
		cw('s', "Si no desayuno me pongo de muy mal humor...")
	elseif cl == 747 then
		cw('mc', "Bueno, supongo que no tiene sentido seguir discutiendo...")
	elseif cl == 748 then
		cw('mc', "De todas formas, gracias por compartirlo conmigo.")
	elseif cl == 749 then
		updateSayori('1','q')
		cw('s', "Je, je, je~")
	elseif cl == 750 then
		cw('s', "Ha sido muy divertido.")
	elseif cl == 751 then
		cw('s', "¡Monika es la mejor!")
	elseif cl == 752 then
		cw('mc', "Ah, sí.")
	elseif cl == 753 then
		cw('s', "No me olvidaré para la próxima.")
	elseif cl == 754 then
		updateSayori('4','x')
		cw('s', "¡Y escribiré el mejor poema de todos los tiempos!")
	elseif cl == 755 then
		cw('mc', "Bueno, supongo que tendré que esperar a que llegue.")
	elseif cl == 756 then
		poemfinish('s')
	end
end

function ch1_s_good()
	if cl == 670 then
		updateSayori('1','n')
		cw('s',"...")
	elseif cl == 671 then
		cw('s', "¡Santo cielo!")
	elseif cl == 672 then
		updateSayori('4','b')
		cw('s', "¡" .. player .. ", está suuuperbién!")
	elseif cl == 673 then
		cw('mc',"¿Eh?")
	elseif cl == 674 then
		updateSayori('4','r')
		cw('s', "¡Me encanta~!")
	elseif cl == 675 then
		cw('s', "¡No sabía que fueras tan bueno!")
	elseif cl == 676 then
		cw('mc',"Sayori...")
	elseif cl == 677 then
		cw('mc', "Estás exagerando.")
	elseif cl == 678 then
		cw('mc', "Soy pésimo.")
	elseif cl == 679 then
		cw('mc', "Ni siquiera sé qué estoy haciendo.")
	elseif cl == 680 then
		updateSayori('4','x')
		cw('s', "Bueno...")
	elseif cl == 681 then
		cw('s', "¡Quizá sea por eso!")
	elseif cl == 682 then
		cw('s', "¡Porque yo tampoco tengo ni idea de lo que me gusta!")
	elseif cl == 683 then
		updateSayori('4','r')
		cw('s', "¡Ja, ja, ja, ja!")
	elseif cl == 684 then
		cw('mc', "Ainss...")
	elseif cl == 685 then
		if readpoem.y==1 then
		cw('bl', "La opinión de Yuri era mucho más útil que esta...")
		else
		cw('bl', "Estoy seguro de que la opinión de Yuri será mucho más útil que esta.")
		end
	elseif cl == 686 then
		if readpoem.y==1 then
			scriptJump(687)
		else
		cw('bl', "Puede que incluso la de Natsuki sea mejor.")
		end
	elseif cl == 687 then
		cw('mc', "¿Estás segura de que no te gusta porque lo he escrito yo?")
	elseif cl == 688 then
		updateSayori('4','b')
		cw('s',"¿Eh?")
	elseif cl == 689 then
		cw('s', "Bueno, seguramente tenga algo que ver.")
	elseif cl == 690 then
		updateSayori('4','x')
		cw('s', "Creo que te entiendo mejor que el resto, ¿sabes?")
	elseif cl == 691 then
		cw('s', "Así que cuando he leído tu poema...")
	elseif cl == 692 then
		cw('s', "No se trata solo de un poema...")
	elseif cl == 693 then
		updateSayori('4','q')
		cw('s', "¡Es un poema de " .. player .. "!")
	elseif cl == 694 then
		cw('s', "¡Y eso lo hace aún más especial!")
	elseif cl == 695 then
		cw('s', "Creo que hasta puedo sentir tus emociones~")
	elseif cl == 696 then
		cw('bl', "Sayori abraza el folio de papel.")
	elseif cl == 697 then
		cw('mc', "Eres muy rara, Sayori...")
	elseif cl == 698 then
		cw('s', "Je, je, je...")
	elseif cl >= 699 then
		ch1_s_shared()
	end
end

function ch2_s_bad()
	if cl == 670 then
		cw('s',"...")
	elseif cl == 671 then
		updateSayori('1','q')
		cw('s', "Je, je, me encanta leer tus poemas~")
	elseif cl == 672 then
		cw('s', "¡Nunca sé qué me voy a encontrar!")
	elseif cl == 673 then
		cw('mc', "Básicamente me estás diciendo que es horrible.")
	elseif cl == 674 then
		updateSayori('4','c')
		cw('s', "¡No! ¡Para nada!")
	elseif cl == 675 then
		updateSayori('4','l')
		cw('s', "... ¡Puede!")
	elseif cl == 676 then
		updateSayori('5a')
		cw('s', "¿Solo un poquito?")
	elseif cl == 677 then
		cw('s', "Es posible que Yuri me haya mimado un poco con sus poemas...")
	elseif cl == 678 then
		cw('s', "Je, je, je...")
	elseif cl == 679 then
		cw('mc', "Está bien, está bien...")
	elseif cl == 680 then
		cw('mc', "Después de todo, sigo sin saber qué estilo te gusta más.")
	elseif cl >= 681 then
		ch2_s_shared()
	end
end

function ch2_s_shared()
	if cl < 713 and cl ~= 666 then
		scriptJump(714)
	elseif cl == 714 then
		updateSayori('1','q')
		cw('s', "¡Sííí!")
	elseif cl == 715 then
		cw('s', "¡Ni yo!")
	elseif cl == 716 then
		cw('mc', "Agh.")
	elseif cl == 717 then
		cw('mc', "¿Y por qué no intentas pensarlo?")
	elseif cl == 718 then
		updateSayori('2','d')
		cw('s', "Oooh, ¿quieres componer un poema para mí?")
	elseif cl == 719 then
		cw('s', "Qué bonito~")
	elseif cl == 720 then
		cw('mc', "Ya, claro.")
	elseif cl == 721 then	
		cw('mc', "Pero siempre estás pensando en los demás.")
	elseif cl == 722 then
		cw('mc', "Va siendo hora de que pienses un poquito en ti.")
	elseif cl == 723 then
		cw('mc', "Si no lo haces, acabarás sufriendo.")
	elseif cl == 724 then
		updateSayori('1','n')
		cw('s', "¿Eh?")
	elseif cl == 725 then
		cw('mc', "Bueno...")
	elseif cl == 726 then
		updateSayori('1','o')
		cw('s', "¡No sé muy bien a qué te refieres, pero lo tendré en cuenta!")
	elseif cl == 727 then
		cw('mc', "Bueno, da igual...")
	elseif cl == 728 then
		updateSayori('1','b')
		cw('s', "Bueno, vamos a ver...")
	elseif cl == 729 then
		cw('s', "Mmm...")
	elseif cl == 730 then
		updateSayori('4','q')
		cw('s', "Supongo que me gustan... los poemas felices~")
	elseif cl == 731 then
		updateSayori('4','i')
		cw('s', "Aunque espera, a veces también me gustan los tristes...")
	elseif cl == 732 then
		updateSayori('1','i')
		cw('s', "Y a veces una mezcla de los dos...")
	elseif cl == 733 then
		cw('s', "Hay una palabra para eso, ¿verdad?")
	elseif cl == 734 then
		cw('s', "¿Cuál será?")
	elseif cl == 735 then
		updateSayori('4','r')
		cw('s', "¡Agridulce!")
	elseif cl == 736 then
		cw('s', "¡Sííí!")
	elseif cl == 737 then
		updateSayori('1','x')
		cw('s', "Me gustan tanto las cosas alegres como las tristes.")
	elseif cl == 738 then
		cw('mc', "¿Alegres y tristes?")
	elseif cl == 739 then
		cw('mc', "No te imagino gustándote algo triste, Sayori...")
	elseif cl == 740 then
		updateSayori('1','c')
		cw('s', "Bueno...")
	elseif cl == 741 then
		cw('s', "¡Me gusta más lo alegre!")
	elseif cl == 742 then
		updateSayori('1','d')
		cw('s', "Pero a veces tengo como un nubarrón en mi cabeza...")
	elseif cl == 743 then
		cw('s', "Un poema triste puede servir para darle un abrazo a la nube...")
	elseif cl == 744 then
		updateSayori('4','q')
		cw('s', "¡Y así convertirla en un arcoíris!")
	elseif cl == 745 then
		cw('mc', "Sayori, no esperaba que te quedase tan poético.")
	elseif cl == 746 then
		updateSayori('4','n')
		cw('s', "¿Eh? ¿Ah, sí?")
	elseif cl == 747 then
		cw('s', "¡Parece que se me da mejor expresar mis sentimientos!")
	elseif cl == 748 then
		updateSayori('2','q')
		cw('s', "¡Gracias, " .. player .. "!")
	elseif cl == 749 then
		cw('s', "Debería apuntármelo en algún sitio~")
	elseif cl == 750 then
		updateSayori('2','a')
		cw('s', "Ya puedes leer mi poema, ¿vale?")
	elseif cl >= 751 then
		ch2_s_end()
	end
end

function ch2_s_end()
	if cl < 754 and cl ~= 666 then
		scriptJump(754)
	elseif cl == 754 then
		poem('poem_s2')
	elseif cl == 755 then
		scriptJump(758)
	elseif cl == 758 then
		poem_disable()
		cw('mc', "La madre que...")
	elseif cl == 759 then
		cw('mc', "Sayori, ¿de verdad has escrito esto?")
	elseif cl == 760 then
		updateSayori('2','j')
		cw('s', "¡Por supuesto!")
	elseif cl == 761 then
		cw('s', "¿No te dije ayer que escribiría el mejor poema de todos los tiempos?")
	elseif cl == 762 then
		cw('mc', "Sí, pero...")
	elseif cl == 763 then
		cw('mc', "Es que no me esperaba algo así por tu parte.")
	elseif cl == 764 then
		updateSayori('4','x')
		cw('s', "¡Monika me ha enseñado mucho!")
	elseif cl == 765 then
		cw('s', "Y últimamente he estado más sensible...")
	elseif cl == 766 then
		cw('mc', "Se ve...")
	elseif cl == 767 then
		cw('mc', "Da un poco de repelús.")
	elseif cl == 768 then
		updateSayori('1','b')
		cw('s', "¿Repelús?")
	elseif cl == 769 then
		cw('mc', "Bueno, no exactamente...")
	elseif cl == 770 then
		cw('mc', "Quizá es porque estoy acostumbrado a que seas alegre...")
	elseif cl == 771 then
		cw('mc', "Bueno, da igual.")
	elseif cl == 772 then
		cw('mc', "Creo que le estoy dando demasiadas vueltas.")
	elseif cl == 773 then
		cw('mc', "La cuestión es que te ha salido genial, así que deberías estar orgullosa de ti misma.")
	elseif cl == 774 then
		updateSayori('1','y')
		cw('s', "Oh, gracias~")
	elseif cl == 775 then
		cw('s', "Siento...")
	elseif cl == 776 then
		cw('s', "Siento que tenía que expresarme de esta manera.")
	elseif cl == 777 then
		cw('s', "Me ayuda a comprender mejor mis sentimientos...")
	elseif cl == 778 then
		updateSayori('1','a')
		cw('s', "¡Escribir es mágico!")
	elseif cl == 779 then
		cw('mc', "Te estás volviendo una apasionada del tema, ¿eh?")
	elseif cl == 780 then
		cw('mc', "Espero que puedas mantener el ritmo.")
	elseif cl == 781 then
		updateSayori('4','r')
		cw('s',"¡Sííí!")
	elseif cl == 782 then
		cw('s', "¡Escribir es lo mejor!")
	elseif cl == 783 then
		cw('s', "¡Escribiré hasta el día que me muera!")
	elseif cl == 784 then
		cw('mc', "Ja, ja, ja. No te precipites tanto.")
	elseif cl == 785 then
		cw('bl', "Sayori es de las que siempre se obsesionan con algo, para luego dejarlo a la semana siguiente.")
	elseif cl == 786 then
		cw('bl', "¿Será este uno de esos casos?")
	elseif cl == 787 then
		cw('bl', "Pero me resulta difícil ser pesimista con esa mirada tan apasionada que tiene.")
	elseif cl == 788 then
		poemfinish('s')
	end
end

function ch2_s_med()
	if s_poemappeal[1] < 0 then
		if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('4','x')
		cw('s', "¡Ooh!")
		elseif cl == 672 then
		cw('s', "¡Este me encanta, " .. player .. "!")
		elseif cl == 673 then
		cw('s', "Trata de sentimientos agradables~")
		elseif cl == 674 then
		cw('mc', "Ah, me alegro.")
		elseif cl == 675 then
		cw('mc', "Al menos está mejor que el de ayer.")
		elseif cl == 676 then
			updateSayori('1','q')
		cw('s', "¡Eeh!")
		elseif cl == 677 then
		cw('mc', "Quizá sí que estoy mejorando.")
		elseif cl >= 678 then
			ch2_s_med_shared()
		end

	elseif s_poemappeal[1] == 0 then
		if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('4','x')
			cw('s',"¡Ooh!")
		elseif cl == 672 then
		cw('s', "¡Este me encanta, " .. player .. "!")
		elseif cl == 673 then
		cw('s', "Trata de sentimientos agradables~")
		elseif cl == 674 then
		cw('mc', "Ah, me alegro.")
		elseif cl == 675 then
		cw('mc', "¿Eso significa que es mucho mejor que el de ayer?")
		elseif cl == 676 then
			updateSayori('4','b')
		cw('s', "Mmm, déjame pensar...")
		elseif cl == 677 then
			updateSayori('1','q')
		cw('s', "¡Ni idea!")
		elseif cl == 678 then
		cw('s', "¡Supongo que me gustan los dos!")
		elseif cl == 679 then
		cw('s', "Je, je, je~")
		elseif cl == 680 then
		cw('mc', "Eso no me ayuda mucho, ¿sabes?")
		elseif cl >= 681 then
			ch2_s_med_shared()
		end
	else
		if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('4','x')
			cw('s',"¡Ooh!")
		elseif cl == 672 then
		cw('s', "¡Este me encanta, " .. player .. "!")
		elseif cl == 673 then
		cw('s', "Trata de sentimientos agradables~")
		elseif cl == 674 then
		cw('mc', "Ah, me alegro.")
		elseif cl == 675 then
		cw('mc', "Aún así...")
		elseif cl == 676 then
		cw('mc', "Por tu tono parece que te gustó más el de ayer.")
		elseif cl == 677 then
			updateSayori('2','l')
		cw('s', "Je, je, supongo que me has pillado...")
		elseif cl == 678 then
		cw('s', "¡A veces me conoces más de lo que me gustaría!")
		elseif cl == 679 then
		cw('mc', "Bueno, no hace falta que intentes ser amable.")
		elseif cl == 680 then
		cw('mc', "Si he hecho algo mal prefiero que me lo digas directamente.")
		elseif cl == 681 then
			updateSayori('1','c')
		elseif cl == 682 then
		cw('s', "¡No, no!")
		elseif cl == 683 then
		cw('s', "¡Aun así este me ha gustado! ¡Te lo prometo!")
		elseif cl == 684 then
			updateSayori('1','h')
		cw('s', "¡Ya sabes que no podría engañarte, " .. player .. "!")
		elseif cl == 685 then
		cw('s', "¡Jamás!")
		elseif cl == 686 then
		cw('mc', "Sí, supongo...")
		elseif cl == 687 then
		cw('mc', "¿Entonces qué tenía el de ayer de especial para que sea mejor que este?")
		elseif cl == 688 then
			updateSayori('1','b')
		cw('s', "Em...")
		elseif cl >= 689 then
			ch2_s_med_shared()
		end
	end
end

function ch2_s_med_shared()
	if cl <= 704 then
		scriptJump(705)
	elseif cl == 705 then
		updateSayori('1','a')
		cw('s', "Bueno, no se me da muy bien saber si un poema es bueno o malo...")
	elseif cl == 706 then
		cw('s', "Por eso hago lo que me dicta el corazón~")
	elseif cl == 707 then
		cw('s', "¡Si me hace sentir algo, significa que es un buen poema!")
	elseif cl == 708 then
		cw('bl', "No creo que esto funcione así...")
	elseif cl == 709 then
		cw('bl', "Pero bueno, supongo que transmitir emociones es algo muy importante.")
	elseif cl == 710 then
		cw('mc', "Sí, quizá...")
	elseif cl == 711 then
		cw('mc', "La verdad es que ni siquiera sé qué tipo de poemas te gustan.")
	elseif cl >= 712 then
		ch2_s_shared()
	end
end

function ch2_s_good()
	if s_poemappeal[1] < 1 then
		if cl == 670 then
			updateSayori('1','n')
			cw('s',"...")
		elseif cl == 671 then
		cw('s', "¡Santo cielo!")
		elseif cl == 672 then
			updateSayori('4','r')
		cw('s', "¡" .. player .. ", está suuuperbién!")
		elseif cl == 673 then
			cw('mc',"¿Eh?")
		elseif cl == 674 then
		cw('s', "¡Me encanta~!")
		elseif cl == 675 then
		cw('s', "¡Sobre todo después de el de ayer!")
		elseif cl == 676 then
		cw('mc', "Agh.")
		elseif cl == 677 then
		cw('mc', "A veces eres demasiado sincera, Sayori.")
		elseif cl == 678 then
			updateSayori('4','x')
		cw('s', "¡¡No, lo digo en serio!!")
		elseif cl == 679 then
			updateSayori('1','x')
		cw('s', "Quiero colgarlo en mi cuarto~")
		elseif cl == 680 then
		cw('s', "¿Me dejas?")
		elseif cl == 681 then
			cw('mc',"Sayori...")
		elseif cl == 682 then
		cw('mc', "Eres una exagerada.")
		elseif cl == 683 then
		cw('mc', "No soy tan bueno componiendo.")
		elseif cl == 684 then
		cw('mc', "Ni siquiera sé qué estoy haciendo.")
		elseif cl == 685 then
			updateSayori('1','l')
		cw('s', "Bueno...")
		elseif cl == 686 then
		cw('s', "¡Quizá es por eso!")
		elseif cl == 687 then
		cw('s', "¡Porque yo tampoco tengo ni idea de lo que me gusta!")
		elseif cl == 688 then
			updateSayori('4','r')
		cw('s', "¡Ja, ja, ja, ja!")
		elseif cl == 689 then
		cw('mc', "Ains...")
		elseif cl == 690 then
		cw('bl', "Estoy seguro de que la opinión de Yuri será mucho más útil que esta.")
		elseif cl == 691 then
		cw('bl', "Puede que incluso la de Natsuki sea mejor.")
		elseif cl == 692 then
		cw('mc', "¿Estás segura de que no te gusta por que lo he escrito yo?")
		elseif cl == 693 then
			updateSayori('4','b')
			cw('s',"¿Eh?")
		elseif cl == 694 then
			updateSayori('1','b')
		cw('s', "Bueno, seguramente tenga algo que ver.")
		elseif cl == 695 then
		cw('s', "Creo que te entiendo mejor que el resto, ¿sabes?")
		elseif cl == 696 then
		cw('s', "Así que cuando he leído tu poema...")
		elseif cl == 697 then
		cw('s', "No se trata solo de un poema...")
		elseif cl == 698 then
			updateSayori('4','q')
		cw('s', "¡Es un poema de " .. player .. "!")
		elseif cl == 699 then
		cw('s', "¡Y eso lo hace aún más especial!")
		elseif cl == 700 then
		cw('s', "Creo que hasta puedo sentir tus emociones~")
		elseif cl == 701 then
		cw('bl', "Sayori abraza el folio de papel.")
		elseif cl == 702 then
		cw('mc', "Eres muy rara, Sayori...")
		elseif cl == 703 then
			updateSayori('4','l')
		cw('s', "Je, je, je...")
		elseif cl >= 704 then
			ch2_s_med_shared()
		end
	else
		if cl == 670 then
			cw('s',"...")
		elseif cl == 671 then
			updateSayori('1','d')
			cw('s',player.."...")
		elseif cl == 672 then
		cw('s', "Me encantan tus poemas.")
		elseif cl == 673 then
		cw('s', "¡No me puedo creer que me los hayas ocultado!")
		elseif cl == 674 then
		cw('mc', "¿Eh? ¡No te estoy ocultando nada!")
		elseif cl == 675 then
			updateSayori('1','b')
		cw('s', "Pero...")
		elseif cl == 676 then
		cw('s', "Tus poemas son suuuperbuenos...")
		elseif cl == 677 then
		cw('s', "¡El de ayer y este también!")
		elseif cl == 678 then
		cw('s', "¡No puedes hacerme creer que nunca has hecho esto!")
		elseif cl == 679 then
		cw('mc', "Pues...")
		elseif cl == 680 then
		cw('mc', "Eres la única que piensa eso, así que...")
		elseif cl == 681 then
			updateSayori('4','h')
			cw('s',"¡¿Eh?!")
		elseif cl == 682 then
		cw('s', "¡¡Imposible!!")
		elseif cl == 683 then
		cw('s', "¿Ni siquiera Natsuki?")
		elseif cl == 684 then
		cw('mc', "Bueno, Natsuki es a la que más le cuesta reconocer que le gusta algo...")
		elseif cl == 685 then
		cw('mc', "Pero no creo que sea eso.")
		elseif cl == 686 then
			updateSayori('1','b')
		cw('s', "¿Qué quieres decir?")
		elseif cl == 687 then
		cw('mc', "Bueno...")
		elseif cl == 688 then
		cw('mc', "Supongo que voy a serte sincero.")
		elseif cl == 689 then
		cw('mc', "Me es más fácil componer poemas cuando pienso en ti.")
		elseif cl == 690 then
			updateSayori('4','m')
		cw('s', "¡¿E-eh?!")
		elseif cl == 691 then
		cw('s', "¡¿Que qué?!")
		elseif cl == 692 then
		cw('mc', "¡No seas malpensada, tonta!")
		elseif cl == 693 then
		cw('mc', "Me refiero a que eres una persona muy... expresiva, supongo.")
		elseif cl == 694 then
		cw('mc', "¿Cómo quieres que componga algo sobre mi aburrida vida?")
		elseif cl == 695 then
		cw('mc', "No sé cómo, pero siempre consigues hacer una aventura de cualquier cosa.")
		elseif cl == 696 then
		cw('mc', "Hasta de las pequeñas cosas.")
		elseif cl == 697 then
			updateSayori('4','o')
		cw('s', "¡¡Como cocinar!!")
		elseif cl == 698 then
		cw('mc', "¡¡No hablemos de eso!!")
		elseif cl == 699 then
			updateSayori('5a')
		cw('s', "Je, je, je...")
		elseif cl == 700 then
		cw('mc', "Bueno...")
		elseif cl == 701 then
		cw('mc', "Lo que intento decir es que puedo sentir más cosas a través de ti que a través de mí.")
		elseif cl == 702 then
		cw('mc', "Tenemos una conexión muy rara.")
		elseif cl == 703 then
		cw('mc', "Es tu culpa por meterte siempre en mis asuntos.")
		elseif cl == 704 then
			updateSayori('1','e')
		cw('s', "¿Eeh?")
		elseif cl == 705 then
		cw('s', "No sé si te entiendo...")
		elseif cl == 706 then
		cw('mc', "Ay...")
		elseif cl == 707 then
		cw('mc', "Nunca entiendes lo que te explico, ¿verdad, Sayori?")
		elseif cl == 708 then
		cw('bl', "Le doy un par de palmaditas en la cabeza.")
		elseif cl == 709 then
			updateSayori('4','s')
		cw('s', "¡Ja, ja, ja! ¡Oyeee!")
		elseif cl == 710 then
		cw('s', "Ya no soy una cría, ¡¿sabes?!")
		elseif cl == 711 then
		cw('mc', "¿Estás segura?")
		elseif cl == 712 then
			updateSayori('4','l')
		cw('s', "Mmm, puede~")
		elseif cl == 713 then
		cw('bl', "Sayori empieza a darle vueltas al lápiz.")
		elseif cl == 714 then
		cw('s', "Oye, " .. player .. ".")
		elseif cl == 715 then
			updateSayori('2','d')
		cw('s', "¿Me podrías dar tu poema?")
		elseif cl == 716 then
		cw('s', "Me gustaría quedármelo.")
		elseif cl == 717 then
		cw('mc', "¿Eh? ¿Por qué?")
		elseif cl == 718 then
			updateSayori('1','y')
		cw('s', "Pues porque...")
		elseif cl == 719 then
		cw('s', "Bueno...")
		elseif cl == 720 then
		cw('s', "Es la primera vez que me escribes algo...")
		elseif cl == 721 then
		cw('s', "Je, je, je...")
		elseif cl == 722 then
			cw('mc',"¡¡!!")
		elseif cl == 723 then
		cw('mc', "¡Sayori, lo has malinterpretado!")
		elseif cl == 724 then
		cw('mc', "¡No lo he compuesto para ti!")
		elseif cl == 725 then
			updateSayori('5b')
		cw('s', "Je, je, je...")
		elseif cl == 726 then
		cw('mc', "Ay...")
		elseif cl == 727 then
		cw('mc', "¿Me estás escuchando?")
		elseif cl == 728 then
		cw('mc', "Bueno, da igual.")
		elseif cl == 729 then
		cw('mc', "Te lo daré cuando nos vayamos a casa.")
		elseif cl == 730 then
			updateSayori('4','m')
		cw('s', "¡¿En serio?!")
		elseif cl == 731 then
		cw('bl', "¡Crac!")
		elseif cl == 732 then
			updateSayori('4','p')
		cw('s', "¡¡A-ah!!")
		elseif cl == 733 then
		cw('s', "He roto mi lápiz.")
		elseif cl == 734 then
		cw('bl', "Sayori se apresura a coger los restos que habían caído al suelo.")
		elseif cl == 735 then
		cw('bl', "Pero por ir despistada, se choca conmigo.")
		elseif cl == 736 then
			updateSayori('4','l')
		cw('s', "¡¡Pe-pe-perdón!!")
		elseif cl == 737 then
		cw('mc', "Está bien, está bien.")
		elseif cl == 738 then
		cw('mc', "Ya lo cojo yo.")
		elseif cl == 739 then
		cw('bl', "Me agacho y recojo el lápiz roto.")
		elseif cl == 740 then
		cw('bl', "Sayori se aguanta con el pupitre mientras le tiemblan las rodillas.")
		elseif cl == 741 then
			updateSayori('5b')
		cw('s', "H-hoy estoy un poco torpe...")
		elseif cl == 742 then
		cw('s', "Ja, ja, ja, ja...")
		elseif cl == 743 then
		cw('mc', "Vamos a sentarnos, Sayori...")
		elseif cl == 744 then
			updateSayori('4','y')
		cw('s', "P-por supuesto...")
		elseif cl == 745 then
		cw('bl', "Agarro el brazo de Sayori y la ayudo a sentarse en el pupitre.")
		elseif cl == 746 then
		cw('mc', "Bueno, aún no he leído tu poema...")
		elseif cl == 747 then
			updateSayori('4','b')
			cw('s',"¡Oh!")
		elseif cl == 748 then
		cw('s', "Perdona, me había olvidado~")
		elseif cl == 749 then
			updateSayori('1','h')
		cw('s', "¡¡Pero no es tan bueno como el tuyo!!")
		elseif cl == 750 then
		cw('mc', "Ay, no te preocupes.")
		elseif cl == 751 then
		cw('mc', "Seguro que me gustará.")
		elseif cl >= 752 then
			ch2_s_end()
		end
	end
end

function ch3_s_bad()
	local currentname = "Yuri"
	if n_poemappeal[3] > y_poemappeal[3] then
		currentname = "Natsuki"
	end
	if cl == 670 then
		cw('s',"...")
	elseif cl == 671 then
		updateSayori('1','k')
		cw('s', "Mmm...")
	elseif cl == 672 then
		cw('s', "No está mal, supongo~")
	elseif cl == 673 then
		cw('mc', "Venga ya, está claro que no te ha gustado.")
	elseif cl == 674 then
		updateSayori('1','d')
		cw('mc', "Bueno...")
	elseif cl == 675 then
		cw('s', "No te tiene que preocupar lo que piense.")
	elseif cl == 676 then
		updateSayori('2','y')
		cw('s', "Después de todo, lo has compuesto para alguien, ¿no?")
	elseif cl == 677 then
		cw('s',"Seguramente en "..currentname.."...")
	elseif cl == 678 then
		cw('mc', "¿¿Eh??")
	elseif cl == 679 then
		cw('mc', "¡No lo he compuesto para nadie en concreto!")
	elseif cl == 680 then
		cw('s', "Puede...")
	elseif cl == 681 then
		updateSayori('1','d')
		cw('s', "No es eso a lo que me refería.")
	elseif cl == 682 then
		cw('s', "Pero no pasa nada.")
	elseif cl == 683 then
		cw('s', "Estás haciendo amigas nuevas, justo como quería.")
	elseif cl == 684 then
		updateSayori('1','q')
		cw('s', "Eso me hace... muy feliz.")
	elseif cl == 685 then
		cw('s', "Tú también eres feliz, ¿no?")
	elseif cl == 686 then
		updateSayori('1','a')
		cw('s', "¿En el club?")
	elseif cl == 687 then
		cw('mc', "Bueno...")
	elseif cl == 688 then
		cw('mc', "Pues claro.")
	elseif cl == 689 then
		updateSayori('4','q')
		cw('s', "Bien~")
	elseif cl == 690 then
		cw('s', "Eso es lo más importante para mí.")
	elseif cl == 691 then
		updateSayori('1','d')
		cw('s', "Gracias, " .. player .. ".")
	elseif cl == 692 then
		cw('mc',"Sayori...")
	elseif cl == 693 then
		cw('mc', "¿Te pasa algo?")
	elseif cl == 694 then
		updateSayori('1','b')
		cw('s', "¿Eh?")
	elseif cl == 695 then
		updateSayori('1','k')
		cw('s', "No, nada.")
	elseif cl == 696 then
		cw('s', "Es solo que hoy estoy un poco cansada.")
	elseif cl == 697 then
		updateSayori('1','l')
		cw('s', "Je, je, je.")
	elseif cl == 698 then
		cw('mc', "Vale...")
	elseif cl == 699 then
		cw('mc', "Tú solo dime si necesitas algo.")
	elseif cl == 700 then
		updateSayori('1','a')
		cw('s', "Lo haré.")
	elseif cl == 701 then
		cw('s', "No te preocupes por mí, ¿vale?")
	elseif cl == 702 then
		cw('s', "Ya puedes ir a jugar con el resto.")
	elseif cl == 703 then
		cw('mc', "Si insistes...")
	elseif cl == 704 then
		updateSayori('4','q')
		cw('s', "Wiii~")
	elseif cl == 705 then
		updateSayori('4','a')
		cw('s', "Creo que hoy me voy a ir antes a casa.")
	elseif cl == 706 then
		cw('mc', "¿Sayori?")
	elseif cl == 707 then
		updateSayori('1','q')
		cw('s', "Dile a Monika que no me encontraba muy bien, ¿vale?")
	elseif cl == 708 then
		cw('s', "Hasta mañana~")
	elseif cl == 709 then
		cw('bl', "Antes de que pueda decir algo más, Sayori sale alegremente del aula, tarareando para sí misma.")
	elseif cl == 710 then
		poemfinish('s')
	end
end

function ch3_s_med()
	ch3_s_bad()
end

function ch3_s_good()
	if poemwinner[1] ~= "Sayori" and poemwinner[2] ~= "Sayori" then
		ch3_s_bad()
	else
		if cl == 670 then
			updateSayori('1','d')
			cw('s',"...")
		elseif cl == 671 then
		cw('s', "Este es el mejor que has hecho hasta ahora.")
		elseif cl == 672 then
		cw('s', "Está muy, muy bien, " .. player .. "~")
		elseif cl == 673 then
		cw('mc', "Em, gracias.")
		elseif cl == 674 then
			updateSayori('1','q')
		cw('s', "Um~")
		elseif cl == 675 then
			cw('mc',"...")
		elseif cl == 676 then
		cw('mc', "Sayori, hoy has estado muy callada.")
		elseif cl == 677 then
		cw('mc', "¿Todo bien?")
		elseif cl == 678 then
			updateSayori('4','m')
		cw('s', "¿E-eh?")
		elseif cl == 679 then
		cw('s', "¡Pues claro!")
		elseif cl == 680 then
			updateSayori('4','l')
		cw('s', "No pasa nada~")
		elseif cl == 681 then
		cw('s', "Quizá esté un poco cansada.")
		elseif cl == 682 then
			updateSayori('1','l')
		cw('s', "Je, je, je.")
		elseif cl == 683 then
		cw('mc', "¿Quieres echarte una siestecita o algo?")
		elseif cl == 684 then
			updateSayori('1','h')
		cw('s', "¡No, eso es absurdo!")
		elseif cl == 685 then
		cw('s', "No te preocupes por mí, ¿vale?")
		elseif cl == 686 then
			updateSayori('1','q')
		cw('s', "Solo quiero verte sonreír~")
		elseif cl == 687 then
		cw('mc', "Bueno, vale...")
		elseif cl == 688 then
			updateSayori('1','b')
		cw('s', "Oye, " .. player .. ".")
		elseif cl == 689 then
		cw('s', "Estoy un poco sorprendida.")
		elseif cl == 690 then
		cw('s', "Pensaba que intentabas tener un estilo similar a Yuri...")
		elseif cl == 691 then
			updateSayori('1','y')
		cw('s', "O incluso al de Natsuki...")
		elseif cl == 692 then
		cw('s', "Pero en el fondo...")
		elseif cl == 693 then
		cw('mc', "Sí.")
		elseif cl == 694 then
		cw('mc', "Supongo que eres a la que más le ha gustado este estilo.")
		elseif cl == 695 then
			audioUpdate('0')
			updateSayori('1','k')
		cw('s', "¿Por qué?")
		elseif cl == 696 then
		cw('s', "¿No quieres tener una relación más estrecha con las demás?")
		elseif cl == 697 then
			audioUpdate('9')
		cw('mc', "¡Espera!")
		elseif cl == 698 then
		cw('mc', "¡Por supuesto que sí!")
		elseif cl == 699 then
		cw('mc', "Pero eso no quiere decir que tenga que esforzarme tanto por impresionarlas.")
		elseif cl == 700 then
		cw('mc', "Tú eres a la que mejor entiendo, Sayori.")
		elseif cl == 701 then
		cw('mc', "Ya sé que a veces tienes que aguantarme.")
		elseif cl == 702 then
		cw('mc', "Y a veces yo tengo que aguantarte a ti.")
		elseif cl == 703 then
		cw('mc', "Pero estamos... sincronizados o algo.")
		elseif cl == 704 then
		cw('mc', "Y este poema ha sido el resultado de eso.")
		elseif cl == 705 then
		cw('mc', "A veces, parece que eres lo más interesante que hay en mi vida.")
		elseif cl == 706 then
		cw('mc', "Así que, a veces, es más fácil componer cuando pienso en ti.")
		elseif cl == 707 then
		cw('mc', "... ¿Sayori?")
		elseif cl == 708 then
			updateSayori('4','v')
		cw('s', "N-no...")
		elseif cl == 709 then
			cw('s',player.."...")
		elseif cl == 710 then
		cw('s', "No... lo merezco...")
		elseif cl == 711 then
		cw('s', "Eres demasiado bueno conmigo...")
		elseif cl == 712 then
		cw('s', "¿Por qué lo haces...?")
		elseif cl == 713 then
		cw('bl', "De repente, a Sayori le cuesta hablar con firmeza.")
		elseif cl == 714 then
		cw('s', "Si tan solo te divirtieses con las demás...")
		elseif cl == 715 then
		cw('s', "¡Todo esto sería mucho más fácil!")
		elseif cl == 716 then
		cw('mc', "¡Sayori!")
		elseif cl == 717 then
		cw('bl', "Echo un vistazo al aula para asegurarme de que nadie nos ha oído.")
		elseif cl == 718 then
			cw('mc',"Sayori.")
		elseif cl == 719 then
		cw('mc', "Puede que no lo haya dicho nunca, pero no sé qué sientes ahora mismo.")
		elseif cl == 720 then
		cw('mc', "Dime qué puedo hacer para animarte.")
		elseif cl == 721 then
		cw('bl', "Sayori niega con la cabeza.")
		elseif cl == 722 then
		cw('bl', "Solloza y continúa negando.")
		elseif cl == 723 then
		cw('bl', "Al final se calma y sonríe.")
		elseif cl == 724 then
			updateSayori('1','y')
		cw('s', "No pasa nada, " .. player .. ".")
		elseif cl == 725 then
		cw('s', "Solo se trata de un pequeño nubarrón.")
		elseif cl == 726 then
			updateSayori('4','r')
		cw('s', "Siento que hayas tenido que verlo. ¡Ja, ja, ja!")
		elseif cl == 727 then
		cw('s', "Te prometo que no volverá a pasar.")
		elseif cl == 728 then
			updateSayori('1','a')
		cw('s', "Quiero que todos sonriamos, ¿vale?")
		elseif cl == 729 then
		cw('s', "Eso es lo que importa.")
		elseif cl == 730 then
		cw('s', "Ve a jugar con el resto.")
		elseif cl == 731 then
		cw('s', "Hoy me iré un poco antes a casa~")
		elseif cl == 732 then
		cw('mc', "Sayori...")
		elseif cl == 733 then
			updateSayori('2','q')
		cw('s', "Dile a Monika que no me encontraba muy bien, ¿vale?")
		elseif cl == 734 then
		cw('s', "Hasta mañana~")
		elseif cl == 735 then
		cw('bl', "Antes de que pueda decir algo más, Sayori sale alegremente del aula, tarareando para sí misma.")
		elseif cl == 736 then
			poemfinish('s')
		end
	end
end

function ch1_m_start()
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
		updateMonika('4','b')
		cw('m', "Por cierto, ya que eres nuevo y tal...")
	elseif cl == 675 then
		cw('m', "Si tienes alguna sugerencia para el club, como actividades nuevas o cosas que podamos mejorar...")
	elseif cl == 676 then
		cw('m', "¡Soy toda oídos!")
	elseif cl == 677 then
		cw('m', "Que no te dé miedo decir nada, ¿vale?")
	elseif cl == 678 then
		updateMonika('4','a')
		cw('mc', "Muy bien, lo tendré en cuenta.")
	elseif cl == 679 then
		cw('bl', "Por supuesto que me dará miedo decir algo.")
	elseif cl == 680 then
		cw('bl', "Lo mejor será que me deje llevar hasta que me asiente en el club.")
	elseif cl == 681 then
		updateMonika('1','a')
		cw('m', "Bueno...")
	elseif cl == 682 then
		cw('m', "¿Quieres enseñarme tu poema?")
	elseif cl == 683 then
		cw('mc', "Me da un poco de vergüenza, pero supongo que tengo que hacerlo.")
	elseif cl == 684 then
		updateMonika('5a','')
		cw('m', "¡Ja, ja, ja, ja!")
	elseif cl == 685 then
		cw('m', "¡No te preocupes, " .. player .. "!")
	elseif cl == 686 then
		cw('m', "A todos nos da vergüenza, ¿sabes?")
	elseif cl == 687 then
		cw('m', "Pero es ese tipo de vergüenza que terminas superando.")
	elseif cl == 688 then
		cw('mc', "Sí, tienes razón.")
	elseif cl == 689 then
		cw('bl', "Le doy mi poema a Monika.")
	elseif cl == 690 then
		updateMonika('2','a')
		cw('m', "¡Mmm!")
	elseif cl >= 691 then
		m_eval()
	end
end

function ch2_m_start()
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
		updateMonika('1','b')
		cw('m', "¡Mientras no me digas que te va mal!")
	elseif cl == 675 then
		updateMonika('1','a')
		cw('m', "Me alegra que te estés aplicando.")
	elseif cl == 676 then
		cw('m', "¡Quizá compongas una obra maestra dentro de nada!")
	elseif cl == 677 then
		cw('mc', "Ja, ja, ja. No contaría con ello...")
	elseif cl == 678 then
		updateMonika('1','a')
		cw('m', "¡Nunca se sabe!")
	elseif cl == 679 then
		cw('m', "¿Quieres enseñarme tu poema?")
	elseif cl == 680 then
		cw('mc', "Claro, aquí tienes.")
	elseif cl == 681 then
		cw('bl', "Le doy mi poema a Monika.")
	elseif cl == 682 then
		cw('m',"...")
	elseif cl == 683 then
		cw('m', "¡Muy bien!")
	elseif cl >= 684 then
		m_eval()
	end
end

function ch3_m_start()
	if cl == 670 then
		updateMonika('2','a')
		cw('m', "Hola " .. player .. "~")
	elseif cl == 671 then
		cw('m', "¿Ya has pensado qué leerás en el festival?")
	elseif cl == 672 then
		cw('mc', "Bueno...")
	elseif cl == 673 then
		cw('bl', "Estar en el club es una cosa, pero recitar enfrente de tanta gente...")
	elseif cl == 674 then
		cw('mc', "Tendré que pensármelo un poco más.")
	elseif cl == 675 then
		updateMonika('2','b')
		cw('m', "¡Vale, sin presión!")
	elseif cl == 676 then
		cw('m', "Pero hagas lo que hagas, seguro que quedará genial.")
	elseif cl == 677 then
		cw('m', "Y además me hará feliz.")
	elseif cl == 678 then
		updateMonika('2','k')
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 679 then
		updateMonika('1','a')
		cw('m', "¡Bueno, vamos a ver el poema de hoy!")
	elseif cl == 680 then
		cw('mc', "Claro...")
	elseif cl == 681 then
		cw('bl', "Le doy el poema que tengo en las manos a Monika.")
	elseif cl == 682 then
		cw('m',"...")
	elseif cl >= 683 then
		m_eval()
	end
end

function ch1_m_end()
	if cl == 730 then
		cw('mc', "Seguro que primero probaré un montón de cosas diferentes.")
	elseif cl == 731 then
		cw('mc', "Me llevará un tiempo sentirme cómodo con esto.")
	elseif cl == 732 then
		updateMonika('1','k')
		cw('m', "¡No pasa nada!")
	elseif cl == 733 then
		updateMonika('1','b')
		cw('m', "Me encanta ver que pruebas cosas nuevas.")
	elseif cl == 734 then
		cw('m', "Es la mejor forma de encontrar el estilo que más te pega.")
	elseif cl == 735 then
		updateMonika('3','e')
		cw('m', "A todas les gustará más su propio estilo...")
	elseif cl == 736 then
		updateMonika('3','a')
		cw('m', "¡Pero yo siempre te ayudaré a encontrar el que más te guste!")
	elseif cl == 737 then
		cw('m', "Así que no te sientas obligado a componer como lo hagan las demás.")
	elseif cl == 738 then
		cw('m', "Ni que te tuvieras que preocupar por impresionarlas o algo.")
	elseif cl == 739 then	
		updateMonika('5a','')
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 740 then
		cw('m', "Ja, ja, ja...")
	elseif cl == 741 then
		updateMonika('1','a')
		cw('m', "Bueno, ¿quieres leer mi poema?")
	elseif cl == 742 then
		updateMonika('1','e')
		cw('m', "No te preocupes, no se me da tan bien...")
	elseif cl == 743 then
		cw('mc', "Pareces muy segura para estar diciendo que no se te da tan bien.")
	elseif cl == 744 then
		updateMonika('1','j')
		cw('m', "Bueno, eso es porque tengo que parecer segura.")
	elseif cl == 745 then
		updateMonika('1','b')
		cw('m', "Pero no significa que lo sea siempre, ¿sabes?")
	elseif cl == 746 then
		updateMonika('1','a')
		cw('mc', "Ya veo...")
	elseif cl == 747 then
		cw('mc', "Bueno, vamos a leerlo.")
	elseif cl == 748 then
		poem('poem_m1')
	elseif cl == 749 then
		scriptJump(750)
	elseif cl >= 750 then
		ch1_m_end2()
	end
end

function ch2_m_end()
	if cl == 730 then
		updateMonika('1','a')
		cw('m', "Pero aún así...")
	elseif cl == 731 then
		cw('m', "¿Quieres leer mi poema ahora?")
	elseif cl == 732 then
		cw('m', "Me gusta cómo me ha quedado este, así que espero que a ti también.")
	elseif cl == 733 then
		cw('mc', "Muy bien, veamos.")
	elseif cl == 734 then
		poem('poem_m2')
	elseif cl == 735 then
		scriptJump(738)
	elseif cl == 738 then
		poem_disable()
		cw('mc', "Mmm...")
	elseif cl == 739 then
		cw('mc', "Este es mucho más abstracto que el anterior, ¿eh?")
	elseif cl == 740 then
		updateMonika('5a')
		cw('m', "Ja, ja, ja.")
	elseif cl == 741 then
		cw('m', "Supongo que este es mi estilo...")
	elseif cl == 742 then
		cw('m', "Lo siento si no te gusta.")
	elseif cl == 743 then
		cw('mc', "Que va, si no he dicho eso.")
	elseif cl == 744 then
		cw('mc', "Podría decirse que no es algo que haya visto.")
	elseif cl == 745 then
		updateMonika('2','a')
		cw('m', "La verdad es que me gusta jugar con el espacio que hay en el papel...")
	elseif cl == 746 then
		cw('m', "Elegir dónde y cómo separar tus palabras puede cambiar totalmente el poema.")
	elseif cl == 747 then
		updateMonika('2','b')
		cw('m', "Es como si fuera mágico.")
	elseif cl == 748 then
		cw('m', "Tal y como lo he escrito, parece que los versos cortos están intentando hacerse oír a través del ruido.")
	elseif cl == 749 then
		cw('m', "Ya veo...")
	elseif cl == 750 then
		cw('mc', "Aunque sigo sin entender de qué va.")
	elseif cl == 751 then
		updateMonika('2','k')
		cw('m', "Ja, ja, ja.")
	elseif cl == 752 then
		updateMonika('4','a')
		cw('m', "En ocasiones, la pregunta correcta no es de qué va.")
	elseif cl == 753 then
		cw('m', "Los poemas pueden ser tan abstractos como una expresión física de un sentimiento.")
	elseif cl == 754 then
		cw('m', "O una conversación con el lector.")
	elseif cl == 755 then
		cw('m', "Por lo que visto así, no todos los poemas tienen que ir sobre algo.")
	elseif cl == 756 then
		cw('m', "Bueno...")
	elseif cl == 757 then
		updateMonika('3','b')
		cw('m', "¡Aquí viene el superconsejito del día!")
	elseif cl == 758 then
		cw('m', "A veces, puedes encontrarte situaciones la mar de duras...")
	elseif cl == 759 then
		cw('m', "Cuando eso ocurra, ¡no olvides guardar la partida!")
	elseif cl == 760 then
		cw('m', "¡Nunca se sabe si cambiarás de opinión...")
	elseif cl == 761 then
		cw('m', "o si pasará algo inesperado!")
	elseif cl == 762 then
		updateMonika('3','d')
		cw('m', "Un momento... ¿esto cuenta como consejo para componer?")
	elseif cl == 763 then
		updateMonika('3','k')
		cw('m', "¿De qué narices estoy hablando?")
	elseif cl == 764 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 765 then
		updateMonika('3','b')
		cw('m', "¡Y ese es el superconsejito del día!")
	elseif cl == 766 then
		cw('m', "Gracias por tu atención~")
	elseif cl == 767 then
		poemfinish('m')
	end
end

function ch3_m_end()
	if cl == 730 then
		updateMonika('1','a')
		cw('mc', "Bueno...")
	elseif cl == 731 then
		cw('m', "Ahora te enseñaré mi poema, ¿vale?")
	elseif cl == 732 then
		cw('mc', "Em...")
	elseif cl == 733 then
		cw('mc', "Muy bien.")
	elseif cl == 734 then
		poem('poem_m3')
	elseif cl == 735 then
		scriptJump(740)
	elseif cl == 740 then
		poem_disable()
		updateMonika('1','a')
		cw('m', "Ya sabes...")
	elseif cl == 741 then
		cw('m', "Creo que aprender y buscar respuestas son las cosas que le dan sentido a la vida.")
	elseif cl == 742 then
		updateMonika('1','e')
		cw('m', "No me quiero poner muy filosófica ni nada...")
	elseif cl == 743 then
		updateMonika('1','a')
		cw('m', "Pero era lo que me rondaba por la cabeza, así que ese es el tema del poema.")
	elseif cl == 744 then
		cw('mc', "Ya veo...")
	elseif cl == 745 then
		cw('mc', "La verdad es que nunca he pensado demasiado en eso.")
	elseif cl == 746 then
		updateMonika('1','d')
		cw('m', "En cierto modo, es casi paradójico.")
	elseif cl == 747 then
		cw('m', "Porque si conociésemos todas las respuestas, ¿no perderíamos todo el interés en el mundo?")
	elseif cl == 748 then
		cw('mc', "¿Sabes qué? Me he dado cuenta de algo.")
	elseif cl == 749 then
		cw('mc', "Parece que en el club preferís tratar temas tristes antes que los felices.")
	elseif cl == 750 then
		updateMonika('1','k')
		cw('m', "Ja, ja, ja. ¿Te sorprende?")
	elseif cl == 751 then
		updateMonika('1','a')
		cw('m', "Es decir, si todo fuera bien...")
	elseif cl == 752 then
		cw('m', "Nos quedaríamos sin temas de los que escribir, ¿no?")
	elseif cl == 753 then
		cw('m', "Los humanos no somos criaturas bidimensionales.")
	elseif cl == 754 then
		cw('m', "Y creo que tú lo sabes mejor que nadie.")
	elseif cl == 755 then
		cw('mc', "¿Quieres decir que somos unidimensionales?")
	elseif cl == 756 then
		updateMonika('1','l')
		cw('m', "Eh, ¡sí! ¡eso!")
	elseif cl == 757 then
		updateMonika('1','a')
		cw('m', "Bueno...")
	elseif cl == 758 then
		updateMonika('3','b')
		cw('m', "¡Aquí viene el superconsejito del día!")
	elseif cl == 759 then
		cw('m', "¿Alguna vez te ha dado miedo enseñar tu poema porque pensabas que era malo?")
	elseif cl == 760 then
		cw('m', "Que algo a lo que le has dedicado tanto esfuerzo resulte indiferente puede ser desalentador.")
	elseif cl == 761 then
		cw('m', "Pero si encuentras gente a la que le guste componer, ¡entonces es mucho más fácil!")
	elseif cl == 762 then
		cw('m', "Por que en vez de limitarse a decir si tu poema es bueno, decente o malo...")
	elseif cl == 763 then
		cw('m', "se centrarán más en el esfuerzo dedicado y en las cosas que puedes mejorar.")
	elseif cl == 764 then
		cw('m', "De esta forma es mucho más alentador y hará que quieras seguir mejorando.")
	elseif cl == 765 then
		cw('m', "Es casi como tener tu propio club de literatura, ¿no crees?")
	elseif cl == 766 then
		updateMonika('3','k')
		cw('m', "¡Y ese es el superconsejito del día!")
	elseif cl == 767 then
		cw('m', "Gracias por tu atención~")
	elseif cl == 768 then
		poemfinish('m')
	end
end

function m_natsuki_1()
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
		cw('m',"¡No, no!")
	elseif cl == 698 then
		cw('m', "Me recuerda un poco a algo que escribiría Natsuki.")
	elseif cl == 699 then
		cw('m', "Y es una buena escritora.")
	elseif cl == 700 then
		updateMonika('5a','')
		cw('m', "¡Así que tómate eso como un halago!")
	elseif cl == 701 then
		cw('mc', "Ja, ja, ja...")
	elseif cl == 702 then
		cw('mc', "Si tú lo dices.")
	elseif cl == 703 then
		cw('m', "¡Sip!")
	elseif cl == 704 then
		updateMonika('1','a')
		cw('m', "¿Por casualidad, no habrás leído algo de Shel Silverstein?")
	elseif cl == 705 then
		cw('mc',"¿Eh?")
	elseif cl == 706 then
		cw('mc', "Puede que hace mucho tiempo...")
	elseif cl == 707 then
		cw('m', "Es famoso por contar todo tipo de historias en pocas palabras.")
	elseif cl == 708 then
		cw('m', "Sus poemas pueden ser divertidos, adorables o tristes...")
	elseif cl == 709 then
		updateMonika('3','d')
		cw('m', "Y a veces solo duran un par de líneas.")
	elseif cl == 710 then
		cw('m', "A primera vista puede parecer que son para niños, pero si lo piensas...")
	elseif cl == 711 then
		cw('m', "Pueden expresar puntos de vista aplicables a todo el mundo.")
	elseif cl == 712 then
		cw('mc', "Ya veo...")
	elseif cl == 713 then
		cw('mc', "¿Entonces quieres decir que Natsuki es como él?")
	elseif cl == 714 then
		updateMonika('2','a')
		cw('m', "Más o menos.")
	elseif cl == 715 then
		cw('m', "Puede que no sea una experta...")
	elseif cl == 716 then
		cw('m', "Pero seguro que no encontrarás relleno en sus poemas.")
	elseif cl == 717 then
		cw('m', "Serán fáciles de componer, pero es difícil transmitir un buen significado.")
	elseif cl == 718 then
		updateMonika('2','b')
		cw('m', "¡Así que entiendo que quieras explorar ese terreno!")
	elseif cl >= 719 then
		m_end()
	end
end

function m_sayori_1()
	if cl == 692 then
		updateMonika('2','a')
		cw('m', "¡Este me gusta!")
	elseif cl == 693 then
		cw('m', "Me recuerda a algo que escribiría Sayori.")
	elseif cl == 694 then
		cw('mc', "¿Tú crees?")
	elseif cl == 695 then
		updateMonika('2','d')
		cw('m', "Sayori y tú sois buenos amigos, ¿no?")
	elseif cl == 696 then
		cw('m', "No me extrañaría que tuvieseis eso en común.")
	elseif cl == 697 then
		cw('mc', "Ah, bueno...")
	elseif cl == 698 then
		cw('mc', "Puede que seamos buenos amigos, pero los dos somos muy diferentes.")
	elseif cl == 699 then
		cw('m', "Mmm...")
	elseif cl == 700 then
		cw('m', "Bueno, es posible.")
	elseif cl == 701 then
		updateMonika('3','a')
		cw('m', "Pero a lo mejor tenéis similitudes inesperadas.")
	elseif cl == 702 then
		cw('m', "La forma en la que habla de ti...")
	elseif cl == 703 then
		cw('m', "Parece que a los dos os preocupa el bienestar del otro.")
	elseif cl == 704 then
		cw('m', "Incluso si lo demostráis de formas distintas, al final os parecéis más de lo que piensas.")
	elseif cl == 705 then
		updateMonika('1','a')
		cw('m', "Esa es la sensación que me da tras leer tu poema.")
	elseif cl == 706 then
		cw('mc', "Mmm...")
	elseif cl == 707 then
		cw('mc', "¿Estás segura de que no le estás dando demasiadas vueltas?")
	elseif cl == 708 then
		updateMonika('5a','')
		cw('m', "¡Ja, ja, ja! ¡Puede ser!")
	elseif cl == 709 then
		cw('m', "Ay Dios, sueno como Yuri...")
	elseif cl == 710 then
		updateMonika('2','a')
		cw('m', "Pero en cualquier caso, los poemas de Sayori tienen un toque agradable.")
	elseif cl == 711 then
		cw('m', "Se nota que quiere explorar las emociones como la felicidad y la tristeza.")
	elseif cl == 712 then
		cw('m', "¿Quién diría que a alguien tan feliz le gustasen las cosas tristes?")
	elseif cl == 713 then
		cw('mc', "Ya, es bastante inesperado.")
	elseif cl == 714 then
		updateMonika('2','j')
		cw('m', "Bueno, para gustos, colores~")
	elseif cl == 715 then
		updateMonika('2','a')
		cw('m', "Y a ti tampoco te debería dar miedo experimentar un poco.")
	elseif cl >= 716 then
		m_end()
	end
end

function m_yuri_1()
	if cl == 692 then
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
		cw('m', "Al contrario que Sayori, que usa palabras simples y directas para describir la felicidad y la tristeza...")
	elseif cl == 704 then
		cw('m', "A Yuri le gusta dejarlo a la interpretación del lector.")
	elseif cl == 705 then
		updateMonika('4','d')
		cw('m', "Es muy difícil escribir de esa forma correctamente.")
	elseif cl == 706 then
		cw('m', "Tanto dejar que la gente lo entienda fácilmente...")
	elseif cl == 707 then
		cw('m', "Como dejar que lo analicen detenidamente.")
	elseif cl == 708 then
		cw('m', "Se necesitan años de práctica para lograrlo, los cuales imagino Yuri ya los tiene.")
	elseif cl == 709 then
		updateMonika('1','e')
		cw('m', "Aunque nunca le he preguntado...")
	elseif cl == 710 then
		cw('mc', "Seguro que no le llego ni a la suela del zapato.")
	elseif cl == 711 then
		updateMonika('2','b')
		cw('m', "¡No te preocupes por eso!")
	elseif cl == 712 then
		cw('m', "Tú a lo tuyo.")
	elseif cl == 713 then
		cw('m', "¡Sigue explorando y aprende probando cosas nuevas!")
	elseif cl >= 714 then
		m_end()
	end
end

function m_natsuki_2()
	if cl == 692 then
		updateMonika('1','j')
		cw('m', "Está muy bien~")
	elseif cl == 693 then
		updateMonika('1','a')
		cw('m', "Has pasado mucho tiempo con Natsuki, ¿no es así?")
	elseif cl == 694 then
		cw('m', "Te ha tenido que gustar su estilo.")
	elseif cl == 695 then
		cw('mc', "Ah, ya...")
	elseif cl == 696 then
		cw('mc', "Creo que es una buena forma de contar una historia.")
	elseif cl == 697 then
		updateMonika('2','a')
		cw('m', "Mmm. Tienes razón.")
	elseif cl == 698 then
		cw('m', "Puede que los poemas de Natsuki sean adorables, pero también son muy expresivos.")
	elseif cl == 699 then
		cw('m', "Entiendo que te guste su estilo.")
	elseif cl == 700 then
		cw('m', "¿He de suponer, que no te gusta tanto el estilo de Yuri?")
	elseif cl == 701 then
		cw('mc', "Ah, no es eso exactamente...")
	elseif cl == 702 then
		cw('mc', "En realidad me gustan todos vuestros poemas.")
	elseif cl == 703 then
		updateMonika('2','d')
		cw('m', "Cierto, pero seguro que te gustan unos más que otros, ¿verdad?")
	elseif cl == 704 then
		cw('m', "Como el uso de palabras complejas y simbolismo de Yuri...")
	elseif cl == 705 then
		cw('m', "O la manera que tiene Sayori de expresar la felicidad y la tristeza más directamente.")
	elseif cl == 706 then
		updateMonika('2','a')
		cw('m', "Tienes que tener alguna preferencia, ¿no?")
	elseif cl == 707 then
		updateMonika('4','l')
		cw('m', "¡Ah, ni que esto fuera un concurso!")
	elseif cl == 708 then
		updateMonika('4','a')
		cw('m', "Solo me picaba curiosidad, nada más.")
	elseif cl >= 709 then
		m_end()
	end
end

function m_sayori_2()
	if cl == 692 then
		updateMonika('1','j')
		cw('m', "Está muy bien~")
	elseif cl == 693 then
		updateMonika('1','a')
		cw('m', "Me recuerda a Sayori, al igual que el anterior.")
	elseif cl == 694 then
		updateMonika('4','b')
		cw('m', "¡Sois como el dúo dinámico!")
	elseif cl == 695 then
		cw('mc', "Ja, ja, ja...")
	elseif cl == 696 then
		updateMonika('2','a')
		cw('m', "Sí, puede ser.")
	elseif cl == 697 then
		cw('m', "Pero pasas mucho tiempo con ella, incluso en el club, ¿no?")
	elseif cl == 698 then
		updateMonika('2','j')
		cw('m', "Aunque tampoco puedo culparte por ser algo tímido~")
	elseif cl == 699 then
		cw('mc', "N-no soy tímido, es solo que...")
	elseif cl == 700 then
		updateMonika('5a')
		cw('m', "¡Ja, ja, ja! Era broma.")
	elseif cl == 701 then
		cw('m', "Ya sé que puede costarte hacer amigos.")
	elseif cl == 702 then
		updateMonika('2','d')
		cw('m', "Pero Yuri y Natsuki son superinteresantes, ¡así que no dudes en pasar tiempo con ellas!")
	elseif cl == 703 then
		cw('m', "Y también puedes hablar conmigo de vez en cuando...")
	elseif cl == 704 then
		updateMonika('1','e')
		cw('m', "No es que sea inaccesible ni nada así, ¿no?")
	elseif cl == 705 then
		cw('mc', "Ah, no, no es eso...")
	elseif cl == 706 then
		cw('mc', "Todavía me estoy acostumbrando a integrarme.")
	elseif cl == 707 then
		updateMonika('1','a')
		cw('m', "Exacto...")
	elseif cl == 708 then
		updateMonika('1','l')
		cw('m', "¡Perdona, no quería que te sintieras presionado ni nada!")
	elseif cl == 709 then
		cw('m', "De verdad, que no lo pretendía.")
	elseif cl == 710 then
		cw('mc', "No, no te preocupes.")
	elseif cl == 711 then
		cw('mc', "Entiendo lo que dices.")
	elseif cl == 712 then
		updateMonika('1','a')
		cw('m', "Pues muy bien~")
	elseif cl >= 713 then
		m_end()
	end
end

function m_yuri_2()
	if cl == 692 then
		updateMonika('2','b')
		cw('m', "¡Este es muy bueno!")
	elseif cl == 693 then
		cw('m', "No solo parece que te sientes más cómodo con tu estilo...")
	elseif cl == 694 then
		cw('m', "¡Sino que el simbolismo es incluso mejor que en el anterior!")
	elseif cl == 695 then
		updateMonika('2','a')
		cw('m', "Así, por curiosidad, ¿te has inspirado en el estilo de Yuri?")
	elseif cl == 696 then
		cw('mc', "Mmm...")
	elseif cl == 697 then
		cw('mc', "Supongo.")
	elseif cl == 698 then
		cw('mc', "Está claro que tiene talento.")
	elseif cl == 699 then
		updateMonika('4','k')
		cw('m', "¡Sí, exacto!")
	elseif cl == 700 then
		updateMonika('4','a')
		cw('m', "Creo que sus poemas son los más...")
	elseif cl == 701 then
		cw('m', "románticos.")
	elseif cl == 702 then
		updateMonika('1','a')
		cw('m', "Es la mejor forma de describirlos.")
	elseif cl == 703 then
		updateMonika('1','d')
		cw('m', "Es una persona totalmente distinta cuando coge su bolígrafo...")
	elseif cl == 704 then
		cw('mc', "Yo también me he dado cuenta.")
	elseif cl == 705 then
		cw('mc', "O cuando habla de literatura, es como si una luz se encendiese en su interior.")
	elseif cl == 706 then
		updateMonika('2','a')
		cw('m', "¡Ajá!")
	elseif cl == 707 then
		cw('m', "Por desgracia, es difícil hablar con ella de algo personal...")
	elseif cl == 708 then
		updateMonika('2','m')
		cw('m', "Créeme, lo he intentado...")
	elseif cl == 709 then
		cw('m', "¿Quién sabe lo que puede haber en su cabeza?")
	elseif cl == 710 then
		cw('mc', "Espero que no lo digas como algo malo.")
	elseif cl == 711 then
		updateMonika('1','g')
		cw('m', "¡No, por supuesto que no!")
	elseif cl == 712 then
		cw('m', "Me refiero a que me gustaría que no se lo guardase todo para ella...")
	elseif cl == 713 then
		updateMonika('1','e')
		cw('m', "Aunque verte defenderla de esa forma...")
	elseif cl == 714 then
		updateMonika('5a')
		cw('m', "Sí que te tiene que gustar...")
	elseif cl == 715 then
		cw('mc',"¡¿Eh?!")
	elseif cl == 716 then
		cw('mc', "¡Lo... lo has malinterpretado por completo!")
	elseif cl == 717 then
		cw('m', "¡Ja, ja, ja! ¡Calma, que era broma!")
	elseif cl == 718 then
		updateMonika('2','a')
		cw('m', "Además, estoy bastante segura de que ya tiene novio...")
	elseif cl == 719 then
		cw('mc', "Espera, ¿en serio?")
	elseif cl == 720 then
		updateMonika('2','k')
		cw('m', "Sí, al menos uno ficticio.")
	elseif cl == 721 then
		cw('bl', "Monika me susurra eso último.")
	elseif cl == 722 then
		updateMonika('5a')
		cw('m', "Solo es una corazonada, pero...")
	elseif cl == 723 then
		cw('mc', "¡Bueno, no hay nada de malo en ello!")
	elseif cl == 724 then
		updateMonika('1','n')
		cw('m', "¡Ah, ya lo sé!")
	elseif cl == 725 then
		cw('m', "Yo solo lo dejaba caer~")
	elseif cl >= 726 then
		m_end()
	end
end

function m_natsuki_3()
	if cl == 692 then
		updateMonika('2','j')
		cw('m', "Veo que sigues con el estilo de Natsuki, ¿eh?")
	elseif cl == 693 then
		updateMonika('2','d')
		cw('m', "Mmm...")
	elseif cl == 694 then
		cw('m', "Sí que te gusta Natsuki, ¿eh?")
	elseif cl == 695 then
		cw('mc', "¿Eh? Eso no...")
	elseif cl == 696 then
		updateMonika('5a')
		cw('m', "Oh, venga ya, " .. player .. ".")
	elseif cl == 697 then
		cw('m', "Es increíblemente sospechoso, ¿sabes?")
	elseif cl == 698 then
		cw('m', "Pasando tanto tiempo con ella en el club cada día...")
	elseif cl == 699 then
		cw('m', "Haz como que te gusta su manga favorito...")
	elseif cl == 700 then
		cw('mc', "¡Y-ya sabes cómo es Natsuki!")
	elseif cl == 701 then
		cw('mc', "Si no le sigo el rollo, me acabará odiando.")
	elseif cl == 702 then
		updateMonika('2','e')
		cw('m',"¿Eh?")
	elseif cl == 703 then
		updateMonika('2','a')
		cw('m', "No, creo que te estás confundiendo, " .. player .. ".")
	elseif cl == 704 then
		cw('m', "Natsuki no odia a quien no le da lo que quiere.")
	elseif cl == 705 then
		updateMonika('2','d')
		cw('m', "Sí, es autoritaria, pero no es tan egoísta...")
	elseif cl == 706 then
		cw('m', "De hecho, creo que eres el único que la ha mimado tanto.")
	elseif cl == 707 then
		cw('mc', "¿De verdad?")
	elseif cl == 708 then
		cw('bl', "En el fondo ya lo sabía, pero no quería admitirlo.")
	elseif cl == 709 then
		cw('m', "Entonces tengo que preguntarte una cosa...")
	elseif cl == 710 then
		updateMonika('1','e')
		cw('m', "Ten cuidado, ¿vale?")
	elseif cl == 711 then
		cw('m', "Natsuki es bastante impredecible.")
	elseif cl == 712 then
		cw('m', "Muchas veces, ni ella misma sabe lo que quiere.")
	elseif cl == 713 then
		updateMonika('1','i')
		cw('m', "Al fin y al cabo es la más joven.")
	elseif cl == 714 then
		cw('m', "Puede que no sepa controlar sus sentimientos adecuadamente.")
	elseif cl == 715 then
		cw('m', "Lo que te quiero decir es...")
	elseif cl == 716 then
		updateMonika('1','m')
		cw('m', "Que si pasa algo malo, puede acabar repercutiendo en el club...")
	elseif cl == 717 then
		updateMonika('5a')
		cw('m', "Y no me harías eso, ¿verdad?")
	elseif cl == 718 then
		cw('mc', "Eso es...")
	elseif cl == 719 then
		cw('bl', "No estoy seguro de cómo responder.")
	elseif cl == 720 then
		cw('bl', "Aunque me importen ella y el club, es algo injusto decirme eso.")
	elseif cl == 721 then
		cw('mc', "Bueno...")
	elseif cl == 722 then
		cw('m', "Seguro que harás lo correcto.")
	elseif cl == 723 then
		cw('bl', "Monika sonríe con dulzura.")
	elseif cl >= 724 then
		m_end()
	end
end

function m_sayori_3()
	if cl == 692 then
		updateMonika('1','k')
		cw('m',"¡Ja, ja, ja!")
	elseif cl == 693 then
		cw('m', "Es gracioso...")
	elseif cl == 694 then
		cw('mc', "¿Y eso?")
	elseif cl == 695 then
		updateMonika('1','a')
		cw('m', "No el poema...")
	elseif cl == 696 then
		updateMonika('2','a')
		cw('m', "Me refiero a que tus poemas y los de Sayori se parecen cada día más.")
	elseif cl == 697 then
		cw('m', "Me sorprende que estéis tan sincronizados.")
	elseif cl == 698 then
		updateMonika('2','d')
		cw('m', "Aunque supongo que has estado pasando mucho tiempo con ella, ¿no?")
	elseif cl == 699 then
		cw('mc', "Ah, supongo que es eso...")
	elseif cl == 700 then
		cw('mc', "Aunque hayamos crecido juntos, no nos hemos visto tanto este año...")
	elseif cl == 701 then
		cw('mc', "Pero desde que me uní al club hemos vuelto a pasar más tiempo juntos otra vez.")
	elseif cl == 702 then
		updateMonika('1','a')
		cw('m', "Ya veo, ya veo~")
	elseif cl == 703 then
		cw('m', "Eso me recuerda...")
	elseif cl == 704 then
		cw('m', "Hoy Sayori estaba algo rara...")
	elseif cl == 705 then
		cw('mc', "¿Ah, sí? ¿Te ha dicho algo?")
	elseif cl == 706 then
		updateMonika('1','n')
		cw('m',"Ah...")
	elseif cl == 707 then
		cw('m', "Bueno...")
	elseif cl == 708 then
		updateMonika('2','l')
		cw('m', "" .. player .. ", no habrás estado ligando con ella, ¿no?")
	elseif cl == 709 then
		cw('mc', "¡Cla-claro que no!")
	elseif cl == 710 then
		cw('mc', "La he tratado como siempre.")
	elseif cl == 711 then
		updateMonika('2','a')
		cw('m', "Muy bien.")
	elseif cl == 712 then
		updateMonika('5a')
		cw('m', "Quería estar segura~")
	elseif cl == 713 then
		cw('m', "Sé lo mucho que te importa...")
	elseif cl == 714 then
		cw('m', "Sería terrible si algo malo le llegara a ocurrir, así que vigílala.")
	elseif cl == 715 then
		updateMonika('2','d')
		cw('m', "Sayori parece mucho más feliz desde que te uniste al club.")
	elseif cl == 716 then
		cw('m', "¿Qué le habrá dado de repente?")
	elseif cl == 717 then
		cw('mc',"...")
	elseif cl == 718 then
		updateMonika('1','l')
		cw('m', "Bueno, da igual.")
	elseif cl == 719 then
		cw('m', "No es el momento de hablar de algo así...")
	elseif cl >= 720 then
		m_end()
	end
end

function m_yuri_3()
	if cl == 692 then
		updateMonika('2','e')
		cw('m', "Tu estilo es cada vez más refinado, " .. player .. ".")
	elseif cl == 693 then
		cw('m', "Yuri te ha enseñado mucho, ¿no?")
	elseif cl == 694 then
		cw('m', "Bueno...")
	elseif cl == 695 then
		cw('mc', "Supongo.")
	elseif cl == 696 then
		updateMonika('2','a')
		cw('m', "Sí... Me he dado cuenta de que pasas mucho tiempo con ella.")
	elseif cl == 697 then
		updateMonika('2','d')
		cw('m', "Creo que la he oído hablar más estos días que en todo el año.")
	elseif cl == 698 then
		cw('m', "No sé cómo lo has hecho, pero es impresionante...")
	elseif cl == 699 then
		cw('mc', "Bueno, solo necesita paciencia y algo que le haga hablar sobre lo que piensa, supongo...")
	elseif cl == 700 then
		cw('mc', "Aunque todavía estoy acostumbrándome.")
	elseif cl == 701 then
		updateMonika('2','a')
		cw('m', "Mmm...")
	elseif cl == 702 then
		cw('m', "La verdad es que te estás esforzando mucho.")
	elseif cl == 703 then
		updateMonika('2','e')
		cw('m', "Sí que te gusta.")
	elseif cl == 704 then
		cw('mc', "¿Eh? Eso no...")
	elseif cl == 705 then
		updateMonika('5a')
		cw('m',"¡Ja, ja, ja!")
	elseif cl == 706 then
		cw('m', "Es increíblemente sospechoso, ¿sabes?")
	elseif cl == 707 then
		cw('m', "Pasar tanto tiempo con ella en el club cada día...")
	elseif cl == 708 then
		cw('m', "Leer esa novela atrevida con ella...")
	elseif cl == 709 then
		cw('mc', "Bueno...")
	elseif cl == 710 then
		cw('mc', "Es que... me siento mal porque le cuesta socializar.")
	elseif cl == 711 then
		cw('mc', "Quiero asegurarme de que no esté todo el rato sola.")
	elseif cl == 712 then
		cw('mc', "Además, la novela tampoco está tan mal...")
	elseif cl == 713 then
		updateMonika('1','k')
		cw('m', "Muy bien, muy bien~")
	elseif cl == 714 then
		cw('m', "Te entiendo.")
	elseif cl == 715 then
		updateMonika('1','a')
		cw('m', "Pero ten cuidado, ¿vale?")
	elseif cl == 716 then
		cw('m', "Sé que Yuri no está acostumbrada a abrirse a los demás...")
	elseif cl == 717 then
		updateMonika('2','d')
		cw('m', "Así que si le pasa algo mientras sea vulnerable...")
	elseif cl == 718 then
		cw('m', "La pobre no podrá soportarlo.")
	elseif cl == 719 then
		updateMonika('2','i')
		cw('m', "Sus libros no son exactamente una vía de escape para la realidad.")
	elseif cl == 720 then
		cw('m', "Son solo tiritas.")
	elseif cl == 721 then
		cw('mc', "Lo dices como si fuera a hacerle daño...")
	elseif cl == 722 then
		updateMonika('1','l')
		cw('m', "Lo siento, no me refería a eso~")
	elseif cl == 723 then
		cw('m', "Como mucho, se acabará haciendo daño así misma por accidente.")
	elseif cl >= 724 then
		m_end()
	end
end
