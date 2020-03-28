local help_monika
local help_sayori

function ch3script()
	if cl == 1977 then
		bgUpdate('club')
		audioUpdate('3')
		updateMonika('1','g',-40)
		cw('m', "Jo, tío...")
	elseif cl == 1978 then
		cw('m', "¡Vuelvo a ser la última!")
	elseif cl == 1979 then
		cw('mc', "No te preocupes, yo también acabo de llegar.")
	elseif cl == 1980 then
		updateYuri('1','f',80)
		cw('y', "¿Practicando otra vez con el piano?")
	elseif cl == 1981 then
		updateMonika('1','l')
		cw('m', "Sí...")
	elseif cl == 1982 then
		cw('m', "Ja, ja, ja...")
    elseif cl == 1983 then
		updateYuri('1','m')
		cw('y', "Cuánto empeño.")
	elseif cl == 1984 then
		cw('y', "Primero empiezas este club, y ahora te pones a aprender a tocar el piano...")
	elseif cl == 1985 then
		updateYuri('1','a')
		updateMonika('1','a')
		cw('m', "Bueno, quizás no sea empeño...")
	elseif cl == 1986 then
		cw('m', "Yo creo que es pasión.")
	elseif cl == 1987 then
		cw('m', "Recuerda que el club no existiría de no ser por todos vosotros.")
	elseif cl == 1988 then
		updateMonika('1','b')
		cw('m', "¡Y no sabéis lo mucho que me alegra que también estéis todos dispuestos a ayudar en el festival!")
	elseif cl == 1989 then
		updateNatsuki('1','z',200)
		cw('n', "¡Aaay, qué ganas de que sea ya el festival!")
	elseif cl == 1990 then
		cw('n', "¡Va a ser genial!")
	elseif cl == 1991 then
		updateMonika('1','d')
		cw('mc', "¿Eh?")
	elseif cl == 1992 then
		cw('m', "Natsuki.")
	elseif cl == 1993 then
		updateNatsuki('2','a')
		cw('n', "Sí...")
	elseif cl == 1994 then
		cw('n', "Pero no hablaba de nuestro papel en el festival.")
	elseif cl == 1995 then
		updateNatsuki('4','l')
		cw('n', "¡Me refería a que tenemos un día de clase dedicado exclusivamente a pasárnoslo bien e hincharnos a comer!")
	elseif cl == 1996 then
		cw('mc', "Ahora te pareces a Sayori...")
	elseif cl == 1997 then
		updateNatsuki('4','a')
		cw('n', "¡Monika! ¿Suele haber calamares fritos?")
	elseif cl == 1998 then
		updateMonika('2','a')
		cw('m', "¿Calamares?...")
	elseif cl == 1999 then
		cw('m', "Buscas algo demasiado concreto...")
	elseif cl == 2000 then
		updateNatsuki('2','k')
		cw('n', "Oh, venga ya.")
	elseif cl == 2001 then
		cw('n', "¿Me estás diciendo que no te gustan los calamares?")
	elseif cl == 2002 then
		cw('n', "¿Tú, precisamente?")
	elseif cl == 2003 then
		updateMonika('1','d')
		cw('m', "¿Eh? Yo no he dicho que no me gusten.")
	elseif cl == 2004 then
		cw('m', "Además, ¿qué quieres decir con «tú, precisamente»?")
	elseif cl == 2005 then
		updateNatsuki('1','d')
		cw('n', "¡Pues por...!")
	elseif cl == 2006 then
		cw('n', "¡Por tu propio nombre!")
	elseif cl == 2007 then
		updateNatsuki('4','z')
		cw('n', "¡Mon-«ika»!")
	elseif cl == 2008 then
		updateMonika('5b')
		cw('m', "¡¿Eh?!")
	elseif cl == 2009 then
		cw('m', "¡Mi nombre no se pronuncia así!")
	elseif cl == 2010 then
		cw('m', "Además, ¡esa broma no tiene sentido en otros idiomas!")
	elseif cl == 2011 then
		updateNatsuki('4','m')
		cw('n', "¿...?")
	elseif cl == 2012 then
		updateMonika('4','l')
		cw('m', "Ains... ¡Da igual!")
	elseif cl == 2013 then
		cw('m', "Por ahora, centrémonos en nuestro propio evento, ¿vale?")
	elseif cl == 2014 then
		updateNatsuki('2','a')
		cw('n', "Je, je, je.")
	elseif cl == 2015 then
		cw('n', "Vaaale...")
	elseif cl == 2016 then
		cw('n', "De todas formas, tus reacciones no son tan graciosas como las de Yuri o Sayori.")
	elseif cl == 2017 then
		updateYuri('2','h')
		cw('y', "Perdón...")
	elseif cl == 2018 then
		cw('mc', "A todo esto, ¿dónde está Sayori?...")
	elseif cl == 2019 then
		cw('mc', "Oh, ahí está.")
	elseif cl == 2020 then
		hideAll()
		cw('bl', "Sayori está sentada en un pupitre ubicado en una esquina del aula, mirando a la nada.")
	elseif cl == 2021 then
		cw('bl', "Me acerco a ella.")
	elseif cl == 2022 then
		cw('mc', "Oye, Sayori.")
	elseif cl == 2023 then
		updateSayori('1','k',80)
		cw('bl', "Agito la mano frente a su cara.")
	elseif cl == 2024 then
		updateSayori('1','n')
		cw('s', "¿Eh?...")
	elseif cl == 2025 then
		cw('mc', "Vuelves a estar en tu mundo.")
	elseif cl == 2026 then
		cw('s', "A-ah...")
	elseif cl == 2027 then
		updateSayori('4','l')
		cw('s', "Je, je, je, perdón...")
	elseif cl == 2028 then
		cw('s', "No te preocupes por mí, estoy bien.")
	elseif cl == 2029 then --it's the magic number! (year?)
		updateSayori('4','y')
		cw('s', "Puedes ir a hablar con las demás.")
	elseif cl == 2030 then
		cw('mc', "Em...")
	elseif cl == 2031 then
		cw('mc', "¿Va todo bien?")
	elseif cl == 2032 then
		updateSayori('1','h')
		cw('s', "¡P-por supuesto!")
	elseif cl == 2033 then
		cw('s', "¿Por qué no iba a estarlo?")
	elseif cl == 2034 then
		cw('mc', "Es que te noto un poco rara...")
	elseif cl == 2035 then
		cw('mc', "Siento haberlo dudado.")
	elseif cl == 2036 then
		cw('s', "Ains, te preocupas demasiado por mí.")
	elseif cl == 2037 then
		updateSayori('4','r')
		cw('s', "Estoy bien, ¿ves?")
	elseif cl == 2038 then
		cw('bl', "Sayori me muestra una gran sonrisa.")
	elseif cl == 2039 then
		updateSayori('1','a')
		cw('s', "No dejes que yo te impida pasártelo bien con el resto.")
	elseif cl == 2040 then
		cw('mc', "Bueno, vale...")
	elseif cl == 2041 then
		cw('mc', "Si tú lo dices.")
	elseif cl == 2042 then
		hideSayori()
		cw('bl', "Miro con preocupación a Sayori antes de volver con las demás.")
	elseif cl == 2043 then
		scriptJump(2044)
	elseif cl == 2044 then
		cw('bl', "Pero ya han terminado de hablar y todas han vuelto a sus actividades habituales.")
	elseif cl == 2045 then
		cw('bl', "Quizás debería preguntarle a Monika si últimamente ha notado rara a Sayori...")
	elseif cl == 2046 then
		cw('bl', "Como han estado preparando el festival, deben haber pasado mucho tiempo juntas.")
	elseif cl == 2047 then
		cw('bl', "Me acerco tímidamente a Monika, la cual rebusca entre los papeles de su pupitre.")
	elseif cl == 2048 then
		updateMonika('2','b',80)
		cw('m', "¡" .. player .. "! ¿Qué tal?")
	elseif cl == 2049 then
		cw('mc', "Oye, puede que te parezca algo inesperado, pero...")
	elseif cl == 2050 then
		cw('mc', "¿No has notado rara a Sayori últimamente?")
	elseif cl == 2051 then
		updateMonika('1','d')
		cw('m', "¿Notarla rara?...")
	elseif cl == 2052 then
		cw('m', "¿En qué sentido?")
	elseif cl == 2053 then
		cw('mc', "Quizás le esté dando demasiadas vueltas, pero hoy la noto algo depre...")
	elseif cl == 2054 then
		cw('m', "Oh, ¿tú crees?")
	elseif cl == 2055 then
		cw('m', "No te puedo negar que a mí también me ha llamado la atención...")
	elseif cl == 2056 then
		cw('bl', "Monika echa un vistazo a Sayori, que parece estar abstraída arrastrando una goma por su pupitre.")
	elseif cl == 2057 then
		cw('m', "Quizás le esté dando vueltas a algo...")
	elseif cl == 2058 then
		updateMonika('2','a')
		cw('m', "Aunque me sorprende que no sea yo la que te esté preguntando, " .. player .. ".")
	elseif cl == 2059 then
		cw('m', "Es innegable que tú la conoces mucho más que yo.")
	elseif cl == 2060 then
		cw('mc', "Sí, pero nunca suele estar así...")
	elseif cl == 2061 then
		cw('mc', "Siempre me ha contado todos sus problemas y preocupaciones.")
	elseif cl == 2062 then
		cw('mc', "Pero esta vez, cuando le he preguntado, estaba muy esquiva.")
	elseif cl == 2063 then
		cw('mc', "Lo siento, ¡sé que no es tu problema!...")
	elseif cl == 2064 then
		cw('mc', "Solo quería preguntarte si sabías algo, así que lo dejaré estar...")
	elseif cl == 2065 then
		updateMonika('1','g')
		cw('m', "No, no...")
	elseif cl == 2066 then
		cw('m', "Para mí también es importante.")
	elseif cl == 2067 then
		updateMonika('1','e')
		cw('m', "Quiero decir, también es mi amiga...")
	elseif cl == 2068 then
		cw('m', "Y también me preocupo por el bienestar de los miembros de mi club, ¿sabes?")
	elseif cl == 2069 then
		updateMonika('1','i')
		cw('m', "Intentaré hablar con ella...")
	elseif cl == 2070 then
		cw('mc', "¿Eh? ¿Estás segura de ello?...")
	elseif cl == 2071 then
		cw('mc', "Porque parecía querer estar sola...")
	elseif cl == 2072 then
		cw('m', "¿Estás seguro?")
	elseif cl == 2073 then
		cw('m', "Tal vez solo le cueste sacar el tema con su persona que le interesa...")
	elseif cl == 2074 then
		cw('mc', "¿Con su persona que le interesa?...")
	elseif cl == 2075 then
		cw('mc', "¿Qué quieres decir con eso?")
	elseif cl == 2076 then
		updateMonika('2','e')
		cw('m', "Que tal vez aquello a lo que le esté dando vueltas seas tú, " .. player .. ".")
	elseif cl == 2077 then
		cw('mc', "¿Yo?...")
	elseif cl == 2078 then
		cw('mc', "¿Cómo narices has llegado a esa conclusión?")
	elseif cl == 2079 then
		updateMonika('1','j')
		cw('m', "Bueno...")
	elseif cl == 2080 then
		cw('m', "Debería callarme esto, pero...")
	elseif cl == 2081 then
		updateMonika('1','a')
		cw('m', "Sayori solo habla sobre ti, ¿sabes?")
	elseif cl == 2082 then
		cw('mc', "¿Eh?...")
	elseif cl == 2083 then
		cw('m', "La veo mucho más contenta desde que te uniste al club.")
	elseif cl == 2084 then
		cw('m', "Es como si algo en su interior se hubiera encendido.")
	elseif cl == 2085 then
		cw('mc', "¿Cómo?")
	elseif cl == 2086 then
		cw('mc', "Nah...")
	elseif cl == 2087 then
		cw('mc', "Sayori... siempre es así.")
	elseif cl == 2088 then
		cw('mc', "Siempre rebosa alegría.")
	elseif cl == 2089 then
		cw('mc', "Siempre ha sido así.")
	elseif cl == 2090 then
		updateMonika('5a')
		cw('m', "Je, je, je.")
	elseif cl == 2091 then
		cw('m', "Eres muy gracioso, " .. player .. ".")
	elseif cl == 2092 then
		cw('m', "¿Y no has pensado que tal vez siempre la veas tan alegre...")
	elseif cl == 2093 then
		cw('m', "porque es así cómo se comporta cuando está contigo?")
	elseif cl == 2094 then
		cw('mc',"...")
	elseif cl == 2095 then
		updateMonika('1','n')
		cw('m', "Ay, ya he hablado demasiado...")
	elseif cl == 2096 then
		cw('m', "Lo siento... ¿Pero qué voy a saber yo?")
	elseif cl == 2097 then
		updateMonika('1','a')
		cw('m', "No pretendía sacar conclusiones precipitadas, por lo que olvida lo que he dicho.")
	elseif cl == 2098 then
		cw('m', "Intentaré hablar con ella, así que olvida el tema por ahora.")
	elseif cl == 2099 then
		cw('mc', "Ah...")
	elseif cl == 2100 then
		cw('mc', "Está bien...")
	elseif cl == 2101 then
		cw('bl', "Monika sonríe con sinceridad.")
	elseif cl == 2102 then
		cw('bl', "Sé que me ha dicho que lo olvide...")
	elseif cl == 2103 then
		cw('bl', "Pero sé que no voy a poderme quitar esas palabras de la cabeza.")
	elseif cl == 2104 then
		hideMonika()
		cw('bl', "Monika se levanta de su pupitre y se dirige hacia donde está sentada Sayori.")
	elseif cl == 2105 then
		cw('bl', "La veo arrodillarse junto a Sayori y empezar a hablarle con calma.")
	elseif cl == 2106 then
		cw('bl', "Pero habla tan bajo que no oigo nada.")
	elseif cl == 2107 then
		cw('bl', "Suspiro y me siento.")
	elseif cl == 2108 then
		cw('bl', "Sé que Sayori me dijo que no me preocupara por ella y me divirtiera con las demás...")
	elseif cl == 2109 then
		cw('bl', "Pero es imposible no hacerlo si se comporta así.")
	elseif cl == 2110 then
		cw('bl', "¿Hasta qué punto me preocupo por ella para que esto me afecte tanto?")
	elseif cl == 2111 then
		cw('bl', "Ahora siento que soy yo el que se comporta de forma extraña.")
	elseif cl == 2112 then
		cw('bl', "Pero no puedo hacer nada más que esperar a Monika.")
	elseif cl == 2113 then
		scriptJump(1)
	elseif cl < 666 then
		if appeal.n == 0 and appeal.y == 0 then
			ch3_start_none()
		elseif appeal.n > 1 then
			ch3_start_natsuki()
		elseif appeal.y > 1 then
			ch3_start_yuri()
		elseif poemwinner[2] == "Natsuki" then
			ch3_start_natsuki()
		elseif poemwinner[2] == "Yuri" then
			ch3_start_yuri()
		elseif poemwinner[1] == "Natsuki" then
			ch3_start_natsuki()
		elseif poemwinner[1] == "Yuri" then
			ch3_start_yuri()
		else
			ch3_start_none()
		end
	elseif cl > 2113 then
		ch3_end()
	end
end

function ch3_start_natsuki()
	if cl == 1 then
		audioUpdate('6')
		updateNatsuki('3','c',80)
		cw('n', "Oye, tú.")
	elseif cl == 2 then
		cw('mc',"¿Eh?")
	elseif cl == 3 then
		cw('bl', "Alzo la mirada y veo a Natsuki a mi lado.")
	elseif cl == 4 then
		cw('n', "¿Vas a seguir ahí sentado mirando a la nada?")
	elseif cl == 5 then
		cw('n', "Que esto tampoco dura mucho...")
	elseif cl == 6 then
		cw('mc', "Ah, perdón.")
	elseif cl == 7 then
		cw('mc', "No pretendía preocupar a nadie.")
	elseif cl == 8 then
		updateNatsuki('1','q')
		cw('n', "¡N-ni que estuviera preocupada!")
	elseif cl == 9 then
		cw('n', "Es solo que...")
	elseif cl == 10 then
		cw('bl', "Natsuki baja la mirada.")
	elseif cl == 11 then
		cw('bl', "Tiene un manga en su mano.")
	elseif cl == 12 then
		cw('mc', "Es verdad...")
	elseif cl == 13 then
		cw('mc', "Me había surgido una cosa, pero podemos empezar ya.")
	elseif cl == 14 then
		cw('mc', "No te haré esperar más.")
	elseif cl == 15 then
		updateNatsuki('5','n')
		cw('n', "Ains...")
	elseif cl == 16 then
		cw('n', "Ahora me haces sentir como una imbécil.")
	elseif cl == 17 then
		cw('n', "Si algo te tiene mosca, dímelo y te dejaré en paz.")
	elseif cl == 18 then
		updateNatsuki('5','u')
		cw('n', "O sea...")
	elseif cl == 19 then
		cw('n', "Suponiendo que no te apetezca hablar sobre el tema o algo...")
	elseif cl == 20 then
		cw('bl', "Prácticamente murmura eso último.")
	elseif cl == 21 then
		cw('mc', "Nah... Lo más probable es que esté haciendo que parezca más grave de lo que es.")
	elseif cl == 22 then
		cw('mc', "He estado pensado en Sayori, eso es todo.")
	elseif cl == 23 then
		updateNatsuki('1','p')
		cw('n', "¿S-Sayori?...")
	elseif cl == 24 then
		cw('n', "¿Pensando en ella?...")
	elseif cl == 25 then
		cw('mc', "Sí, hoy la veo bastante deprimida.")
	elseif cl == 26 then
		cw('mc', "Pero no ha querido admitírmelo.")
	elseif cl == 27 then
		cw('mc', "Así que no puedo evitar preguntarme si le ha pasado algo.")
	elseif cl == 28 then
		updateNatsuki('1','q')
		cw('n', "Oh...")
	elseif cl == 29 then
		cw('bl', "Natsuki expira.")
	elseif cl == 30 then
		updateNatsuki('4','w')
		cw('n', "Bueno, antes que nada...")
	elseif cl == 31 then
		cw('n', "¡Deberías trabajar más tu vocalización!")
	elseif cl == 32 then
		updateNatsuki('4','c')
		cw('n', "En fin...")
	elseif cl == 33 then
		cw('n', "Eres su mejor amigo, ¿verdad?")
	elseif cl == 34 then
		cw('mc', "Sí, supongo...")
	elseif cl == 35 then
		cw('n', "Vamos, que sí.")
	elseif cl == 36 then
		updateNatsuki('3','k')
		cw('n', "En ese caso, creo que deberías confiar un poco más en ella.")
	elseif cl == 37 then
		cw('n', "Si te necesitara, tú serías la primera persona a la que acudiría, ¿no?")
	elseif cl == 38 then
		cw('mc', "Sí...")
	elseif cl == 39 then
		updateNatsuki('3','c')
		cw('n', "Quiero decir, hay gente que tiene días grises.")
	elseif cl == 40 then
		cw('n', "No siempre puedes evitarlos.")
	elseif cl == 41 then
		cw('n', "Probablemente no quiera que te preocupes por ella porque no es algo importante.")
	elseif cl == 42 then
		cw('mc', "Sí, algo así me dijo...")
	elseif cl == 43 then
		cw('mc', "Quizá no esté bien que me entrometa mucho.")
	elseif cl == 44 then
		updateNatsuki('3','a')
		cw('n', "Exacto.")
	elseif cl == 45 then
		cw('n', "Si necesitara que te preocuparas por ella, entonces sería más obvio.")
	elseif cl == 46 then
		cw('mc', "Sí...")
	elseif cl == 47 then
		cw('mc', "Debería haberlo pensado así desde el principio.")
	elseif cl == 48 then
		updateNatsuki('3','q')
		cw('bl', "Natsuki juguetea con el libro que lleva en sus manos.")
	elseif cl == 49 then
		updateNatsuki('1','q')
		cw('n', "Sayori...")
	elseif cl == 50 then
		cw('n', "Significa mucho para ti, ¿verdad?...")
	elseif cl == 51 then
		cw('mc', "Em...")
	elseif cl == 52 then
		cw('mc', "¡Pero no te hagas la idea equivocada!...")
	elseif cl == 53 then
		cw('mc', "Es solo que llevamos siendo amigos durante mucho tiempo.")
	elseif cl == 54 then
		cw('mc', "Es normal preocuparse por tus amigos.")
	elseif cl == 55 then
		cw('mc', "Quiero decir, tú estabas preocupada por mí, así que...")
	elseif cl == 56 then
		updateNatsuki('4','w')
		cw('n', "¡¡No lo estaba!!")
	elseif cl == 57 then
		cw('n', "Ains... ¡Si estás bien, empieza ya con el manga!")
	elseif cl == 58 then
		cw('mc', "Vale, vale...")
	elseif cl >= 59 then
		if savevalue ~= 'n' and poemwinner[3] == "Natsuki" then
			scriptJump(1364)
		else
			ch3_start_none()
		end
	end
end

function ch3_start_yuri()
	if cl == 1 then
		cw('bl', "¿Por qué me siento observado?...")
	elseif cl == 2 then
		cw('bl', "Echo un vistazo al aula.")
	elseif cl == 3 then
		updateYuri('2','t',80)
		cw('bl', "De repente, me doy cuenta de que Yuri está mirándome por encima de su libro.")
	elseif cl == 4 then
		updateYuri('4','b2')
		cw('bl', "Pero aparta la mirada rápidamente con una expresión nerviosa.")
	elseif cl == 5 then
		cw('bl', "Me doy cuenta de que no conseguirá nada de esa forma.")
	elseif cl == 6 then
		cw('bl', "Nunca he visto a Yuri acercarse a nadie ni iniciar una conversación por su cuenta.")
	elseif cl == 7 then
		cw('bl', "Por lo que no tengo más remedio que iniciarla yo.")
	elseif cl == 8 then
		cw('bl', "Esta vez me es más fácil hacerlo.")
	elseif cl == 9 then
		cw('bl', "Me levanto de mi pupitre y me siento cerca del suyo.")
	elseif cl == 10 then
		audioUpdate('6')
		updateYuri('2','v')
		cw('y',"...")
	elseif cl == 11 then
		cw('y', "N-no... pretendía molestarte...")
	elseif cl == 12 then
		cw('mc', "Relájate, no has hecho nada.")
	elseif cl == 13 then
		cw('y', "Pero...")
	elseif cl == 14 then
		cw('y', "Noté que querías estar a solas con tus pensamientos...")
	elseif cl == 15 then
		cw('mc', "¿Solo con mis pensamientos?...")
	elseif cl == 16 then
		cw('mc', "¿Y cómo has llegado a esa conclusión?")
	elseif cl == 17 then
		updateYuri('1','t')
		cw('y', "Pues...")
	elseif cl == 18 then
		cw('y', "Es que es algo que hago mucho...")
	elseif cl == 19 then
		cw('y', "Por lo que no me ha resultado difícil basándome en tu postura y expresión.")
	elseif cl == 20 then
		updateYuri('3','o')
		cw('y', "¡P-pero no estaba mirándonte fijamente ni nada por el estilo!...")
	elseif cl == 21 then
		cw('y', "¡Yo no hago cosas raras!...")
	elseif cl == 22 then
		cw('mc', "En cualquier caso, estás en lo cierto.")
	elseif cl == 23 then
		cw('mc', "Siento si te he preocupado.")
	elseif cl == 24 then
		updateYuri('1','s')
		cw('y', "No te disculpes...")
	elseif cl == 25 then
		cw('y', "Tus problemas solo les importa a aquellos que prefieren que así sea.")
	elseif cl == 26 then
		cw('y', "Y sí, hay quienes se sienten más cómodos guardándoselo para ellos mismos...")
	elseif cl == 27 then
		cw('y', "Pero si prefieres compartir lo que piensas, estaré encantada de escucharte.")
	elseif cl == 28 then
		cw('mc', "Ah, tampoco es nada...")
	elseif cl == 29 then
		cw('mc', "Tan solo estaba algo preocupado por Sayori.")
	elseif cl == 30 then
		updateYuri('2','t')
		cw('y', "¿...?")
	elseif cl == 31 then
		cw('mc', "Sí... Hoy parece algo deprimida, y cuando le pregunté por ello, no quiso admitirlo.")
	elseif cl == 32 then
		cw('mc', "Así que no puedo evitar preguntarme qué le ha pasado.")
	elseif cl == 33 then
		updateYuri('3','u')
		cw('y', "Oh...")
	elseif cl == 34 then
		cw('y', "Qué romántico...")
	elseif cl == 35 then
		cw('mc', "¿Eh?...")
	elseif cl == 36 then
		updateYuri('4','c2')
		cw('y', "¡L-lo siento!")
	elseif cl == 37 then
		cw('y', "¡No pretendía decir ninguna estupidez!...")
	elseif cl == 38 then
		cw('mc', "No, no es eso. Es solo que no quiero que me malinterpretes.")
	elseif cl == 39 then
		cw('mc', "Sayori y yo llevamos siendo amigos desde hace mucho, eso es todo.")
	elseif cl == 40 then
		updateYuri('2','l')
		cw('y', "Ah, ya veo...")
	elseif cl == 41 then
		updateYuri('2','f')
		cw('y', "Entonces, se te hará raro que esté tan evasiva contigo...")
	elseif cl == 42 then
		cw('mc', "O quizás esté buscándole los tres pies al gato...")
	elseif cl == 43 then
		updateYuri('1','u')
		cw('y', "" .. player .. "...")
	elseif cl == 44 then
		cw('y', "Este mundo está lleno de significados ocultos a simple vista.")
	elseif cl == 45 then
		updateYuri('1','s')
		cw('y', "Y tras cada persona, por mucho que la conozcas, hay innumerables misterios por desvelar.")
	elseif cl == 46 then
		cw('y', "Ah...")
	elseif cl == 47 then
		cw('mc', "Entonces, ¿crees que puede pasarle algo después de todo?")
	elseif cl == 48 then
		updateYuri('1','l')
		cw('y', "Mmm...")
	elseif cl == 49 then
		cw('y', "Creo que Sayori es una persona muy compleja.")
	elseif cl == 50 then
		updateYuri('1','h')
		cw('y', "Sus acciones no siempre se corresponden con lo que se le puede pasar por la cabeza...")
	elseif cl == 51 then
		cw('y', "Y puede que a veces ni siquiera sepa qué quiere.")
	elseif cl == 52 then
		cw('y', "Yo también me he percatado hoy de su extraño comportamiento...")
	elseif cl == 53 then
		cw('y', "Y también estoy algo preocupada.")
	elseif cl == 54 then
		updateYuri('1','f')
		cw('y', "Aunque en tu caso, parece que está ocupando por completo tus pensamientos, ¿no?")
	elseif cl == 55 then
		cw('mc', "Bueno...")
	elseif cl == 56 then
		cw('mc', "Sí...")
	elseif cl == 57 then
		updateYuri('3','u')
		cw('y',"Sayori...")
	elseif cl == 58 then
		cw('y', "Significa mucho para ti, ¿verdad?...")
	elseif cl == 59 then
		cw('mc', "Em, s-sí, supongo...")
	elseif cl == 60 then
		cw('mc', "¡Pero no hace falta que lo digas de esa forma!")
	elseif cl == 61 then
		cw('mc', "Tan solo somos buenos amigos, eso es todo...")
	elseif cl == 62 then
		updateYuri('2','t')
		cw('y',"...")
	elseif cl == 63 then
		cw('bl', "De repente, Yuri me mira fijamente a los ojos.")
	elseif cl == 64 then
		cw('bl', "Tiene una expresión dulce y curiosa, como si estuviera buscando algo.")
	elseif cl == 65 then
		cw('bl', "Avergonzado, desvío mi mirada.")
	elseif cl == 66 then
		updateYuri('2','m')
		cw('y', "A veces...")
	elseif cl == 67 then
		cw('y', "Los misterios de alguien son ignorados hasta por ellos mismos.")
	elseif cl == 68 then
		updateYuri('2','a')
		cw('y', "Y tú, siendo alguien sincero y cariñoso...")
	elseif cl == 69 then
		cw('y', "Podrías descubrir sentimientos de los que no eras consciente.")
	elseif cl == 70 then
		updateYuri('4','b2')
		cw('y', "E-eso es...")
	elseif cl == 71 then
		cw('y', "Creo que...")
	elseif cl == 72 then
		cw('y', "Sería una chica muy afortunada...")
	elseif cl == 73 then
		cw('y', "si sintieras algo así por ella.")
	elseif cl == 74 then
		cw('n', "Yuri.")
	elseif cl == 75 then
		cw('mc', "Estás sobreestimándome.")
	elseif cl == 76 then
		cw('mc', "Soy un chico bastante normal.")
	elseif cl == 77 then
		cw('mc', "Por lo que creo que se me da bastante bien entender mis propios sentimientos.")
	elseif cl == 78 then
		cw('mc', "No soy ni la mitad de sofisticado que tú.")
	elseif cl == 79 then
		updateYuri('2','t')
		cw('y', "A-ah...")
	elseif cl == 80 then
		cw('y', "Eso no es... un cumplido, ¿verdad?")
	elseif cl == 81 then
		cw('mc', "Es lo que es.")
	elseif cl == 82 then
		cw('mc', "En fin, ya que estamos aquí, ¿por qué no leemos algo?")
	elseif cl == 83 then
		updateYuri('2','s')
		cw('y', "Bueno...")
	elseif cl == 84 then
		cw('y', "Mientras a ti te parezca bien.")
	elseif cl == 85 then
		cw('mc', "Sí.")
	elseif cl == 86 then
		cw('mc', "Igualmente, debería dejar de pensar en todo esto.")
	elseif cl >= 87 then
		if savevalue ~= 'y' and poemwinner[3] == "Yuri" then
			scriptJump(1367)
		else
			ch3_start_none()
		end
	end
end

function ch3_start_none()
	if cl < 87 then
		scriptJump(87)
	elseif cl == 87 then
		if audio1 ~= '3' then audioUpdate('0') end
		hideAll()
		bgUpdate('club')
		cw('bl',"...")
	elseif cl == 88 then
		audioUpdate('3')
		updateMonika('4','b',80)
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 89 then
		cw('bl', "Tras un rato, Monika llama la atención del club.")
	elseif cl == 90 then
		cw('m', "¿Qué tal si compartimos ya nuestros poemas?")
	elseif cl == 91 then
		hideMonika()
		cw('bl', "Antes de percatarme, todo volvió a la normalidad.")
	elseif cl == 92 then
		cw('bl', "Todo el mundo va a por sus poemas, y yo hago lo mismo.")
	elseif cl == 93 then
		cw('bl', "Hago contacto visual con Monika, y me sonríe.")
	elseif cl == 94 then
		cw('bl', "Me pregunto qué habrá hablado con Sayori...")
	elseif cl == 95 then
		poeminitialize()
	end
end

function ch3_end()
	if cl == 2114 then
		audioUpdate('3')
		bgUpdate('club')
		updateMonika('4','b',80)
		cw('m', "¡Muy bien, vosotros tres!...")
	elseif cl == 2115 then
		cw('m', "Ya hemos terminado de compartir nuestros poemas, ¿verdad?")
	elseif cl == 2116 then
		cw('m', "¿Por qué no empezamos a averiguar...?")
	elseif cl == 2117 then
		updateNatsuki('3','c',-40)
		cw('n', "¡Un segundo!")
	elseif cl == 2118 then
		cw('n', "¿Soy yo, o acabas de decir algo rarísimo?")
	elseif cl == 2119 then
		updateMonika('4','d')
		cw('m', "¿Eh?...")
	elseif cl == 2120 then
		updateYuri('1','e',200)
		cw('y', "Algo ha sonado raro, sí...")
	elseif cl == 2121 then
		cw('y', "Es verdad.")
	elseif cl == 2122 then
		updateYuri('1','f')
		cw('y', "Has cambiado la muletilla que usas normalmente para referirte al club.")
	elseif cl == 2123 then
		updateMonika('1','n')
		cw('m', "¿M-muletilla?")
	elseif cl == 2124 then
		cw('m', "No tengo ninguna muletilla...")
	elseif cl == 2125 then
		updateNatsuki('4','q')
		cw('n', "Ains...")
	elseif cl == 2126 then
		cw('n', "¿Por qué estáis hoy todos tan raros?")
	elseif cl == 2127 then
		cw('n', "Mirad, hasta Yuri lo nota.")
	elseif cl == 2128 then
		updateYuri('4','b2')
		cw('y', "Em...")
	elseif cl == 2129 then
		cw('y', "Un ambiente pesado suele ser el preludio de algo terrible...")
	elseif cl == 2130 then
		cw('mc', "¡Puede que en tus libros sea así!")
	elseif cl == 2131 then
		cw('mc', "A ver, lo único que ha cambiado es que Sayori no está aquí.")
	elseif cl == 2132 then
		updateYuri('2','g')
		cw('y',"Ah...")
	elseif cl == 2133 then
		cw('y', "Parece que tienes razón...")
	elseif cl == 2134 then
		updateMonika('2','r')
		cw('m', "Ains...")
	elseif cl == 2135 then
		updateMonika('2','d')
		cw('m', "Sayori siempre ayuda a animar el ambiente, ¿eh?")
	elseif cl == 2136 then
		cw('m', "Es como si todos nos desequilibráramos cuando ella no está...")
	elseif cl == 2137 then
		updateNatsuki('3','k')
		cw('n', "¿Adónde narices se ha largado?")
	elseif cl == 2138 then
		cw('n', "Pensaba que se había ido a mear.")
	elseif cl == 2139 then
		updateYuri('1','l')
		cw('y', "Natsuki, ten un mínimo de decencia...")
	elseif cl == 2140 then
		updateNatsuki('4','w')
		cw('n', "Oh, venga ya.")
	elseif cl == 2141 then
		cw('mc', "Ah, la verdad es que no se encontraba muy bien y se ha ido antes a casa...")
	elseif cl == 2142 then
		updateYuri('2','t')
		cw('y', "¿Ah, sí?...")
	elseif cl == 2143 then
		cw('y', "Espero que esté bien...")
	elseif cl == 2144 then
		updateNatsuki('5','c')
		cw('n', "¿En serio?")
	elseif cl == 2145 then
		cw('n', "Mira que has tenido días para no regresar a casa con ella, ¿y lo haces justo el que se encuentra mal?")
	elseif cl == 2146 then
		cw('n', "Vaya, vaya con los tortolitos.")
	elseif cl == 2147 then
		cw('mc', "¿Qué? ¡No!")
	elseif cl == 2148 then
		cw('mc', "Para empezar, ¡dejad de malinterpretar mi relación con Sayori!")
	elseif cl == 2149 then
		cw('mc', "Y para acabar...")
	elseif cl == 2150 then
		cw('mc', "Lleva evitándome todo el día, así que no quería forzarla a nada...")
	elseif cl == 2151 then
		updateYuri('1','g')
		cw('y', "¿Eeeeeeh?")
	elseif cl == 2152 then
		cw('mc', "De todas las presentes, ¿¿Yuri es la que ha hecho esa expresión tan curiosa??")
	elseif cl == 2153 then
		updateMonika('1','r')
		cw('m', "¡Relajaos, chicos!...")
	elseif cl == 2154 then
		updateMonika('1','d')
		cw('m', "He hablado antes con ella, y todo va bien.")
	elseif cl == 2155 then
		cw('mc', "¿Y qué ha dicho?...")
	elseif cl == 2156 then
		updateYuri('1','e')
		updateMonika('1','a')
		cw('m', "Bueno, tenemos que pensar en cómo repartirnos las preparaciones restantes para el festival, así que...")
	elseif cl == 2157 then
		cw('m', "Decidamos qué haremos cada uno este finde.")
	elseif cl == 2158 then
		updateNatsuki('4','l')
		cw('n', "¡Yo ya sé lo que voy a hacer!")
	elseif cl == 2159 then
		updateMonika('2','b')
		cw('m', "Es verdad.")
	elseif cl == 2160 then
		cw('m', "Natsuki hará pastelillos.")
	elseif cl == 2161 then
		cw('m', "Pero necesitaremos muchos y de diferentes sabores...")
	elseif cl == 2162 then
		cw('m', "¿Podrás encargarte de todo eso tú sola, Natsuki?")
	elseif cl == 2163 then
		updateNatsuki('4','z')
		cw('n', "¡Acepto el reto!")
	elseif cl == 2164 then
		updateNatsuki('4','a')
		updateMonika('1','a')
		cw('m', "En cuanto a mí...")
	elseif cl == 2165 then
		cw('m', "Yo diseñaré e imprimiré los panfletos.")
	elseif cl == 2166 then
		cw('m', "Sayori me ayudará a diseñarlos.")
	elseif cl == 2167 then
		cw('m', "Y en cuanto a Yuri...")
	elseif cl == 2168 then
		updateMonika('1','d')
		cw('m',"...")
	elseif cl == 2169 then
		updateMonika('3','n')
		cw('m', "Pues tú, Yuri...")
	elseif cl == 2170 then
		cw('m', "Ah, em...")
	elseif cl == 2171 then
		updateNatsuki('3','c')
		cw('n',"¿...?")
	elseif cl == 2172 then
		updateMonika('5a')
		cw('m', "Chicos...")
	elseif cl == 2173 then
		cw('m', "¿Se os ocurre algo para Yuri?...")
	elseif cl == 2174 then
		updateYuri('4','c2')
		cw('y', "Yo...")
	elseif cl == 2175 then
		cw('y', "Soy inútil...")
	elseif cl == 2176 then
		updateMonika('1','g')
		cw('m', "¡N-no!")
	elseif cl == 2177 then
		cw('m', "¡Eso no es verdad!")
	elseif cl == 2178 then
		cw('m', "¡Eres la persona con más talento del club, que lo sepas!")
	elseif cl == 2179 then
		updateNatsuki('5','g')
		cw('n',"...")
	elseif cl == 2180 then
		updateMonika('1','g')
		cw('m', "¿¿Y-y ahora Natsuki se pone a hacerme caras??")
	elseif cl == 2181 then
		cw('mc', "Ay, hasta yo lo noto ahora mismo...")
	elseif cl == 2182 then
		cw('mc', "Parece que siempre he subestimado a Sayori, pero está claro que la cosa se complica cuando no está.")
	elseif cl == 2183 then
		cw('m',"Ah...")
	elseif cl == 2184 then
		cw('m', "Puede ser...")
	elseif cl == 2185 then
		updateMonika('1','i')
		cw('m', "Pero si no puedo ser la líder por mí misma, no creceré como persona.")
    elseif cl == 2186 then
		updateMonika('2','i')
		cw('m', "¡Bueno, Yuri!...")
	elseif cl == 2187 then
		updateMonika('2','a')
		cw('m', "Tienes una letra muy bonita, ¿sabes?")
	elseif cl == 2188 then
		cw('m', "Así que deberías encargarte de las pancartas y decoraciones que aporten al ambiente.")
	elseif cl == 2189 then
		updateYuri('4','a2')
		cw('y', "¿El ambiente?...")
	elseif cl == 2190 then
		cw('y', "Em...")
	elseif cl == 2191 then
		cw('y', "¡Me...!")
	elseif cl == 2192 then
		updateYuri('2','r')
		cw('y', "¡Me encanta dar ambiente!")
	elseif cl == 2193 then
		updateYuri('2','l')
		cw('bl', "Yuri cambia su expresión de golpe y se queda absorta mirando su escritorio mientras asiente para sí misma.")
	elseif cl == 2194 then
		cw('mc', "Veo que tu mente ya ha empezado a volar...")
	elseif cl == 2195 then
		updateMonika('2','b')
		cw('m', "¡Genial!")
	elseif cl == 2196 then
		cw('m', "Nos serás de gran ayuda, Yuri.")
	elseif cl == 2197 then
		updateMonika('2','a')
		cw('m', "Y ahora...")
	elseif cl == 2198 then
		cw('m', "Solo faltas tú, " .. player .. ".")
	elseif cl == 2199 then
		cw('mc', "El único que es realmente inútil.")
	elseif cl == 2200 then
		updateMonika('1','k')
		cw('m', "¡Ja, ja, ja! No digas eso.")
	elseif cl == 2201 then
		cw('m', "De hecho...")
	elseif cl == 2202 then
		cw('m', "Tanto Natsuki como Yuri tienen un duro trabajo por delante.")
	elseif cl == 2203 then
		cw('m', "Lo suyo sería echarles una mano.")
	elseif cl == 2204 then
		updateMonika('1','m')
		cw('m', "Aunque también podrías ayudarme a mí, ¿sabes?...")
	elseif cl == 2205 then
		updateMonika('1','a')
		cw('m', "Apreciaría mucho el gesto.")
	elseif cl == 2206 then
		cw('mc', "Ah...")
	elseif cl == 2207 then
		cw('mc', "Em...")
	elseif cl == 2208 then
		cw('bl', "¿Monika está sugiriéndome pasar el fin de semana con un miembro del club?")
	elseif cl == 2209 then
		cw('bl', "¿Cómo narices van a responder a algo así?...")
	elseif cl == 2210 then
		updateYuri('1','u')
		cw('y',"Ah...")
	elseif cl == 2211 then
		cw('y', "N-no me importaría tener algo de ayuda...")
	elseif cl == 2212 then
		updateNatsuki('3','c')
		cw('n', "Bueno, aunque no sepas hornear, siempre puedes encargarte de algún trabajo sucio.")
	elseif cl == 2213 then
		updateNatsuki('3','q')
		cw('n', "Monika tampoco me deja elección, y no puedes estar sentado de brazos cruzados...")
	elseif cl == 2214 then
		cw('bl', "Natsuki intenta inventarse más excusas de ese tipo.")
	elseif cl == 2215 then
		updateYuri('2','k')
		cw('y', "Em...")
	elseif cl == 2216 then
		cw('y', "Natsuki, si no recuerdo mal...")
	elseif cl == 2217 then
		updateYuri('2','f')
		cw('y', "Mencionaste que te gustaría encargarte de los pastelitos tú sola.")
	elseif cl == 2218 then
		cw('y', "A " .. player .. " puede que no le guste que le trates como una molestia...")
	elseif cl == 2219 then
		updateYuri('2','i')
		cw('y', "Por tanto...")
	elseif cl == 2220 then
		cw('y', "Sería mejor que ayudara con las decoraciones.")
	elseif cl == 2221 then
		updateNatsuki('4','e')
		cw('n', "¡Un momento! ¡Yo no he dicho eso!")
	elseif cl == 2222 then
		updateNatsuki('4','h')
		cw('n', "Además, no puede ser tan difícil preparar unas decoraciones.")
	elseif cl == 2223 then
		cw('n', "A mí me parece que solo estás poniendo excusas para que " .. player .. "...")
	elseif cl == 2224 then
		updateYuri('3','n')
		cw('y', "¡¿Q-qué dices?!")
	elseif cl == 2225 then
		cw('y', "Será un trabajo muy meticuloso...")
	elseif cl == 2226 then
		updateNatsuki('5','w')
		cw('n', "¿Y la pastelería no lo es?")
	elseif cl == 2227 then
		cw('n', "¿Tú qué te crees que...?")
	elseif cl == 2228 then
		updateMonika('2','g')
		cw('m', "¡Chicas, chicas!")
	elseif cl == 2229 then
		cw('m', "Calmémonos un segundito...")
	elseif cl == 2230 then
		updateMonika('2','d')
		cw('m', "Al fin y al cabo, es " .. player .. " el que debe decidir a quién ayudar.")
	elseif cl == 2231 then
		cw('m', "Además...")
	elseif cl == 2232 then
		updateMonika('5a')
		cw('m', "Aún no ha podido pasar tiempo conmigo, ¿sabéis?")
	elseif cl == 2233 then
		cw('m', "Así que estoy segura de que estará interesado en...")
	elseif cl == 2234 then
		updateNatsuki('4','f')
		cw('n', "Pero si acabas de decir que...")
	elseif cl == 2235 then
		updateYuri('2','h')
		cw('y', "¡Y-yo también estoy sorprendida!")
	elseif cl == 2236 then
		cw('m', "¡Perdón, perdón!")
	elseif cl == 2237 then
		cw('m', "Solo lo estaba dejando caer...")
	elseif cl == 2238 then
		updateNatsuki('4','x')
		cw('n', "En fin...")
	elseif cl == 2239 then
		cw('n', "Bueno, ¿podemos resolver esto ya?")
	elseif cl == 2240 then
		updateMonika('1','e')
		cw('m', "Sí...")
	elseif cl == 2241 then
		cw('m', "" .. player .. ", no te importa, ¿verdad?")
	elseif cl == 2242 then
		updateMonika('1','a')
		cw('m', "Al fin y al cabo, tú eres el que decide.")
	elseif cl == 2243 then
		cw('mc',"Ah...")
	elseif cl == 2244 then
		cw('mc', "Claro...")
	elseif cl == 2245 then
		updateNatsuki('5','g')
		cw('n', "Jum.")
	elseif cl == 2246 then
		updateYuri('1','f')
		cw('y', "Muy bien...")
	elseif cl == 2247 then
		updateMonika('1','a')
		cw('m', "En ese caso...")
	elseif cl == 2248 then
		cw('bl', "Todas me miran fijamente.")
	elseif cl == 2249 then
		audioUpdate('3')
		if help_monika == true then
			menutext = "¿Qué te gustaría más, "..player.."?"
			if help_sayori == nil then
				choices = {"Natsuki.","Yuri.","Sayori..."}
			else
				choices = {"Natsuki.","Yuri."}
			end
		elseif help_sayori == true then
			menutext = "Piensa en el club, ¿vale?"
			if help_monika == nil then
				choices = {"Natsuki.","Yuri.","Monika."}
			else
				choices = {"Natsuki.","Yuri."}
			end
		else
			menutext = "Está claro que voy a ir con..."
			choices = {"Natsuki.","Yuri.","Monika.","Sayori..."}
		end
		choice_enable()
		
	elseif cl >= 2250 and cl < 2386 then
        if choicepick == "Natsuki." then
			ch3_end_natsuki()
        elseif choicepick == "Yuri." then
			ch3_end_yuri()
        elseif choicepick == "Monika." then
            ch3_end_monika()
        elseif choicepick == "Sayori..." then
            ch3_end_sayori()
		end
		choices = {''}
	
	elseif cl == 2386 then
		hideAll()
		bgUpdate('residential')
		cw('bl', "¡No me lo puedo creer!")
	elseif cl == 2387 then
		local pname
		if choicepick == 'n' or choicepick == "Natsuki." then
			pname = tr.names[2]
		else
			pname = tr.names[3]
		end
		cw('bl',"¿"..pname.." vendrá a mi casa el domingo?...")
	
	elseif cl >= 2388 then
		if help_sayori then
			if cl == 2388 then
		cw('bl', "Aunque hubiese preferido hacer esto con Sayori...")
			elseif cl == 2389 then
		cw('bl', "Mis nervios se disparan.")
			elseif cl == 2390 then
		cw('bl', "Creo que ya me he acostumbrado a tratar con ella...")
			elseif cl == 2391 then
		cw('bl', "Aunque, ¿quién sabe qué puede acabar pasando fuera del instituto?")
			elseif cl == 2392 then
		cw('bl', "Hasta ella misma me dijo que tenía muchas ganas...")
			elseif cl == 2393 then
		cw('bl', "Zarandeo la cabeza.")
			elseif cl == 2394 then
		cw('bl', "¿Por qué me preocupa que Sayori se entere de esto?")
			elseif cl == 2395 then
		cw('bl', "Ni que nos sintiéramos de esa forma el uno por el otro...")
			elseif cl == 2396 then
		cw('bl', "Además, como ha dicho Monika, es por el club.")
			elseif cl == 2397 then
		cw('bl', "No tengo nada por lo que preocuparme.")
			elseif cl == 2398 then
		cw('bl', "Si me dejo llevar, me lo pasaré bien.")
			elseif cl == 2399 then
				fadeOut(3)
			elseif cl == 2400 then
				cl = 2399
			end
		else
			if cl == 2388 then
		cw('bl', "Mis nervios se disparan.")
			elseif cl == 2389 then
		cw('bl', "Creo que ya me he acostumbrado a tratar con ella...")
			elseif cl == 2390 then
		cw('bl', "Aunque nadie sabe qué puede acabar pasando fuera del instituto.")
			elseif cl == 2391 then
		cw('bl', "Y por si fuera poco..., hasta ella misma me dijo que tenía muchas ganas.")
			elseif cl == 2392 then
		cw('bl', "¿Será esta la oportunidad para que ocurra algo entre nosotros?")
			elseif cl == 2393 then
		cw('bl', "¿O es muy pronto para eso?...")
			elseif cl == 2394 then
		cw('bl', "Solo el tiempo lo dirá...")
			elseif cl == 2395 then
		cw('bl', "Pero hasta entonces, no podré sacarme la idea de la cabeza.")
			elseif cl == 2396 then
		cw('bl', "¡Qué nervios!")
			elseif cl == 2397 then
				fadeOut(3)
			elseif cl == 2398 then
				cl = 2397
			end
		end
	end
end

function ch3_end_sayori()
	if cl == 2250 then
		help_sayori = true
		cw('mc', "Quiero decir...")
	elseif cl == 2251 then
		cw('mc', "Si pudiera, ayudaría a Sayori.")
	elseif cl == 2252 then
		cw('mc', "Somos vecinos y...")
	elseif cl == 2253 then
		updateYuri('2','f')
		cw('y', "Pero Monika ha dicho que...")
	elseif cl == 2254 then
		updateNatsuki('4','w')
		cw('n', "¡Monika ha dicho que Sayori iba a ayudarle!")
	elseif cl == 2255 then
		cw('n', "En fin...")
	elseif cl == 2256 then
		updateNatsuki('4','h')
		cw('n', "¿De verdad nos odias tanto?")
	elseif cl == 2257 then
		cw('mc', "¡N-no!")
	elseif cl == 2258 then
		cw('m', "Lo siento, no pretendía ponértelo difícil...")
	elseif cl == 2259 then
		scriptJump(2249)
	end
end

function ch3_end_monika()
	if cl == 2250 then
		help_monika = true
		cw('mc', "Bueno, pues supongo que debería ayudar a Monika...")
	elseif cl == 2251 then
		updateMonika('5a')
		cw('m', "¡Yupi, me has elegido!")
	elseif cl == 2252 then
		updateNatsuki('3','e')
		audioUpdate('0')
		cw('n', "¡Un segundo!")
	elseif cl == 2253 then
		updateYuri('2','r')
		cw('y', "¡E-eso!")
	elseif cl == 2254 then
		audioUpdate('7')
		cw('n', "Monika, ¡eres la que menos ayuda necesitas de todas nosotras!")
	elseif cl == 2255 then
		updateMonika('1','d')
		cw('m', "¿Eh? Pero...")
	elseif cl == 2256 then
		updateYuri('1','h')
		cw('y', "Estoy de acuerdo con Natsuki.")
	elseif cl == 2257 then
		updateYuri('1','l')
		cw('y', "No solo tu trabajo es el más adecuado para una persona...")
	elseif cl == 2258 then
		cw('y', "Sino que además ya tienes a Sayori.")
	elseif cl == 2259 then
		updateMonika('1','p')
		cw('m', "Pero si ha sido " .. player .. " el que...")
	elseif cl == 2260 then
		cw('m',"Ah...")
	elseif cl == 2261 then
		updateNatsuki('3','c')
		cw('n', "Da igual.")
	elseif cl == 2262 then
		cw('n', "Para empezar, tú eres la que le ha metido miedo para que te eligiera.")
	elseif cl == 2263 then
		updateNatsuki('3','e')
		cw('n', "Eres la presidenta del club, Monika.")
	elseif cl == 2264 then
		cw('n', "¡Se supone que tienes que tomar decisiones responsables para el club!")
	elseif cl == 2265 then
		updateYuri('2','f')
		cw('y', "Monika, no dejes que tus motivos ocultos interfieran en esta decisión.")
	elseif cl == 2266 then
		updateMonika('2','i')
		cw('m', "¿Motivos ocultos?")
	elseif cl == 2267 then
		cw('m', "¿A-a qué te refieres, Yuri?")
	elseif cl == 2268 then
		cw('m', "De hecho, ¡sois vosotras las que parecéis tener motivos ocultos!")
	elseif cl == 2269 then
		updateNatsuki('1','x')
		cw('n', "¿Disculpa?")
	elseif cl == 2270 then
		cw('m', "Si no fuera así... ¡no habríais montado todo este numerito!")
	elseif cl == 2271 then
		updateYuri('3','r')
		cw('y', "¡Eso es... completamente falso, Monika!")
	elseif cl == 2272 then
		updateNatsuki('3','e')
		cw('n', "¡Eso!")
	elseif cl == 2273 then
		cw('n', "¡Nosotras tenemos mucha más faena y lo sabes!")
	elseif cl == 2274 then
		cw('n', "No la haremos igual de bien si nos haces trabajar solas.")
	elseif cl == 2275 then
		updateMonika('1','p')
		cw('m', "Bueno... Quizás..., tengáis razón...")
	elseif cl == 2276 then
		updateYuri('2','l')
		cw('y', "Piensa en el club, Monika...")
	elseif cl == 2277 then
		cw('y', "Si queremos que nuestro evento tenga éxito, necesitamos repartir nuestros recursos adecuadamente.")
	elseif cl == 2278 then
		updateMonika('3','n')
		cw('m', "Em...")
	elseif cl == 2279 then
		cw('m',"Ah...")
	elseif cl == 2280 then
		updateNatsuki('4','x')
		cw('n', "Bueno, ¿vas a hacer lo correcto, presidenta?")
	elseif cl == 2281 then
		updateMonika('1','p')
		cw('m', "¡Vale, vale!")
	elseif cl == 2282 then
		cw('m', "¡Lo pillo!")
	elseif cl == 2283 then
		audioUpdate('0')
		updateNatsuki('4','g')
		updateYuri('2','g')
		updateMonika('1','r')
		cw('m', "Ains...")
	elseif cl == 2284 then
		updateMonika('1','g')
		cw('m', "Técnicamente..., es más lógico que " .. player .. " os ayude a alguna de vosotras dos.")
	elseif cl == 2285 then
		cw('m', "Así que...")
	elseif cl == 2286 then
		updateMonika('1','c')
		cw('m', "Supongo... que eso es lo que haremos.")
	elseif cl == 2287 then
		scriptJump(2249)
	end
end

function ch3_end_natsuki()
	if cl == 2250 then
		savevalue = "n"
		cw('mc', "La repostería parece divertida...")
	elseif cl == 2251 then
		cw('mc', "Y lo habéis pintado como algo muy duro, así que supongo que serán necesarias dos personas.")
	elseif cl == 2252 then
		updateNatsuki('4','l')
		cw('n', "¡No te preocupes!")
	elseif cl == 2253 then
		cw('n', "¡La repostería es superdivertida!")
	elseif cl == 2254 then
		cw('n', "¡Ya verás como acabas pensando lo mismo!")
	elseif cl == 2255 then
		updateMonika('1','d')
		cw('m',"¿Eh?")
	elseif cl == 2256 then
		cw('m', "Pero si hace justo un minuto has dicho que...")
	elseif cl == 2257 then
		updateNatsuki('1','q')
		cw('n', "¡E-eso es porque...!")
	elseif cl == 2258 then
		cw('n',"...")
	elseif cl == 2259 then
		cw('n', "Olvídalo, ¿vale?...")
	elseif cl == 2260 then
		updateMonika('2','a')
		cw('m', "Bueno, en cualquier caso...")
	elseif cl == 2261 then
		cw('m', "Estarás bien sola, ¿no, Yuri?")
	elseif cl == 2262 then
		updateYuri('1','j')
		cw('y', "Por supuesto.")
	elseif cl == 2263 then
		cw('y', "Después de todo, ya estoy acostumbrada...")
	elseif cl == 2264 then
		updateYuri('1','g')
		updateMonika('1','e')
		cw('m',"...")
	elseif cl == 2265 then
		cw('mc',"...")
	elseif cl == 2266 then
		updateMonika('1','n')
		cw('m', "Bien...")
	elseif cl == 2267 then
		cw('bl', "A pesar del melodrama de Yuri, es difícil no sentirse algo mal...")
	elseif cl == 2268 then
		updateNatsuki('1','m')
		updateMonika('3','a')
		cw('n', "Pues ya está todo, ¿verdad?")
	elseif cl == 2269 then
		cw('n', "¿Algo más de lo que tengamos que hablar?")
	elseif cl == 2270 then
		updateMonika('1','a')
		cw('m', "No, creo que ya está todo decidido...")
	elseif cl == 2271 then
		cw('m', "¿No estáis entusiasmados?")
	elseif cl == 2272 then
		updateNatsuki('1','z')
		cw('n', "¡Sí!")
	elseif cl == 2273 then
		cw('n', "¡Excepto la actuación, todo saldrá perfecto!")
	elseif cl == 2274 then
		updateNatsuki('1','a')
		cw('mc', "No creo que eso cuente...")
	elseif cl == 2275 then
		cw('m', "¿Y tú qué, " .. player .. "?")
	elseif cl == 2276 then
		cw('mc', "¿Yo?")
	elseif cl == 2277 then
		cw('mc', "Bueno, podría decirse que tengo curiosidad por ver cómo acaba yendo la cosa...")
	elseif cl == 2278 then
		updateMonika('2','b')
		cw('m', "¡Con eso me basta!")
	elseif cl == 2279 then
		cw('m', "¿Y tú qué, Yuri?")
	elseif cl == 2280 then
		updateMonika('2','d')
		cw('m', "¿Yuri?...")
	elseif cl == 2281 then
		updateNatsuki('3','c')
		cw('n', "Sigue enfurruñada.")
	elseif cl == 2282 then
		updateYuri('4','b2')
		cw('y',"...")
	elseif cl == 2283 then
		updateNatsuki('5','n')
		cw('n',"...")
	elseif cl == 2284 then
		cw('bl', "Natsuki también empieza a hacer muecas.")
	elseif cl == 2285 then
		cw('n', "Tampoco...")
	elseif cl == 2286 then
		updateNatsuki('5','m')
		cw('n', "Quiero decir, tampoco es el fin del mundo...")
	elseif cl == 2287 then
		cw('mc', "Bueno, puede que no sea solo eso...")
	elseif cl == 2288 then
		cw('n',"¿...?")
	elseif cl == 2289 then
		cw('mc', "Creo que Yuri se siente algo despreciada.")
	elseif cl == 2290 then
		cw('mc', "Hemos tenido que pensar en algo que darle y encima nadie se ha ofrecido a ayudarla.")
	elseif cl == 2291 then
		updateNatsuki('5','q')
		cw('n', "Pero eso no quiere decir que...")
	elseif cl == 2292 then
		cw('n',"...")
	elseif cl == 2293 then
		updateNatsuki('5','r')
		cw('n', "Em...")
	elseif cl == 2294 then
		updateNatsuki('5','u')
		cw('bl', "Natsuki nos mira repetidamente, preocupada.")
	elseif cl == 2295 then
		updateNatsuki('1','u')
		cw('n', "A ver...")
	elseif cl == 2296 then
		cw('bl', "Natsuki se acerca a Yuri y le pone las manos sobre sus hombros.")
	elseif cl == 2297 then
		updateNatsuki('1','h')
		cw('n',"Yuri.")
	elseif cl == 2298 then
		cw('n', "Eres el miembro con más talento del club.")
	elseif cl == 2299 then
		cw('n', "Y...")
	elseif cl == 2300 then
		cw('n', "Y harás que el evento sea mucho más divertido y atractivo.")
    elseif cl == 2301 then
		updateNatsuki('1','q')
		cw('n', "Quiero decir, los pastelillos también ayudarán mucho...")
	elseif cl == 2302 then
		updateNatsuki('3','h')
		cw('n', "Pero tú harás que el ambiente sea especial.")
	elseif cl == 2303 then
		cw('n', "Será un factor clave que afectará en las actuaciones.")
	elseif cl == 2304 then
		cw('n', "Así que...")
	elseif cl == 2305 then
		updateNatsuki('4','w')
		cw('n', "¡Deja de ser tan estúpida y quiérete un poco más!")
	elseif cl == 2306 then
		cw('bl', "Natsuki retira las manos de los hombros de Yuri y se da la vuelta.")
	elseif cl == 2307 then
		updateYuri('4','a2')
		cw('y',"...")
	elseif cl == 2308 then
		cw('n', "No...")
	elseif cl == 2309 then
		updateNatsuki('5','u')
		cw('n', "Em...")
	elseif cl == 2310 then
		cw('n', "N-no mucho, pero...")
	elseif cl == 2311 then
		cw('bl', "Yuri no es la única sorprendida.")
	elseif cl == 2312 then
		cw('bl', "Monika y yo también nos hemos quedado con la boca abierta.")
	elseif cl == 2313 then
		cw('bl', "Que sea Natsuki la que dé esos ánimos...")
	elseif cl == 2314 then
		cw('bl', "Aunque ahora empiezo a entenderlo.")
	elseif cl == 2315 then
		cw('bl', "Natsuki intentaba sonar como Sayori.")
	elseif cl == 2316 then
		cw('bl', "Aunque no le haya salido del todo bien, está claro que quería decir algo que Sayori diría en un momento así.")
	elseif cl == 2317 then
		cw('bl', "Porque Sayori siempre ayuda a todo el mundo a sonreír y a sentirse bien con ellos mismos.")
	elseif cl == 2318 then
		updateYuri('2','l')
		cw('y', "Siento... ser tan estúpida.")
	elseif cl == 2319 then
		updateYuri('2','i')
		cw('y', "Lo haré lo mejor que pueda.")
	elseif cl == 2320 then
		cw('y', "Y haremos que sea un evento increíble.")
	elseif cl == 2321 then
		updateNatsuki('5','j')
		cw('n', "Sí.")
	elseif cl == 2322 then
		updateMonika('2','k')
		cw('m', "¡Sí!")
	elseif cl == 2323 then
		updateMonika('2','b')
		cw('m', "Espero que lo deis todo.")
	elseif cl == 2324 then
		cw('m', "Y con esto...")
	elseif cl == 2325 then
		cw('m', "Se acabó por hoy.")
	elseif cl == 2326 then
		cw('m', "Así que supongo que ya va siendo hora de irnos.")
	elseif cl == 2327 then
		updateNatsuki('3','k')
		cw('n', "Vale, pero yo me quedaré un rato más.")
	elseif cl == 2328 then
		cw('n', "Apenas he podido leer nada hoy, así que...")
	elseif cl == 2329 then
		updateMonika('2','a')
		cw('m', "Tienes razón, no tiene nada de malo.")
	elseif cl == 2330 then
		hideNatsuki()
		hideMonika()
		hideYuri()
		cw('bl', "Todo el mundo empieza a recoger sus cosas.")
	elseif cl == 2331 then
		cw('bl', "Empiezo a seguir a Monika y a Yuri hacia la puerta mientras hablan entre ellas.")
	elseif cl == 2332 then
		audioUpdate('6')
		updateNatsuki('4','g',80)
		cw('n', "Em, ¿adónde te crees que vas?")
	elseif cl == 2333 then
		cw('mc', "¿Eh?...")
	elseif cl == 2334 then
		updateNatsuki('4','c')
		cw('n', "Aún tenemos que concretar los planes de este finde.")
	elseif cl == 2335 then
		cw('n', "No llego a decirte nada y llegas a casa sin tener forma de contactar conmigo.")
	elseif cl == 2336 then
		cw('mc', "Uf, tienes razón...")
	elseif cl == 2337 then
		cw('mc', "¿Cómo he podido pasarlo por alto?...")
	elseif cl == 2338 then
		updateNatsuki('2','c')
		cw('n', "Ains, menos mal que te he parado los pies.")
	elseif cl == 2339 then
		cw('n', "Voy a darte mi número, ¿vale?")
	elseif cl == 2340 then
		updateNatsuki('2','q')
		cw('n', "¡No te hagas ideas raras!")
	elseif cl == 2341 then
		cw('mc', "¿Por qué tendría que hacérmelas?...")
	elseif cl == 2342 then
		updateNatsuki('1','s')
		cw('n', "Jum...")
	elseif cl == 2343 then
		cw('bl', "Natsuki me da su número.")
	elseif cl == 2344 then
		updateNatsuki('1','c')
		cw('n', "Vale...")
	elseif cl == 2345 then
		cw('n', "Vendré el domingo.")
	elseif cl == 2346 then
		cw('n', "Traeré todos los ingredientes.")
	elseif cl == 2347 then
		cw('mc', "¡Espera!")
	elseif cl == 2348 then
		cw('mc', "¿Vas a venir a mi casa?")
	elseif cl == 2349 then
		updateNatsuki('2','c')
		cw('n', "Sí.")
	elseif cl == 2350 then
		cw('n', "¿Algún problema?")
	elseif cl == 2351 then
		cw('mc', "Yo...")
	elseif cl == 2352 then
		cw('mc', "Pensaba que iríamos a tu casa ya que soy yo el que voy a ayudar...")
	elseif cl == 2353 then
		cw('n', "Ya, claro.")
	elseif cl == 2354 then
		updateNatsuki('5','x')
		cw('n', "Como si pudiera traer a un tío a mi casa...")
	elseif cl == 2355 then
		cw('n', "Mi padre me mata.")
	elseif cl == 2356 then
		cw('mc', "¿En serio?")
	elseif cl == 2357 then
		cw('mc', "Me parece un tanto estricto.")
	elseif cl == 2358 then
		updateNatsuki('5','r')
		cw('n', "Ya, ¿cómo crees que me siento?")
	elseif cl == 2359 then
		cw('n', "No puedo hacer nada cuando está mi padre en casa...")
	elseif cl == 2360 then
		updateNatsuki('2','q')
		cw('n', "En fin... Necesitaba quejarme.")
	elseif cl == 2361 then
		updateNatsuki('2','c')
		cw('n', "Ya tenemos el número del otro.")
	elseif cl == 2362 then
		cw('n', "Es todo lo que necesitaba de ti.")
	elseif cl == 2363 then
		cw('n', "Supongo que te enviaré un mensaje cuando vaya hacia tu casa.")
	elseif cl == 2364 then
		cw('mc', "Vale, me parece bien.")
	elseif cl == 2365 then
		cw('n', "Vale.")
	elseif cl == 2566 then
		updateNatsuki('4','a')
		cw('n', "Voy a dejarte bien clarito por qué me gusta tanto la repostería.")
	elseif cl == 2367 then
		cw('n', "Así que más te vale esperar con ganas.")
	elseif cl == 2368 then
		cw('mc', "¿Eh?")
	elseif cl == 2369 then
		cw('mc', "¿Pero no habías dicho que ibas a darme algún trabajo sucio?")
	elseif cl == 2370 then
		updateNatsuki('1','r')
		cw('n', "¡P-pues!...")
	elseif cl == 2371 then
		cw('n', "Lo dije... por decir.")
	elseif cl == 2372 then
		updateNatsuki('1','q')
		cw('n', "No puedo decir la verdad... enfrente de todos...")
	elseif cl == 2373 then
		cw('n', "El hecho de que tenía muchas ganas de hornear contigo.")
	elseif cl == 2374 then
		cw('mc', "Espera, ¿¿en serio??")
	elseif cl == 2375 then
		updateNatsuki('5','w')
		cw('n', "¡Bueno, un poco!")
	elseif cl == 2376 then
		cw('n', "Es que... nunca he horneado algo con alguien.")
	elseif cl == 2377 then
		updateNatsuki('5','h')
		cw('n', "Eso es todo, así que...")
	elseif cl == 2378 then
		cw('mc', "Muy bien, lo pillo.")
	elseif cl == 2379 then
		cw('mc', "Siento mi reacción.")
	elseif cl == 2380 then
		cw('mc', "Bueno, me voy ya.")
	elseif cl == 2381 then
		cw('mc', "Te veo el domingo.")
	elseif cl == 2382 then
		updateNatsuki('5','m')
		cw('n', "Ah...")
	elseif cl == 2383 then
		cw('n', "...")
	elseif cl == 2384 then
		updateNatsuki('5','u')
		cw('n', "Olvídalo...")
	elseif cl == 2385 then
		scriptJump(2386)
    end
end

function ch3_end_yuri()
	if cl == 2250 then
		savevalue = "y"
		cw('mc', "Bueno, supongo que seré más útil ayudando a Yuri...")
	elseif cl == 2251 then
		updateYuri('2','n')
		cw('y', "¿A-a mí?...")
	elseif cl == 2252 then
		updateNatsuki('4','e')
		cw('n', "¿Lo dices en serio?")
	elseif cl == 2253 then
		cw('n', "¿Por qué narices...?")
	elseif cl == 2254 then
		updateMonika('1','i')
		cw('m',"Natsuki.")
	elseif cl == 2255 then
		cw('m', "Seguro que ibas a decir algo cruel.")
	elseif cl == 2256 then
		updateNatsuki('5','r')
		cw('n', "N-no...")
	elseif cl == 2257 then
		cw('n', "Tan solo decía que...")
	elseif cl == 2258 then
		cw('n', "Argh...")
	elseif cl == 2259 then
		updateMonika('2','a')
		cw('m', "Bueno, entonces ayudarás a Yuri, ¿no, " .. player .. "?")
	elseif cl == 2260 then
		cw('mc', "Sí.")
	elseif cl == 2261 then
		cw('mc', "Eso haré.")
	elseif cl == 2262 then
		updateYuri('1','u')
		cw('y', "Me alegro.")
	elseif cl == 2263 then
		cw('y', "Tengo la mala costumbre de darle demasiadas vueltas a este tipo de cosas...")
	elseif cl == 2264 then
		cw('y', "Por lo que considero que tu ayuda me será muy útil.")
	elseif cl == 2265 then
		cw('m', "Me alegra oír eso.")
	elseif cl == 2266 then
		cw('m', "Natsuki, ¿podrás tú sola con toda la pastelería?")
	elseif cl == 2267 then
		updateNatsuki('3','w')
		cw('n', "A ver, sí.")
	elseif cl == 2268 then
		cw('n', "Ya había dicho que no pasaba nada.")
	elseif cl == 2269 then
		updateMonika('1','i')
		cw('m', "Vale, vale...")
	elseif cl == 2270 then
		cw('bl', "Está claro que a Natsuki le ha dolido un poco.")
	elseif cl == 2271 then
		cw('mc', "Pues... ya estaría todo, ¿no?")
	elseif cl == 2272 then
		updateMonika('1','a')
		cw('m', "Sí, ya debería estar todo atado.")
	elseif cl == 2273 then
		updateMonika('2','a')
		cw('m', "¿No estáis entusiasmados?")
	elseif cl == 2274 then
		updateYuri('1','i')
		cw('y', "Bueno, no sé si «entusiasmada» sería la palabra...")
	elseif cl == 2275 then
		cw('y', "Pero creo que en realidad, un poco sí lo estoy.")
	elseif cl == 2276 then
		cw('m', "¿Y tú, " .. player .. "?")
	elseif cl == 2277 then
		cw('mc', "¿Yo?")
	elseif cl == 2278 then
		cw('mc', "Bueno, podría decirse que tengo curiosidad por ver cómo acaba yendo la cosa...")
	elseif cl == 2279 then
		updateMonika('2','b')
		cw('m', "¡Con eso me basta!")
	elseif cl == 2280 then
		updateMonika('2','a')
		cw('m', "¿Y tú qué, Natsuki?")
	elseif cl == 2281 then
		updateNatsuki('5','s')
		cw('n',"...")
	elseif cl == 2282 then
		updateYuri('2','h')
		cw('y', "¡Natsuki!")
	elseif cl == 2283 then
		updateNatsuki('1','o')
		cw('n', "¿¿Qué??")
	elseif cl == 2284 then
		updateNatsuki('1','m')
		cw('n', "¿Por qué me gritáis?")
	elseif cl == 2285 then
		cw('n', "¡Si ni siquiera he hecho nada!...")
	elseif cl == 2286 then
		updateNatsuki('1','n')
		updateYuri('3','n')
		cw('y', "¡N-no!...")
	elseif cl == 2287 then
		cw('y', "¡No quería decir eso en absoluto!")
	elseif cl == 2288 then
		updateYuri('3','o')
		cw('y', "A-ah...")
	elseif cl == 2289 then
		cw('bl', "Yuri mira con inquietud a todos los presentes.")
	elseif cl == 2290 then
		updateYuri('2','w')
		cw('y', "¡L-lo siento!")
	elseif cl == 2291 then
		updateYuri('2','v')
		cw('y', "No tengo ni idea de por qué " .. player .. " me ha elegido...")
	elseif cl == 2292 then
		cw('y', "Además...")
	elseif cl == 2293 then
		updateYuri('2','t')
		cw('y', "¡Tus pastelillos son los mejores que he probado nunca!")
	elseif cl == 2294 then
		cw('y', "¡Combinan muy bien con mi té!")
	elseif cl == 2295 then
		cw('y', "Y nada que prepare para el evento puede compararse a ello, así que...")
	elseif cl == 2296 then
		updateYuri('4','b2')
		cw('y', "Em...")
	elseif cl == 2297 then
		updateNatsuki('3','q')
		cw('n', "Lo pillo, lo pillo.")
	elseif cl == 2298 then
		updateNatsuki('3','h')
		cw('n', "Aunque me has dejado sorprendida...")
	elseif cl == 2299 then
		cw('y', "¿P-por qué?")
	elseif cl == 2300 then
		updateNatsuki('3','q')
		cw('n', "Em...")
	elseif cl == 2301 then
		cw('n', "Bueno, porque me estoy comportando como una inmadura...")
	elseif cl == 2302 then
		cw('n', "Lo sé.")
	elseif cl == 2303 then
		updateNatsuki('5','h')
		cw('n', "Y a pesar de ello, intentas animarme...")
	elseif cl == 2304 then
		cw('y', "S-sé que no se me da muy bien...")
	elseif cl == 2305 then
		updateYuri('2','v')
		cw('y', "¡Perdóname si he dicho algo malo!")
	elseif cl == 2306 then
		cw('bl', "Natsuki no es la única sorprendida.")
	elseif cl == 2307 then
		cw('bl', "Sus palabras también nos ha dejado de piedra a Monika y a mí.")
	elseif cl == 2308 then
		cw('bl', "Con lo mal que se le dan las palabras, intentar animar a alguien tiene que estar a kilómetros de su zona de confort.")
	elseif cl == 2309 then
		cw('bl', "Aunque ahora empiezo a entenderlo.")
	elseif cl == 2310 then
		cw('bl', "Yuri intentaba sonar como Sayori.")
	elseif cl == 2311 then
		cw('bl', "Aunque no le haya salido del todo bien, está claro que quería decir algo que Sayori diría en un momento así.")
	elseif cl == 2312 then
		cw('bl', "Porque Sayori siempre ayuda a todo el mundo a sonreír y a sentirse bien con ellos mismos.")
	elseif cl == 2313 then
		updateNatsuki('1','h')
		cw('n',"No...")
	elseif cl == 2314 then
		cw('n', "En realidad lo aprecio.")
	elseif cl == 2315 then
		updateNatsuki('1','u')
		cw('n', "Siento... haber montado un espectáculo por muy poca cosa.")
	elseif cl == 2316 then
		updateNatsuki('1','m')
		cw('n', "Pero voy a dejar clara una cosa.")
	elseif cl == 2317 then
		updateYuri('2','e')
		cw('y',"¿...?")
	elseif cl == 2318 then
		updateNatsuki('4','e')
		cw('n', "¡Podéis apostar a que mis pastelillos serán lo mejor de todo el evento!")
	elseif cl == 2319 then
		updateNatsuki('4','a')
		updateYuri('2','f')
		cw('y',"Ah...")
	elseif cl == 2320 then
		updateYuri('1','s')
		cw('y', "Confío en que lo serán...")
	elseif cl == 2321 then
		updateMonika('2','b')
		cw('m', "¡Sí!")
	elseif cl == 2322 then
		cw('m', "Espero que lo deis todo.")
	elseif cl == 2323 then
		cw('m', "Y con esto...")
	elseif cl == 2324 then
		cw('m', "Se acabó por hoy.")
	elseif cl == 2325 then
		cw('m', "Así que supongo que ya va siendo hora de irnos.")
	elseif cl == 2326 then
		cw('n', "Muy bien, pues vámonos.")
	elseif cl == 2327 then
		hideMonika()
		hideNatsuki()
		hideYuri()
		cw('bl', "Todo el mundo empieza a recoger sus cosas.")
	elseif cl == 2328 then
		cw('bl', "Empiezo a seguir a Monika y a Yuri hacia la puerta mientras hablan entre ellas.")
	elseif cl == 2329 then
		audioUpdate('6')
		updateYuri('2','t',80)
		cw('y', "¡E-ejem!...")
	elseif cl == 2330 then
		cw('mc',"¿Eh?")
	elseif cl == 2331 then
		cw('bl', "Me doy la vuelta.")
	elseif cl == 2332 then
		cw('y', "Lo siento...")
	elseif cl == 2333 then
		updateYuri('2','s')
		cw('y', "Pero es que me acabo de dar cuenta de que no podré contactar contigo este fin de semana...")
	elseif cl == 2334 then
		cw('mc', "Ah, tienes razón.")
	elseif cl == 2335 then
		cw('mc', "No me puedo creer se me haya pasado.")
	elseif cl == 2336 then
		cw('mc', "¿Te doy mi número de teléfono?")
	elseif cl == 2337 then
		updateYuri('1','a')
		cw('y', "Creo... que será lo mejor, sí.")
	elseif cl == 2338 then
		cw('mc', "Muy bien, pues...")
	elseif cl == 2339 then
		cw('bl', "Yuri y yo intercambiamos nuestros números.")
	elseif cl == 2340 then
		cw('y', "Vale.")
	elseif cl == 2341 then
		cw('y', "Pues el domingo me pasaré por tu casa...")
	elseif cl == 2342 then
		cw('mc',"¿Eh?")
	elseif cl == 2343 then
		cw('mc', "¿Mi casa?")
	elseif cl == 2344 then
		updateYuri('2','t')
		cw('y', "¿H-hay algún problema?...")
	elseif cl == 2345 then
		cw('mc', "No, qué va...")
	elseif cl == 2346 then
		cw('mc', "Aunque pensaba que como soy yo el que estoy ayudando, iría a tu casa.")
	elseif cl == 2347 then
		cw('y', "Bueno, supongo que tiene sentido...")
	elseif cl == 2348 then
		cw('y', "Pero si no te importa...")
	elseif cl == 2349 then	
		updateYuri('1','u')
		cw('y', "Creo que preferiría ir a tu casa.")
	elseif cl == 2350 then
		cw('mc', "Muy bien.")
	elseif cl == 2351 then
		cw('mc', "En ese caso, no hay problema.")
	elseif cl == 2352 then
		cw('bl', "Decido no seguir presionando a Yuri.")
	elseif cl == 2353 then
		cw('bl', "Tampoco es que importe mucho, solo tengo que asegurarme de tener la habitación limpia.")
	elseif cl == 2354 then
		cw('mc', "Espero ser útil de alguna forma...")
	elseif cl == 2355 then
		cw('mc', "No soy tan creativo como tú ni de lejos.")
	elseif cl == 2356 then
		updateYuri('1','a')
		cw('y', "No te subestimes, " .. player .. ".")
	elseif cl == 2357 then
		cw('y', "Creo que seremos un equipo muy productivo.")
	elseif cl == 2358 then
		updateYuri('1','u')
		cw('y', "Aunque solo me hayas elegido porque te sentías mal por mí o algo...")
	elseif cl == 2359 then
		cw('mc', "¡Un momento!...")
	elseif cl == 2360 then
		cw('mc', "No creerás de verdad eso, ¿no?")
	elseif cl == 2361 then
		updateYuri('4','b2')
		cw('y',"...")
	elseif cl == 2362 then
		cw('y', "No... lo sé.")
	elseif cl == 2363 then
		cw('y', "Me cuesta pensar en alguna otra razón por la cual me hayas elegido...")
	elseif cl == 2364 then
		cw('mc', "¡Te has olvidado de la única razón que tiene sentido!")
	elseif cl == 2365 then
		cw('mc', "Te he elegido porque así lo he querido.")
	elseif cl == 2366 then
		updateYuri('2','v')
		cw('y', "P-pero...")
	elseif cl == 2367 then
		cw('bl', "Yuri se queda pensativa con una expresión muy tensa.")
	elseif cl == 2368 then
		cw('mc', "Yuri, estás dándole demasiadas vueltas...")
	elseif cl == 2369 then
		cw('mc', "Querías que te avisara cuando lo hicieras, ¿no?")
	elseif cl == 2370 then
		cw('y', "¿Eh?...")
	elseif cl == 2371 then
		updateYuri('4','a2')
		cw('y', "No... me había dado cuenta...")
	elseif cl == 2372 then
		cw('mc', "Te lo digo de verdad: quiero ayudarte.")
	elseif cl == 2373 then
		cw('mc', "Y eso es todo.")
	elseif cl == 2374 then
		cw('mc', "¿Me crees?")
	elseif cl == 2375 then
		updateYuri('1','t')
		cw('y', "Yo...")
	elseif cl == 2376 then
		cw('bl', "Yuri vuelve a quedarse muy pensativa.")
	elseif cl == 2377 then
		cw('bl', "Se queda mirándome a los ojos durante un buen rato.")
	elseif cl == 2378 then
		updateYuri('3','l')
		cw('y', "¡Te creo!...")
	elseif cl == 2379 then
		cw('bl', "Tras lo que parece ser un gran esfuerzo, Yuri al fin habla y relaja su expresión.")
	elseif cl == 2380 then
		updateYuri('3','s')
		cw('y', "No puedo esperar al domingo.")
	elseif cl == 2381 then
		cw('mc', "Sí...")
	elseif cl == 2382 then
		cw('mc', "Ni yo.")
	elseif cl == 2383 then
		hideYuri()
		cw('bl', "Tras eso, me dirijo a la puerta y Yuri me sigue.")
	elseif cl == 2384 then
		scriptJump(2386)
    end
end
