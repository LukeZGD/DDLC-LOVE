local gtextg = glitchtext(math.random(8,80))
local gtext10 = glitchtext(10)
local sgschance = math.random(1,16)

function ch23script()
	if cl == 1951 then
		event_initstart("sayori_gs")
		audioUpdate('0')
		sfxplay('gnid')
	elseif cl == 1952 then
		persistent.act2[1] = 1
		savepersistent()
		scriptJump(1631)
	end
	if cl == 1631 then
	if (g_system == 'Switch' or global_os == 'LOVE-WrapLua') and sgschance == 16 then
		if  persistent.act2[1] < 1 then scriptJump(1951) end
	end
	audioUpdate('6')
	bgUpdate('club_day2')
	updateYuri('2','y5',80)
		cw('y', "¡Hola, " .. player .. "!")
	elseif cl == 1632 then
		cw('y', "Estaba esperándote.")
	elseif cl == 1633 then
	updateYuri('2','d')
		cw('y', "¿Seguimos con el libro?")
	elseif cl == 1634 then
		cw('y', "Hoy he traído mi mejor té...")
	elseif cl == 1635 then
	updateYuri('2','f')
	updateNatsuki('4','w',200)
		cw('n', "¡Monika!")
	elseif cl == 1636 then
		cw('n', "Te dije que no...")
	elseif cl == 1637 then
	updateNatsuki('1','g')
		cw('n', "Argh...")
	elseif cl == 1638 then
		cw('n', "¿En serio vuelve a llegar tarde?")
	elseif cl == 1639 then
	updateYuri('1','h')
		cw('y', "Desconsiderada como de costumbre, Natsuki.")
	elseif cl == 1640 then
	updateNatsuki('4','c')
		cw('n', "¿Disculpa?")
	elseif cl == 1641 then
	updateYuri('1','r')
		cw('y', "¿Tienes que interrumpir siempre mis conversaciones con tus incesantes alaridos?")
	elseif cl == 1642 then
	updateNatsuki('1','o')
		cw('n', "¡¿Qué dices?!")
	elseif cl == 1643 then
	updateNatsuki('1','q')
		cw('n', "Lo dices como si lo hiciera siempre o algo.")
	elseif cl == 1644 then
		cw('n', "No sabía que estabas en medio de una conversación, ¿vale? Lo siento.")
	elseif cl == 1645 then
	updateNatsuki('4','u')
		cw('n', "Lo digo en serio, ¿qué te pasa últimamente?...")
	elseif cl >= 1646 and cl <= 1703 then
	if appeal.n >= 2 then
		if cl == 1646 then
		cw('n', "A ver...")
		elseif cl == 1647 then
		cw('n', "Pensé un poco en lo de ayer.")
		elseif cl == 1648 then
		updateNatsuki('2','q')
		cw('n', "Y fui algo más hostil de lo que pretendía...")
		elseif cl == 1649 then
		updateNatsuki('1','q')
		cw('n', "Creo que me sentí verdaderamente amenazada o algo por el estilo.")
		elseif cl == 1650 then
		updateNatsuki('1','h')
		cw('n', "Pero sé que esto es algo que hacemos todos juntos.")
		elseif cl == 1651 then
		updateNatsuki('1','q')
		cw('n', "Un miembro nuevo no estaría mal siempre y cuando sea buena persona...")
		elseif cl == 1652 then
		updateNatsuki('5','w')
		cw('n', "Y creo que esta vez estaría bien que se uniera otra chica...")
		elseif cl == 1653 then
		updateNatsuki('5','u')
		cw('n', "Así que...")
		elseif cl == 1654 then
		updateYuri('2','u')
		cw('y', "Natsuki...")
		elseif cl == 1655 then
		style_edited = true
		updateYuri('1','f')
		cw('y', "A nadie le importa.")
		elseif cl == 1656 then
		cw('y', "¿Por qué no vas a buscar monedas bajo las máquinas expendedoras o algo?")
		elseif cl == 1657 then
		style_edited = false
		updateNatsuki('1','p')
		cw('n', "¡...!")
		elseif cl == 1658 then
		updateNatsuki('1','r')
		n "..."
		elseif cl == 1659 then
		updateNatsuki('1','2f')
		n "..."
		elseif cl == 1660 then
		hideNatsuki()
		pause(1)
		elseif cl == 1661 then
		updateMonika('1','g',-40)
		cw('m', "Vaya, hombre...")
		elseif cl == 1662 then
		cw('m', "¡Vuelvo a ser la última!")
		elseif cl == 1663 then
		updateYuri('1','f')
		cw('y', "¿Otra vez practicando con el piano?")
		elseif cl == 1664 then
		updateMonika('5a')
		cw('m', "Sí...")
		elseif cl == 1665 then
		cw('m', "Ja, ja, ja...")
		elseif cl == 1666 then
		updateYuri('1','m')
		cw('y', "Cuánto empeño.")
		elseif cl == 1667 then
		cw('y', "Primero empezando este club, y aún reservando tiempo para el piano...")
		elseif cl == 1668 then
		updateYuri('1','a')
		cw('m', "Bueno, quizás no sea empeño...")
		elseif cl == 1669 then
		updateMonika('3','a')
		cw('m', "Yo creo que es pasión.")
		elseif cl == 1670 then
		cw('m', "También me motiva a trabajar duro para el festival.")
		elseif cl == 1671 then
		scriptJump(1704)
		end
	else
		if cl == 1646 then
		scriptJump(1647)
		elseif cl == 1647 then
		updateYuri('2','n')
		cw('y', "¿Yo?")
		elseif cl == 1648 then
		updateYuri('2','o')
		cw('y', "N-nada...")
		elseif cl == 1649 then
		n "..."
		elseif cl == 1650 then
		updateYuri('2','v')
		cw('y', "¿Tan malo es?...")
		elseif cl == 1651 then
		updateNatsuki('2','m')
		cw('n', "¿Ves? Sí que pasa algo.")
		elseif cl == 1652 then
		updateYuri('3','p')
		cw('y', "¡Lo solucionaré!")
		elseif cl == 1653 then
		updateYuri('3','y6')
		cw('y', "No es nada importante...")
		elseif cl == 1654 then
		updateYuri('3','o')
		cw('y', "Es solo que últimamente estoy con los nervios a flor de piel...")
		elseif cl == 1655 then
		updateYuri('3','n')
		cw('y', "¡E-en fin, no hace falta seguir hablando sobre eso!")
		elseif cl == 1656 then
		updateNatsuki('2','q')
		cw('n', "Tenía que sacar el tema.")
		elseif cl == 1657 then
		updateNatsuki('5','q')
		cw('n', "Aunque tampoco es que me importe mucho ni nada por el estilo...")
		elseif cl == 1658 then
		updateYuri('3','e')
		updateMonika('1','g',-40)
		cw('m', "Vaya, hombre...")
		elseif cl == 1659 then
		cw('m', "¡Vuelvo a ser la última!")
		elseif cl == 1660 then
		updateNatsuki('2','c')
		cw('n', "Bueno, " .. player .. " también acaba de llegar.")
		elseif cl == 1661 then
		updateYuri('1','f')
		cw('y', "¿Practicando otra vez con el piano?")
		elseif cl == 1662 then
		updateMonika('5a')
		cw('m', "Sí...")
		elseif cl == 1663 then
		cw('m', "Ja, ja, ja...")
		elseif cl == 1664 then
		updateYuri('1','m')
		cw('y', "Cuánto empeño.")
		elseif cl == 1665 then
		cw('y', "Primero empezando este club, y aún reservando tiempo para el piano...")
		elseif cl == 1666 then
		updateYuri('1','a')
		updateMonika('1','a')
		cw('m', "Bueno, quizás no sea empeño...")
		elseif cl == 1667 then
		updateMonika('3','a')
		cw('m', "Yo creo que es pasión.")
		elseif cl == 1668 then
		cw('m', "Me motiva a trabajar duro para el festival y...")
		elseif cl == 1669 then
		updateMonika('3','n')
		cw('m', "Mmm...")
		elseif cl == 1670 then
		updateNatsuki('5','s')
		n "..."
		elseif cl == 1671 then
		updateMonika('1','l')
		cw('m', "Vaya...")
		elseif cl == 1672 then
		cw('m', "S-se me ha olvidado...")
		elseif cl == 1673 then
		hideMonika()
		updateYuri('2','v')
		cw('y', "Em, en cuanto a eso, Natsuki...")
		elseif cl == 1674 then
		cw('y', "Ayer estuvimos hablando y...")
		elseif cl == 1675 then
		updateYuri('2','t')
		cw('y', "Bueno, hemos decidido que también queremos apoyar la idea del festival...")
		elseif cl == 1676 then
		updateYuri('2','l')
		cw('y', "¡Aunque...!")
		elseif cl == 1677 then
		updateYuri('2','h')
		cw('y', "Entiendo cómo te sientes porque el club cambie.")
		elseif cl == 1678 then
		cw('y', "Creo que todos nos sentimos igual.")
		elseif cl == 1679 then
		updateYuri('2','f')
		cw('y', "Así que siempre y cuando trabajemos juntos, el club seguirá siendo tal y como nos gusta.")
		elseif cl == 1680 then
		n "..."
		elseif cl == 1681 then
		updateYuri('2','v')
		cw('y', "Em, además...")
		elseif cl == 1682 then
		cw('y', "Si nos ayudas con el festival...")
		elseif cl == 1683 then
		updateYuri('3','r')
		cw('y', "¡Te compraré un manga nuevo!")
		elseif cl == 1684 then
		updateYuri('3','t')
		updateNatsuki('5','h')
		n "..."
		elseif cl == 1685 then
		updateNatsuki('2','z')
		cw('n', "¡Ja, ja, ja, ja!")
		elseif cl == 1686 then
		cw('n', "Lo siento, eso último ha sido muy gracioso.")
		elseif cl == 1687 then
		updateNatsuki('2','c')
		cw('n', "A ver...")
		elseif cl == 1688 then
		cw('n', "Pensé un poco en lo de ayer.")
		elseif cl == 1689 then
		updateNatsuki('2','q')
		cw('n', "Y fui algo más hostil de lo que pretendía...")
		elseif cl == 1690 then
		updateNatsuki('1','q')
		cw('n', "Creo que me sentí verdaderamente amenazada o algo por el estilo.")
		elseif cl == 1691 then
		updateNatsuki('1','h')
		cw('n', "Pero sé que esto es algo que hacemos todos juntos.")
		elseif cl == 1692 then
		updateNatsuki('1','q')
		cw('n', "Un miembro nuevo no estaría mal siempre y cuando sea buena persona...")
		elseif cl == 1693 then
		updateNatsuki('5','w')
		cw('n', "Y creo que esta vez estaría bien que se uniera otra chica...")
		elseif cl == 1694 then
		updateNatsuki('5','e')
		cw('n', "Y lo más importante... ¡No sabéis lo mucho que odiaría que el evento fracasara solo porque decidí echarme atrás!")
		elseif cl == 1695 then
		cw('n', "¡Soy una profesional, que os quede clarito!")
		elseif cl == 1696 then
		updateNatsuki('5','c')
		cw('n', "Así que yo también ayudaré y nos aseguraremos de que todo salga bien.")
		elseif cl == 1697 then
		updateYuri('2','s')
		cw('y', "Gracias al cielo...")
		elseif cl == 1698 then
		cw('y', "¿No es fantástico, Monika?")
		elseif cl == 1699 then
		updateNatsuki('2','k')
		cw('n', "¿Monika?...")
		elseif cl == 1700 then
		updateMonika('1','o',-40)
		cw('m', "Ah...")
		elseif cl == 1701 then
		updateMonika('1','n')
		cw('m', "¡Sí, es maravilloso!")
		elseif cl == 1702 then
		cw('m', "No habría sido lo mismo sin ti, Natsuki.")
		elseif cl == 1703 then
		scriptJump(1704)
		end
	end
	elseif cl == 1704 then
	updateMonika('5a')
		cw('m', "De todas formas, " .. player .. "...")
	elseif cl == 1705 then
		cw('m', "¿Qué quieres hacer hoy?")
	elseif cl == 1706 then
		cw('m', "Tenía pensado...")
	elseif cl == 1707 then
	updateYuri('1','l')
		cw('y', "Hoy ya tenemos planes.")
	elseif cl == 1708 then
	updateMonika('1','r')
	m "Ah..."
	elseif cl == 1709 then
		cw('m', "¿Ah, sí?")
	elseif cl == 1710 then
	updateYuri('1','y6')
		cw('y', "Correcto.")
	elseif cl == 1711 then
		cw('y', "" .. player .. " está enganchado a una novela que estamos leyendo juntos.")
	elseif cl == 1712 then
	updateYuri('1','y5')
		cw('y', "¿No te alegras de que le haya hecho interesarse por la literatura, Monika?")
	elseif cl == 1713 then
	updateYuri('1','a')
	updateMonika('2','l')
		cw('m', "Yo...")
	elseif cl == 1714 then
		cw('m', "Supongo...")
	elseif cl == 1715 then
		cw('m', "Es solo que...")
	elseif cl == 1716 then
	updateMonika('1','r')
		cw('m', "En realidad, da igual.")
	elseif cl == 1717 then
	updateMonika('1','i')
		cw('m', "Ya no importa.")
	elseif cl == 1718 then
		cw('m', "Podéis hacer lo que queráis.")
	elseif cl == 1719 then
	updateYuri('2','y1')
	cw('y',"(¡Sí!)",'nw')
	elseif cl == 1720 then
	updateYuri('2','u')
		cw('y', "Em, gracias por tu comprensión, Monika...")
	elseif cl == 1721 then
	if global_os == 'LOVE-WrapLua' then
		hideAll()
		scriptJump(1722)
	else
		event_initstart('wipe','club_day2')
	end
	elseif cl == 1722 then
	if poemwinner[3] == "Natsuki" then
		poemwinner[3] = "Yuri"
		appeal.y = appeal.y + 1
	end
	updateYuri('3','a',80)
	scriptJump(1235)
	
	elseif cl >= 1723 and cl <= 1805 then Yuri_exclusive2_2_ch23()
	elseif cl >= 1806 and cl < 2001 then ch23_end()
	elseif cl >= 2001 then yuri_kill()
	end
end

function ch23_end()
	if cl == 1806 then
	bgUpdate('black',true)
	audioUpdate('0',true)
	scriptJump(1808)
	elseif cl == 1808 then
	menutext = ''
	choices = {'Sí','No'}
	choice_enable()
	elseif cl == 1809 then
		if choicepick == 'Sí' then
			changeState('poem_special',sp[3])
		else
			scriptJump(1810)
		end
	elseif cl == 1810 then
	alpha = 255
	bgUpdate('club_day2')
	audioUpdate('3')
	updateMonika('4','b',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 1811 then
		cw('m', "Es hora de decidir los preparativos para el festival.")
	elseif cl == 1811 then
	updateMonika('1','i')
		cw('m', "Acabemos rápido con esto.")
	elseif cl == 1812 then
	updateNatsuki('4','q',-40)
	if appeal.n >= 2 then
		n "..."
	else
		cw('n', "Ains...")
	end
	elseif cl == 1813 then
	if appeal.n >= 2 then scriptJump(1815)
		else	cw('n', "¿Por qué estáis hoy todos tan raros?") end
	elseif cl == 1814 then
		cw('n', "Mirad, hasta Yuri lo nota.")
	elseif cl == 1815 then
	updateYuri('4','b2',200)
		cw('y', "Em...")
	elseif cl == 1816 then
		cw('y', "Un ambiente pesado suele ser el preludio de algo terrible...")
	elseif cl == 1817 then
	updateMonika('2','r')
		cw('m', "A ver, ¿podemos terminar con esto ya?")
	elseif cl == 1818 then
	updateMonika('2','d')
		cw('m', "Yo diseñaré e imprimiré los panfletos.")
	elseif cl >= 1819 and cl < 1823 then
	if appeal.n >= 2 then
		if cl == 1819 then
		updateMonika('2','i')
		cw('m', "Natsuki, tú puedes encargarte de los pastelillos.")
		elseif cl == 1820 then
		cw('m', "Sé que al menos se te da bien eso.")
		elseif cl == 1821 then
		updateNatsuki('5','u')
		n "..."
		elseif cl == 1822 then
		scriptJump(1823)
		end
	else
		if cl == 1819 then
		cw('m', "Natsuki, tenía pensado que...")
		elseif cl == 1820 then
		updateNatsuki('2','d')
		cw('n', "¡Yo quiero hacer pastelillos!")
		elseif cl == 1821 then
		updateNatsuki('2','a')
		updateMonika('2','a')
		cw('m', "Vale...")
		elseif cl == 1822 then
		cw('m', "Me alegra de que hayamos pensado lo mismo.")
		end
	end
	elseif cl == 1823 then
	updateMonika('1','m')
		cw('m', "Pues tú, Yuri...")
	elseif cl == 1824 then
	updateMonika('1','r')
		cw('m', "Bueno, da igual.")
	elseif cl == 1825 then
	updateMonika('1','i')
		cw('m', "Haz lo que quieras siempre y cuando creas que nos será de ayuda.")
	elseif cl == 1826 then
	updateYuri('2','h')
	y "Monika..."
	elseif cl == 1827 then
		cw('y', "¡No soy una inútil, que lo sepas!")
	elseif cl == 1828 then
	updateMonika('2','p')
		cw('m', "¡Y-ya lo sé!")
	elseif cl == 1829 then
	updateYuri('1','l')
		cw('y', "Ya sé qué quiero hacer.")
	elseif cl == 1830 then
	updateYuri('1','h')
		cw('y', "No podemos llevar a cabo un evento de poesía en condiciones sin una atmósfera acorde.")
	elseif cl == 1831 then
		cw('y', "Así que me encargaré de la decoración y de la iluminación.")
	elseif cl == 1832 then
	updateYuri('2','j')
		cw('m', "¡Vaya!")
	elseif cl == 1833 then
		cw('m', "¡Es una idea fantástica!")
	elseif cl == 1834 then
	updateMonika('1','a')
		cw('m', "Y eso nos da a todas algo que hacer.")
	elseif cl == 1835 then
	updateYuri('2','f')
		cw('y', "¿Eh?")
	elseif cl == 1836 then
		cw('y', "¿Y qué hay de " .. player .. "?")
	elseif cl == 1837 then
	updateMonika('2','b')
		cw('m', "" .. player .. " me ayudará.")
	elseif cl == 1838 then
	updateMonika('2','a')
	updateNatsuki('4','e')
		cw('n', "Un momento, ¿a ti?")
	elseif cl == 1839 then
		cw('n', "¡Pero si tienes el trabajo más sencillo!")
	elseif cl == 1840 then
	updateMonika('1','i')
		cw('m', "Lo siento, pero es lo que hay.")
	elseif cl == 1841 then
	updateNatsuki('1','f')
		cw('n', "¡Y un cuerno!")
	elseif cl == 1842 then
		cw('n', "¿Qué estás tramando?")
	elseif cl == 1843 then
	updateYuri('3','h')
		cw('y', "¡E-estoy con Natsuki!")
	elseif cl == 1844 then
		cw('y', "No solo tu trabajo es el más adecuado para una persona…")
	elseif cl == 1845 then
	updateYuri('3','l')
		cw('y', "Sino que además mi parte tiene el trabajo suficiente como para beneficiarse de un par de manos extra.")
	elseif cl == 1846 then
	updateNatsuki('4','c')
		cw('n', "¡La mía también!")
	elseif cl == 1847 then
	updateYuri('1','h')
		cw('y', "¿El qué, tus pastelillos?")
	elseif cl == 1848 then
		cw('y', "Por favor.")
	elseif cl == 1849 then
	updateNatsuki('1','o')
		cw('n', "¡Y tú qué coño sabes!")
	elseif cl == 1850 then
	updateNatsuki('1','x')
		cw('n', "Lo único que te importa es llevarte a " .. player .. " de un lado para otro con tus estúpidos libros.")
	elseif cl == 1851 then
	updateNatsuki('1','f')
		cw('n', "¡Tanto tú como Monika!")
	elseif cl == 1852 then
	updateMonika('2','g')
		cw('m', "¡Oye!")
	elseif cl == 1853 then
		cw('m', "¡Pero si no he hecho nada!")
	elseif cl == 1854 then
	updateNatsuki('3','e')
		cw('n', "Muy bien, ¿y por qué no dejamos que lo decida " .. player .. " en vez de abusar de tu poder?")
	elseif cl == 1855 then
	updateMonika('1','p')
		cw('m', "Yo no... abuso de mi poder.")
	elseif cl == 1856 then
	updateYuri('2','h')
		cw('y', "Sí que lo haces, Monika.")
	elseif cl == 1857 then
		cw('y', "Dejemos que " .. player .. " decida, ¿vale?")
	elseif cl == 1858 then
	updateMonika('1','r')
		cw('m', "¡Vale!")
	elseif cl == 1859 then
		cw('m', "Está bien...")
	elseif cl == 1860 then
	updateMonika('1','h')
	updateNatsuki('3','w')
		cw('n', "Ains...")
	elseif cl == 1861 then
		cw('n', "" .. player .. ", entiendo lo harto que estás de estas dos.")
	elseif cl == 1862 then
	updateNatsuki('3','c')
		cw('n', "¿Podemos...?")
	elseif cl == 1863 then
	updateYuri('2','r')
		cw('y', "Natsuki, cierra la puta boca y deja que él decida.")
	elseif cl == 1864 then
	updateNatsuki('1','o')
		cw('n', "¡Cierra tú la boca!")
	elseif cl == 1865 then
	updateMonika('1','r')
		cw('m', "Jesús...")
	elseif cl == 1866 then
	updateMonika('1','i')
		cw('m', "Esto no va a acabar nunca. Decide y ya, ¿vale?")
	elseif cl == 1867 then
	menutext = ''
	choices = {'Monika','Monika','Monika'}
	choice_enable()
	elseif cl == 1868 then
	updateMonika('5a')
		cw('m', "¡Yupi, me has elegido!")
	elseif cl == 1869 then
		cw('m', "Podemos quedar en tu casa este fin de semana.")
	elseif cl == 1870 then
		cw('m', "Te prometo que nos lo pasaremos bien.")
	elseif cl == 1871 then
		cw('m', "¿El domingo te va bien?")
	elseif cl == 1872 then
	updateNatsuki('1','e')
		cw('n', "¿Estás de puta coña?")
	elseif cl == 1873 then
		cw('n', "¡Qué injusto!")
	elseif cl == 1874 then
	updateMonika('2','i')
		cw('m', "Es justo, Natsuki.")
	elseif cl == 1875 then
		cw('m', "Es lo que ha elegido.")
	elseif cl == 1876 then
	updateYuri('3','r')
		cw('y', "¡No, no es justo!")
	elseif cl == 1877 then
		cw('y', "Nos has cargado a nosotras con todo el trabajo y encima te vas a quedar con " .. player .. " para ti sola.")
	elseif cl == 1878 then
		cw('y', "¡Debería darte vergüenza!")
	elseif cl == 1879 then
	updateMonika('2','r')
		cw('m', "Yuri, ni siquiera te he encargado nada.")
	elseif cl == 1880 then
	updateMonika('2','i')
		cw('m', "Lo decidiste por tu cuenta.")
	elseif cl == 1881 then
		cw('m', "Estás siendo poco razonable.")
	elseif cl == 1882 then
	audioUpdate('0')
	updateYuri('2','y4')
		cw('y', "¿Yo?")
	elseif cl == 1883 then
	updateYuri('2','y3')
		cw('y', "¡Ja, ja, ja, ja!")
	elseif cl == 1884 then
		cw('y', "¡Monika, no me puedo creer lo delirante y soberbia que puedes llegar a ser!")
	elseif cl == 1885 then
		cw('y', "Me robas a " .. player .. " cada vez que no estás incluida en algo.")
	elseif cl == 1886 then
	updateYuri('1','y1')
		cw('y', "¿Estás celosa?")
	elseif cl == 1887 then
		cw('y', "¿Loca?")
	elseif cl == 1888 then
	updateYuri('1','y3')
		cw('y', "¿O acaso te odias tanto que tienes que pagarlo con los demás?")
	elseif cl == 1889 then
	updateYuri('1','y4')
		cw('y', "Pues voy a sugerirte algo: ¿has pensado en suicidarte?")
	elseif cl == 1890 then
		cw('y', "Seguro que le iría bien a tu salud mental.")
	elseif cl == 1891 then
	updateNatsuki('5','u')
		cw('n', "Yuri, me estás asustando...")
	elseif cl == 1892 then
	updateMonika('1','r')
		cw('m', "Natsuki, vámonos.")
	elseif cl == 1893 then
	updateMonika('1','i')
		cw('m', "No creo que ahora nos quiera cerca.")
	elseif cl == 1894 then
	updateYuri('2','y3')
		cw('y', "¿Ves? No era tan difícil.")
	elseif cl == 1895 then
		cw('y', "Lo único que quiero es pasar más tiempo con él.")
	elseif cl == 1896 then
		cw('y', "¿Es eso mucho pedir?")
	elseif cl == 1897 then
	hideNatsuki()
	hideMonika()
	hideYuri()
		cw('bl', "Yuri acompaña a Monika y a Natsuki hasta la puerta.")
	elseif cl == 1898 then
	updateMonika('5a','',80)
		cw('m', "Oye, " .. player .. "...")
	elseif cl == 1899 then
		cw('m', "Yuri es de lo que no hay, ¿eh?")
	elseif cl == 1900 then
	hideMonika()
		cw('bl', "Monika ríe al mismo tiempo que Yuri la echa.")
	
	elseif cl == 1901 then
	audioUpdate('10-yuri')
	updateYuri('2','m',80)
		cw('y', "Por fin.")
	elseif cl == 1902 then
	updateYuri('2','y1')
		cw('y', "¡Por fin!")
	elseif cl == 1903 then
	updateYuri('2','s')
		cw('y', "Esto es todo lo que quería.")
	elseif cl == 1904 then
	updateYuri('1','y6')
		cw('y', "" .. player .. ", no tienes por qué pasar el fin de semana con Monika.")
	elseif cl == 1905 then
		cw('y', "No la escuches.")
	elseif cl == 1906 then
	updateYuri('1','y5')
		cw('y', "Mejor ven a mi casa.")
	elseif cl == 1907 then
	updateYuri('3','y5')
		cw('y', "Estaremos solos todo el día...")
	elseif cl == 1908 then
		cw('y', "¿No te parece maravilloso?")
	elseif cl == 1909 then
	updateYuri('3','y1')
		cw('y', "¡Ja, ja, ja, ja!")
	elseif cl == 1910 then
	updateYuri('3','y4')
		cw('y', "Guau... Es verdad que me pasa algo raro, ¿no?")
	elseif cl == 1911 then
		cw('y', "¿Pero sabes qué?")
	elseif cl == 1912 then
	updateYuri('1','y3')
		cw('y', "Ya me da igual.")
	elseif cl == 1913 then
		cw('y', "Nunca me había sentido tan bien en toda mi vida.")
	elseif cl == 1914 then
	updateYuri('1','y4')
		cw('y', "Poder estar contigo a solas es el placer más grande que podría imaginar.")
	elseif cl == 1915 then
		cw('y', "Soy adicta a ti.")
	elseif cl == 1916 then
	updateYuri('3','y4')
		cw('y', "Siento que muero si no respiro el mismo aire que tú.")
	elseif cl == 1917 then
	updateYuri('4','a2')
		cw('y', "¿No es genial que alguien se preocupe tanto por ti?")
	elseif cl == 1918 then
		cw('y', "¿Que alguien quiera centrar su vida en ti?")
	elseif cl == 1919 then
	updateYuri('2','y6')
		cw('y', "Pero si me siento tan bien...")
	elseif cl == 1920 then
	updateYuri('2','y4')
		cw('y', "¿Por qué siento cada vez más y más que va a ocurrir algo horrible?")
	elseif cl == 1921 then
	updateYuri('2','y6')
		cw('y', "Quizás por eso al principio intentaba frenarme...")
	elseif cl == 1922 then
		cw('y', "Pero ahora el sentimiento es demasiado fuerte.")
	elseif cl == 1923 then
	updateYuri('3','y1')
		cw('y', "¡Ahora me da igual, " .. player .. "!")
	elseif cl == 1924 then
		cw('y', "¡Tengo que decírtelo!")
	elseif cl == 1925 then
	updateYuri('3','y4')
		cw('y', "¡E-estoy... locamente enamorada de ti!")
	elseif cl == 1926 then
		cw('y', "Siento como cada milímetro de mi cuerpo, cada gota de sangre en mi interior, grita tu nombre...")
	elseif cl == 1927 then
	updateYuri('3','y3')
		cw('y', "¡Ya no me importan las consecuencias!")
	elseif cl == 1928 then
		cw('y', "¡No me importa si Monika está escuchándome!")
	elseif cl == 1929 then
	updateYuri('3','w')
		cw('y', "Por favor, " .. player .. ", entiende lo mucho que te quiero.")
	elseif cl == 1930 then
	updateYuri('3','m')
		cw('y', "Te quiero tanto que me toco con el bolígrafo que te robé el otro día.")
	elseif cl == 1931 then
	updateYuri('3','y4')
		cw('y', "Lo único que quiero es abrirte la piel y meterme dentro de ti.")
	elseif cl == 1932 then
	updateYuri('3','y6')
		cw('y', "Te quiero solo para mí.")
	elseif cl == 1933 then
		cw('y', "Y yo seré toda tuya.")
	elseif cl == 1934 then
		cw('y', "¿No te parece perfecto?")
	elseif cl == 1935 then
	updateYuri('3','s')
		cw('y', "Dime, " .. player .. ".")
	elseif cl == 1936 then
		cw('y', "Dime que quieres ser mi novio.")
	elseif cl == 1937 then
		cw('y', "¿Aceptas mi confesión?")
	elseif cl == 1938 then
		menutext = ''
		choices = {'Sí.','No.'}
		choice_enable()
	
	--yuri_kill_1
	elseif cl == 1939 then
	audioUpdate('0')
		cw('y', "Ja, ja, ja...")
	persistent.chr.m = 2
	savenumber = 1
	if xaload == 0 then
		savepersistent()
		savegame('autoload')
	end
	elseif cl == 1940 then
		cw('y', "¡Ja, ja, ja, ja, ja!")
	elseif cl == 1941 then
	updateYuri('3','y5')
		cw('y', "¡Ja, ja, ja, ja, ja, ja, ja, ja, ja!")
	elseif cl == 1942 then
	event_init('yuri_kill')
	updateYuri('3','y3')
	style_edited = true
		cw('y', "JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA, JA")
	elseif cl == 1943 then
	audioUpdate('yuri-kill')
	if xaload == 0 then event_start('yuri_kill') end
	elseif cl == 1944 then
	scriptJump(2001)
	end
end

function yuri_kill()
	if xaload == 0 then gtextg = glitchtext(math.random(8,80)) end
	
	--yuri_kill_2
	if cl <= 3440 then
		style_edited = true
		cw('y',gtextg)
	end
	if cl == 2001 then
		hideAll()
		bgUpdate('black')
		cgUpdate('y_kill/1a')
		audioUpdate('6s')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2200 then
		cgUpdate('y_kill/1b')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2260 then
		cgUpdate('y_kill/1c')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2460 then
		cgUpdate('y_kill/2a')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2660 then
		cgUpdate('y_kill/2b')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2720 then
		cgUpdate('y_kill/2c')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 2920 or cl == 3380 then
		cgUpdate('y_kill/3a')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 3120 then
		cgUpdate('y_kill/3b')
		if xaload == 0 then savegame('autoload') end
	elseif cl == 3180 then
		cgUpdate('y_kill/3c')
		if xaload == 0 then savegame('autoload') end
	end
	
	--yuri_kill_3
	if cl == 3441 then
	style_edited = false
	bgUpdate('club')
	cgHide()
	event_initstart('ch23-30')
	cw('bl',gtextg,'slow')
	if xaload == 0 then savegame('autoload') end
	elseif cl == 3442 then
		cw('n', "¡Muy bien, es el día del festival!")
	elseif cl == 3443 then
	updateNatsuki('4','k',80)
		cw('n', "Guau, ¿has llegado antes que yo?")
	elseif cl == 3444 then
		cw('n', "Y yo que pensaba que había llegado bastante pron...")
	elseif cl == 3445 then
	updateNatsuki('1','scream')
		cw('n', "¡AAAAH!")
	elseif cl == 3446 then
		cw('n', "¡¡¡AAAAAAAAAAAAAAAAAAH!!!")
	elseif cl == 3447 then
	pause(1)
	elseif cl == 3448 then
	updateNatsuki('vomit')
	pause(0.75)
	elseif cl == 3449 then
	hideNatsuki()
		cw('bl', "Natsuki sale corriendo.")
	elseif cl == 3450 then
	m "..."
	elseif cl == 3451 then
	updateMonika('2','b',80)
		cw('m', "¡He llegado!")
	elseif cl == 3452 then
	updateMonika('2','d')
		cw('m', "" .. player .. ", ¿ha pasado algo?")
	elseif cl == 3453 then
		cw('m', "Acabo de ver a Natsuki salir corriendo...")
	elseif cl == 3454 then
	updateMonika('2','i')
		cw('m', "Oh...")
	elseif cl == 3455 then
		cw('m', "Oh.")
	elseif cl == 3456 then
	updateMonika('2','r')
	m "..."
	elseif cl == 3457 then
	updateMonika('2','l')
		cw('m', "¡Ja, ja, ja, ja!")
	elseif cl == 3458 then
		cw('m', "Vaya, qué pena.")
	elseif cl == 3459 then
	updateMonika('2','d')
		cw('m', "Un momento, ¿has estado aquí todo el fin de semana, " .. player .. "?")
	elseif cl == 3460 then
		cw('m', "Ay, cielos...")
	elseif cl == 3461 then
	updateMonika('2','g')
		cw('m', "No sabía que el guion estaba tan roto.")
	elseif cl == 3462 then
		cw('m', "¡Lo siento muchísimo!")
	elseif cl == 3463 then
		cw('m', "Seguro que te has aburrido mucho...")
	elseif cl == 3464 then
	updateMonika('2','e')
		cw('m', "Te lo compensaré, ¿vale?")
	elseif cl == 3465 then
		cw('m', "Dame un segundito...")
	elseif cl == 3466 then
	updateConsole('')
	pause(0.1)
	elseif cl == 3467 then
	updateConsole("os.remove(\"characters/yuri.chr\")")
	pause(2)
	elseif cl == 3468 then
	updateConsole('_', "yuri.chr ha sido eliminado.")
	pause(1)
	elseif cl == 3469 then
	updateConsole("os.remove(\"characters/natsuki.chr\")","natsuki.chr ha sido eliminado.")
	pause(2)
	elseif cl == 3470 then
	updateConsole('_', "natsuki.chr ha sido eliminado.","yuri.chr ha sido eliminado.")
	pause(1)
	elseif cl == 3471 then
	updateMonika('2','a')
		cw('m', "Ya casi estoy.")
	elseif cl == 3472 then
	updateMonika('2','j')
		cw('m', "¡Déjame comerme rápido un pastelillo!")
	elseif cl == 3473 then
	cw('bl',"Monika levanta el papel de las bandejas de "..gtext10.." y coge un pastelillo.")
	elseif cl == 3474 then
	updateMonika('2','b')
		cw('m', "¡Te lo juro, son los mejores!")
	elseif cl == 3475 then
		cw('m', "Me tenía que comer uno, ya que será la última vez que pueda hacerlo.")
	elseif cl == 3476 then
	updateMonika('2','a')
		cw('m', "Ya sabes, antes de que dejen de existir y tal.")
	elseif cl == 3477 then
		cw('m', "En fin, no debería hacerte esperar más...")
	elseif cl == 3478 then
	updateMonika('2','j')
		cw('m', "Solo un momentito, ¿vale?")
	elseif cl == 3479 then
	updateMonika('2','a')
		cw('m', "Tardaré un momento de nada.")
	elseif cl == 3480 then
	pause(1.5)
	elseif cl == 3481 then
	event_end()
	console_enabled = false
	persistent.ptr = 3
	chapter = 30
	cl = 1
	savepersistent()
	savegame('autoload')
	changeState('game','autoload')
	end
end
