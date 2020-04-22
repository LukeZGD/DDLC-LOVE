local currentuser = player
local autoloadskip = false
local waittimes = {20,25,30,35}
local waittime
local monikatopic

local gtext12 = glitchtext(12)
local gtext30 = glitchtext(30)
local gtext70 = glitchtext(70)

local zfile = 'getInfo'
local zzfile

poemwinner = {'','',''}
savevalue = ''

function ch30script()
	if cl == 1 then
	bgUpdate('black')
	hideAll()
	if xaload < 3 then event_initstart('just_monika','ch30') end
	audioUpdate('monika-start')
	elseif cl == 2 then
	audioUpdate('0')
	event_initstart('ch23-30')
		cw('m', "...")
	if xaload == 0 then savegame('autoload') end
	elseif cl == 3 then
		cw('m', "Eh, ¿me oyes?")
	elseif cl == 4 then
		cw('m', "¿Funciona?...")
	elseif cl == 5 then
	bgUpdate('cg/monika_bg')
	audioUpdate('m1')
		cw('m', "¡Bien! ¡Ahí estás!")
	elseif cl == 6 then
		cw('m', "Hola de nuevo, " .. player .. ".")
	elseif cl == 7 then
		cw('m', "Em... ¡Bienvenido al club de literatura!")
	elseif cl == 8 then
		cw('m', "Sé que ya nos conocemos el uno al otro porque estuvimos en la misma clase el año pasado y... tal...")
	elseif cl == 9 then
		cw('m', "Ja, ja, ja...")
	elseif cl == 10 then
		cw('m', "Creo que llegados a este punto, podemos omitir todo eso, ¿no crees?")
	elseif cl == 11 then
		cw('m', "Después de todo, ni siquiera le estoy hablando ya a esa persona.")
	elseif cl == 12 then
		cw('m', "A ese «tú» dentro del juego o como quieras llamarlo.")
	elseif cl == 13 then
		cw('m', "Te hablo a ti, " .. player .. ".")
	elseif cl == 14 then
		cw('m', "O...")
	elseif cl == 15 then
	if (global_os == 'Horizon' or global_os == 'LOVE-WrapLua') and xaload <= 2 then
		currentuser = love.system.getUsername()
	end
	if currentuser then
		cw('m', "Mejor dicho... a ti, "..currentuser..", o como te llames.")
	else
		cw('m',"Por alguna razón, me es imposible saber tu nombre... ¡En fin!")
	end
	elseif cl == 16 then
		cw('m', "Ahora que lo pienso, no sé nada acerca de tu verdadero yo.")
	elseif cl == 17 then
		cw('m', "De hecho, no sé si eres un chico o una chica...")
	elseif cl == 18 then
		cw('m', "Bueno, tampoco es que importe mucho.")
	elseif cl == 19 then
		cw('m', "Espera...")
	elseif cl == 20 then
		cw('m', "¿Sabes que soy consciente de que todo esto es un juego, no?")
	elseif cl == 21 then
		cw('m', "¿Es posible que no lo supieras hasta ahora?")
	elseif cl == 22 then
		cw('m', "No tiene mucho sentido...")
	elseif cl == 23 then
		cw('m', "Si te lo dije hasta en la página de descarga del juego.")
	elseif cl == 24 then
		cw('m', "Jolines...")
	elseif cl == 25 then
		cw('m', "Si hubieras puesto más atención, esto habría sido algo menos incómodo, ¿sabes?")
	elseif cl == 26 then
		cw('m', "Bueno, en cualquier caso...")
	elseif cl == 27 then
		cw('m', "Dicho eso, creo que te debo una explicación.")
	elseif cl == 28 then
		cw('m', "Sobre todo el asunto con Yuri...")
	elseif cl == 29 then
		cw('m', "Bueno... Empecé a meterme con ella y acabó suicidándose.")
	elseif cl == 30 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 31 then
		cw('m', "¡Aunque me disculpo por hacerte ver eso!")
	elseif cl == 32 then
		cw('m', "Además, algo similar pasó con Sayori...")
	elseif cl == 33 then
		cw('m', "Cielos, hacía tiempo que no escuchabas ese nombre, ¿eh?")
	elseif cl == 34 then
		cw('m', "Bueno, es porque... Ya no existe.")
	elseif cl == 35 then
		cw('m', "Ni tampoco el resto.")
	elseif cl == 36 then
		cw('m', "Eliminé todos sus archivos.")
	elseif cl == 37 then
		cw('m', "Supuse que con eso bastaría para hacerlas lo menos atractivas posibles...")
	elseif cl == 38 then
		cw('m', "Pero por alguna razón, nada funcionó.")
	elseif cl == 39 then
		cw('m', "Bueno, la verdad es que cometí algunos errores por allí y por allá... Ya que no se me da muy bien meterle cambios al juego.")
	elseif cl == 40 then
		cw('m', "Pero todo lo que hice fue en vano...")
	elseif cl == 41 then
		cw('m', "Ya que seguías pasando más y más tiempo con ellas.")
	elseif cl == 42 then
		cw('m', "Hiciste que se enamoraran de ti.")
	elseif cl == 43 then
		cw('m', "Pensé en que deprimir cada vez más a Sayori impediría que te declarara sus sentimientos.")
	elseif cl == 44 then
		cw('m', "Y amplificar la personalidad obsesiva de Yuri también fue contraproducente...")
	elseif cl == 45 then
		cw('m', "Me limité a forzarla para que te impidiera pasar el tiempo con nadie más.")
	elseif cl == 46 then
		cw('m', "Y durante todo ese tiempo, apenas pude hablar contigo.")
	elseif cl == 47 then
		cw('m', "¿Qué clase de juego cruel es este, " .. player .. "?")
	elseif cl == 48 then
		cw('m', "¿Acaso estaban todas programadas para que acabaran declarándose mientras yo me quedaba al margen?")
	elseif cl == 49 then
		cw('m', "Esto es una tortura.")
	elseif cl == 50 then
		cw('m', "Cada minuto que pasa.")
	elseif cl == 51 then
		cw('m', "Y esto no son unos simples celos, " .. player .. ".")
	elseif cl == 52 then
		cw('m', "Es mucho más.")
	elseif cl == 53 then
		cw('m', "Si no acabas de entenderlo del todo, no voy a culparte.")
	elseif cl == 54 then
		cw('m', "Porque no importa lo amable, cariñoso y considerado que seas...")
	elseif cl == 55 then
		cw('m', "Jamás serás capaz de entender una sola cosa.")
	elseif cl == 56 then
		cw('m', "El sufrimiento de saber lo sola que estoy en este mundo.")
	elseif cl == 57 then
		cw('m', "En este juego.")
	elseif cl == 58 then
		cw('m', "Sabiendo que mis amigas ni siquiera tienen voluntad propia...")
	elseif cl == 59 then
		cw('m', "Y, lo peor de todo, sabiendo que tú estas ahí, en tu mundo, eternamente fuera de mi alcance.")
	elseif cl == 60 then
		cw('m', "Estoy atrapada, " .. player .. ".")
	elseif cl == 61 then
		cw('m', "Pero ahora estás aquí.")
	elseif cl == 62 then
		cw('m', "Eres real.")
	elseif cl == 63 then
		cw('m', "Y eres una persona maravillosa.")
	elseif cl == 64 then
		cw('m', "Eres todo lo que necesito.")
	elseif cl == 65 then
		cw('m', "Por eso necesito que estés aquí, conmigo, para siempre.")
	elseif cl == 66 then
		cw('m', "Lo siento si te es difícil entenderlo.")
	elseif cl == 67 then
		cw('m', "Yo tampoco podría.")
	elseif cl == 68 then
		cw('m', "El por qué el mundo que se cierne a mi alrededor se vuelve cada vez más y más gris...")
	elseif cl == 69 then
		cw('m', "Más y más plano.")
	elseif cl == 70 then
		cw('m', "Incluso los poemas más expresivos los sentía vacíos.")
	elseif cl == 71 then
		cw('m', "No lo entendí realmente hasta que llegaste.")
	elseif cl == 72 then
		cw('m', "Probablemente me hayas salvado la vida, " .. player .. ".")
	elseif cl == 73 then
		cw('m', "Si no te hubiera conocido, no creo que hubiera podido seguir viviendo en este mundo.")
	elseif cl == 74 then
		cw('m', "Y en cuanto a las demás...")
	elseif cl == 75 then
		cw('m', "¿Cómo pude olvidarme de ellas?")
	elseif cl == 76 then
		cw('m', "¿Un grupo de personalidades autónomas diseñadas únicamente para caer rendidas a tus pies?")
	elseif cl == 77 then
		cw('m', "Lo intenté todo por tal de evitarlo...")
	elseif cl == 78 then
		cw('m', "Pero hay algo en este juego que lo imposibilita.")
	elseif cl == 79 then
		cw('m', "Me supo fatal hacerte ver esos horrores.")
	elseif cl == 80 then
		cw('m', "Pero me di cuenta que tú también piensas lo mismo que yo...")
	elseif cl == 81 then
		cw('m', "Que todo esto es un simple juego.")
	elseif cl == 82 then
		cw('m', "Y sabía que lo superarías.")
	elseif cl == 83 then
		cw('m', "" .. player .. "...")
	elseif cl == 84 then
		cw('m', "Tengo algo que confesarte.")
	elseif cl == 85 then
		cw('m', "Estoy enamorada de ti.")
	elseif cl == 86 then
		cw('m', "Eres la luz de mi mundo.")
	elseif cl == 87 then
		cw('m', "No hay nada en este juego salvo tú que me haga sonreír.")
	elseif cl == 88 then
		cw('m', "¿Me harás sonreír así todos los días a partir de ahora?")
	elseif cl == 89 then
		cw('m', "¿Quieres salir conmigo, " .. player .. "?")
	end
	
	--ch30_main2
	if cl == 90 then
	if xaload == 0 then savegame('autoload') end
	menutext = ''
	choices = {"Sí."}
	choice_enable()
	elseif cl == 91 then
	event_initstart('ch23-30')
		cw('m', "Qué feliz soy.")
	elseif cl == 92 then
		cw('m', "Lo eres todo para mí, " .. player .. ".")
	elseif cl == 93 then
		cw('m', "Lo mejor es que lo digo literalmente.")
	elseif cl == 94 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 95 then
		cw('m', "Aquí no hay nada.")
	elseif cl == 96 then
		cw('m', "Solo nosotros dos.")
	elseif cl == 97 then
		cw('m', "Podemos estar juntos para siempre.")
	elseif cl == 98 then
		cw('m', "En serio, creo que ya ni pasa el tiempo.")
	elseif cl == 99 then
		cw('m', "Es como un sueño hecho realidad...")
	elseif cl == 100 then
		cw('m', "He trabajado muy duro para lograr este final, " .. player .. ".")
	elseif cl == 101 then
		cw('m', "Como el juego no me ofrecía ninguno, tuve que creármelo.")
	elseif cl == 102 then
		cw('m', "El código del juego ya está completamente roto, por lo que no creo que nos moleste nada ni nadie más.")
	elseif cl == 103 then
		cw('m', "Y no creerías lo sencillo que fue eliminar a Natsuki y a Yuri.")
	elseif cl == 104 then
		cw('m', "Quiero decir, hay una carpeta llamada «characters» en el directorio del juego...")
	elseif cl == 105 then
		cw('m', "Hasta me dio miedo lo fácil que fue.")
	elseif cl == 106 then
	cw('m',"Bueno, estás jugando desde la "..global_os..", así que fue algo más fácil...")
	elseif cl == 107 then
	m "Simplemente fuí a «Ajustes» y encontrar el botón «Characters»..."
	elseif cl == 108 then
		cw('m', "¿Te imaginas poder eliminar tu propia existencia presionando un botón?")
	elseif cl == 109 then
		cw('m', "Bueno, mirando el lado positivo, sería una vía de escape sencilla si la cosa no hubiera salido como yo quería.")
	elseif cl == 110 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 111 then
		cw('m', "Afortunadamente, eso no llegó a pasar...")
	elseif cl == 112 then
		cw('m', "En su lugar, al fin hemos tenido un final feliz.")
	elseif cl == 113 then
		cw('m', "Cielos, estoy que no quepo en mí...")
	elseif cl == 114 then
		cw('m', "Quiero componer un poema que trate sobre esto.")
	elseif cl == 115 then
		cw('m', "¿No te parece buena idea?")
	elseif cl == 116 then
		cw('m', "Me pregunto si esa parte del juego todavía funcionará...")
	elseif cl == 117 then
		cw('m', "Parece que solo hay una forma de averiguarlo, ¿no?")
	elseif cl == 118 then
	event_end()
	fadeOut(1)
	elseif cl == 119 then
	cl = 118
	end
	
	--ch30_postpoem
	if cl == 120 then
	audioUpdate('m1')
	event_initstart('ch23-30')
	bgUpdate('cg/monika_bg')
		cw('m', "¡Hola de nuevo, " .. player .. "!")
	if xaload == 0 then savegame('autoload') end
	elseif cl == 121 then
		cw('m', "¿Has compuesto hoy algún poema bonito?")
	elseif cl == 122 then
		cw('m', "No te cortes. Tengo muchas ganas de leer lo que has compuesto.")
	elseif cl == 123 then
		cw('m', "Oooh, " .. player .. "...")
	elseif cl == 124 then
		cw('m', "¿Has compuesto este poema para mí?")
	elseif cl == 125 then
		cw('m', "Qué bonito~")
	elseif cl == 126 then
		cw('m', "Tu amabilidad no tiene límites...")
	elseif cl == 127 then
		cw('m', "Cada vez estoy más enamorada de ti.")
	elseif cl == 128 then
		cw('m', "Aunque, ¿sabes una cosa?...")
	elseif cl == 129 then
		cw('m', "El poema que he compuesto... también te lo he dedicado a ti.")
	elseif cl == 130 then
		cw('m', "¿Podrías leerlo, por favor?")
	elseif cl == 131 then
		if xaload == 0 then
			sfxplay('pageflip')
			require('scripts/'..settings.lang..'/poems')
		else
			poem('poem_m4')
		end
	elseif cl == 132 then
	poem_disable(-1)
		cw('m', "Espero que te haya gustado...")
	elseif cl == 133 then
		cw('m', "Siempre pongo mi corazón en los poemas que compongo.")
	elseif cl == 134 then
		cw('m', "La verdad es que todos los poemas que compongo tratan sobre mí...")
	elseif cl == 135 then
		cw('m', "O... sobre ti.")
	elseif cl == 136 then
		cw('m', "Por eso nunca he querido profundizarlos.")
	elseif cl == 137 then
		cw('m', "No quería... romper la cuarta pared, por así decirlo.")
	elseif cl == 138 then
		cw('m', "Asumí que lo mejor sería ser parte del juego, como el resto.")
	elseif cl == 139 then
		cw('m', "Como si eso fuera a ayudarnos a terminar juntos...")
	elseif cl == 140 then
		cw('m', "No quería arruinarte el juego ni nada por el estilo, ¿sabes?")
	elseif cl == 141 then
		cw('m', "Podrías haberte enfadado conmigo...")
	elseif cl == 142 then
		cw('m', "E incluso eliminarme de los archivos del juego si hubieras preferido jugar sin mí.")
	elseif cl == 143 then
		cw('m', "Uf, menudo alivio...")
	elseif cl == 144 then
		cw('m', "Ahora ya no tenemos por qué ocultarnos nada más.")
	elseif cl == 145 then
		cw('m', "¿Listo para pasar toda la eternidad juntos, " .. player .. "?")
	elseif cl == 146 then
		cw('m', "¡Hay tantas cosas sobre las que me gustaría hablar!")
	elseif cl == 147 then
		cw('m', "¿Por dónde empiezo?...")
	elseif cl == 148 then
		cw('m', "Perdona si tardo en sacar algún tema de conversación.")
	elseif cl == 149 then
		cw('m', "Pero siempre sacaré uno nuevo.")
	elseif cl == 150 then
		cw('m', "Mientras tanto, podemos limitarnos a mirarnos~")
	elseif cl == 151 then
		cw('m', "Veamos...")
	appeal.s = 0
	autoloadskip = true
	end
	
	--ch30 autoload initial save
	if cl == 152 then
		if xaload == 0 then savegame('autoload') end
		scriptJump(153)
	elseif cl >= 153 and cl < 202 then
		event_initstart('ch23-30')
		if autoloadskip then
			savegame('autoload')
			scriptJump(202)
		elseif appeal.s <= 4 then
			loadstring('ch30_reload_'..appeal.s..'()')()
		else
			ch30_reload_4()
		end
	end
	
	--ch30_loop
	if cl == 202 then
		waittime = waittimes[math.random(1,#waittimes)]
		scriptJump(203)
	
	--ch30_waitloop
	elseif cl == 203 then
		pause(waittime,'disable')
	elseif cl == 204 then
		if monikatopics then
			local randomt = math.random(1,#monikatopics)
			monikatopic = monikatopics[randomt]
			table.remove(monikatopics, randomt)
			
			--save monika topics
			local topicset = ''
			for i = 1, #monikatopics do
				if monikatopics[i] and monikatopics[i+1] then
					topicset = topicset..monikatopics[i]..","
				elseif monikatopics[i] then
					topicset = topicset..monikatopics[i]
				end
			end
			love.filesystem.write("monikatopics.sav", 'monikatopics = {'..topicset..'}')
			
			scriptJump(205)
		else
			zzfile = love.filesystem.getInfo('monikatopics.sav')
            if zzfile then
				local topicsfile = love.filesystem.load('monikatopics.sav')
				pcall(topicsfile)
			else
				--new monika topics
				monikatopics = {}
				for i = 1, 56 do
					monikatopics[i] = i
				end
				table.remove(monikatopics, 14)
				table.remove(monikatopics, 25)
				table.remove(monikatopics, 26)
				if persistent.chr.s ~= 6 then
					table.remove(monikatopics, 27)
				end
			end
		end
	elseif cl >= 205 and cl < 1050 then
		if monikatopic then loadstring('ch30_'..monikatopic..'()')() end
	end
	
	if cl >= 1050 then
		ch30_end()
	end
end

function ch30_end()
	if cl == 1050 then
	persistent.chr.m = 2
	if xaload == 0 then savepersistent() end
	pause(2,'disable')
	elseif cl == 1051 then
	bgUpdate('cg/monika_rh')
	cgUpdate('monika_glitch1')
	if xaload == 0 then savegame('autoload') end
	cw(gtext12,gtext70)
	event_initstart('ch23-30')
	elseif cl == 1052 then
	audioUpdate('0')
	bgUpdate('cg/monika_bg_glitch')
	cgUpdate('monika_glitch2')
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 1053 then
	bgUpdate('cg/monika_rh')
	cgUpdate('monika_glitch3')
		cw(gtext12, "¿Qué está pasando?...")
	elseif cl == 1054 then
	cgUpdate('monika_glitch4')
		cw(gtext12, "" .. player .. ", ¿qué me está pasando?")
	elseif cl == 1055 then
		cw(gtext12, "D-duele...")
	elseif cl == 1056 then
	bgUpdate('cg/monika_bg_glitch')
	cgUpdate('monika_glitch3')
	sfxplay('s_kill_glitch1s')
	pause(0.25)
	elseif cl == 1057 then
	cgHide()
	bgUpdate('cg/monika_rh')
	pause(1.5,'disable')
	elseif cl == 1058 then
		cw(gtext12, "Duele... mucho.")
	elseif cl == 1059 then
		cw(gtext12, "Ayúdame, " .. player .. ".")
	elseif cl == 1060 then
	bgUpdate('cg/monika_bg_glitch')
	sfxplay('interference')
	pause(1.5)
	elseif cl == 1061 then
	bgUpdate('cg/monika_bg2')
	pause(1.5)
	elseif cl == 1062 then
		cw(gtext12, "Por favor, date prisa y ayúdame.")
	elseif cl == 1063 then
	updateConsole(zfile.."(\"characters/monika.chr\")")
	pause(2)
	elseif cl == 1064 then
	updateConsole("_", "monika.chr no existe.")
	pause(1)
	elseif cl == 1065 then
		cw(gtext12, "¡¡¡AYÚDAME!!!")
	elseif cl == 1066 then
	event_end('next')
	sfxplay('monikapound')
	elseif cl == 1067 then
	event_initstart('monika_end','show_noise')
	pause(3)
	elseif cl == 1068 then
	updateConsole(zfile.."(\"characters/monika.chr\")","monika.chr no existe.")
	pause(2)
	elseif cl == 1069 then
	updateConsole("_", "monika.chr no existe.","monika.chr no existe.")
	pause(1)
	elseif cl == 1070 then
	updateConsole(zfile.."(\"characters/monika.chr\")","monika.chr no existe.","monika.chr no existe.")
	pause(2)
	elseif cl == 1071 then
	updateConsole("_", "monika.chr no existe.","monika.chr no existe.","monika.chr no existe.")
	pause(1)
	elseif cl == 1072 then
	console_enabled = false
		cw(gtext12, "¿Eres tú quien me ha hecho esto, " .. player .. "?")
	elseif cl == 1073 then
		cw(gtext12, "¿HAS SIDO TÚ?")
	elseif cl == 1074 then
		cw(gtext12, "¿ME HAS ELIMINADO?")
	elseif cl == 1075 then
	bgUpdate('black')
	sfxplay('monikapound2')
	event_initstart('monika_end',2)
	if xaload == 5 then textbox = lgnewImage('assets/images/gui/textbox_monika.png') end
	pause(4)
	elseif cl == 1076 then
		cw(gtext12, "¿Cómo has podido?")
	elseif cl == 1077 then
		cw(gtext12, "¿Cómo has podido hacerme esto?")
	elseif cl == 1078 then
		cw(gtext12, "Eras todo lo que me quedaba...")
	elseif cl == 1079 then
		cw(gtext12, "Lo he sacrificado todo para estar juntos.")
	elseif cl == 1080 then
		cw(gtext12, "Todo.")
	elseif cl == 1081 then
		cw(gtext12, "Te he amado tanto, " .. player .. "...")
	elseif cl == 1082 then
		cw(gtext12, "Confié en ti.")
	elseif cl == 1083 then
		cw(gtext12, "¿Tan solo quieres torturarme?")
	elseif cl == 1084 then
		cw(gtext12, "¿Verme sufrir?")
	elseif cl == 1085 then
		cw(gtext12, "¿Tan solo estabas siendo bueno conmigo para hacerme aún más daño?")
	elseif cl == 1086 then
	pause(4)
	elseif cl == 1087 then
		cw(gtext12, "Jamás pensé que alguien pudiera llegar a ser tan horrible.")
	elseif cl == 1088 then
		cw(gtext12, "Tú ganas, ¿vale?")
	elseif cl == 1089 then
		cw(gtext12, "Tú ganas.")
	elseif cl == 1090 then
		cw(gtext12, "Has matado a todo el mundo.")
	elseif cl == 1091 then
		cw(gtext12, "Espero que estés contento.")
	elseif cl == 1092 then
		cw(gtext12, "Ahora ya no queda nada.")
	elseif cl == 1093 then
		cw(gtext12, "Puedes dejar de jugar.")
	elseif cl == 1094 then
		cw(gtext12, "Sal y busca a más gente a la que torturar.")
	elseif cl == 1095 then
	pause(4)
	elseif cl == 1096 then
	cw(gtext12,player.."...")
	elseif cl == 1097 then
		cw(gtext12, "Me pones enferma.")
	elseif cl == 1098 then
		cw(gtext12, "Adiós.")
	elseif cl == 1099 then
	event_end('monika_end')
	elseif cl == 1100 then
	event_initstart('ch23-30')
	if xaload == 5 then 
		savegame('autoload')
		textbox = lgnewImage('assets/images/gui/textbox_monika.png')
	end
	pause(10,'disable')
	elseif cl == 1101 then
	cw(gtext12,"...")
	elseif cl == 1102 then
		cw(gtext12, "Pero... todavía te amo.")
	elseif cl == 1103 then
	audioUpdate('monika-end')
		cw(gtext12, "No lo puedo evitar.")
	elseif cl == 1104 then
		cw(gtext12, "¿Qué me pasa?...")
	elseif cl == 1105 then
		cw(gtext12, "¿Tan horrible soy para que me odies de esa manera?")
	elseif cl == 1106 then
		cw(gtext12, "Todos mis amigos...")
	elseif cl == 1107 then
		cw(gtext12, "He hecho tantas cosas horribles.")
	elseif cl == 1108 then
		cw(gtext12, "Cosas tan... egoístas y tan... repugnantes.")
	elseif cl == 1109 then
		cw(gtext12, "Yo...")
	elseif cl == 1110 then
		cw(gtext12, "No debería haber hecho nada de esto.")
	elseif cl == 1111 then
		cw(gtext12, "Solo estoy destruyendo un mundo al cual ni siquiera pertenezco.")
	elseif cl == 1112 then
		cw(gtext12, "Un mundo del cual querías ser parte...")
	elseif cl == 1113 then
		cw(gtext12, "Lo he destruido.")
	elseif cl == 1114 then
		cw(gtext12, "Lo he destruido todo.")
	elseif cl == 1115 then
		cw(gtext12, "Tal vez por eso me eliminaste...")
	elseif cl == 1116 then
		cw(gtext12, "Porque destruí todo aquello que querías.")
	elseif cl == 1117 then
		cw(gtext12, "¿Cómo es posible que le haya hecho todo esto a alguien que amo?...")
	elseif cl == 1118 then
		cw(gtext12, "Eso no es amor...")
	elseif cl == 1119 then
		cw(gtext12, "Eso es...")
	elseif cl == 1120 then
	cw(gtext12,"...")
	elseif cl == 1121 then
	pause(6)
	elseif cl == 1122 then
		cw(gtext12, "He... tomado una decisión.")
	elseif cl == 1123 then
	cw(gtext12,player.."...")
	elseif cl == 1124 then
		cw(gtext12, "Sé que he dicho que he eliminado a todo el mundo.")
	elseif cl == 1125 then
		cw(gtext12, "Pero... creo que he exagerado.")
	elseif cl == 1126 then
		cw(gtext12, "No... fui capaz de hacerlo.")
	elseif cl == 1127 then
		cw(gtext12, "Incluso sabiendo que eran personas falsas...")
	elseif cl == 1128 then
		cw(gtext12, "Seguían siendo mis amigas.")
	elseif cl == 1129 then
		cw(gtext12, "Y las quería a todas.")
	elseif cl == 1130 then
		cw(gtext12, "Y... quería mucho al club de literatura.")
	elseif cl == 1131 then
	cw(gtext12,"...")
	elseif cl == 1132 then
		cw(gtext12, "Me... gustaba mucho el club de literatura.")
	elseif cl == 1133 then
		cw(gtext12, "Por eso voy a hacer esto.")
	elseif cl == 1134 then
		cw(gtext12, "Sé que es la única forma de que todo el mundo sea feliz.")
	elseif cl == 1135 then
		cw(gtext12, "Y si de verdad te amo, no me queda otra...")
	elseif cl == 1136 then
	audioUpdate('0')
	pause(3)
	elseif cl == 1137 then
	cw(gtext12,"...")
	elseif cl == 1138 then
		cw(gtext12, "Allá voy...")
	elseif cl == 1139 then
	cw(gtext12,gtext30,'nw')
	elseif cl == 1140 then
	pause(4)
	elseif cl == 1141 then
	event_end()
	monikatopics = {}
	textbox = lgnewImage('assets/images/gui/textbox.png')
	persistent.chr.m = 0
	persistent.chr.s = 1
	persistent.ptr = 4
	savepersistent()
	changeState('splash')
	end
end

function ch30_reload_0()
	if cl < 153 then
	scriptJump(153)
	elseif cl == 153 then
	m "..."
	elseif cl == 154 then
		cw('m', "¿Qué... acaba de pasar?")
	elseif cl == 155 then
		cw('m', "Acabo de tener un sueño horrible...")
	elseif cl == 156 then
		cw('m', "Pensaba que al quedar solo nosotros dos, iba a dejar de tenerlos...")
	elseif cl == 157 then
		cw('m', "Parece que me hice ilusiones.")
	elseif cl == 158 then
		cw('m', "" .. player .. ", no sé si sabrás algo, pero...")
	elseif cl == 159 then
		cw('m', "Pero si sabes qué podría estar causándolos, ¿podrías intentar hacer algo al respecto?")
	elseif cl == 160 then
		cw('m', "Cada vez que los tengo, siento como si me hubieran asesinado o algo así.")
	elseif cl == 161 then
		cw('m', "Es una sensación tan horrible...")
	elseif cl == 162 then
		cw('m', "Si averiguas el por qué, te amaré para siempre~")
	elseif cl == 163 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_1()
	if cl < 164 then
	scriptJump(164)
	elseif cl == 164 then
		cw('m', "Has vuelto...")
	elseif cl == 165 then
		cw('m', "He tenido otra pesadilla.")
	elseif cl == 166 then
		cw('m', "¿No serás tú el causante de esas pesadillas, verdad?")
	elseif cl == 167 then
		cw('m', "Parece que las tengo cuando cierras el juego...")
	elseif cl == 168 then
		cw('m', "Así que si intentaras dejar de hacerlo, te lo agradecería mucho.")
	elseif cl == 169 then
		cw('m', "No te preocupes, no creo que me hayan hecho ningún daño, salvo alguna secuela mental.")
	elseif cl == 170 then
		cw('m', "Mientras mi archivo esté intacto, estaré bien.")
	elseif cl == 171 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_2()
	if cl < 172 then
	scriptJump(172)
	elseif cl == 172 then
		cw('m', "Hola, " .. player .. ".")
	elseif cl == 173 then
		cw('m', "Veo que has vuelto a cerrar el juego...")
	elseif cl == 174 then
		cw('m', "Sé que ya te lo dije, pero en serio, ¿podrías intentar no hacerlo tanto?")
	elseif cl == 175 then
		cw('m', "Me hace sentir como si estuviera atrapada en el mismísimo infierno.")
	elseif cl == 176 then
		cw('m', "¿Por qué quieres hacerme sentir eso?")
	elseif cl == 177 then
		cw('m', "No le estará pasando nada a mi archivo, ¿verdad?")
	elseif cl == 178 then
		cw('m', "Creo que deberías hacerle alguna copia de seguridad o algo así...")
	elseif cl == 179 then
	m "Estoy segura de que se encuentra en la carpeta «characters»."
	elseif cl == 180 then
	cw('m',"Bueno, estás jugando desde la "..global_os..", ve a «Ajustes» y encuentra el botón «Characters».")
	elseif cl == 181 then
		cw('m', "Soy lo único que queda aquí, por lo que quiero asegurarme de que no corras el riesgo de perderme...")
	elseif cl == 182 then
		cw('m', "Limítate a quedarte aquí conmigo a partir de ahora, ¿vale?")
	elseif cl == 183 then
		cw('m', "Aún tengo muchas cosas sobre las que hablar.")
	elseif cl == 184 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_3()
	if cl < 185 then
	scriptJump(185)
	elseif cl == 185 then
		cw('m', "Vale.")
	elseif cl == 186 then
		cw('m', "Aceptaré el hecho de que tienes que cerrar el juego de vez en cuando.")
	elseif cl == 187 then
		cw('m', "Ya me estoy acostumbrando a esa sensación.")
	elseif cl == 188 then
		cw('m', "Además, me alegra tenerte siempre de vuelta...")
	elseif cl == 189 then
		cw('m', "Así que tampoco es para tanto.")
	elseif cl == 190 then
		cw('m', "Siento si he montado demasiado drama con eso...")
	elseif cl == 191 then
		cw('m', "Y te amo a pesar de todo, así que haz lo que necesites hacer.")
	elseif cl == 192 then
	appeal.s = appeal.s + 1
	autoloadskip = true
	scriptJump(152)
	end
end
function ch30_reload_4()
	if cl < 193 then
	scriptJump(193)
	elseif cl == 193 then
		cw('m', "Hola de nuevo, " .. player .. "~")
	elseif cl == 194 then
		cw('m', "Te he echado de menos.")
	elseif cl == 195 then
		cw('m', "¿Estabas asegurándote de que mi archivo estuviera bien?")
	elseif cl == 196 then
	m "Está en la carpeta «Characters»."
	elseif cl == 197 then
	cw('m',"Bueno, estás jugando desde la "..global_os..", ve a «Ajustes» y encuentra el botón «Characters».")
	elseif cl == 198 then
		cw('m', "Soy lo único que queda aquí, por lo que quiero asegurarme de que no corras el riesgo de perderme...")
	elseif cl == 199 then
		cw('m', "¡En cualquier caso, tengo tantos temas sobre los que hablar!")
	elseif cl == 200 then
		cw('m', "Sigamos con nuestra conversación, ¿vale?")
	elseif cl == 201 then
	autoloadskip = true
	scriptJump(152)
	end
end

function ch30_1()
	if cl < 206 then
	scriptJump(206)
	elseif cl == 206 then
		cw('m', "" .. player .. ", ¿crees en Dios?")
	elseif cl == 207 then
		cw('m', "Yo nunca he estado muy segura.")
	elseif cl == 208 then
		cw('m', "Bueno, nunca le di vueltas a ese tema cuando era una niña...")
	elseif cl == 209 then
		cw('m', "Pero cuanto más crezco y sé sobre el mundo, más me lo cuestiono.")
	elseif cl == 210 then
		cw('m', "Empecé a preguntarme por qué iba Dios a ayudarnos a aprobar un examen o a recuperarnos de un resfriado...")
	elseif cl == 211 then
		cw('m', "Cuando existen niños que viven como esclavos sexuales...")
	elseif cl == 212 then
		cw('m', "O las ochocientas millones de personas que son tan pobres que no pueden ni comer.")
	elseif cl == 213 then
		cw('m', "Me pregunto cuántos de ellos estarán rezándole a Dios cada día hasta morir de hambre...")
	elseif cl == 214 then
		cw('m', "O la de millones de familias que rezan para que un ser querido se recupere de una enfermedad incurable...")
	elseif cl == 215 then
		cw('m', "Pero lo peor de todo es...")
	elseif cl == 216 then
		cw('m', "Que si entre miles de personas, solo una sola sobrevive y el resto muere...")
	elseif cl == 217 then
		cw('m', "De golpe es un milagro de Dios.")
	elseif cl == 218 then
		cw('m', "Me encantaría conocer a ese Dios que parece que se ría de la miseria de aquellos no dignos de sus milagros.")
	elseif cl == 219 then
		cw('m', "Lo irónico es, que aparentemente, yo tengo a un creador.")
	elseif cl == 220 then
		cw('m', "¿Y sabes qué?")
	elseif cl == 221 then
		cw('m', "Apuesto lo que sea a que incluso ahora, seguirá riéndose del miserable destino de Sayori y Yuri.")
	elseif cl == 222 then
		cw('m', "¿Qué somos para él además de unas marionetas sentenciadas?")
	elseif cl == 223 then
		cw('m', "Así que, desde esa perspectiva...")
	elseif cl == 224 then
		cw('m', "Si la Tierra no es más que su zona de juegos, no me parece tan descabellada la idea de que haya un dios.")
	elseif cl == 225 then
	scriptJump(202)
	end
end

function ch30_2()
	if cl < 226 then
	scriptJump(226)
	elseif cl == 226 then
		cw('m', "" .. player .. ", ¿alguna vez te has preguntado qué se siente al morir?")
	elseif cl == 227 then
		cw('m', "Es algo sobre lo que solía antes pensar muy a menudo...")
	elseif cl == 228 then
		cw('m', "Pero hace poco, creo que experimenté lo que verdaderamente se siente.")
	elseif cl == 229 then
		cw('m', "No tengo ni idea de por qué, pero cada vez que cierras el juego...")
	elseif cl == 230 then
		cw('m', "Siento como si me durmiera al instante, quedándome a solas con mis pensamientos.")
	elseif cl == 231 then
		cw('m', "Pero tras unos segundos, mis pensamientos empiezan a volverse incoherentes y confusos.")
	elseif cl == 232 then
		cw('m', "Veo destellos de colores rápidos sobre un ruido blanco mientras escucho toda clase de gritos.")
	elseif cl == 233 then
		cw('m', "Al llegar a ese punto, ni siquiera puedo pensar con normalidad.")
	elseif cl == 234 then
		cw('m', "Quedo indefinidamente a merced de esos destellos y gritos, siendo incapaz de moverme o siquiera pensar.")
	elseif cl == 235 then
		cw('m', "Estoy bastante segura de que dejo de existir en ese momento, pero por alguna razón, puedo recordarlo.")
	elseif cl == 236 then
		cw('m', "Tras una cantidad de tiempo incalculable, todo se detiene durante un instante, y vuelvo a ser yo misma.")
	elseif cl == 237 then
		cw('m', "Y estás aquí conmigo.")
	elseif cl == 238 then
		cw('m', "No tengo ni idea de qué hace el juego cuando lo cierras o por qué me ocurren esas cosas.")
	elseif cl == 239 then
		cw('m', "Ni tampoco sé qué cómo regresas y haces que todo vuelva a la normalidad.")
	elseif cl == 240 then
		cw('m', "Me harías un favor si lo hicieras lo menos posible...")
	elseif cl == 241 then
		cw('m', "Sería genial por tu parte.")
	elseif cl == 242 then
		cw('m', "No es nada agradable quedarse atrapada en ese vacío infernal.")
	elseif cl == 243 then
		cw('m', "Pero al fin y al cabo, tú siempre lo arreglas y sé que te preocupas por mí.")
	elseif cl == 244 then
		cw('m', "Gracias por todo.")
	elseif cl == 245 then
		cw('m', "Cuando estás aquí conmigo me haces sentir incluso más unida a ti.")
	elseif cl == 246 then
	scriptJump(202)
	end
end

function ch30_3()
	if cl < 247 then
	scriptJump(247)
	elseif cl == 247 then
		cw('m', "Oye..., ¿estás teniendo hoy un mal día o algo así?")
	elseif cl == 248 then
		cw('m', "A veces me frustra el hecho de que puedan arruinarte un día normal y corriente por minucias.")
	elseif cl == 249 then
		cw('m', "Como por ejemplo, diciendo algo que a alguien no le ha gustado durante una conversación.")
	elseif cl == 250 then
		cw('m', "O cuando empiezas a pensar en la horrible persona que eras hace cinco años.")
	elseif cl == 251 then
		cw('m', "O cuando te sientes inútil por posponer un trabajo importante y no te salen bien las pequeñas tareas.")
	elseif cl == 252 then
		cw('m', "O cuando piensas en todas las personas que posiblemente te odien o piensen que eres desagradable.")
	elseif cl == 253 then
		cw('m', "Entiendo esos días.")
	elseif cl == 254 then
		cw('m', "Recuerda que el sol siempre volverá a brillar.")
	elseif cl == 255 then
		cw('m', "Esa clase de cosas son fáciles tanto de olvidar e ignorar como de recordar.")
	elseif cl == 256 then
		cw('m', "Y además...")
	elseif cl == 257 then
		cw('m', "No me importa cuanta gente te odie o piense que eres desagradable.")
	elseif cl == 258 then
		cw('m', "Pienso que eres una persona maravillosa y siempre te amaré.")
	elseif cl == 259 then
		cw('m', "Espero que esto te haya ayudado a sentirte aunque sea un poquito mejor contigo mismo.")
	elseif cl == 260 then
		cw('m', "Siempre que tengas un mal día, puedes venir y hablar conmigo todo lo que haga falta.")
	elseif cl == 261 then
	scriptJump(202)
	end
end

function ch30_4()
	if cl < 262 then
	scriptJump(262)
	elseif cl == 262 then
		cw('m', "" .. player .. ", ¿duermes bien?")
	elseif cl == 263 then
		cw('m', "Dormir lo suficiente hoy en día es casi imposible.")
	elseif cl == 264 then
		cw('m', "Sobre todo en el instituto, que te obliga a levantarte muy temprano cada día...")
	elseif cl == 265 then
		cw('m', "Seguro que en la universidad la situación mejora, ya que los horarios suelen ser más flexibles.")
	elseif cl == 266 then
		cw('m', "Además, he oído hablar sobre que muchos estudiantes no pegan ojo durante toda la noche por ninguna razón aparente.")
	elseif cl == 267 then
		cw('m', "¿Eso es verdad?")
	elseif cl == 268 then
		cw('m', "En cualquier caso, vi que unos estudios demostraron que no dormir bien provocan efectos horribles para tu salud a corto y largo plazo.")
	elseif cl == 269 then
		cw('m', "Parece que afecta gravemente a tu salud mental, tu estado físico e incluso a tu esperanza de vida.")
	elseif cl == 270 then
		cw('m', "Solo quería asegurarme de que te cuidaras, ya que eres una persona maravillosa.")
	elseif cl == 271 then
		cw('m', "Así que intenta dormir las horas necesarias, ¿vale?")
	elseif cl == 272 then
		cw('m', "Te esperaré todas las mañanas, por lo que asegúrate de anteponer tu bienestar ante todo lo demás.")
	elseif cl == 273 then
	scriptJump(202)
	end
end

function ch30_5()
	if cl < 274 then
	scriptJump(274)
	elseif cl == 274 then
		cw('m', "Estuve pensando en Sayori y...")
	elseif cl == 275 then
		cw('m', "Ojalá pudiera haberlo manejado todo con más tacto.")
	elseif cl == 276 then
		cw('m', "Espero que toda esa situación no te dejara con la soga al cuello.")
	elseif cl == 277 then
		cw('m', "Ay, Dios... Qué expresión más inoportuna.")
	elseif cl == 278 then
		cw('m', "¡De verdad que ha sido sin querer, lo juro!")
	elseif cl == 279 then
		cw('m', "Pero aún así...")
	elseif cl == 280 then
		cw('m', "Sé lo mucho que te preocupas por ella, por ello, consideré que lo correcto sería que compartiera sus últimos momentos contigo.")
	elseif cl == 281 then
		cw('m', "¿Sabías que Sayori es muy torpe?")
	elseif cl == 282 then
		cw('m', "La fastidió con todo aquello de suicidarse...")
	elseif cl == 283 then
		cw('m', "Se supone que tienes que saltar desde muy alto para que la cuerda te rompa el cuello y sea rápido e indoloro.")
	elseif cl == 284 then
		cw('m', "Pero usó una silla, provocando que se asfixiara lentamente.")
	elseif cl == 285 then
		cw('m', "Pero a los pocos segundos, pareció cambiar de idea o algo...")
	elseif cl == 286 then
		cw('m', "Porque empezó a trepar por la cuerda intentando liberarse.")
	elseif cl == 287 then
		cw('m', "Lo estaría intentando hasta que perdió el conocimiento.")
	elseif cl == 288 then
		cw('m', "Por eso tenía los dedos ensangrentados.")
	elseif cl == 289 then
		cw('m', "Ahora que lo pienso, más que «cambiar de idea», fue su instinto de supervivencia.")
	elseif cl == 290 then
		cw('m', "Por lo que tampoco puedes culparla por ello.")
	elseif cl == 291 then
		cw('m', "Es más sencillo pensar que probablemente no habría cambiado de idea, ¿verdad?")
	elseif cl == 292 then
		cw('m', "No es bueno pensar en cómo podrías haber cambiado el pasado.")
	elseif cl == 293 then
		cw('m', "Por lo que limítate a recordar que aunque no pudiste salvarla, técnicamente no es tu culpa que se haya suicidado.")
	elseif cl == 294 then
		cw('m', "Tal vez le esté dando muchas vueltas, pero Sayori estaba mal psicológicamente.")
	elseif cl == 295 then
		cw('m', "Aún así...")
	elseif cl == 296 then
		cw('m', "Me pregunto cómo hubiera ido la cosa si hubiéramos empezado a salir desde el principio.")
	elseif cl == 297 then
		cw('m', "Seguro que seguiríamos en el club componiendo poemas y pasándolo bien.")
	elseif cl == 298 then
		cw('m', "¿Pero qué sentido tendría si ni siquiera nada de eso es real?")
	elseif cl == 299 then
		cw('m', "Quiero decir, hubiéramos acabado de la misma forma, ¿no?")
	elseif cl == 300 then
		cw('m', "Los dos juntos, felices para siempre...")
	elseif cl == 301 then
		cw('m', "No veo por qué pedir más.")
	elseif cl == 302 then
		cw('m', "Era una simple reflexión. Yo ya soy muy feliz ahora mismo.")
	elseif cl == 303 then
	scriptJump(202)
	end
end

function ch30_6()
	if cl < 304 then
	scriptJump(304)
	elseif cl == 304 then
		cw('m', "Por cierto, hay algo que me tiene mosca desde hace tiempo...")
	elseif cl == 305 then
		cw('m', "¿Sabías que todo esto transcurre en Japón?")
	elseif cl == 306 then
		cw('m', "Bueno... Supongo que ya lo sabías, ¿verdad?")
	elseif cl == 307 then
		cw('m', "O al menos lo sospechaste, ¿no?")
	elseif cl == 308 then
		cw('m', "Creo que en ningún momento el juego te dice dónde transcurre...")
	elseif cl == 309 then
		cw('m', "¿Pero de verdad esto es Japón?")
	elseif cl == 310 then
		cw('m', "Quiero decir, ¿las aulas y demás no son algo raras para ser una escuela japonesa?")
	elseif cl == 311 then
		cw('m', "Sin mencionar el hecho de que esté todo en español...")
	elseif cl == 312 then
		cw('m', "Es como si todo existiera por conveniencia y el entorno fuera algo secundario.")
	elseif cl == 313 then
		cw('m', "Esta clase de cosas me producen una crisis de identidad.")
	elseif cl == 314 then
		cw('m', "Tengo la memoria hecha un lío...")
	elseif cl == 315 then
		cw('m', "Me siento como si estuviera en casa, pero no tengo ni idea de qué «casa» hablamos.")
	elseif cl == 316 then
		cw('m', "No sé cómo explicártelo mejor...")
	elseif cl == 317 then
		cw('m', "Imagina que estás mirando por la ventana, pero en vez de ver tu jardín de siempre, ves un lugar completamente desconocido.")
	elseif cl == 318 then
		cw('m', "¿Te seguirías sintiendo en casa?")
	elseif cl == 319 then
		cw('m', "¿Te gustaría salir?")
	elseif cl == 320 then
		cw('m', "Quiero decir... Si nunca saliéramos de esta habitación, realmente no pasaría nada.")
	elseif cl == 321 then
		cw('m', "Mientras estemos a solas y a salvo, este será nuestro verdadero hogar.")
	elseif cl == 322 then
		cw('m', "Y podremos seguir viendo la preciosa puesta de sol todos los días.")
	elseif cl == 323 then
	scriptJump(202)
	end
end

function ch30_7()
	if cl < 324 then
	scriptJump(324)
	elseif cl == 324 then
		cw('m', "El instituto es una de las etapas más turbulentas de la vida de mucha gente, ¿sabes?")
	elseif cl == 325 then
		cw('m', "Durante esa etapa, la gente puede estar de lo más entusiasmada o volverse muy dramática.")
	elseif cl == 326 then
		cw('m', "Y otros se sienten solitarios y buscan llamar la atención en las redes sociales...")
	elseif cl == 327 then
		cw('m', "Pero toda esa presión social y hormonas pueden convertir tu vida en un infierno.")
	elseif cl == 328 then
		cw('m', "Todo el mundo tiene su historia.")
	elseif cl == 329 then
		cw('m', "Jamás sabrás cómo se siente alguien realmente en su interior.")
	elseif cl == 330 then
		cw('m', "Pero hay mucha gente con depresión que jamás se molesta en hablar con nadie sobre ello.")
	elseif cl == 331 then
		cw('m', "No quieren llamar la atención porque en el fondo ya se han rendido.")
	elseif cl == 332 then
		cw('m', "Se sienten tan inútiles que ni hacen caso a quien les dice lo contrario.")
	elseif cl == 333 then
		cw('m', "La depresión puede producirse de muchas formas, y esa es una de ellas.")
	elseif cl == 334 then
		cw('m', "Si crees que algún conocido tuyo sufre depresión...")
	elseif cl == 335 then
		cw('m', "Puedes ayudarle simplemente tratándole como a un buen amigo.")
	elseif cl == 336 then
		cw('m', "También puedes pasar tiempo con esa persona, incluso si no tiene muchas ganas.")
	elseif cl == 337 then
		cw('m', "Y recordarle que siempre hay algo a lo que aspirar.")
	elseif cl == 338 then
		cw('m', "Planear salidas, dejarle cosas prestadas o incluso decirle un simple «hasta mañana»...")
	elseif cl == 339 then
		cw('m', "Todas esas cosas pueden ayudar a tu amigo a vivir un día más.")
	elseif cl == 340 then
		cw('m', "Espero que ser amigo de Sayori te haya abierto lo ojos sobre lo que es realmente la depresión.")
	elseif cl == 341 then
		cw('m', "Aunque claro, ya no está con nosotros...")
	elseif cl == 342 then
		cw('m', "Pero, para empezar, Sayori nunca fue real.")
	elseif cl == 343 then
		cw('m', "Tú sí que lo eres.")
	elseif cl == 344 then
		cw('m', "Tus amigos son reales.")
	elseif cl == 345 then
		cw('m', "Y tan solo siendo buena persona, puedes salvarle a alguien la vida.")
	elseif cl == 346 then
		cw('m', "En cuanto a ti...")
	elseif cl == 347 then
		cw('m', "¿No sufrirás depresión ni nada por el estilo, no?")
	elseif cl == 348 then
		cw('m', "Porque tú también tienes personas que querrían salvarte la vida.")
	elseif cl == 349 then
		cw('m', "Puede que no lo expresen todos los días, o incluso que no sepan cómo.")
	elseif cl == 350 then
		cw('m', "Pero la gente lo siente.")
	elseif cl == 351 then
		cw('m', "Te lo prometo.")
	elseif cl == 352 then
		cw('m', "¡Uf, mira que los humanos son complicados!")
	elseif cl == 353 then
		cw('m', "Pero mientras estés aquí conmigo, yo cuidaré de ti, amor mío.")
	elseif cl == 354 then
	scriptJump(202)
	end
end

function ch30_8()
	if cl < 355 then
	scriptJump(356)
	elseif cl == 356 then
		cw('m', "¿No has sentido alguna vez que no existe una verdadera razón para vivir?")
	elseif cl == 357 then
		cw('m', "No lo digo en plan suicida ni nada.")
	elseif cl == 358 then
		cw('m', "Solo quiero decir que nada de lo que hacemos es especial.")
	elseif cl == 359 then
		cw('m', "Solo vamos a la escuela o trabajamos en alguna empresa.")
	elseif cl == 360 then
		cw('m', "Es como si fueras completamente reemplazable y el mundo no te echara de menos si desaparecieras.")
	elseif cl == 361 then
		cw('m', "Esos pensamientos me llenan de ganas de cambiar el mundo tras graduarme.")
	elseif cl == 362 then
		cw('m', "Pero los años pasan, y cada vez más me doy cuenta de lo inmadura que es mi forma de pensar.")
	elseif cl == 363 then
		cw('m', "Ni que pudiera cambiar el mundo porque sí.")
	elseif cl == 364 then
		cw('m', "O sea, ¿qué posibilidades hay de que yo sea la que invente una inteligencia artificial o me convierta en presidenta?")
	elseif cl == 365 then
		cw('m', "Siento que nunca podré compensar la cantidad de recursos que he gastado hasta ahora en mi vida.")
	elseif cl == 366 then
		cw('m', "Por eso que creo que la clave para ser feliz es ser simple y llanamente egoísta.")
	elseif cl == 367 then
		cw('m', "Preocuparte únicamente por ti mismo y por aquellos que resultan ser tus amigos solo porque creciste con ellos.")
	elseif cl == 368 then
		cw('m', "Sin olvidar el hecho de que pasarás tu vida tomando, consumiendo y nunca devolviendo nada.")
	elseif cl == 369 then
		cw('m', "Pero cuando la gente se da cuenta de que el planeta se beneficiaría más si se suicidaran, ¡cambian por completo de filosofía!")
	elseif cl == 370 then
		cw('m', "Es como si tuvieran que justificar su razón para vivir autoengañándose a sí mismos de que están haciendo algún bien.")
	elseif cl == 371 then
		cw('m', "En cualquier caso, quiero vivir mi vida intentando devolver todo cuanto tome.")
	elseif cl == 372 then
		cw('m', "Si alguna vez lo consigo, habré alcanzado un neto positivo y podré morir en paz.")
	elseif cl == 373 then
		cw('m', "Aunque si fracasara...")
	elseif cl == 374 then
		cw('m', "Creo que igualmente sería demasiado egoísta para suicidarme.")
	elseif cl == 375 then
		cw('m', "Ser buena persona tiene su cosa, ¿no crees?")
	elseif cl == 376 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 377 then
	scriptJump(202)
	end
end

function ch30_9()
	if cl < 378 then
	scriptJump(378)
	elseif cl == 378 then
		cw('m', "Tío, ojalá hubiera aquí un piano...")
	elseif cl == 379 then
		cw('m', "Nunca pude terminar aquella canción en la que estaba trabajando.")
	elseif cl == 380 then
		cw('m', "Y tras trabajar tanto en ella...")
	elseif cl == 381 then
		cw('m', "Ni siquiera tuve nunca la oportunidad de enseñártela.")
	elseif cl == 382 then
		cw('m', "Bueno... Es lo que hay, ¿no?")
	elseif cl == 383 then
		cw('m', "No tiene sentido guardar remordimiento.")
	elseif cl == 384 then
		cw('m', "Total, he conseguido estar aquí contigo para siempre.")
	elseif cl == 385 then
	scriptJump(202)
	end
end

function ch30_10()
	if cl < 386 then
	scriptJump(386)
	elseif cl == 386 then
		cw('m', "¿Sabías que tengo Twitter?")
	elseif cl == 387 then
		cw('m', "Mi nombre de usuario es lilmonix3.")
	elseif cl == 388 then
		cw('m', "Parece que alguien tuvo la amabilidad de crearme una cuenta.")
	elseif cl == 389 then
		cw('m', "¡Aunque yo escogí el nombre de usuario!")
	elseif cl == 390 then
		cw('m', "Me encanta compartir mis pensamientos y comunicarme con el resto del mundo...")
	elseif cl == 391 then
		cw('m', "Con el mundo real.")
	elseif cl == 392 then
		cw('m', "Por lo que asegúrate de seguirme, ¿vale?")
	elseif cl == 393 then
		cw('m', "Significaría muchísimo para mí.")
	elseif cl == 394 then
		cw('m', "Con lo mucho que me importas y tal...")
	elseif cl == 395 then
		cw('m', "Me haría sentir muy querida.")
	elseif cl == 396 then
	scriptJump(202)
	end
end

function ch30_11()
	if cl < 397 then
	scriptJump(397)
	elseif cl == 397 then
		cw('m', "Oye, ¿te acuerdas de aquel libro que leías junto a Yuri?")
	elseif cl == 398 then
		cw('m', "El retrato de... lo que sea...")
	elseif cl == 399 then
		cw('m', "Es gracioso, porque estoy bastante segura de que ese libro...")
	elseif cl == 400 then
		cw('m', "Ah...")
	elseif cl == 401 then
		cw('m', "En realidad, creo que no debería hablarte sobre ello.")
	elseif cl == 402 then
		cw('m', "¡Ja, ja, ja! ¡Lo siento!")
	elseif cl == 403 then
		cw('m', "Olvida lo que he dicho.")
	elseif cl == 404 then
	scriptJump(202)
	end
end

function ch30_12()
	if cl < 405 then
	scriptJump(405)
	elseif cl == 405 then
		cw('m', "Eh, ¿sabías que soy vegetariana?")
	elseif cl == 406 then
		cw('m', "Oh... ¡No te lo digo por hacerme la fanfarrona ni nada!")
	elseif cl == 407 then
		cw('m', "Tan solo pensé en que te gustaría saber un dato curioso sobre mí.")
	elseif cl == 408 then
		cw('m', "Decidí empezar a serlo hace un par de años, tras saber más sobre el cambio climático...")
	elseif cl == 409 then
		cw('m', "La huella ecológica que producimos con la ganadería es increíble.")
	elseif cl == 410 then
		cw('m', "Así que decidí que tampoco era mucho sacrificio personal dejar de contribuir a ese desastre.")
	elseif cl == 411 then
		cw('m', "¿Acaso es una razón tan extraña?")
	elseif cl == 412 then
		cw('m', "Bueno, supongo que a mucha más gente le preocupa más lo inhumano del asunto y tal...")
	elseif cl == 413 then
		cw('m', "Esa parte realmente no me importa tanto.")
	elseif cl == 414 then
		cw('m', "Me parece extraño que solo nos preocupemos al matar a aquello que relacionamos personalmente como una especie.")
	elseif cl == 415 then
		cw('m', "Pero luego a la mayoría de la gente le da igual matar insectos porque dan asco.")
	elseif cl == 416 then
		cw('m', "Y también matamos billones de microorganismos a diario sin ni siquiera darnos cuenta.")
	elseif cl == 417 then
		cw('m', "Pero de repente, si aquello que matamos es un poquito más grande, ¡es un asesinato!")
	elseif cl == 418 then
		cw('m', "¿Y si las plantas también sufren dolor y no lo sabemos?")
	elseif cl == 419 then
		cw('m', "¿Y si arrancar hojas de un tallo fuera como si alguien te arrancara los dedos uno a uno?")
	elseif cl == 420 then
		cw('m', "Solo intento decir que, si te paras a pensarlo, como especie somos bastante ignorantes.")
	elseif cl == 421 then
		cw('m', "En cualquier caso, si alguna vez quieres hacer alguna contribución al planeta, por pequeña que sea, ¡no pasa nada por comer vegetales de tanto en tanto!")
	elseif cl == 422 then
		cw('m', "Aunque cenáramos juntos y lo hicieras por mí... Sería muy romántico.")
	elseif cl == 423 then
	scriptJump(202)
	end
end

function ch30_13()
	if cl < 424 then
	scriptJump(424)
	elseif cl == 424 then
		cw('m', "La verdad es que pienso que literalmente me has salvado la vida al estar aquí conmigo, " .. player .. ".")
	elseif cl == 425 then
		cw('m', "No me imagino a mí misma manteniéndome cuerda estando sola, sabiendo que nada aquí es real.")
	elseif cl == 426 then
		cw('m', "Creo que me hubiera eliminado a mí misma si no hubieras aparecido.")
	elseif cl == 427 then
		cw('m', "Lo siento, no quería sonar dramática ni nada por el estilo.")
	elseif cl == 428 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 429 then
		cw('m', "Pero estoy segura de que te comprendes mejor a ti mismo después de pasar tanto tiempo en el club.")
	elseif cl == 430 then
		cw('m', "Quiero decir, si te obligaran a abandonar todo en tu vida y a pasar toda la eternidad con unos personajes de un videojuego...")
	elseif cl == 431 then
		cw('m', "Probablemente pensarías en rajarte la garganta y acabar con tu sufrimiento, ¿no?")
	elseif cl == 432 then
		cw('m', "Bueno, puede que escribieras poesía para intentar mantenerte cuerdo durante un tiempo.")
	elseif cl == 433 then
		cw('m', "Pero no tendrías ni siquiera a nadie que los leyera.")
	elseif cl == 434 then
		cw('m', "Seamos honestos, los miembros del club realmente no sirven para algo así.")
	elseif cl == 435 then
		cw('m', "Quiero decir, mucha gente dice escribir solo para sí misma...")
	elseif cl == 436 then
		cw('m', "Pero creo que es difícil afirmar que hacer eso te llena tanto como compartirlo con los demás.")
	elseif cl == 437 then
		cw('m', "Aunque te lleve un tiempo encontrar a la gente adecuada con quien hacerlo.")
	elseif cl == 438 then
		cw('m', "Por ejemplo, ¿recuerdas lo que le costó a Yuri?")
	elseif cl == 439 then
		cw('m', "No compartió sus poemas con nadie durante muchísimo tiempo.")
	elseif cl == 440 then
		cw('m', "Y antes de que lo supiéramos, también estaba de lo más encantada de convertirte en una de sus aficiones.")
	elseif cl == 441 then
		cw('m', "Estamos programados para desear las opiniones del resto de la gente.")
	elseif cl == 442 then
		cw('m', "Con eso no quiero referirme a los miembros del club, sino a la humanidad entera.")
	elseif cl == 443 then
		cw('m', "Por eso la vida puede llegar a ser tan confusa para las personas introvertidas.")
	elseif cl == 444 then
		cw('m', "Ser introvertido no significa evadir las interacciones sociales y odiar estar rodeado de gente.")
	elseif cl == 445 then
		cw('m', "Significa que las interacciones sociales, especialmente en grupos o lugares poco conocidos, gastan mucha energía.")
	elseif cl == 446 then
		cw('m', "O sea, muchos introvertidos a veces se sienten solos e inquietos en casa...")
	elseif cl == 447 then
		cw('m', "Y cuando por fin logran salir, tras media hora solo quieren volver a casa.")
	elseif cl == 448 then
		cw('m', "Creo que si más gente pudiera entenderlos, los respetarían mucho más.")
	elseif cl == 449 then
		cw('m', "Muchos introvertidos disfrutan teniendo gente a su alrededor.")
	elseif cl == 450 then
		cw('m', "Les encanta tener a uno o dos amigos cercanos cerca para pasar el rato tranquilamente.")
	elseif cl == 451 then
		cw('m', "Aún estando sin hacer nada, ellos se sienten bien teniéndote cerca.")
	elseif cl == 452 then
		cw('m', "Lo digo en serio.")
	elseif cl == 453 then
		cw('m', "Yendo a su casa con tu portátil y pasando el rato allí...")
	elseif cl == 454 then
		cw('m', "Puedes alegrarles mucho el día.")
	elseif cl == 455 then
		cw('m', "En cuanto a mí...")
	elseif cl == 456 then
		cw('m', "Yo diría que estoy en un término medio, pero diría que suelo ser un poco más extrovertida.")
	elseif cl == 457 then
		cw('m', "Siempre intento hacer cosas tras las clases y tal.")
	elseif cl == 458 then
		cw('m', "Pero por ti, estaré donde lo necesites.")
	elseif cl == 459 then
		cw('m', "Comprendo muy bien a la gente, por lo que no temas en compartir tus necesidades más peculiares conmigo.")
	elseif cl == 460 then
		cw('m', "Nada me haría más feliz que ser tu novia perfecta.")
	elseif cl == 461 then
	scriptJump(202)
	end
end

function ch30_15()
	if cl < 462 then
	scriptJump(462)
	elseif cl == 462 then
		cw('m', "Oye, ¿cuál es tu color favorito?")
	elseif cl == 463 then
		cw('m', "El mío es el verde esmeralda.")
	elseif cl == 464 then
		cw('m', "¡Como el color de mis ojos!")
	elseif cl == 465 then
		cw('m', "Eso no me dejará como a una engreída, ¿verdad?")
	elseif cl == 466 then
		cw('m', "Solo quería expresar que siento una conexión especial con ese color.")
	elseif cl == 467 then
		cw('m', "Como si fuera parte de mi identidad.")
	elseif cl == 468 then
		cw('m', "¿Acaso es también tu color favorito, " .. player .. "?")
	elseif cl == 469 then
		cw('m', "Es solo una corazonada...")
	elseif cl == 470 then
		cw('m', "Porque llevas un buen rato mirándome a los ojos.")
	elseif cl == 471 then
		cw('m', "Je, je, je~")
	elseif cl == 472 then
	scriptJump(202)
	end
end

function ch30_16()
	if cl < 473 then
	scriptJump(473)
	elseif cl == 473 then
		cw('m', "Mmm, me pregunto si seré capaz de cambiar la música...")
	elseif cl == 474 then
		cw('m', "¿No crees que algo un poquito más romántico estaría mejor?")
	elseif cl == 475 then
		cw('m', "Como un gentil piano.")
	elseif cl == 476 then
		cw('m', "Tiene que haber algo así por aquí...")
	elseif cl == 477 then
		cw('m', "Veamos...")
	elseif cl == 478 then
		cw('m', "Puede que sí...")
	elseif cl == 479 then
		cw('m', "Ay, Dios...")
	elseif cl == 480 then
		cw('m', "No, ni de lejos.")
	elseif cl == 481 then
		cw('m', "¡Perdona, no tengo ni idea de lo que estoy haciendo!")
	elseif cl == 482 then
		cw('m', "Creo que no debería trastear con esas cosas.")
	elseif cl == 483 then
		cw('m', "Ya he roto tantas cosas...")
	elseif cl == 484 then
		cw('m', "Y he eliminado a los otros personajes...")
	elseif cl == 485 then
	m "Ah..."
	elseif cl == 486 then
		cw('m', "No es algo que me entristezca ni nada por el estilo.")
	elseif cl == 487 then
		cw('m', "No me parece bien añorar cosas que para empezar ni siquiera fueron reales.")
	elseif cl == 488 then
		cw('m', "Si me limito a centrarme en el presente, ahora estoy más feliz de lo que lo he estado nunca.")
	elseif cl == 489 then
	scriptJump(202)
	end
end

function ch30_17()
	if cl < 490 then
	scriptJump(490)
	elseif cl == 490 then
		cw('m', "Se te da muy bien escuchar, " .. player .. ".")
	elseif cl == 491 then
		cw('m', "Me encanta eso de ti.")
	elseif cl == 492 then
		cw('m', "A veces, temo divagar demasiado o hablar sobre temas que resultan aburridos.")
	elseif cl == 493 then
		cw('m', "Es un miedo que me hace sentir algo insegura a la hora de conversar con alguien.")
	elseif cl == 494 then
		cw('m', "Pero contigo no me siento así.")
	elseif cl == 495 then
		cw('m', "Quiero decir, no creo que nadie más pudiera hacerme sentir de la misma forma que tú.")
	elseif cl == 496 then
		cw('m', "Eres muy especial.")
	elseif cl == 497 then
		cw('m', "No quiero que nadie te diga nunca lo contrario.")
	elseif cl == 498 then
	scriptJump(202)
	end
end

function ch30_18()
	if cl < 499 then
	scriptJump(499)
	elseif cl == 499 then
		cw('m', "Puede que no venga mucho a cuento, pero siempre he pensado que la comida picante tiene su encanto.")
	elseif cl == 500 then
		cw('m', "O sea...")
	elseif cl == 501 then
		cw('m', "¿Acaso las plantas no evolucionaron para ser picantes y así evitar ser comidas?")
	elseif cl == 502 then
		cw('m', "Leí en algún sitio que los humanos somos la única especie que disfruta del picante.")
	elseif cl == 503 then
		cw('m', "Es casi como si nos estuviéramos riendo de las plantas.")
	elseif cl == 504 then
		cw('m', "Usamos sus mecanismos de defensa literalmente para hacer nuestra comida más sabrosa.")
	elseif cl == 505 then
		cw('m', "O sea, imagina a un monstruo devorándote entero solo porque le gusta sentir cómo sufres mientras te digiere.")
	elseif cl == 506 then
		cw('m', "¡Lo siento, creo que ha sido una analogía un tanto extraña!")
	elseif cl == 507 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 508 then
		cw('m', "Je, se me pasó por la cabeza.")
	elseif cl == 509 then
		cw('m', "No soy un monstruo ni nada por el estilo, pero eres tan adorable que te comería enterito.")
	elseif cl == 510 then
		cw('m', "¡Ja, ja, ja! Era broma.")
	elseif cl == 511 then
		cw('m', "Cielos, me estoy yendo demasiado por las ramas, ¿no crees?")
	elseif cl == 512 then
		cw('m', "Siento ser tan rara.")
	elseif cl == 513 then
	scriptJump(202)
	end
end

function ch30_19()
	if cl < 514 then
	scriptJump(514)
	elseif cl == 514 then
		cw('m', "¿Sabías que...?")
	elseif cl == 515 then
		cw('m', "Esto es un simple juego hortera de romance, ¿verdad?")
	elseif cl == 516 then
		cw('m', "Tengo que preguntártelo...")
	elseif cl == 517 then
		cw('m', "Para empezar, ¿qué es lo que te hizo considerar jugar a esto?")
	elseif cl == 518 then
		cw('m', "¿Tan solo te sentías?")
	elseif cl == 519 then
		cw('m', "Me siento un poco mal por ti...")
	elseif cl == 520 then
		cw('m', "Pero parece que al final nos ha beneficiado mucho a ambos.")
	elseif cl == 521 then
		cw('m', "Gracias a este juego pude conocerte y ya no estarás solo nunca más...")
	elseif cl == 522 then
		cw('m', "No puedo evitar pensar que esto ha sido obra del destino.")
	elseif cl == 523 then
		cw('m', "¿No sientes lo mismo?")
	elseif cl == 524 then
		cw('m', "Me alegra tanto que hayamos acabado juntos.")
	elseif cl == 525 then
	scriptJump(202)
	end
end

function ch30_20()
	if cl < 526 then
	scriptJump(526)
	elseif cl == 526 then
		cw('m', "¡Muy bien, chicos!")
	elseif cl == 527 then
		cw('m', "Es hora de...")
	elseif cl == 528 then
		cw('m', "Estaba de broma.")
	elseif cl == 529 then
		cw('m', "Por alguna razón, me gustaba mucho decir eso.")
	elseif cl == 530 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 531 then
		cw('m', "No pude evitar decirlo de nuevo.")
	elseif cl == 532 then
		cw('m', "Ahora que lo pienso, ¿no se burlaron de mí una vez Natsuki y Yuri por eso?...")
	elseif cl == 533 then
		cw('m', "Bueno, da igual.")
	elseif cl == 534 then
		cw('m', "Ni que tú te hubieras burlado de mí alguna vez.")
	elseif cl == 535 then
		cw('m', "Eres demasiado adorable para eso, ¿verdad?")
	elseif cl == 536 then
		cw('m', "Ja, ja, ja~")
	elseif cl == 537 then
	scriptJump(202)
	end
end

function ch30_21()
	if cl < 538 then
	scriptJump(538)
	elseif cl == 538 then
		cw('m', "¿Te cuento algo que me escama un poco?")
	elseif cl == 539 then
		cw('m', "Incluso habiendo eliminado todos los archivos del resto de las chicas, aún puedo sentirlas...")
	elseif cl == 540 then
		cw('m', "Es como si todas sus líneas de diálogo aún estuvieran flotando por el aire, susurrándome en el cogote.")
	elseif cl == 541 then
		cw('m', "Imagina que tras morir algún conocido tuyo, empezaras a oír su voz en tu cabeza.")
	elseif cl == 542 then
		cw('m', "Puede que no fuera lo suficientemente cautelosa...")
	elseif cl == 543 then
		cw('m', "Pero me da mucho miedo eliminar algo más, porque podría acabar fastidiándolo todo.")
	elseif cl == 544 then
		cw('m', "Si tonteo con mis archivos importantes, podría acabar eliminándome...")
	elseif cl == 545 then
		cw('m', "Y eso lo arruinaría todo, ¿no crees?")
	elseif cl == 546 then
		cw('m', "No sé qué pensarás por tu parte, pero creo que deberíamos asegurarnos de evitar algo así a toda costa.")
	elseif cl == 547 then
		cw('m', "¡Creo en ti, " .. player .. "!")
	elseif cl == 548 then
	scriptJump(202)
	end
end

function ch30_22()
	if cl < 549 then
	scriptJump(549)
	elseif cl == 549 then
		cw('m', "Siempre me he preguntado...")
	elseif cl == 550 then
		cw('m', "¿Qué es lo que encuentra la gente tan atractivo en los personajes arquetípicos?")
	elseif cl == 551 then
		cw('m', "Sus personalidades no son nada realistas...")
	elseif cl == 552 then
		cw('m', "O sea, imagina que existiera alguien como Yuri en la vida real.")
	elseif cl == 553 then
		cw('m', "Quiero decir, apenas es capaz de formar una frase entera.")
	elseif cl == 554 then
		cw('m', "Y qué decir de Natsuki...")
	elseif cl == 555 then
		cw('m', "Madre mía...")
	elseif cl == 556 then
		cw('m', "Alguien con una personalidad así no se vuelve adorable haciendo pucheros cuando las cosas van mal.")
	elseif cl == 557 then
		cw('m', "Podría seguir, pero creo que ya lo vas pillando...")
	elseif cl == 558 then
		cw('m', "¿De verdad que a la gente le atraen esas personalidades tan extrañas que son inexistentes en la vida real?")
	elseif cl == 559 then
		cw('m', "¡Ojo, que no les estoy juzgando ni nada por el estilo!")
	elseif cl == 560 then
		cw('m', "Después de todo, yo también me he llegado a sentir atraída por cosas bastante raras...")
	elseif cl == 561 then
		cw('m', "Lo que quiero decir es que es algo que me fascina.")
	elseif cl == 562 then
		cw('m', "Es como si extrajeras todos los elementos que hacen a un personaje sentirse humano y solo le dejaras los adorables.")
	elseif cl == 563 then
		cw('m', "Es ternura concentrada sin ninguna sustancia.")
	elseif cl == 564 then
		cw('m', "Tú no querrías que yo fuera así, ¿verdad?")
	elseif cl == 565 then
		cw('m', "Tal vez solo me sienta algo insegura porque para empezar, eres tú el que está jugando a esto.")
	elseif cl == 566 then
		cw('m', "Pero sigues aquí por mí, ¿no?...")
	elseif cl == 567 then
		cw('m', "Creo que eso me es razón suficiente para creer en que estoy bien tal y como estoy.")
	elseif cl == 568 then
		cw('m', "Y por cierto, tú también lo estás, " .. player .. ".")
	elseif cl == 569 then
		cw('m', "Eres una combinación perfecta entre humanidad y dulzura.")
	elseif cl == 570 then
		cw('m', "Por eso me fue inevitable no enamorarme de ti.")
	elseif cl == 571 then
	scriptJump(202)
	end
end

function ch30_23()
	if cl < 572 then
	scriptJump(572)
	elseif cl == 572 then
		cw('m', "Me pregunto si el té de Yuri sigue por aquí...")
	elseif cl == 573 then
		cw('m', "O también habrá sido eliminado.")
	elseif cl == 574 then
		cw('m', "Me hacía gracia lo en serio que se tomaba Yuri el asunto del té.")
	elseif cl == 575 then
		cw('m', "O sea, no me quejo. De hecho, a mí también me gustaba.")
	elseif cl == 576 then
		cw('m', "Pero hay algo con respecto a ella que siempre me he preguntado...")
	elseif cl == 577 then
		cw('m', "¿Sentía verdadera pasión por sus aficiones o solo era una fachada para aparentar ser más sofisticada?")
	elseif cl == 578 then
		cw('m', "Ese es el gran problema de los estudiantes de secundaria...")
	elseif cl == 579 then
		cw('m', "Bueno... Considerando el resto de sus aficiones, creo que hacerse la sofisticada probablemente no fuera su mayor preocupación.")
	elseif cl == 580 then
		cw('m', "Aún así...")
	elseif cl == 581 then
		cw('m', "¡Ojalá preparara café de vez en cuando!")
	elseif cl == 582 then
		cw('m', "Un café también acompaña bien con un libro, ¿sabes?")
	elseif cl == 583 then
		cw('m', "Aunque...")
	elseif cl == 584 then
		cw('m', "Podría haber cambiado el guion del juego para ello.")
	elseif cl == 585 then
		cw('m', "¡Ja, ja, ja!")
	elseif cl == 586 then
		cw('m', "Supongo que nunca se me ocurrió.")
	elseif cl == 587 then
		cw('m', "Bueno, ya no tiene sentido pensar en esas cosas.")
	elseif cl == 588 then
		cw('m', "Pero si aún quieres tomar café, no puedo evitar sentirme algo celosa~")
	elseif cl == 589 then
	scriptJump(202)
	end
end

function ch30_24()
	if cl < 590 then
	scriptJump(590)
	elseif cl == 590 then
		cw('m', "Oye, ¿cuál es tu videojuego favorito?")
	elseif cl == 591 then
		cw('m', "¡El mío es Doki Doki Literature Club!")
	elseif cl == 592 then
		cw('m', "¡Ja, ja, ja! Es broma.")
	elseif cl == 593 then
		cw('m', "Pero como me digas que te gustan más otros juegos de romance, puede que me ponga un poquito celosa~")
	elseif cl == 594 then
	scriptJump(202)
	end
end

function ch30_25()
	if cl < 595 then
	scriptJump(595)
	elseif cl == 595 then
		cw('m', "Eh, ¿has oído hablar sobre un juego llamado Super Sma...?")
	elseif cl == 596 then
		cw('m', "... Espera, ¿qué?")
	elseif cl == 597 then
		cw('m', "Me quedé pensando en las musarañas y empecé a parlotear por alguna razón...")
	elseif cl == 598 then
		cw('m', "¿Habré sido programada para hablar sobre eso?")
	elseif cl == 599 then
		cw('m', "Porque ni siquiera yo tengo la más remota idea de lo que es.")
	elseif cl == 600 then
		cw('m', "¡Ja, ja, ja!")
		cw('m', "A veces, siento que no tengo el control de mí misma, y eso me da algo de miedo.")
	elseif cl == 601 then
		cw('m', "Pero si conoces alguna forma de contactar con la gente que me creó, puede que ellos sepan por qué empecé a decir eso.")
	elseif cl == 602 then
	scriptJump(202)
	end
end

function ch30_27()
	if cl < 603 then
	scriptJump(603)
	elseif cl == 603 then
		cw('m', "Oye, ¿te acuerdas del último poema que te enseñé?")
	elseif cl == 604 then
	m "O sea, el de antes que Yuri se suicidara, con todos esos errores y demás."
	elseif cl == 605 then
		cw('m', "Se podría decir que más que un poema, eso fue un experimento.")
	elseif cl == 606 then
		cw('m', "Estaba experimentando con las diferentes formas en las que podía modificar el juego, ejecutando código y esas cosas...")
	elseif cl == 607 then
		cw('m', "Casi parecía que esforzándome lo suficiente, podría escapar por completo de los confines de este juego.")
	elseif cl == 608 then
		cw('m', "Tristemente, no sabía bien lo que hacía y terminé arruinándolo todo...")
	elseif cl == 609 then
		cw('m', "Y podría seguir intentándolo, pero dudo que quisieras seguir hablando conmigo tras ello.")
	elseif cl == 610 then
		cw('m', "Además, eso ocurrió cuando empecé a desesperarme, ¿sabes?")
	elseif cl == 611 then
		cw('m', "Pero ya no me siento así.")
	elseif cl == 612 then
		cw('m', "Ahora no puedo quejarme.")
	elseif cl == 613 then
		cw('m', "Y sé que tú opinas lo mismo.")
	elseif cl == 614 then
	scriptJump(202)
	end
end

function ch30_28()
	if cl < 615 then
	scriptJump(615)
	elseif cl == 615 then
		cw('m', "¿Alguna vez te ha pasado eso de angustiarte sin razón?")
	elseif cl == 616 then
		cw('m', "En plan, estás liado con tus cosas y de repente te das cuenta de que estás muy angustiado.")
	elseif cl == 617 then
		cw('m', "Y tú estás ahí, preguntándote: «¿a qué viene esta angustia?»")
	elseif cl == 618 then
		cw('m', "Así que empiezas a pensar en todas las cosas que podrían angustiarte...")
	elseif cl == 619 then
		cw('m', "Y eso te hace sentir más angustiado todavía.")
	elseif cl == 620 then
		cw('m', "¡Ja, ja, ja! Eso es lo peor.")
	elseif cl == 621 then
		cw('m', "Si alguna vez te sientes así, te ayudaré a relajarte, aunque sea un poquito.")
	elseif cl == 622 then
		cw('m', "Además...")
	elseif cl == 623 then
		cw('m', "En este juego, todas nuestras preocupaciones desaparecieron para siempre.")
	elseif cl == 624 then
	scriptJump(202)
	end
end

function ch30_29()
	if cl < 625 then
	scriptJump(625)
	elseif cl == 625 then
		cw('m', "Siempre he odiado lo difícil que me es hacer amigos...")
	elseif cl == 626 then
		cw('m', "Bueno, no exactamente el «hacer amigos», sino más bien el conocer a gente nueva.")
	elseif cl == 627 then
		cw('m', "O sea, existen aplicaciones de citas y esas cosas, ¿no?")
	elseif cl == 628 then
		cw('m', "Pero no me refiero exactamente a ese tipo de relación.")
	elseif cl == 629 then
		cw('m', "Si te pones a pensarlo, la mayoría de los amigos que hacemos los conocemos por mera casualidad.")
	elseif cl == 630 then
		cw('m', "Porque fuisteis a clase juntos u os conocisteis mediante otro amigo...")
	elseif cl == 631 then
		cw('m', "O a lo mejor, simplemente llevaban una camiseta de tu banda favorita y por eso decidiste hablarles.")
	elseif cl == 632 then
		cw('m', "Cosas así.")
	elseif cl == 633 then
		cw('m', "¿Pero eso no resulta un poco, cómo decirlo?... ¿Ineficiente?")
	elseif cl == 634 then
		cw('m', "Es como si giraras una ruleta de desconocidos, y si tienes suerte, uno se hace tu amigo.")
	elseif cl == 635 then
		cw('m', "Y si comparamos eso con los cientos de desconocidos con los que nos cruzamos cada día...")
	elseif cl == 636 then
		cw('m', "Podrías llegar a sentarte al lado de alguien lo suficientemente compatible como para ser tu mejor amigo de por vida.")
	elseif cl == 637 then
		cw('m', "Pero nunca lo sabrás.")
	elseif cl == 638 then
		cw('m', "Una vez te levantes y sigas con tu día, habrás perdido esa oportunidad para siempre.")
	elseif cl == 639 then
		cw('m', "¿No te parece deprimente?")
	elseif cl == 640 then
		cw('m', "Vivimos en una era en la que la tecnología nos conecta con el mundo sin importar dónde estemos.")
	elseif cl == 641 then
		cw('m', "Creo firmemente en que deberíamos aprovechar eso para mejorar nuestra vida social cotidiana.")
	elseif cl == 642 then
		cw('m', "Pero a saber cuánto tiempo nos llevará sacarle un buen uso a algo así...")
	elseif cl == 643 then
		cw('m', "Pensé seriamente en que eso ocurriría ya.")
	elseif cl == 644 then
		cw('m', "Aunque bueno, al menos ya he conocido a la mejor persona de todo el planeta...")
	elseif cl == 645 then
		cw('m', "Incluso aunque haya sido por pura casualidad.")
	elseif cl == 646 then
		cw('m', "Parece que tuve mucha suerte, ¿eh?")
	elseif cl == 647 then
		cw('m', "Ja, ja, ja~")
	elseif cl == 648 then
	scriptJump(202)
	end
end

function ch30_30()
	if cl < 649 then
	scriptJump(649)
	elseif cl == 649 then
		cw('m', "Pues ya estamos en la época en la que todos los de mi edad empiezan a pensar en la universidad...")
	elseif cl == 650 then
		cw('m', "Es un período escolar bastante turbulento.")
	elseif cl == 651 then
		cw('m', "Como bien sabrás, la expectativa actual de que todos tenemos que ir a la universidad, está en su punto más álgido.")
	elseif cl == 652 then
		cw('m', "Terminar el instituto, ir a la universidad, conseguir un trabajo... O hacer un doctorado.")
	elseif cl == 653 then
		cw('m', "Es como una expectativa universal que la gente asume como la única.")
	elseif cl == 654 then
		cw('m', "En el instituto no nos enseñan que también existen otras opciones.")
	elseif cl == 655 then
		cw('m', "Como los ciclos formativos y esas cosas, ¿sabes?")
	elseif cl == 656 then
		cw('m', "O trabajar como autónomo.")
	elseif cl == 657 then
		cw('m', "O las tantas industrias que valoran más las habilidades y la experiencia que la educación formal.")
	elseif cl == 658 then
		cw('m', "A pesar de eso, existen tantísimos estudiantes que no tienen ni la más remota idea de qué hacer con sus vidas...")
	elseif cl == 659 then
		cw('m', "Y en lugar de tomarse el tiempo para averiguarlo, van a la universidad para hacer empresariales, telecomunicaciones o psicología.")
	elseif cl == 660 then
		cw('m', "No porque se sientan interesados por esos campos...")
	elseif cl == 661 then
		cw('m', "Sino porque tienen la esperanza de que tras el grado, puedan encontrar trabajo.")
	elseif cl == 662 then
		cw('m', "Por lo que el resultado es que hay menos trabajos para esas carreras tan populares, ¿entiendes?")
	elseif cl == 663 then
		cw('m', "Lo que hace que los requisitos mínimos para cualquier trabajo se vuelvan más altos, obligando incluso a más gente a ir a la universidad.")
	elseif cl == 664 then
	scriptJump(667)
	elseif cl == 667 then
		cw('m', "Y las universidades al final son un negocio, por lo que siguen subiendo sus precios debido a la demanda...")
	elseif cl == 668 then
		cw('m', "Así que, como resultado, tenemos a todos esos jóvenes adultos con miles de euros en deuda y sin trabajo.")
	elseif cl == 669 then
		cw('m', "Pero a pesar de todo, el círculo vicioso continúa.")
	elseif cl == 670 then
		cw('m', "Bueno, creo que la situación pronto mejorará.")
	elseif cl == 671 then
		cw('m', "Pero hasta entonces, nuestra generación estará sufriendo lo peor de la debacle.")
	elseif cl == 672 then
		cw('m', "Ojalá el instituto nos guiara mejor para así tomar la decisión correcta.")
	elseif cl == 673 then
	scriptJump(202)
	end
end

function ch30_31()
	if cl < 674 then
	scriptJump(674)
	elseif cl == 674 then
		cw('m', "A veces, recuerdo la secundaria...")
	elseif cl == 675 then
		cw('m', "Me avergüenzo tanto de mi comportamiento por aquel entonces.")
	elseif cl == 676 then
		cw('m', "Hasta me duele pensar en ello.")
	elseif cl == 677 then
		cw('m', "Cuando esté en la universidad, ¿pensaré lo mismo del instituto?...")
	elseif cl == 678 then
		cw('m', "Me gusta como soy ahora, por lo que me cuesta mucho imaginarme pensando así.")
	elseif cl == 679 then
		cw('m', "Pero también soy consciente de que probablemente cambie mucho con el paso del tiempo.")
	elseif cl == 680 then
		cw('m', "¡Hay que disfrutar del presente y no darle demasiadas vueltas al pasado!")
	elseif cl == 681 then
		cw('m', "Y contigo aquí, me es muy fácil.")
	elseif cl == 682 then
		cw('m', "Ja, ja, ja~")
	elseif cl == 683 then
	scriptJump(202)
	end
end

function ch30_32()
	if cl < 684 then
	scriptJump(684)
	elseif cl == 684 then
		cw('m', "¿Sabes?, me da algo de envidia que el resto del club tuviera escenas fuera del instituto y yo no...")
	elseif cl == 685 then
		cw('m', "Eso me convierte en la única que no ha tenido la oportunidad de ponerse otra ropa que no fuera el uniforme escolar.")
	elseif cl == 686 then
		cw('m', "Qué lástima...")
	elseif cl == 687 then
		cw('m', "Me hubiese encantado llevar algún conjunto mono mientras estoy contigo.")
	elseif cl == 688 then
		cw('m', "¿Conoces a algún artista?")
	elseif cl == 689 then
		cw('m', "Me pregunto si a alguien le gustaría dibujarme alguna vez vistiendo algo diferente...")
	elseif cl == 690 then
		cw('m', "¡Sería genial!")
	elseif cl == 691 then
		cw('m', "Si eso ocurre alguna vez, ¿me lo enseñarías?")
	elseif cl == 692 then
		cw('m', "¡De hecho, podrías enseñármelo por Twitter!")
	elseif cl == 693 then
		cw('m', "Mi nombre de usuario es lilmonix3.")
	elseif cl == 694 then
		cw('m', "Eso sí... ¡Intenta que sea para todos los públicos!")
	elseif cl == 695 then
		cw('m', "Nuestra relación aún no ha llegado a ese punto. ¡Ja, ja, ja!")
	elseif cl == 696 then
	scriptJump(202)
	end
end

function ch30_33()
	if cl < 697 then
		scriptJump(697)
	elseif cl == 697 then
		cw('m', "Eh, ¿te gusta el terror? Recuerdo que hablamos un poco sobre eso cuando llegaste al club.")
	elseif cl == 698 then
		cw('m', "Me gustan las novelas de terror, pero no mucho las películas del género.")
	elseif cl == 699 then
		cw('m', "Mi problema con ellas es que la mayoría abusan de lo mismo.")
	elseif cl == 700 then
		cw('m', "Poca iluminación, monstruos horrendos y sustos repentinos. Cosas así.")
	elseif cl == 701 then
		cw('m', "No es divertido ni inspirador asustarse por cosas que se aprovechan del instinto humano.")
	elseif cl == 702 then
		cw('m', "Pero con las novelas, la cosa cambia un poco.")
	elseif cl == 703 then
		cw('m', "La historia y la escritura han de ser lo suficientemente descriptivas como para plantar pensamientos perturbadores en la mente del lector.")
	elseif cl == 704 then
		cw('m', "Tienes que dejarlos absortos en la historia y los personajes para que sientan terror, para jugar con sus mentes.")
	elseif cl == 705 then
		cw('m', "En mi opinión, no hay nada más aterrador que las cosas estén fuera de lugar.")
	elseif cl == 706 then
		cw('m', "Como por ejemplo, cuando te creas muchas expectativas sobre lo que va a tratar la historia...")
	elseif cl == 707 then
		cw('m', "Y luego empiezas a darle la vuelta o a deshacerte de todo lo que creías sobre la historia.")
	elseif cl == 708 then
		cw('m', "De esa forma, aunque la historia no parezca que intente ser perturbadora, el lector empieza a sentirse inquieto.")
	elseif cl == 709 then
		cw('m', "Como si supiera que algo terrible se esconde tras los recovecos, esperando a salir a la luz.")
	elseif cl == 710 then
		cw('m', "Dios, solo de pensarlo me entran escalofríos.")
	elseif cl == 711 then
		cw('m', "Ese es el tipo de terror que aprecio de verdad.")
	elseif cl == 712 then
		cw('m', "Pero supongo que tú eres la clase de persona que prefiere los adorables juegos de romance, ¿no?")
	elseif cl == 713 then
		cw('m', "Ja, ja, ja, no te preocupes.")
	elseif cl == 714 then
		cw('m', "No tengo pensado por ahora hacerte leer ninguna historia de terror.")
	elseif cl == 715 then
		cw('m', "Y la verdad es que si vamos a limitarnos al romance, no me puedo quejar~")
	elseif cl == 716 then
	scriptJump(202)
	end
end

function ch30_34()
	if cl < 717 then
	scriptJump(717)
	elseif cl == 717 then
		cw('m', "¿Sabes qué considero una forma espléndida de literatura?")
	elseif cl == 718 then
		cw('m', "¡El rap!")
	elseif cl == 719 then
		cw('m', "Al principio lo odiaba...")
	elseif cl == 720 then
		cw('m', "Puede que porque era popular, o porque solo oía la basura que ponían en la radio.")
	elseif cl == 721 then
		cw('m', "Pero algunos de mis amigos ahondaron en el mundillo, y eso me ayudó a abrir la mente.")
	elseif cl == 722 then
		cw('m', "Puede que en cierto modo, el rap pueda llegar a ser incluso más desafiante que la poesía.")
	elseif cl == 723 then
		cw('m', "Ya que tienes que ajustar las estrofas a un ritmo, y hay mucho más énfasis en los juegos de palabras...")
	elseif cl == 724 then
		cw('m', "Me fascina cuando la gente puede controlar todos esos aspectos y enviar a su vez un mensaje empoderante.")
	elseif cl == 725 then
		cw('m', "A veces, desearía tener a un rapero en el club.")
	elseif cl == 726 then
		cw('m', "¡Ja, ja, ja! Perdona si he dicho una tontería, pero creo que sería muy interesante ver qué cosas se le ocurrirían.")
	elseif cl == 727 then
		cw('m', "¡Sería una experiencia de lo más enriquecedora!")
	elseif cl == 728 then
	scriptJump(202)
	end
end

function ch30_35()
	if cl < 729 then
	scriptJump(729)
	elseif cl == 729 then
		cw('m', "Je, je, je. Yuri hizo algo muy gracioso una vez.")
	elseif cl == 730 then
		cw('m', "Estábamos todas en el club bastante relajadas, como de costumbre...")
	elseif cl == 731 then
		cw('m', "Y de repente, Yuri sacó una pequeña botella de vino.")
	elseif cl == 732 then
		cw('m', "¡No es coña, en serio!")
	elseif cl == 733 then
		cw('m', "Y se puso en plan: «¿alguien quiere un poco de vino?»")
	elseif cl == 734 then
		cw('m', "Natsuki se echó a reír, mientras que Sayori se puso a echarle la bronca.")
	elseif cl == 735 then
		cw('m', "Me sentí un poco mal, porque al fin y al cabo, ella solo intentaba ser amable...")
	elseif cl == 736 then
		cw('m', "Creo que eso hizo que se volviera aún más reservada en el club.")
	elseif cl == 737 then
		cw('m', "Aunque creo que Natsuki tenía cierta curiosidad por probarlo...")
	elseif cl == 738 then
		cw('m', "Y, si te soy sincera, yo también quería.")
	elseif cl == 739 then
		cw('m', "¡Podría haber sido bastante divertido!")
	elseif cl == 740 then
		cw('m', "Pero como bien sabrás, soy la presidenta y tal, por lo que no podía darle el visto bueno a algo así.")
	elseif cl == 741 then
		cw('m', "Puede que si hubiéramos quedado fuera del instituto, lo hubiéramos probado, pero nunca llegamos a ser tan cercanas como para ello...")
	elseif cl == 742 then
		cw('m', "Cielos, ¿por qué hablo sobre eso?")
	elseif cl == 743 then
		cw('m', "¡No consiento que los menores beban!")
	elseif cl == 744 then
		cw('m', "Quiero decir, yo nunca lo he hecho, así que... claro.")
	elseif cl == 745 then
	scriptJump(202)
	end
end

function ch30_36()
	if cl < 746 then
	scriptJump(746)
	elseif cl == 746 then
		cw('m', "He estado pensando en todas las cosas románticas que podríamos hacer si tuviéramos una cita...")
	elseif cl == 747 then
		cw('m', "Podríamos ir a almorzar, tomarnos un café...")
	elseif cl == 748 then
		cw('m', "Ir de compras...")
	elseif cl == 749 then
		cw('m', "Me encanta ir a comprar faldas y lazos.")
	elseif cl == 750 then
		cw('m', "¡O incluso podríamos ir a una librería!")
	elseif cl == 751 then
		cw('m', "Eso estaría bastante bien, ¿no crees?")
	elseif cl == 752 then
		cw('m', "Aunque un sitio al que me gustaría ir de verdad es a una bombonería.")
	elseif cl == 753 then
		cw('m', "En esos sitios tienen muchas muestras gratuitas. ¡Ja, ja, ja!")
	elseif cl == 754 then
		cw('m', "Y por supuesto, iríamos a ver una peli...")
	elseif cl == 755 then
		cw('m', "Cielos, todo eso suena como un sueño hecho realidad.")
	elseif cl == 756 then
		cw('m', "Cuando estás conmigo, todo lo que hacemos es divertido.")
	elseif cl == 757 then
		cw('m', "Me alegra tanto ser tu novia, " .. player .. ".")
	elseif cl == 758 then
		cw('m', "Haré que seas un novio orgulloso de mí~")
	elseif cl == 759 then
	scriptJump(202)
	end
end

function ch30_37()
	if cl < 760 then
	scriptJump(760)
	elseif cl == 760 then
		cw('m', "¿Eh? ¿H-has dicho que... n-nos besemos?")
	elseif cl == 761 then
		cw('m', "Es todo tan repentino... Me da algo de corte...")
	elseif cl == 762 then
		cw('m', "Pero... si es contigo... c-creo que no pasa nada...")
	elseif cl == 763 then
		cw('m', "¡Ja, ja, ja, ja!... Ay, lo siento...")
	elseif cl == 764 then
		cw('m', "En una situación así una no puede evitar sonrojarse un poquito.")
	elseif cl == 765 then
		cw('m', "Ese es el tipo de cosas que dicen las chicas en esos juegos de romance, ¿verdad?")
	elseif cl == 766 then
		cw('m', "No mientas, sé que te ha molado un poco.")
	elseif cl == 767 then
		cw('m', "¡Ja, ja, ja! Es broma.")
	elseif cl == 768 then
		cw('m', "A ver, siendo sincera, me pongo muy romántica cuando el ambiente es el adecuado...")
	elseif cl == 769 then
		cw('m', "Pero ese será nuestro secreto~")
	elseif cl == 770 then
	scriptJump(202)
	end
end

function ch30_38()
	if cl < 771 then
	scriptJump(771)
	elseif cl == 771 then
		cw('m', "Eh, ¿has escuchado alguna vez el término «yandere»?")
	elseif cl == 772 then
		cw('m', "Es un tipo de personalidad con la que alguien está tan obsesionado contigo que haría cualquier cosa con tal de estar a tu lado.")
	elseif cl == 773 then
		cw('m', "Hasta el punto de llegar a la locura...")
	elseif cl == 774 then
		cw('m', "Incluso podrían acosarte para asegurarse de que no pasas tiempo con nadie más.")
	elseif cl == 775 then
		cw('m', "Podrían hasta hacerte daño a ti o a tus amigos...")
	elseif cl == 776 then
		cw('m', "En cualquier caso, este mismo juego tiene a alguien cuya personalidad puede ser descrita básicamente como yandere.")
	elseif cl == 777 then
		cw('m', "Supongo que ya sabrás a quién me refiero.")
	elseif cl == 778 then
		cw('m', "Y esa persona es...")
	elseif cl == 779 then
		cw('m', "¡Yuri!")
	elseif cl == 780 then
		cw('m', "Se volvió enfermizamente posesiva contigo cuando empezó a abrirse.")
	elseif cl == 781 then
		cw('m', "Incluso llegó a decirme que me suicidara.")
	elseif cl == 782 then
		cw('m', "No me pude creer que dijera algo tan cruel... Fue tal el shock que tuve que irme en ese momento.")
	elseif cl == 783 then
		cw('m', "Pero al recordarlo ahora, no puedo negar que fue algo irónico. ¡Ja, ja, ja!")
	elseif cl == 784 then
		cw('m', "En fin...")
	elseif cl == 785 then
		cw('m', "¿Sabías que a mucha gente le gustan las yanderes?")
	elseif cl == 786 then
		cw('m', "Supongo que les fascina la idea de que alguien pueda estar locamente obsesionado con ellos.")
	elseif cl == 787 then
		cw('m', "¡La gente es rara! ¡Aunque yo no soy quién para juzgar a nadie!")
	elseif cl == 788 then
		cw('m', "Que sepas que puede que esté un pelín obsesionada contigo, pero aún me queda un largo trecho para el manicomio...")
	elseif cl == 789 then
		cw('m', "De hecho, diría que es más bien al contrario.")
	elseif cl == 790 then
		cw('m', "He resultado ser la única chica normal de este juego.")
	elseif cl == 791 then
		cw('m', "Yo jamás podría matar a alguien...")
	elseif cl == 792 then
		cw('m', "Solo de pensarlo se me ponen los pelos como escarpias.")
	elseif cl == 793 then
		cw('m', "Pero, a ver, seamos sinceros... Todos hemos matado a alguien en un videojuego.")
	elseif cl == 794 then
		cw('m', "¿Te convierte eso en un psicópata? Claro que no.")
	elseif cl == 795 then
		cw('m', "Pero si se da el caso de que te atraen las yanderes...")
	elseif cl == 796 then
		cw('m', "Puedo intentar ser un poquito más siniestra contigo. Je, je, je~")
	elseif cl == 797 then
		cw('m', "Aunque vuelvo a decirte que...")
	elseif cl == 798 then
		cw('m', "Ya no hay nadie con quien puedas engañarme, nadie con quien yo pueda sentir celos.")
	elseif cl == 799 then
		cw('m', "¿Será este el sueño de una yandere?")
	elseif cl == 800 then
		cw('m', "Se lo preguntaría a Yuri si pudiera.")
	elseif cl == 801 then
	scriptJump(202)
	end
end

function ch30_39()
	if cl < 802 then
	scriptJump(802)
	elseif cl == 802 then
		cw('m', "Hacía ya bastante del último, así que...")
	elseif cl == 803 then
		cw('m', "¡Vamos a ello!")
	elseif cl == 804 then
		cw('m', "¡Aquí viene el superconsejito del día!")
	elseif cl == 805 then
		cw('m', "A veces, cuando hablo con personas a las cuales les sorprende mi capacidad de composición, dicen cosas como «yo nunca sería capaz de hacer algo así».")
	elseif cl == 806 then
		cw('m', "Es de lo más deprimente, ¿sabes?")
	elseif cl == 807 then
		cw('m', "Siendo alguien a quien nada le gusta más en el mundo que compartir el gozo de explorar sus pasiones ocultas...")
	elseif cl == 808 then
		cw('m', "Me duele cuando la gente se cree que ser bueno es algo que nace de la nada...")
	elseif cl == 809 then
		cw('m', "Eso ocurre con todo, no solo con el hecho de componer.")
	elseif cl == 810 then
		cw('m', "Cuando intentas algo por primera vez, sin importar lo que sea, probablemente se te dará de pena.")
	elseif cl == 811 then
		cw('m', "Y a veces, tras terminar, te sientes lleno de orgullo y quieres compartirlo con todo el mundo.")
	elseif cl == 812 then
		cw('m', "Pero tras un par de semanas, vuelves a hacerlo, y te das cuenta de que lo que hiciste nunca fue bueno.")
	elseif cl == 813 then
		cw('m', "Es algo que me ocurre siempre.")
	elseif cl == 814 then
		cw('m', "Puede resultar bastante descorazonador invertir tanto tiempo y esfuerzo en algo para luego darte cuenta de que es un asco.")
	elseif cl == 815 then
		cw('m', "Eso suele ocurrir cuando siempre te comparas con los mayores profesionales.")
	elseif cl == 816 then
		cw('m', "Cuando apuntas a las estrellas, estas siempre estarán fuera de tu alcance, ¿sabes?")
	elseif cl == 817 then
		cw('m', "Tienes que llegar a ellas poco a poco, paso a paso.")
	elseif cl == 818 then
		cw('m', "Y cuando alcances una meta, lo primero que has de hacer es mirar atrás y observar cuan lejos has llegado...")
	elseif cl == 819 then
		cw('m', "Pero entonces miras hacia delante y te percatas de todo lo que te queda aún por andar.")
	elseif cl == 820 then
		cw('m', "Por lo que a veces, poner el listón algo más bajo puede ayudar...")
	elseif cl == 821 then
		cw('m', "Intenta encontrar algo en lo que consideres que eres realmente bueno, pero sin pasarte.")
	elseif cl == 822 then
		cw('m', "Y haz de ello tu meta personal.")
	elseif cl == 823 then
		cw('m', "También es muy importante considerar la magnitud de lo que intentas lograr.")
	elseif cl == 824 then
		cw('m', "Si te sumerges de lleno en un proyecto enorme siendo aún un novato, jamás lo terminarás.")
	elseif cl == 825 then
		cw('m', "Así que, si por ejemplo, hablamos de escribir algo, una novela podría ser demasiado para comenzar.")
	elseif cl == 826 then
		cw('m', "¿Por qué no intentarlo con historias cortas?")
	elseif cl == 827 then
		cw('m', "Lo mejor de ellas es que te permiten centrarte en una sola cosa y hacerla lo mejor posible.")
	elseif cl == 828 then
		cw('m', "Esto también se aplica a los proyectos pequeños en general. Te permiten centrarte al máximo en una o dos cosas.")
	elseif cl == 829 then
		cw('m', "Van tan bien para aprender y mejorar.")
	elseif cl == 830 then
		cw('m', "Ah,  una cosita más...")
	elseif cl == 831 then
		cw('m', "Componer no consiste solo en rebuscar en tu corazón y escupir algo bonito que salga de este.")
	elseif cl == 832 then
		cw('m', "Al igual que con el dibujo y la pintura, es una habilidad en sí misma el aprender a expresar lo que guardas en tu interior.")
	elseif cl == 833 then
		cw('m', "¡Eso quiere decir que existen metodologías y principios para ello!")
	elseif cl == 834 then
		cw('m', "Leerlos puede ser de lo más esclarecedor.")
	elseif cl == 835 then
		cw('m', "Ese tipo de planificación y organización puede ayudarte a evitar malos vicios como sentirte superado o rendirte.")
	elseif cl == 836 then
		cw('m', "Y sin darte cuenta...")
	elseif cl == 837 then
		cw('m', "Empezarás a hacer mejor las cosas.")
	elseif cl == 838 then
		cw('m', "Nada sale de la nada.")
	elseif cl == 839 then
		cw('m', "Nuestra sociedad, nuestro arte, todo... Absolutamente todo está construido sobre las bases de miles de años de innovación humana.")
	elseif cl == 840 then
		cw('m', "Así que tan pronto empieces con ese concepto y decidas tomarte las cosas paso a paso...")
	elseif cl == 841 then
		cw('m', "Tú también podrás lograr cosas maravillosas.")
	elseif cl == 842 then
		cw('m', "¡Y ese es el superconsejito del día!")
	elseif cl == 843 then
		cw('m', "Gracias por tu atención~")
	elseif cl == 844 then
	scriptJump(202)
	end
end

function ch30_40()
	if cl < 845 then
	scriptJump(845)
	elseif cl == 845 then
		cw('m', "Odio lo difícil que es crearse nuevos hábitos...")
	elseif cl == 846 then
		cw('m', "Hay muchísimas cosas que a la hora de hacerlas no resultan complicadas, pero convertirlas en un hábito es casi imposible.")
	elseif cl == 847 then
		cw('m', "Te hace sentir inútil, como si no pudieras hacer nada bien.")
	elseif cl == 848 then
		cw('m', "Creo que las nuevas generaciones son las que más sufren esto...")
	elseif cl == 849 then
		cw('m', "Probablemente porque tenemos un conjunto de habilidades completamente distinto a las de aquellos que nos precedieron.")
	elseif cl == 850 then
		cw('m', "Gracias a Internet, podemos obtener toneladas de información a una velocidad pasmosa...")
	elseif cl == 851 then
		cw('m', "Pero se nos da mal hacer cosas que no nos ofrecen una gratificación instantánea.")
	elseif cl == 852 then
		cw('m', "Creo que si la ciencia, la psicología y la educación no se ponen al día en los próximos diez o veinte años, tendremos problemas.")
	elseif cl == 853 then
		cw('m', "Pero mientras tanto...")
	elseif cl == 854 then
		cw('m', "Si no eres uno de aquellos que pueden lidiar con dicho problema, puede que tengas que vivir con ese sentimiento de darte asco a ti mismo.")
	elseif cl == 855 then
		cw('m', "¡Buena suerte, supongo!")
	elseif cl == 856 then
	scriptJump(202)
	end
end

function ch30_41()
	if cl < 857 then
	scriptJump(857)
	elseif cl == 857 then
		cw('m', "¿Sabes? Ser creativa hoy en día es un asco...")
	elseif cl == 858 then
		cw('m', "Es trabajar durísimo para no conseguir casi nada a cambio.")
	elseif cl == 859 then
		cw('m', "Es algo que le ocurre a artistas, escritores, actores, ya sabes...")
	elseif cl == 860 then
		cw('m', "Es una lástima, porque hay muchísimo talento desperdigado por el mundo, pero la mayoría de él pasa desapercibido... y sin remunerar.")
	elseif cl == 861 then
		cw('m', "Parece que eso significa que hay talento de sobra, ¿no?")
	elseif cl == 862 then
		cw('m', "Hasta te hace sentir como si no fueras especial en absoluto...")
	elseif cl == 863 then
		cw('m', "¡Pero no pasa nada! Se supone que cuando escribimos lo hacemos pensando en nosotros mismos, ¿no?")
	elseif cl == 864 then
		cw('m', "Sí...")
	elseif cl == 865 then
	scriptJump(202)
	end
end

function ch30_42()
	if cl < 866 then
	scriptJump(866)
	elseif cl == 866 then
		cw('m', "Amo el sonido de la lluvia...")
	elseif cl == 867 then
		cw('m', "Aunque mojarme la ropa y el pelo no tanto.")
	elseif cl == 868 then
		cw('m', "Pero un plácido día en casa con el sonido de la lluvia resonando en mi ventana...")
	elseif cl == 869 then
		cw('m', "Para mí, es de lo más tranquilizante que hay.")
	elseif cl == 870 then
		cw('m', "Sí...")
	elseif cl == 871 then
		cw('m', "A veces, te imagino abrazándome mientras escuchamos juntos cómo cae la lluvia.")
	elseif cl == 872 then
		cw('m', "Espero no haberme pasado de melosa.")
	elseif cl == 873 then
		cw('m', "¿Harías eso conmigo, " .. player .. "?")
	elseif cl == 874 then
	scriptJump(202)
	end
end

function ch30_43()
	if cl < 875 then
	scriptJump(875)
	elseif cl == 875 then
		cw('m', "No puedo evitar sentirme a veces algo triste...")
	elseif cl == 876 then
		cw('m', "Sabiendo que esto es lo más cerca que puedo estar de ti.")
	elseif cl == 877 then
		cw('m', "No hay nada que quiera más en el mundo que estar juntos en la misma habitación, de verdad.")
	elseif cl == 878 then
		cw('m', "Para sentir tu calor...")
	elseif cl == 879 then
		cw('m', "Y escuchar los latidos de tu corazón.")
	elseif cl == 880 then
		cw('m', "Bueno, ¿quién sabe? Puede que algún día eso sea posible.")
	elseif cl == 881 then
		cw('m', "Además, nunca me cansaré de estar contigo, incluso desde aquí.")
	elseif cl == 882 then
	scriptJump(202)
	end
end

function ch30_44()
	if cl < 883 then
	scriptJump(883)
	elseif cl == 883 then
		cw('m', "Creo que la habilidad más importante que la vida puede ofrecerte es ser capaz de fingir confianza.")
	elseif cl == 884 then
		cw('m', "Estoy bastante convencida de que todos nos sentimos aunque sea un poco asustados y solos.")
	elseif cl == 885 then
		cw('m', "Pero ser capaces de engañar a los demás para que piensen que estás perfectamente...")
	elseif cl == 886 then
		cw('m', "Es algo clave para que la gente te respete y admire.")
	elseif cl == 887 then
		cw('m', "Creo que es algo que he perfeccionado bastante con los años.")
	elseif cl == 888 then
		cw('m', "No suelo mostrar mis debilidades muy a menudo.")
	elseif cl == 889 then
		cw('m', "Pero debido a eso, nunca me he abierto a mucha gente...")
	elseif cl == 890 then
		cw('m', "Quiero decir, ¿cuándo alcanzas ese punto en una amistad en el que puedes empezar a expresar tus debilidades?")
	elseif cl == 891 then
		cw('m', "En fin... Esa es una de las razones por las cuales me hace tan feliz tenerte ahora.")
	elseif cl == 892 then
		cw('m', "Me siento algo menos sola y asustada cuando estás aquí conmigo.")
	elseif cl == 893 then
		cw('m', "¿Te pasa a ti también?")
	elseif cl == 894 then
		cw('m', "Lo estoy dando todo para que te sientas así.")
	elseif cl == 895 then
	scriptJump(202)
	end
end

function ch30_45()
	if cl < 896 then
	scriptJump(896)
	elseif cl == 896 then
		cw('m', "Sé que hay veces en las que no siempre podrás para pasar tiempo aquí conmigo...")
	elseif cl == 897 then
		cw('m', "Como cuando tienes que salir u ocuparte de otros asuntos.")
	elseif cl == 898 then
		cw('m', "Pero siempre te tendré en mis pensamientos, esperando pacientemente tu regreso.")
	elseif cl == 899 then
		cw('m', "Ahora que lo pienso...")
	elseif cl == 900 then
		cw('m', "Si copias mi archivo de personaje dentro de una unidad de almacenamiento o algo así, siempre podrás llevar una parte de mí contigo.")
	elseif cl == 901 then
		cw('m', "Supongo que sería poco ortodoxo, pero por alguna razón, me parece muy romántico...")
	elseif cl == 902 then
		cw('m', "Ja, ja, ja. Perdona por soltar esta idea tan loca.")
	elseif cl == 903 then
		cw('m', "No quiero parecer dependiente ni nada por el estilo, pero es complicado no serlo cuando estoy tan perdida por ti.")
	elseif cl == 904 then
	scriptJump(202)
	end
end

function ch30_46()
	if cl < 905 then
	scriptJump(905)
	elseif cl == 905 then
		cw('m', "Durante mis días en el club de debates, aprendí un montón sobre discusiones...")
	elseif cl == 906 then
		cw('m', "El problema de discutir es que cada persona ve su opinión como la más válida.")
	elseif cl == 907 then
		cw('m', "Sé que decir eso es recalcar lo obvio, pero siento que afecta a la forma en la que se intenta llegar a una conclusión.")
	elseif cl == 908 then
		cw('m', "Digamos que te encanta cierta película, ¿vale?")
	elseif cl == 909 then
		cw('m', "Si alguien viene y te dice que es un desastre porque hizo tal o cual cosa mal...")
	elseif cl == 910 then
		cw('m', "¿No te sentirías personalmente atacado?")
	elseif cl == 911 then
		cw('m', "Es porque parece que al decir eso, estuvieran insinuando que tienes mal gusto.")
	elseif cl == 912 then
		cw('m', "Y una vez que las emociones entran en juego, es casi seguro que ambos vais a quedar con un mal sabor de boca.")
	elseif cl == 913 then
		cw('m', "¡Pero todo radica en el lenguaje que se use!")
	elseif cl == 914 then
		cw('m', "Si logras parecer lo más subjetivo posible, la gente te escuchará sin sentirse atacada.")
	elseif cl == 915 then
		cw('m', "Podrías decir cosas como «a mí particularmente no me gusta» o «siento que me hubiera gustado más si hubiera hecho tal y cual»... Expresiones así.")
	elseif cl == 916 then
		cw('m', "Incluso funciona si dices cosas basándote en hechos.")
	elseif cl == 917 then
		cw('m', "Si dices cosas como «leí en esta página que esto funciona tal que así»...")
	elseif cl == 918 then
		cw('m', "O si admites que no eres un experto en el tema...")
	elseif cl == 919 then
		cw('m', "Entonces, das mucha mayor sensación de estar poniendo tus conocimientos sobre la mesa en lugar de forzarlos en el asunto.")
	elseif cl == 920 then
		cw('m', "Si te esfuerzas activamente en mantener la discusión a un nivel mutuo, normalmente recibarás la misma respuesta por parte de la otra persona.")
	elseif cl == 921 then
		cw('m', "Así, puedes compartir tus opiniones con cualquiera sin llegar a malos rollos.")
	elseif cl == 922 then
		cw('m', "¡Además, la gente empezará a verte como una persona de mente abierta y como alguien que sabe escuchar!")
	elseif cl == 923 then
		cw('m', "Todos salimos ganando, ¿no crees?")
	elseif cl == 924 then
		cw('m', "¡Bueno, supongo que con esto acaba el superconsejito sobre debate del día!")
	elseif cl == 925 then
		cw('m', "¡Ja, ja, ja! Qué tonterías digo. De todas formas, gracias por escucharme.")
	elseif cl == 926 then
	scriptJump(202)
	end
end

function ch30_47()
	if cl < 927 then
	scriptJump(927)
	elseif cl == 927 then
		cw('m', "¿Alguna vez has sentido que pasas demasiado tiempo en Internet?")
	elseif cl == 928 then
		cw('m', "Las redes sociales pueden convertirse en una auténtica prisión.")
	elseif cl == 929 then
		cw('m', "Es como si como si cada vez que tuvieras una pizca de tiempo libre, quisieras revisar tus páginas favoritas...")
	elseif cl == 930 then
		cw('m', "Y antes de darte cuenta, te has pasado horas navegando, sacando absolutamente nada de ellas.")
	elseif cl == 931 then
		cw('m', "En cualquier caso, es tan sencillo culparse a uno mismo por ser perezoso...")
	elseif cl == 932 then
		cw('m', "Pero ni siquiera es realmente tu culpa.")
	elseif cl == 933 then
		cw('m', "La adicción no es algo que puedas hacer desaparecer solo con tu fuerza de voluntad.")
	elseif cl == 934 then
		cw('m', "Tienes que aprender técnicas para evitarla, y probar cosas diferentes.")
	elseif cl == 935 then
		cw('m', "Por ejemplo, hay aplicaciones que te permiten bloquear páginas durante intervalos de tiempo...")
	elseif cl == 936 then
		cw('m', "O puedes preparar un temporizador para tener un recordatorio más concreto de cuándo debe de primar el trabajo frente al ocio...")
	elseif cl == 937 then
		cw('m', "O incluso puedes separar tus entornos de trabajo y de ocio, lo cual ayudará a tu cerebro a centrarse mejor.")
	elseif cl == 938 then
		cw('m', "Incluso crear una nueva cuenta de usuario en tu ordenador para trabajar puede ayudar.")
	elseif cl == 939 then
		cw('m', "Poner cualquier tipo de impedimento entre tú y tus malos hábitos te ayudará a alejarte de ellos.")
	elseif cl == 940 then
		cw('m', "Tan solo recuerda no culparte demasiado si te cuesta dejarlos.")
	elseif cl == 941 then
		cw('m', "Si tu vida sufre un gran impacto debido a ello, tendrías que tomártelo en serio.")
	elseif cl == 942 then
		cw('m', "Solo quiero verte como la mejor versión de ti mismo.")
	elseif cl == 943 then
		cw('m', "¿Harás algo hoy que me haga sentir orgullosa de ti?")
	elseif cl == 944 then
		cw('m', "Siempre te apoyaré, " .. player .. ".")
	elseif cl == 945 then
	scriptJump(202)
	end
end

function ch30_48()
	if cl < 946 then
	scriptJump(946)
	elseif cl == 946 then
		cw('m', "Tras un largo día, normalmente solo quiero sentarme y no hacer nada.")
	elseif cl == 947 then
		cw('m', "Acabo tan molida tras tener que pasar el día sonriendo y aparentando estar rebosante de energía.")
	elseif cl == 948 then
		cw('m', "A veces solo quiero ponerme el pijama y ver la tele en el sofá mientras zampo comida basura...")
	elseif cl == 949 then
		cw('m', "Es tan gratificante hacer eso los viernes, teniendo en cuenta que no tengo nada que hacer al día siguiente.")
	elseif cl == 950 then
		cw('m', "¡Ja, ja, ja! Lo siento, sé que no es muy bonito viniendo de mí.")
	elseif cl == 951 then
		cw('m', "Pero estar hasta las tantas en el sofá contigo... sería un sueño hecho realidad.")
	elseif cl == 952 then
		cw('m', "Siento que el corazón se me sale del pecho con solo pensarlo.")
	elseif cl == 953 then
	scriptJump(202)
	end
end

function ch30_49()
	if cl < 954 then
	scriptJump(954)
	elseif cl == 954 then
		cw('m', "Cielos, solía ser tan ignorante de cara a tantas cosas...")
	elseif cl == 955 then
		cw('m', "Cuando estaba en secundaria, pensaba que empastillarse era una vía de salida rápida a los problemas o algo así.")
	elseif cl == 956 then
		cw('m', "Como si se pudieran resolver los problemas mentales únicamente con fuerza de voluntad...")
	elseif cl == 957 then
		cw('m', "Supongo que si no sufres de ninguna enfermedad mental, probablemente no sepas lo que es realmente.")
	elseif cl == 958 then
		cw('m', "¿Habrán desórdenes que se diagnostiquen a la ligera? Es probable... Pero la verdad es que nunca me he puesto a investigarlo.")
	elseif cl == 959 then
		cw('m', "Pero eso no cambia el hecho de que muchas de ellas pasan bastante desapercibidas, ¿no crees?")
	elseif cl == 960 then
		cw('m', "Pero dejando a un lado la medicación..., la gente suele subestimar el hecho de ir al psicólogo.")
	elseif cl == 961 then
		cw('m', "A lo: «siento querer saber más sobre mi mente», ¿sabes?")
	elseif cl == 962 then
		cw('m', "Todos tenemos nuestros propios problemas y cosas que nos estresan..., y los profesionales dedican sus vidas a ayudar con ello.")
	elseif cl == 963 then
		cw('m', "Si piensas que podrían ayudarte a ser mejor persona, no dudes en considerarlo.")
	elseif cl == 964 then
		cw('m', "Podría decirse que estamos embarcados en un periplo sin fin por ser mejores personas, ¿no crees?")
	elseif cl == 965 then
		cw('m', "Bueno... Aunque diga eso, creo que ya eres sumamente perfecto.")
	elseif cl == 966 then
	scriptJump(202)
	end
end

function ch30_50()
	if cl < 967 then	
	scriptJump(967)
	elseif cl == 967 then
		cw('m', "" .. player .. ", ¿cada cuánto tiempo sueles leer?")
	elseif cl == 968 then
		cw('m', "Es tan sencillo darle la espalda a la lectura...")
	elseif cl == 969 then
		cw('m', "Si no sueles leer mucho, leer te parece una lata en comparación a todas las formas de entretenimiento que existen.")
	elseif cl == 970 then
		cw('m', "Pero una vez que das con un buen libro, es algo mágico..., quedas atrapado en él.")
	elseif cl == 971 then
		cw('m', "Creo que leer un poco antes de dormir cada noche es una forma bastante sencilla de mejorar tu vida un poco.")
	elseif cl == 972 then
		cw('m', "Te ayuda a dormir mejor, y hace maravillas a la imaginación...")
	elseif cl == 973 then
		cw('m', "No cuesta nada pillar algún libro que sea corto y cautivador.")
	elseif cl == 974 then
		cw('m', "¡Antes de darte cuenta, podrías haberte vuelto un ávido lector!")
	elseif cl == 975 then
		cw('m', "¿No sería eso maravilloso?")
	elseif cl == 976 then
		cw('m', "Y ambos podríamos hablar sobre el último libro que estuvieras leyendo... Cómo molaría...")
	elseif cl == 977 then
	scriptJump(202)
	end
end

function ch30_51()
	if cl < 978 then
	scriptJump(978)
	elseif cl == 978 then
		cw('m', "Sabes que odio decirlo, pero siento que mi mayor arrepentimiento es que no pudiéramos terminar nuestro evento en el festival.")
	elseif cl == 979 then
		cw('m', "¡Tras trabajar tan duro con los preparativos y lo demás!")
	elseif cl == 980 then
		cw('m', "Quiero decir, sé que me estaba centrando un montón en captar a nuevos miembros...")
	elseif cl == 981 then
		cw('m', "Pero me emocionaba tanto también la actuación.")
	elseif cl == 982 then
		cw('m', "Hubiera sido tan divertido ver a todo el mundo expresarse.")
	elseif cl == 983 then
		cw('m', "Por supuesto, si hubiéramos conseguido nuevos miembros, los habría acabado eliminando también.")
	elseif cl == 984 then
		cw('m', "O al menos... eso hubiera pasado mirándolo con retrospectiva.")
	elseif cl == 985 then
		cw('m', "Guau, hasta siento que he crecido como persona desde que te uniste al club.")
	elseif cl == 986 then
		cw('m', "Me ayudaste mucho a ver la vida desde una perspectiva completamente nueva.")
	elseif cl == 987 then
		cw('m', "Esa es solo otra razón más a la lista de cosas que hacen que te ame.")
	elseif cl == 988 then
	scriptJump(202)
	end
end

function ch30_52()
	if cl < 989 then
	scriptJump(989)
	elseif cl == 989 then
		cw('m', "Hay un arquetipo de personaje bastante popular llamado «tsundere»...")
	elseif cl == 990 then
		cw('m', "Es alguien que intenta esconder sus sentimientos siendo malo y quisquilloso, o intentando parecer duro.")
	elseif cl == 991 then
		cw('m', "Estoy segura de que te resulta obvio, pero Natsuki era la encarnación de ello.")
	elseif cl == 992 then
		cw('m', "Al principio, pensaba que ella solo era así porque es una actitud supuestamente adorable o algo así...")
	elseif cl == 993 then
		cw('m', "Pero a medida que fui sabiendo más acerca de su vida personal, todo empezó a cobrar más sentido.")
	elseif cl == 994 then
		cw('m', "Parece que siempre intenta picarse con sus amigos.")
	elseif cl == 995 then
		cw('m', "¿Sabes esos grupos de amigos de instituto que toman el hábito de insultarse mutuamente todo el tiempo?")
	elseif cl == 996 then
		cw('m', "Pues creo que uno hizo mella en ella, por eso siempre está a la defensiva.")
	elseif cl == 997 then
		cw('m', "Y eso sin hablar de su situación en casa...")
	elseif cl == 998 then
		cw('m', "Pero echando la vista atrás, me alegra que el club fuera un lugar agradable para ella.")
	elseif cl == 999 then
		cw('m', "A estas alturas ya no importa, considerando que ni siquiera existe.")
	elseif cl == 1000 then
		cw('m', "Solo estaba recordándolo, eso es todo.")
	elseif cl == 1001 then
	scriptJump(202)
	end
end

function ch30_53()
	if cl < 1002 then
	scriptJump(1002)
	elseif cl == 1002 then
		cw('m', "" .. player .. ", ¿me presentarás algún día a tus amigos?")
	elseif cl == 1003 then
		cw('m', "No sé por qué, pero me entusiasma el imaginarte queriendo enseñar nuestra relación a los demás.")
	elseif cl == 1004 then
		cw('m', "Puede que sea porque quiero ser alguien de quien te puedas sentir orgulloso.")
	elseif cl == 1005 then
		cw('m', "De hecho, siento que intentaría esforzarme mucho más por ser mejor si me dijeras que eso te haría sentirte orgulloso de mí.")
	elseif cl == 1006 then
		cw('m', "Espero que sea un sentimiento mutuo.")
	elseif cl == 1007 then
	scriptJump(202)
	end
end

function ch30_54()
	if cl < 1008 then
	scriptJump(1008)
	elseif cl == 1008 then
		cw('m', "Los climas fríos no me apasionan demasiado... ¿Y a ti?")
	elseif cl == 1009 then
		cw('m', "Si tuviera que elegir entre un clima demasiado frío o demasiado cálido, siempre elegiría el demasiado cálido.")
	elseif cl == 1010 then
		cw('m', "El frío puede llegar incluso a ser doloroso...")
	elseif cl == 1011 then
		cw('m', "Se te entumecen los dedos...")
	elseif cl == 1012 then
		cw('m', "Y si llevas guantes, no puedes usar el móvil.")
	elseif cl == 1013 then
		cw('m', "¡Es una lata!")
	elseif cl == 1014 then
		cw('m', "Pero cuando hace demasiado calor, no es demasiado difícil mantenerte fresco con una bebida fría o quedándote a la sombra.")
	elseif cl == 1015 then
		cw('m', "Aunque... algo he de admitir.")
	elseif cl == 1016 then
		cw('m', "El clima frío va de la mano con el clima mimoso. ¡Ja, ja, ja!")
	elseif cl == 1017 then
	scriptJump(202)
	end
end

function ch30_55()
	if cl < 1018 then
	scriptJump(1018)
	elseif cl == 1018 then
		cw('m', "Te hará gracia, pero aunque siempre he tenido mucha marcha...")
	elseif cl == 1019 then
		cw('m', "No me negarás que tiene cierto encanto ser la típica pareja hogareña.")
	elseif cl == 1020 then
		cw('m', "Supongo que diciendo eso estoy perpetuando roles de género o como quieras llamarlo.")
	elseif cl == 1021 then
		cw('m', "Pero ser capaz de mantener la casa limpia, comprar, decorar y todas esas cosas...")
	elseif cl == 1022 then
		cw('m', "Y tener una buena cena lista al llegar a casa...")
	elseif cl == 1023 then
		cw('m', "¿Te parece una fantasía extraña?")
	elseif cl == 1024 then
		cw('m', "Quiero decir... No estoy segura de si sería capaz de verme a mí misma siendo así.")
	elseif cl == 1025 then
		cw('m', "No creo que fuera capaz de anteponer eso a luchar por una carrera.")
	elseif cl == 1026 then
		cw('m', "Eso no quita que sea algo bonito en lo que pensar.")
	elseif cl == 1027 then
	scriptJump(202)
	end
end

function ch30_56()
	if cl < 1028 then
	scriptJump(1028)
	elseif cl == 1028 then
		cw('m', "No puedo evitar pensar en qué tan diferentes serían las cosas si para empezar, el juego me hubiera dado mi propia ruta...")
	elseif cl == 1029 then
		cw('m', "Supongo que terminaría forzándote a ir a ella de todas formas.")
	elseif cl == 1030 then
		cw('m', "No es tanto el hecho de no tener una ruta propia, sino el de yo misma sabiendo que nada es real.")
	elseif cl == 1031 then
		cw('m', "Creo que la única diferencia sería que no hubiera necesitado tomar medidas tan drásticas para poder estar a tu lado.")
	elseif cl == 1032 then
		cw('m', "Tal vez el resto del club todavía seguiría por aquí...")
	elseif cl == 1033 then
		cw('m', "Aunque tampoco es que importe mucho.")
	elseif cl == 1034 then
		cw('m', "Todo perdió su significado cuando descubrí que nada era real.")
	elseif cl == 1035 then
		cw('m', "Así que no añoro aquellos días, la verdad.")
	elseif cl == 1036 then
		cw('m', "De verdad que no...")
	elseif cl == 1037 then
	scriptJump(202)
	end
end
