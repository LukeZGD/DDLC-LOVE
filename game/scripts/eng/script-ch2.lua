local ch2_winner = poemwinner[2]
if ch2_winner == "Sayori" or ch2_winner == "Yuri" then
	ch2_winner = tr.names[3]
else
	ch2_winner = tr.names[2]
end

function ch2script()
	if cl == 1149 then
		bgUpdate('club')
		audioUpdate('2')
		cw('bl',"Another day passes, and it's time for the club meeting already.")
	elseif cl == 1150 then
		cw('bl',"I've gotten a little more comfortable here over the past couple days.")
	elseif cl == 1151 then
		cw('bl',"Entering the clubroom, the usual scene greets me.")
	elseif cl == 1152 then
		updateSayori('2','x',80)
		cw('s',"Hi "..player.."~")
	elseif cl == 1153 then	
		cw('mc',"Yo, Sayori.")
	elseif cl == 1154 then
		cw('mc',"Looks like you're in a good mood today.")
	elseif cl == 1155 then
		updateSayori('1','q')
		cw('s',"Ehehe~")
	elseif cl == 1156 then
		cw('s',"I'm just still not used to you being in the club, that's all.")
	elseif cl == 1157 then
		cw('mc',"I see...")
	elseif cl == 1158 then
		cw('mc',"...That's a pretty simple thing to get you in a good mood.")
	elseif cl == 1159 then
		cw('mc',"But I guess it's always the simple things with you, anyway.")
	elseif cl == 1160 then
		updateSayori('1','d')
		cw('s',"Speaking of which...")
	elseif cl == 1161 then
		cw('s',"I'm kinda hungry...")
	elseif cl == 1162 then
		cw('s',"Will you come with me to buy a snack?")
	elseif cl == 1163 then
		cw('mc',"No thanks.")
	elseif cl == 1164 then
		updateSayori('4','h')
		cw('s',"Eh??")
	elseif cl == 1165 then
		cw('s',"T-That's not like you at all!!")
	elseif cl == 1166 then
		cw('mc',"I have my reasons.")
	elseif cl == 1167 then
		cw('mc',"Why don't we take a look at your purse, Sayori?")
	elseif cl == 1168 then
		updateSayori('4','l')
		cw('s',"E-Eh?")
	elseif cl == 1169 then
		cw('s',"Why that...all of a sudden?")
	elseif cl == 1170 then
		cw('mc',"No reason, really.")
	elseif cl == 1171 then
		cw('mc',"I just wanted to look at it.")
	elseif cl == 1172 then
		updateSayori('1','l')
		cw('s',"A-Ah...")
	elseif cl == 1173 then
		cw('bl',"Sayori nervously retrieves her coin purse.")
	elseif cl == 1174 then
		cw('bl',"She fumbles with the latch and gets it open.")
	elseif cl == 1175 then
		cw('bl',"Then, she turns it upside-down and lets its contents spill onto the desk.")
	elseif cl == 1176 then
		cw('bl',"Only two small coins fall out.")
	elseif cl == 1177 then
		updateSayori('5a')
		cw('s',"A-Ahaha...")
	elseif cl == 1178 then
		cw('mc',"I knew it...")
	elseif cl == 1179 then
		cw('mc',"I can see right through you, Sayori.")
	elseif cl == 1180 then
		updateSayori('5c')
		cw('s',"That's not fair!")
	elseif cl == 1181 then
		cw('s',"How did you even know?")
	elseif cl == 1182 then
		cw('mc',"It's simple.")
	elseif cl == 1183 then
		cw('mc',"If you had enough money in the first place, you would have bought a snack before coming to the clubroom.")
	elseif cl == 1184 then
		cw('mc',"So, either you're not hungry and wanted an excuse to take a walk...")
	elseif cl == 1185 then
		cw('mc',"Or, you planned to conveniently forget that you spent all your money, so that I would lend you some!")
	elseif cl == 1186 then
		cw('mc',"But there's one more thing...")
	elseif cl == 1187 then
		cw('mc',"...You're always hungry!")
	elseif cl == 1188 then
		cw('mc',"And so, that only leaves the one option!")
	elseif cl == 1189 then
		updateSayori('4','p')
		cw('s',"Uwaaa~!")
	elseif cl == 1190 then
		cw('s',"I give up!")
	elseif cl == 1191 then
		cw('s',"Don't make me feel guiltyyy!")
	elseif cl == 1192 then
		cw('mc',"If you feel guilty, that means you deserve to feel guilty...")
	elseif cl == 1193 then
		updateYuri('1','c',200)
		cw('y',"Ahaha.")
	elseif cl == 1194 then
		cw('bl',"Yuri suddenly giggles.")
	elseif cl == 1195 then
		updateSayori('4','g')
		cw('bl',"I didn't notice that she was listening in.")
	elseif cl == 1196 then
		cw('bl',"Her face is in her book, as always.")
	elseif cl == 1197 then
		updateYuri('3','n')
		cw('y',"A-Ah!")
	elseif cl == 1198 then
		cw('y',"I wasn't listening or anything--!")
	elseif cl == 1199 then
		updateYuri('3','o')
		cw('y',"It was just...something in my book...")
	elseif cl == 1200 then
		updateSayori('1','h')
		cw('s',"Yuriiii...")
	elseif cl == 1201 then
		cw('s',"Tell "..player.." to let me borrow some money...")
	elseif cl == 1202 then
		updateYuri('3','h')
		cw('y',"That's--!")
	elseif cl == 1203 then
		cw('y',"Don't get me involved like that, Sayori...")
	elseif cl == 1204 then
		cw('y',"Besides...")
	elseif cl == 1205 then
		updateYuri('1','k')
		cw('y',"You should only buy what you can responsibly afford...")
	elseif cl == 1206 then
		cw('y',"And frankly, after pulling a mischievous little stunt like that, your suffering is fair enough retribution.")
	elseif cl == 1207 then
		updateSayori('1','b')
		cw('mc',"...")
	elseif cl == 1208 then
		updateYuri('3','n')
		cw('y',"Ah--!")
	elseif cl == 1209 then
		cw('y',"Did I just...")
	elseif cl == 1210 then
		updateYuri('4','c2')
		cw('y',"I-I didn't mean that!!")
	elseif cl == 1211 then
		cw('y',"I got too absorbed into my book...")
	elseif cl == 1212 then
		cw('y',"Uu...")
	elseif cl == 1213 then
		updateSayori('1','r')
		cw('s',"Ahaha!")
	elseif cl == 1214 then
		updateSayori('3','x')
		cw('s',"I really like when you speak your mind, Yuri...")
	elseif cl == 1215 then
		cw('s',"It doesn't happen much, but it's a fun side of you!")
	elseif cl == 1216 then
		updateYuri('3','v')
		cw('y',"That's...")
	elseif cl == 1217 then
		cw('y',"There's no way you could think that...")
	elseif cl == 1218 then
		updateSayori('1','x')
		cw('s',"You were right, though...")
	elseif cl == 1219 then
		cw('s',"I did something bad and now I have to accept the revolution.")
	elseif cl == 1220 then
		updateYuri('3','h')
		cw('y',"Retribution...")
	elseif cl == 1221 then
		updateSayori('1','l')
		cw('s',"That!")
	elseif cl == 1222 then
		cw('y',"Still, coming from you, Sayori...")
	elseif cl == 1223 then
		updateYuri('1','a')
		cw('y',"I guess there's a little devil inside all of us, isn't there?")
	elseif cl == 1224 then
		updateSayori('1','q')
		cw('s',"Ehehe...")
	elseif cl == 1225 then
		cw('mc',"Don't let her fool you.")
	elseif cl == 1226 then
		cw('mc',"Sayori knows exactly what she's doing.")
	elseif cl == 1227 then
		cw('mc',"After all, she told you guys she was bringing me to the club before she even told me...")
	elseif cl == 1228 then
		updateSayori('1','h')
		cw('s',"B-But...!")
	elseif cl == 1229 then
		cw('s',"You wouldn't have come if it weren't for the cupcakes...")
	elseif cl == 1230 then
		cw('s',"So I had to trick Natsuki into making them!")
	elseif cl == 1231 then
		cw('mc',"Come on, give me more credit than that, Sayori.")
	elseif cl == 1232 then
		updateSayori('1','l')
		cw('s',"Ehehe...")
	elseif cl == 1233 then
		updateSayori('4','p')
		sfxplay('slap')
		cw('bl',"Pwap!")
	elseif cl == 1234 then
		updateSayori('4','p')
		cw('s',"Kyaa--!")
	elseif cl == 1235 then
		cw('bl',"Out of nowhere, something smacks Sayori in the face and tumbles onto the desk.")
	elseif cl == 1236 then
		updateSayori('4','j')
		cw('s',"Ow...")
	elseif cl == 1237 then
		cw('s',"What was--")
	elseif cl == 1238 then
		updateSayori('4','n')
		cw('s',"Eh??")
	elseif cl == 1239 then
		cw('s',"A-A cookie!")
	elseif cl == 1240 then
		cw('bl',"Sure enough, it's a giant cookie wrapped in plastic.")
	elseif cl == 1241 then
		cw('bl',"Sayori glances around.")
	elseif cl == 1242 then
		updateSayori('4','m')
		cw('s',"I-Is this a miracle??")
	elseif cl == 1243 then
		cw('s',"It's because I paid my restitution!")
	elseif cl == 1244 then
		cw('mc',"Retribution...")
	elseif cl == 1245 then
		updateSayori('4','n')
		updateYuri('1','u')
		cw('y',"Actually, that one almost worked...")
	elseif cl == 1246 then
		updateNatsuki('3','z',-40)
		cw('n',"Ahahaha!")
	elseif cl == 1247 then
		cw('n',"I was just gonna give it to you.")
	elseif cl == 1248 then
		updateNatsuki('3','d')
		cw('n',"But then I heard you blab about the cupcakes.")
	elseif cl == 1249 then
		cw('n',"It was totally worth seeing your reaction, though. Ahaha!")
	elseif cl == 1250 then
		updateSayori('4','m')
		cw('s',"N-Natsuki!")
	elseif cl == 1251 then
		cw('s',"That's so nice of you!")
	elseif cl == 1252 then
		updateSayori('4','s')
		cw('s',"I'm so happy...")
	elseif cl == 1253 then
		cw('bl',"Sayori hugs the cookie.")
	elseif cl == 1254 then
		cw('mc',"Jeez, just eat it...")
	elseif cl == 1255 then
		cw('bl',"Sayori rapidly tears open the wrapper and takes a big bite.")
	elseif cl == 1256 then
		updateSayori('4','q')
		cw('s',"Sho good...")
	elseif cl == 1257 then
		updateSayori('4','o')
		cw('s',"Mmf--!")
	elseif cl == 1258 then
		cw('bl',"Sayori suddenly clasps her hands over her mouth.")
	elseif cl == 1259 then
		updateSayori('4','p')
		cw('s',"I bit my tongue...")
	elseif cl == 1260 then
		updateNatsuki('3','a')
		cw('n',"Ehehe.")
	elseif cl == 1261 then
		cw('n',"You're going through a lot over just one cookie.")
	elseif cl == 1262 then
		cw('bl',"Natsuki takes a bite of her own cookie.")
	elseif cl == 1263 then
		updateSayori('1','c')
		cw('s',"Ah, yours looks really good too, Natsuki!")
	elseif cl == 1264 then
		cw('s',"Can I try it?")
	elseif cl == 1265 then
		updateNatsuki('4','e')
		cw('n',"Jeez...")
	elseif cl == 1266 then
		cw('n',"Beggars can't be choosers!")
	elseif cl == 1267 then
		updateSayori('1','h')
		cw('s',"But yours is chocolate...")
	elseif cl == 1268 then
		updateNatsuki('4','c')
		cw('n',"Yeah, why do you think I gave you that one?")
	elseif cl == 1269 then
		updateSayori('1','g')
		cw('s',"Fine...")
	elseif cl == 1270 then
		updateSayori('1','q')
		cw('s',"Still, I'm really happy that you shared this one with me.")
	elseif cl == 1271 then
		cw('s',"Ehehe~")
	elseif cl == 1272 then
		updateSayori('1','q',15)
		cw('bl',"Sayori gets out of her seat and goes behind Natsuki, then wraps her arms around her.")
	elseif cl == 1273 then
		updateNatsuki('1','2c')
		cw('n',"Ah-- Jeez...")
	elseif cl == 1274 then
		cw('n',"I get it, I get it.")
	elseif cl == 1275 then
		cw('bl',"Cookie still in hand, Natsuki reaches up to nudge Sayori off of her.")
	elseif cl == 1276 then
		updateSayori('1','m')
		cw('s',"...Om.")
	elseif cl == 1277 then
		cw('bl',"Sayori suddenly leans down and takes a bite out of Natsuki's cookie.")
	elseif cl == 1278 then
		updateNatsuki('1','p')
		cw('n',"H-Hey!!")
	elseif cl == 1279 then
		cw('n',"Did you seriously just do that?!")
	elseif cl == 1280 then
		updateSayori('1','q')
		cw('s',"Uhuhuhu!")
	elseif cl == 1281 then
		hideSayori()
		cw('bl',"Mouth full, Sayori trots away to safety.")
	elseif cl == 1282 then
		updateYuri('1','c')
		cw('bl',"Yuri and I laugh as well.")
	elseif cl == 1283 then
		updateYuri('1','a')
		updateNatsuki('1','w')
		cw('n',"Jeez! You're such a kid sometimes!")
	elseif cl == 1284 then
		updateNatsuki('1','h')
		cw('n',"Monika! Can you tell Sayori--")
	elseif cl == 1285 then
		updateNatsuki('1','c')
		cw('n',"--Eh?")
	elseif cl == 1286 then
		cw('bl',"Natsuki glances around.")
	elseif cl == 1287 then
		cw('bl',"Monika isn't in the clubroom.")
	elseif cl == 1288 then
		updateNatsuki('4','q')
		cw('n',"Ugh...")
	elseif cl == 1289 then
		cw('n',"Where's Monika, anyway?")
	elseif cl == 1290 then
		updateYuri('2','f')
		cw('y',"Good question...")
	elseif cl == 1291 then
		cw('y',"Have any of you heard anything about her being late today?")
	elseif cl == 1292 then
		updateSayori('1','b',80)
		cw('s',"Not me...")
	elseif cl == 1293 then
		cw('mc',"Yeah, I haven't either.")
	elseif cl == 1294 then
		updateYuri('2','l')
		cw('y',"Hm...")
	elseif cl == 1295 then
		cw('y',"That's a bit unusual.")
	elseif cl == 1296 then
		updateSayori('1','g')
		cw('s',"I hope she's okay...")
	elseif cl == 1297 then
		updateNatsuki('3','k')
		cw('n',"Of course she's okay.")
	elseif cl == 1298 then
		cw('n',"She probably just had something to do today.")
	elseif cl == 1299 then
		updateNatsuki('3','t')
		cw('n',"She's pretty popular, after all...")
	elseif cl == 1300 then
		updateSayori('4','m')
		cw('s',"Eh?")
	elseif cl == 1301 then
		cw('s',"You don't think she...")
	elseif cl == 1302 then
		cw('s',"She has a...!")
	elseif cl == 1303 then
		updateYuri('1','a')
		cw('y',"Ahaha. I wouldn't be surprised.")
	elseif cl == 1304 then
		cw('y',"She's probably more desirable than all of us combined.")
	elseif cl == 1305 then
		updateSayori('1','r')
		cw('s',"Ehehe, that's true...")
	elseif cl == 1306 then
		updateNatsuki('1','p')
		cw('n',"Excuse me?!")
	elseif cl == 1307 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		cw('bl',"Suddenly, the door swings open.")
	elseif cl == 1308 then
		updateMonika('1','g',-60)
		cw('m',"Sorry! I'm super sorry!")
	elseif cl == 1309 then
		cw('mc',"Ah, there you are...")
	elseif cl == 1310 then
		cw('m',"I didn't mean to be late...")
	elseif cl == 1311 then
		cw('m',"I hope you guys weren't worried or anything!")
	elseif cl == 1312 then
		updateSayori('4','n',30)
		cw('s',"Eh??")
	elseif cl == 1313 then
		cw('s',"Monika chose the club over her boyfriend after all!")
	elseif cl == 1314 then
		cw('s',"You're so strong-willed!")
	elseif cl == 1315 then
		updateMonika('1','l')
		cw('m',"B-Boyfriend...?")
	elseif cl == 1316 then
		cw('m',"What on Earth are you talking about?")
	elseif cl == 1317 then
		cw('bl',"Monika quizzically glances at me.")
	elseif cl == 1318 then
		cw('mc',"Ah, never mind that...")
	elseif cl == 1319 then
		cw('mc',"What held you up, anyway?")
	elseif cl == 1320 then
		updateMonika('1','e')
		cw('m',"Ah...")
	elseif cl == 1321 then
		cw('m',"Well, my last period today was study hall.")
	elseif cl == 1322 then
		cw('m',"To be honest, I kind of just lost track of time...")
	elseif cl == 1323 then
		cw('m',"Ahaha...")
	elseif cl == 1324 then
		updateNatsuki('2','c',120)
		cw('n',"That makes no sense, though.")
	elseif cl == 1325 then
		cw('n',"You would have heard the bell ring, at least.")
	elseif cl == 1326 then
		updateMonika('1','m')
		cw('m',"I must not have heard it, since I was practicing piano...")
	elseif cl == 1327 then
		updateYuri('1','e',220)
		cw('y',"Piano...?")
	elseif cl == 1328 then
		cw('y',"I wasn't aware you played music as well, Monika.")
	elseif cl == 1329 then
		updateMonika('1','l')
		cw('m',"Ah, I don't, really...!")
	elseif cl == 1330 then
		cw('m',"I kind of just started recently.")
	elseif cl == 1331 then
		updateMonika('1','m')
		cw('m',"I've always wanted to learn piano.")
	elseif cl == 1332 then
		updateSayori('4','x')
		cw('s',"That's so cool!")
	elseif cl == 1333 then
		cw('s',"You should play something for us, Monika!")
	elseif cl == 1334 then
		cw('m',"That's...")
	elseif cl == 1335 then
		cw('bl',"Monika looks at me.")
	elseif cl == 1336 then
		updateMonika('1','a')
		cw('m',"Maybe once I get a little bit better, I will.")
	elseif cl == 1337 then
		updateSayori('4','q')
		cw('s',"Yay~!")
	elseif cl == 1338 then
		cw('mc',"That sounds cool.")
	elseif cl == 1339 then
		cw('mc',"I'd also look forward to it.")
	elseif cl == 1340 then
		updateMonika('1','b')
		cw('m',"Is that so?")
	elseif cl == 1341 then
		cw('m',"In that case...")
	elseif cl == 1342 then
		cw('m',"I won't let you down, "..player..".")
	elseif cl == 1343 then
		hideNatsuki()
		hideSayori()
		hideYuri()
		updateMonika('5a','',80)
		cw('bl',"Monika smiles sweetly.")
	elseif cl == 1344 then
		cw('mc',"Ah...")
	elseif cl == 1345 then
		cw('mc',"I didn't mean any pressure or anything like that!")
	elseif cl == 1346 then
		updateMonika('1','a')
		cw('m',"Ahaha, don't worry.")
	elseif cl == 1347 then
		cw('m',"I've been practicing a whole lot recently.")
	elseif cl == 1348 then
		cw('m',"And I'd really love the chance to share once I'm ready.")
	elseif cl == 1349 then
		cw('mc',"I see...")
	elseif cl == 1350 then
		cw('mc',"In that case, best of luck.")
	elseif cl == 1351 then
		updateMonika('1','j')
		cw('m',"Thanks~!")
	elseif cl == 1352 then
		updateMonika('1','a')
		cw('m',"So, I didn't miss anything, did I?")
	elseif cl == 1353 then
		cw('mc',"Not...not really.")
	elseif cl == 1354 then
		hideMonika()
		cw('bl',"I choose to leave out Sayori's mischievous escapade.")
	elseif cl == 1355 then
		cw('bl',"I'm sure Natsuki will end up complaining to her, anyway.")
	elseif cl == 1356 then
		cw('bl',"It looks like everyone has already settled down.")
	elseif cl == 1357 then
		cw('bl',"Sayori somehow already finished her entire cookie.")
	elseif cl == 1358 then
		cw('bl',"Yuri is back to her book, and Natsuki disappeared into the closet.")
	end
	
	if cl == 1638 then
		bgUpdate('club')
		audioUpdate('3')
		updateMonika('5a','',80)
		cw('m',"Okay, everyone!")
	elseif cl == 1639 then
		cw('m',"We're all done reading each other's poems, right?")
	elseif cl == 1640 then
		cw('m',"I have something extra planned today, so if everyone could come sit at the front of the room...")
	elseif cl == 1641 then
		updateNatsuki('3','c',-40)
		cw('n',"Is this about the festival?")
	elseif cl == 1642 then
		updateMonika('1','j')
		cw('m',"Well, sort of~")
	elseif cl == 1643 then
		updateMonika('1','a')
		updateNatsuki('1','m')
		cw('n',"Ugh. Do we really have to do something for the festival?")
	elseif cl == 1644 then
		cw('n',"It's not like we can put together anything good in just a few days.")
	elseif cl == 1645 then
		cw('n',"We'll just end up embarrassing ourselves instead of getting any new members.")
	elseif cl == 1646 then
		updateYuri('2','g',200)
		cw('y',"That's a concern of mine as well.")
	elseif cl == 1647 then
		cw('y',"I don't really do well with last-minute preparations...")
	elseif cl == 1648 then
		updateMonika('1','b')
		cw('m',"Don't worry so much!")
	elseif cl == 1649 then
		cw('m',"We're going to keep it simple, okay?")
	elseif cl == 1650 then
		updateMonika('1','a')
		cw('m',"We won't need much more than a few decorations.")
	elseif cl == 1651 then
		cw('m',"Sayori has been working on posters, and I've designed some pamphlets we can give out during the event.")
	elseif cl == 1652 then
		updateNatsuki('3','c')
		cw('n',"Okay, that's great and all...")
	elseif cl == 1653 then
		cw('n',"But that doesn't tell us what we're actually going to be doing for the event.")
	elseif cl == 1654 then
		updateMonika('1','d')
		cw('n',"Ah, sorry! I thought you heard about it already.")
	elseif cl == 1655 then
		updateMonika('1','b')
		cw('m',"We're going to be performing!")
	elseif cl == 1656 then
		updateNatsuki('3','h')
		cw('n',"Performing?")
	elseif cl == 1657 then
		updateYuri('3','n')
		cw('y',"P...")
	elseif cl == 1658 then
		updateYuri('3','o')
		cw('y',"Um, Monika...")
	elseif cl == 1659 then
		updateMonika('1','k')
		cw('m',"Yeah! We're going to be having a poetry performance.")
	elseif cl == 1660 then
		updateMonika('1','b')
		cw('m',"Each of us are going to choose a poem to recite during the event.")
	elseif cl == 1661 then
		cw('m',"But the cool part is, we're also going to let anyone else come up and recite poems too!")
	elseif cl == 1662 then
		updateMonika('1','a')
		cw('m',"Sayori's putting it on all the posters in case anyone wants to prepare ahead of time.")
	elseif cl == 1663 then
		updateYuri('3','o',220)
		updateMonika('1','a',120)
		updateNatsuki('3','h',30)
		updateSayori('4','q',-60)
		cw('s',"Ehehe~")
	elseif cl == 1664 then
		cw('bl',"Sayori, who's been coloring a poster, holds it up for us to see.")
	elseif cl == 1665 then
		updateNatsuki('4','w')
		cw('n',"Are you kidding me, Monika?")
	elseif cl == 1666 then
		cw('n',"You didn't...you didn't already start putting those posters up, did you?")
	elseif cl == 1667 then
		updateMonika('1','d')
		cw('m',"Eh? Well, I did...")
	elseif cl == 1668 then
		cw('m',"Do you really think it's that bad of an idea...?")
	elseif cl == 1669 then
		updateNatsuki('1','s')
		cw('n',"Well, no.")
	elseif cl == 1670 then
		cw('n',"It's not a bad idea.")
	elseif cl == 1671 then
		updateNatsuki('1','w')
		cw('n',"But I didn't sign up for this, you know!")
	elseif cl == 1672 then
		updateNatsuki('1','x')
		cw('n',"There is no way I'm going to be performing in front of a group of people like that!")
	elseif cl == 1673 then
		updateYuri('3','r')
		cw('y',"I...I agree with Natsuki!")
	elseif cl == 1674 then
		updateYuri('3','w')
		cw('y',"I could never...in my life...do something like that...")
	elseif cl == 1675 then
		cw('bl',"Imagining it, Yuri shakes her head in fear.")
	elseif cl == 1676 then
		updateSayori('1','g')
		cw('s',"Guys...")
	elseif cl == 1677 then
		updateMonika('1','g')
		cw('m',"No, Sayori...")
	elseif cl == 1678 then
		cw('m',"I understand where they're coming from.")
	elseif cl == 1679 then
		cw('m',"Remember that Natsuki and Yuri have never shared their poems with anyone until just a couple days ago...")
	elseif cl == 1680 then
		cw('m',"It's a lot to ask for them to recite their poems out loud to a whole room full of people.")
	elseif cl == 1681 then
		updateMonika('1','r')
		cw('m',"I guess I kind of overlooked that.")
	elseif cl == 1682 then
		cw('m',"So, I'm sorry.")
	elseif cl == 1683 then
		updateNatsuki('5','g')
		cw('n',"...")
	elseif cl == 1684 then
		updateMonika('1','i')
		cw('m',"...But!")
	elseif cl == 1685 then
		cw('m',"I still think we should give it our best!")
	elseif cl == 1686 then
		updateMonika('1','d')
		cw('m',"We're the only ones responsible for the fate of this club.")
	elseif cl == 1687 then
		cw('m',"If we start the event and each put on a good performance...")
	elseif cl == 1688 then
		updateMonika('3','a')
		cw('m',"Then it will inspire others to do the same!")
	elseif cl == 1689 then
		cw('m',"And the more people who perform, the better we'll be able to show everyone what literature is all about!")
	elseif cl == 1690 then
		updateSayori('1','r')
		cw('s',"Yeah!")
	elseif cl == 1691 then
		updateSayori('1','x')
		cw('s',"It's about expressing your feelings...")
	elseif cl == 1692 then
		cw('s',"Being intimate with yourself...")
	elseif cl == 1693 then
		cw('s',"Finding new horizons...")
	elseif cl == 1694 then
		cw('s',"And having fun!")
	elseif cl == 1695 then
		updateMonika('4','b')
		cw('m',"That's right!")
	elseif cl == 1696 then
		cw('m',"And it's those reasons that we're all in this club today.")
	elseif cl == 1697 then
		updateMonika('4','e')
		cw('m',"Don't you want to share that with others?")
	elseif cl == 1698 then
		cw('m',"To inspire them to find the same feelings that brought you here in the first place?")
	elseif cl == 1699 then
		updateMonika('1','e')
		cw('m',"I know you do.")
	elseif cl == 1700 then
		cw('m',"I know we all do.")
	elseif cl == 1701 then
		updateMonika('1','b')
		cw('m',"And if all it takes is standing in front of the room for two minutes and reciting a poem...")
	elseif cl == 1702 then
		cw('m',"...Then I know you can do it!")
	elseif cl == 1703 then
		updateMonika('1','a')
		updateNatsuki('5','s')
		cw('n',"...")
	elseif cl == 1704 then
		updateYuri('4','b2')
		cw('y',"...")
	elseif cl == 1705 then
		updateSayori('1','g')
		cw('bl',"Natsuki and Yuri remain silent.")
	elseif cl == 1706 then
		cw('bl',"Sayori looks worried.")
	elseif cl == 1707 then
		cw('bl',"I guess that leaves me no choice...")
	elseif cl == 1708 then
		cw('mc',"I agree...")
	elseif cl == 1709 then
		cw('mc',"I don't think it's too much to ask.")
	elseif cl == 1710 then
		cw('mc',"I think that Sayori and Monika have been trying really hard to get new members.")
	elseif cl == 1711 then
		cw('mc',"The least we can do is help them out a little bit.")
	elseif cl == 1712 then
		updateNatsuki('5','h')
		cw('n',"Well...maybe, but...")
	elseif cl == 1713 then
		cw('n',"...")
	elseif cl == 1714 then
		cw('bl',"It looks like Natsuki doesn't have any arguments left.")
	elseif cl == 1715 then
		cw('n',"Uu...")
	elseif cl == 1716 then
		updateNatsuki('1','q')
		cw('n',"...Okay, fine!")
	elseif cl == 1717 then
		cw('n',"I guess I'll just have to get it over with.")
	elseif cl == 1718 then
		updateSayori('4','r')
		cw('s',"Alright~!")
	elseif cl == 1719 then
		updateSayori('4','a')
		updateMonika('1','e')
		cw('m',"Phew...")
	elseif cl == 1720 then
		cw('m',"Thanks, Natsuki.")
	elseif cl == 1721 then
		cw('m',"What about you, Yuri...?")
	elseif cl == 1722 then
		cw('y',"...")
	elseif cl == 1723 then
		cw('bl',"Yuri dejectedly glances around at everyone else's expectant faces.")
	elseif cl == 1724 then
		cw('y',"Sigh...")
	elseif cl == 1725 then
		cw('y',"I-I guess I don't really have a choice...")
	elseif cl == 1726 then
		updateSayori('4','r')
		cw('s',"Ahaha! That's everyone!")
	elseif cl == 1727 then
		cw('s',"You're the best, Yuri~")
	elseif cl == 1728 then
		updateSayori('4','a')
		cw('y',"This club is seriously going to be the death of me...")
	elseif cl == 1729 then
		updateMonika('1','l')
		cw('m',"Oh gosh...")
	elseif cl == 1730 then
		updateMonika('1','n')
		cw('m',"You'll be fine, Yuri.")
	elseif cl == 1731 then
		cw('m',"But anyway...")
	elseif cl == 1732 then
		updateMonika('1','b')
		cw('m',"Let's move onto the main event!")
	elseif cl == 1733 then
		cw('m',"I want each of you to choose a poem of yours.")
	elseif cl == 1734 then
		cw('m',"We're going to practice reciting them in front of each other.")
	elseif cl == 1735 then
		updateMonika('1','a')
		updateNatsuki('1','p')
		cw('n',"N-N-No way!!")
	elseif cl == 1736 then
		updateYuri('3','n')
		cw('y',"Monika...!")
	elseif cl == 1737 then
		cw('y',"This is too sudden...!")
	elseif cl == 1738 then
		updateMonika('2','a')
		cw('m',"Well, if you can't recite your poem in front of the club, how do you expect to do it in front of strangers?")
	elseif cl == 1739 then
		updateYuri('4','c2')
		updateNatsuki('1','o')
		cw('y',"Oh no...")
	elseif cl == 1740 then
		updateMonika('2','a')
		cw('m',"Don't worry.")
	elseif cl == 1741 then
		cw('m',"I'll start off to help everyone feel a little more comfortable.")
	elseif cl == 1742 then
		updateSayori('1','r')
		cw('s',"Can I go next??")
	elseif cl == 1743 then
		cw('m',"Ahaha. Of course.")
	elseif cl == 1744 then
		updateMonika('2','d')
		cw('m',"Now, let's see...")
	elseif cl == 1745 then
		cw('m',"Monika flips through her notebook to the specific poem she has in mind for herself.")
	elseif cl == 1746 then
		cw('m',"She then stands behind the podium.")
	elseif cl == 1747 then
		hideSayori()
		hideNatsuki()
		hideYuri()
		updateMonika('1','a',80)
		cw('m',"The title of this poem is The Way They Fly.")
	elseif cl == 1748 then
		updateMonika('1','r')
		cw('m',"Ahem...")
	elseif cl == 1749 then
		updateMonika('1','a')
		cw('bl',"Monika begins reciting her poem.")
	elseif cl == 1750 then
		cw('bl',"Her clear, confident voice fills the room.")
	elseif cl == 1751 then
		cw('bl',"More than that, her inflection is pristine.")
	elseif cl == 1752 then
		cw('bl',"She knows exactly how to apply emotion behind each line she recites, bringing the words to life.")
	elseif cl == 1753 then
		cw('bl',"Is this something she's done before, or is she simply a natural?")
	elseif cl == 1754 then
		cw('bl',"I glance around me.")
	elseif cl == 1755 then
		cw('bl',"Everyone has their eyes on Monika.")
	elseif cl == 1756 then
		cw('bl',"Sayori looks amazed.")
	elseif cl == 1757 then
		cw('bl',"Yuri has an intense expression on her face that I don't understand.")
	elseif cl == 1758 then
		updateMonika('1','j')
		cw('bl',"Finally, Monika finishes the recitation.")
	elseif cl == 1759 then
		cw('bl',"The four of us applaud.")
	elseif cl == 1760 then
		cw('bl',"Monika takes a breath and smiles.")
	elseif cl == 1761 then
		updateMonika('1','a')
		updateSayori('4','m',200)
		cw('s',"That...that was so good, Monika!")
	elseif cl == 1762 then
		updateMonika('1','j')
		cw('m',"Ahaha, thank you very much.")
	elseif cl == 1763 then
		updateMonika('1','a')
		cw('m',"I was just hoping to set a good example.")
	elseif cl == 1764 then
		cw('m',"Are you ready to go next, Sayori?")
	elseif cl == 1765 then
		updateYuri('2','r',-40)
		cw('y',"I...I'll go next!!")
	elseif cl == 1766 then
		updateSayori('1','n')
		cw('s',"Uwah! Yuri's fired up all of a sudden!")
	elseif cl == 1767 then
		cw('bl',"Yuri clutches a sheet of paper between her hands and stands up.")
	elseif cl == 1768 then
		cw('bl',"Keeping her head down, she walks quickly over to the podium.")
	elseif cl == 1769 then
		hideMonika()
		hideSayori()
		updateYuri('2','v',80)
		cw('y',"This poem is called--!")
	elseif cl == 1770 then
		cw('bl',"Yuri anxiously glances at each of us.")
	elseif cl == 1771 then
		cw('s',"You can do it, Yuri...")
	elseif cl == 1772 then
		cw('y',"It...It's called...Afterimage of a Crimson Eye.")
	elseif cl == 1773 then
		cw('bl',"Yuri's voice shakes as she starts reading the poem.")
	elseif cl == 1774 then
		cw('bl',"Just a moment ago, she practically refused to do this.")
	elseif cl == 1775 then
		cw('bl',"Why is she suddenly putting in so much effort?")
	elseif cl == 1776 then
		updateYuri('2','l')
		cw('bl',"As Yuri gets past the first couple of lines, her voice changes.")
	elseif cl == 1777 then
		cw('bl',"It's almost like what happens when Yuri gets absorbed into her books.")
	elseif cl == 1778 then
		cw('bl',"Her quivering words transform into the sharp syllables of a fierce and confident woman.")
	elseif cl == 1779 then
		cw('bl',"The poem is full of twists and turns in its structure that she enunciates with perfect timing.")
	elseif cl == 1780 then
		cw('bl',"This must be a rare glimpse into the whirling fire Yuri keeps concealed inside her head...!")
	elseif cl == 1781 then
		updateYuri('2','t')
		cw('bl',"Suddenly, she's finished.")
	elseif cl == 1782 then
		cw('bl',"Everyone is stunned.")
	elseif cl == 1783 then
		cw('bl',"Yuri snaps back into reality and glances around her, as if she bewildered even herself.")
	elseif cl == 1784 then
		updateYuri('3','o')
		cw('y',"I...")
	elseif cl == 1785 then
		cw('bl',"...It's up to me to save this situation.")
	elseif cl == 1786 then
		cw('bl',"I'm the first to start applauding.")
	elseif cl == 1787 then
		cw('bl',"Everyone joins me afterward, and we give Yuri the recognition she deserves.")
	elseif cl == 1788 then
		cw('bl',"It's not that we didn't want to applaud for her.")
	elseif cl == 1789 then
		cw('bl',"But we were caught so off-guard that we must have forgotten.")
	elseif cl == 1790 then
		cw('bl',"As we applaud, Yuri holds the poem to her chest and rushes back into her seat.")
	elseif cl == 1791 then
		hideYuri()
		updateMonika('1','a',80)
		cw('m',"Yuri, that was really good.")
	elseif cl == 1792 then
		cw('m',"Thank you for sharing.")
	elseif cl == 1793 then
		cw('y',"...")
	elseif cl == 1794 then
		cw('bl',"Looks like Yuri is down for the count...")
	elseif cl == 1795 then
		updateSayori('1','q',-40)
		cw('s',"Okaay~")
	elseif cl == 1796 then
		cw('s',"I guess I'm next, then!")
	elseif cl == 1797 then
		cw('bl',"Sayori hops out of her chair and cheerfully walks to the podium.")
	elseif cl == 1798 then
		hideMonika()
		updateSayori('1','x',80)
		cw('s',"This one's called...My Meadow.")
	elseif cl == 1799 then
		cw('s',"Ah...")
	elseif cl == 1800 then
		updateSayori('1','s')
		cw('s',"...Ahaha!")
	elseif cl == 1801 then
		updateSayori('4','s')
		cw('s',"Sorry, I giggled...")
	elseif cl == 1802 then
		updateSayori('4','q')
		cw('s',"Ehehe...")
	elseif cl == 1803 then
		cw('mc',"Sayori...")
	elseif cl == 1804 then
		updateSayori('1','l')
		cw('s',"It's a lot harder than I thought!")
	elseif cl == 1805 then
		cw('s',"How did you guys do it so easily?")
	elseif cl == 1806 then
		updateMonika('3','a',-40)
		updateSayori('1','b')
		cw('m',"Ah...")
	elseif cl == 1807 then
		cw('m',"Try not to think of it like you're reciting to other people.")
	elseif cl == 1808 then
		cw('m',"Imagine you're reciting it to yourself, like in front of a mirror, or in your own head.")
	elseif cl == 1809 then
		cw('m',"It's your poem, so it'll come out the best that way.")
	elseif cl == 1810 then
		updateSayori('1','i')
		cw('s',"I see, I see...")
	elseif cl == 1811 then
		cw('s',"Okay, then...")
	elseif cl == 1812 then
		hideMonika()
		updateSayori('1','c')
		cw('bl',"Sayori begins her poem.")
	elseif cl == 1813 then
		cw('bl',"Somehow, it feels like her soft voice was made as a perfect match.")
	elseif cl == 1814 then
		cw('bl',"The poem isn't aimlessly cheery like Sayori is.")
	elseif cl == 1815 then
		cw('bl',"It's serene and bittersweet.")
	elseif cl == 1816 then
		cw('bl',"If I were to read this on paper, I probably wouldn't think much of it...")
	elseif cl == 1817 then
		cw('bl',"But hearing it come from Sayori's voice almost gives it a whole new meaning.")
	elseif cl == 1818 then
		cw('bl',"Maybe this is what Sayori meant when she said she likes my poems.")
	elseif cl == 1819 then
		cw('bl',"It's like I get to reach more deeply into someone I thought I knew through and through.")
	elseif cl == 1820 then
		cw('bl',"Sayori finishes, and we applaud.")
	elseif cl == 1821 then
		updateSayori('3','q')
		cw('s',"I did it~!")
	elseif cl == 1822 then
		cw('mc',"Good job, Sayori.")
	elseif cl == 1823 then
		cw('s',"Ehehe, even "..player.." liked it.")
	elseif cl == 1824 then
		cw('s',"I guess that's a good sign~")
	elseif cl == 1825 then
		cw('mc',"What does that even mean...?")
	elseif cl == 1826 then
		updateMonika('2','b',-40)
		cw('m',"It came out nicely, Sayori.")
	elseif cl == 1827 then
		cw('m',"The atmosphere of the poem fits you really nicely.")
	elseif cl == 1828 then
		cw('m',"But it might be that other poems wouldn't work quite as well with that kind of delivery...")
	elseif cl == 1829 then
		updateSayori('1','g')
		cw('s',"Eh? I don't really understand...")
	elseif cl == 1830 then
		updateMonika('1','a')
		cw('m',"In other words, I've seen poems of yours where that sort of gentle delivery wouldn't work as well.")
	elseif cl == 1831 then
		cw('m',"They might need a little more force behind them, depending on what you're reading...")
	elseif cl == 1832 then
		updateSayori('1','x')
		cw('s',"Oh, I know what you mean!")
	elseif cl == 1833 then
		cw('s',"That's...well, I've been practicing that kind of thing...")
	elseif cl == 1834 then
		updateSayori('5a')
		cw('s',"It's just embarrassing to do in front of everyone...")
	elseif cl == 1835 then
		cw('s',"Ehehe...")
	elseif cl == 1836 then
		updateMonika('4','a')
		cw('m',"Then next time, I'm going to make you pick a poem that challenges you a little more.")
	elseif cl == 1837 then
		cw('m',"We don't have much time before the festival, you know?")
	elseif cl == 1838 then
		updateSayori('1','q')
		cw('s',"Okaaaaay.")
	elseif cl == 1839 then
		updateMonika('1','a')
		cw('m',"Now, who's next...?")
	elseif cl == 1840 then
		cw('m',"Natsuki?")
	elseif cl == 1841 then
		updateNatsuki('5','s',200)
		cw('n',"Hmph.")
	elseif cl == 1842 then
		cw('n',"Don't make me go before "..player..".")
	elseif cl == 1843 then
		cw('n',"It's not like I can compare to you guys, anyway...")
	elseif cl == 1844 then
		cw('n',"Might as well let "..player.." lower everyone's standards a little before I have to do it.")
	elseif cl == 1845 then
		updateSayori('1','g')
		cw('s',"Natsuki...")
	elseif cl == 1846 then
		cw('mc',"It's fine, it's fine.")
	elseif cl == 1847 then
		cw('mc',"I might as well get it over with.")
	elseif cl == 1848 then
		cw('mc',"But it's not like I have much of a selection of what to read...")
	elseif cl == 1849 then
		cw('mc',"I'll just have to go with what I wrote for today.")
	elseif cl == 1850 then
		cw('bl',"I stand up and step in front of the podium.")
	elseif cl == 1851 then
		updateNatsuki('2','c',220)
		updateSayori('1','a',120)
		updateMonika('1','a',30)
		updateYuri('1','e',-60)
		cw('bl',"Everyone has their eyes on me, making me feel terribly awkward.")
	elseif cl == 1852 then
		cw('bl',"I recite my poem.")
	elseif cl == 1853 then
		cw('bl',"Since I'm not exactly confident in my own writing, it's hard to put energy into it.")
	elseif cl == 1854 then
		cw('bl',"Despite that, once I finish, I receive applause anyway.")
	elseif cl == 1855 then
		cw('mc',"Sorry I'm not really as good as everyone else...")
	elseif cl == 1856 then
		updateMonika('1','a')
		cw('m',"Don't worry about it so much.")
	elseif cl == 1857 then
		cw('m',"I think it's less about your abilities, and more about your lack of confidence in your writing.")
	elseif cl == 1858 then
		cw('m',"That's something that'll improve over time, though.")
	elseif cl == 1859 then
		cw('mc',"Yeah... Maybe.")
	elseif cl == 1860 then
		updateMonika('1','j')
		cw('m',"Alright, then!")
	elseif cl == 1861 then
		updateMonika('1','a')
		cw('m',"That just leaves you, Natsuki.")
	elseif cl == 1862 then
		updateNatsuki('2','g')
		cw('n',"Yeah, yeah.")
	elseif cl == 1863 then
		cw('n',"I'm going.")
	elseif cl == 1864 then
		cw('bl',"Natsuki begrudgingly gets out of her seat and makes her way to the podium.")
	elseif cl == 1865 then
		hideMonika()
		hideSayori()
		hideYuri()
		updateNatsuki('2','c',80)
		cw('n',"The poem is called...")
	elseif cl == 1866 then
		updateNatsuki('2','q')
		cw('n',"It's called...")
	elseif cl == 1867 then
		updateNatsuki('1','x')
		cw('n',"W-Why are you all looking at me?!")
	elseif cl == 1868 then
		cw('m',"Because you're presenting...")
	elseif cl == 1869 then
		updateNatsuki('2','x')
		cw('n',"Hmph...")
	elseif cl == 1870 then
		updateNatsuki('2','h')
		cw('n',"Anyway...the poem is called Jump.")
	elseif cl == 1871 then
		cw('bl',"Natsuki takes a breath.")
	elseif cl == 1872 then
		updateNatsuki('2','c')
		cw('bl',"Once she starts reciting the poem, her sour attitude disappears a little.")
	elseif cl == 1873 then
		cw('bl',"While she's still a little unenthused, her poem has a rhythm and rhyme to it.")
	elseif cl == 1874 then
		cw('bl',"It's Natsuki's trademark style, and it works surprisingly well when spoken aloud.")
	elseif cl == 1875 then
		cw('bl',"The words feel like they bounce up and down, as if giving life to the poem.")
	elseif cl == 1876 then
		updateNatsuki('2','s')
		cw('bl',"Natsuki finishes, and everyone applauds.")
	elseif cl == 1877 then
		cw('bl',"She huffs back to her seat.")
	elseif cl == 1878 then
		updateMonika('2','a',-40)
		cw('m',"That wasn't so bad, was it?")
	elseif cl == 1879 then
		updateNatsuki('5','w')
		cw('n',"Easy for you to say...")
	elseif cl == 1880 then
		cw('n',"You'd better not make me do that again.")
	elseif cl == 1881 then
		updateMonika('1','d')
		cw('m',"Ah, well...")
	elseif cl == 1882 then
		cw('m',"Do you at least feel prepared enough to recite a poem in front of other people?")
	elseif cl == 1883 then
		updateNatsuki('2','c')
		cw('n',"I mean, doing it in front of other people will be way easier!")
	elseif cl == 1884 then
		cw('n',"I can put on whatever face I want for other people.")
	elseif cl == 1885 then
		updateNatsuki('2','q')
		cw('n',"But when it's just my friends...")
	elseif cl == 1886 then
		cw('n',"It's just...embarrassing.")
	elseif cl == 1887 then
		updateSayori('1','b',200)
		cw('s',"That's a surprise, Natsuki...")
	elseif cl == 1888 then
		cw('s',"I think it would be the other way around for me.")
	elseif cl == 1889 then
		cw('n',"Well, that's just how it is, so...")
	elseif cl == 1890 then
		updateMonika('1','a')
		cw('m',"Well, I guess in that case...")
	elseif cl == 1891 then
		cw('m',"You won't have much to worry about for the festival.")
	elseif cl == 1892 then
		updateNatsuki('2','b')
		cw('m',"That said, I want to thank everyone for coming through.")
	elseif cl == 1893 then
		cw('m',"It might be hard, but I hope that you all have an idea of what it's like now.")
	elseif cl == 1894 then
		updateMonika('4','b')
		cw('m',"Make sure you pick a poem and get enough practice before the festival, okay?")
	elseif cl == 1895 then
		cw('m',"I'll be making pamphlets, so let me know ahead of time what you'll be reciting.")
	elseif cl == 1896 then
		cw('mc',"Jeez...")
	elseif cl == 1897 then
		cw('mc',"I should probably find some other poem to recite instead.")
	elseif cl == 1898 then
		updateMonika('1','j')
		cw('m',"That's fine, too!")
	elseif cl == 1899 then
		updateMonika('1','a')
		cw('m',"It doesn't have to be your own.")
	elseif cl == 1900 then
		cw('m',"I'm already pleasantly surprised that you're putting in all this effort for the club.")
	elseif cl == 1901 then
		updateMonika('5a')
		cw('m',"It makes me really happy.")
	elseif cl == 1902 then
		cw('mc',"Ah... Yeah, no problem...")
	elseif cl == 1903 then
		audioUpdate('8')
		hideSayori()
		hideNatsuki()
		updateMonika('4','b',80)
		cw('m',"Okay, everyone!")
	elseif cl == 1904 then
		cw('m',"I think that's about it for today.")
	elseif cl == 1905 then
		cw('m',"I know the festival is coming up, but let's try to write poems for tomorrow, as well.")
	elseif cl == 1906 then
		cw('m',"It's been working out really nicely so far, so I'd like to continue that.")
	elseif cl == 1907 then
		cw('m',"As for the festival, we'll finish planning tomorrow, and then we'll have the weekend to prepare.")
	elseif cl == 1908 then
		cw('m',"Monday's the big day!")
	elseif cl == 1909 then
		updateSayori('4','r',-40)
		cw('s',"I can't wait~!")
	elseif cl == 1910 then
		updateYuri('4','b2',200)
		cw('y',"I can do this... I can do this...")
	elseif cl == 1911 then
		cw('mc',"Alright--")
	elseif cl == 1912 then
		hideSayori()
		hideMonika()
		hideYuri()
		cw('bl',"I stand up.")
	elseif cl == 1913 then
		cw('bl',"There's no way I'll be able to find the same enthusiasm as Sayori and Monika, but I'll do my best to get through it.")
	elseif cl == 1914 then
		cw('bl',"If it's for the sake of the club...")
	elseif cl == 1915 then
		cw('bl',"And impressing Monika...")
	elseif cl == 1916 then
		cw('bl',"Then I'll have to do my best.")
	elseif cl == 1917 then
		updateSayori('1','a',80)
		cw('mc',"Ready to go, Sayori?")
	elseif cl == 1918 then
		updateSayori('1','x')
		cw('s',"Yep!")
	elseif cl == 1919 then
		updateNatsuki('2','d',200)
		cw('n',"Look at you two, always going home together like that.")
	elseif cl == 1920 then
		updateMonika('5a','',-40)
		cw('m',"It's kind of adorable, isn't it?")
	elseif cl == 1921 then
		updateSayori('1','q')
		cw('s',"Ehehe~")
	elseif cl == 1922 then
		cw('mc',"Jeez, guys...")
	elseif cl == 1923 then
		cw('mc',"Don't make such a big deal out of it.")
		updateNatsuki('2','d',220)
		updateSayori('1','q',120)
		updateMonika('5a','',30)
		updateYuri('1','u',-60)
		cw('y',"It must be a little nice, though...")
	elseif cl == 1924 then
		cw('mc',"Well...")
	elseif cl == 1925 then
		cw('mc',"Ah...")
	elseif cl == 1926 then
		cw('bl',"How am I supposed to respond to that?")
	elseif cl == 1927 then
		updateSayori('1','d')
		cw('s',"It's okay, "..player..", you don't have to say it.")
	elseif cl == 1928 then
		cw('mc',"...Whatever. Let's go already.")
	elseif cl == 1929 then
		bgUpdate('residential')
		hideAll()
		cw('bl',"I walk home with Sayori once more.")
	elseif cl == 1930 then
		cw('bl',"Even though it's only been a few days, a lot of things have already changed.")
	elseif cl == 1931 then
		cw('bl',"But today, Sayori is being a little quieter than usual on the way home.")
	elseif cl == 1932 then
		cw('mc',"Hey, Sayori...")
	elseif cl == 1933 then
		updateSayori('1','k',80)
		cw('s',"...")
	elseif cl == 1934 then
		updateSayori('1','n')
		cw('s',"...Sorry! I was spacing out!")
	elseif cl == 1935 then
		cw('mc',"Ah, no wonder...")
	elseif cl == 1936 then
		updateSayori('1','d')
		cw('s',"Um...")
	elseif cl == 1937 then
		cw('s',"I was...thinking about something from earlier.")
	elseif cl == 1938 then
		cw('s',"I like how we get to...")
	elseif cl == 1939 then
		updateSayori('1','y')
		cw('s',"I-I mean...")
	elseif cl == 1940 then
		cw('bl',"Sayori fumbles with her words.")
	elseif cl == 1941 then
		updateSayori('1','a')
		cw('s',"So...let's just say that one day, "..ch2_winner.." asked to walk home with you...")
	elseif cl == 1942 then
		cw('mc',"Huh?!")
	elseif cl == 1943 then
		cw('s',"What would you do?")
	elseif cl == 1944 then
		cw('mc',"What kind of question is that...?")
	elseif cl == 1945 then
		cw('mc',"You're kind of putting me on the spot here...")
	elseif cl == 1946 then
		updateSayori('1','y')
		cw('s',"Ehehe...")
	elseif cl == 1947 then
		menutext = "Well..."
		choices = {"I would walk home with "..ch2_winner..".","I would still walk home with Sayori."}
		choice_enable()
	elseif cl >= 1948 and cl < 1973 then
		if choicepick == "I would walk home with "..ch2_winner.."." or choicepick == 'n' or choicepick == 'y' then
			if ch2_winner == tr.names[2] or choicepick == 'n' then
				choicepick = 'n'
				ch2_end_natsuki()
			else
				choicepick = 'y'
				ch2_end_yuri()
			end
		elseif choicepick == "I would still walk home with Sayori." or choicepick == 's' then
			choicepick = 's'
			ch2_end_sayori()
		end
		choices = {''}
		
	elseif cl == 1973 then
		cw('bl',"Then again, the festival is only a few days away...")
	elseif cl == 1974 then
		cw('bl',"Who knows what will happen in that time?")
	elseif cl == 1975 then
		fadeOut(1)
	elseif cl >= 1976 then
		cl = 1975
	end
end

function ch2_end_sayori()
	if cl == 1948 then
		cw('mc',"Sayori...")
	elseif cl == 1949 then
		cw('s',"You really think I would ditch you for "..ch2_winner.."?")
	elseif cl == 1950 then
		updateSayori('1','e')
		cw('s',"Eh?!")
	elseif cl == 1951 then
		cw('s',"B-But...")
	elseif cl == 1952 then
		if ch2_winner == tr.names[2] then
			cw('s',"She's so cute and fun to be around...")
		else
			cw('s',"She's so beautiful and smart...")
		end
	elseif cl == 1953 then
		cw('mc',"Jeez...")
	elseif cl == 1954 then
		cw('mc',"I already see her in the club every day.")
	elseif cl == 1955 then
		cw('mc',"Besides, you always seem to really like going home together...")
	elseif cl == 1956 then
		cw('mc',"I wouldn't just ruin that for you.")
	elseif cl == 1957 then
		updateSayori('1','y')
		cw('s',"You're so silly, "..player.."...")
	elseif cl == 1958 then
		cw('s',"You think about me too much sometimes.")
	elseif cl == 1959 then
		cw('s',ch2_winner.." would deserve it if she wanted it, so...")
	elseif cl == 1960 then
		cw('mc',"Sayori, I've already made up my mind.")
	elseif cl == 1961 then
		cw('mc',"I really can't figure you out sometimes...")
	elseif cl == 1962 then
		cw('s',"Sorry...")
	elseif cl == 1963 then
		cw('mc',"Besides, what's the point in speculating something that's never going to happen?")
	elseif cl == 1964 then
		updateSayori('1','k')
		cw('s',"Hm...")
	elseif cl == 1965 then
		hideSayori()
		cw('bl',"The conversation trails off.")
	elseif cl == 1966 then
		cw('bl',"It's kind of a weird thing for Sayori to care so much about...")
	elseif cl == 1967 then
		cw('bl',"But I want to respect her and keep her happy, too.")
	elseif cl == 1968 then
		scriptJump(1973)
	end
end

function ch2_end_natsuki()
	if cl == 1948 then
		cw('mc',"Walking home with Natsuki, huh...")
	elseif cl == 1949 then
		cw('bl',"Why does the thought of that make my heart pound...?")
	elseif cl == 1950 then
		cw('mc',"I mean...")
	elseif cl == 1951 then
		cw('mc',"I think I would be afraid of what she'd do to me if I turned her down...")
	elseif cl == 1952 then
		updateSayori('1','x')
		cw('s',"Isn't she so cute and fun to be around?")
	elseif cl >= 1953 then
		ch2_end_shared()
	end
end

function ch2_end_yuri()
	if cl == 1948 then
		cw('mc',"Walking home with Yuri, huh...")
	elseif cl == 1949 then
		cw('bl',"Why does the thought of that make my heart pound...?")
	elseif cl == 1950 then
		cw('mc',"I mean...")
	elseif cl == 1951 then
		cw('mc',"Given how hard it is for her to socialize, I would feel awful turning her down, so...")
	elseif cl == 1952 then
		updateSayori('1','x')
		cw('s',"Isn't she so beautiful and smart?")
	elseif cl >= 1953 then
		ch2_end_shared()
	end
end

function ch2_end_shared()
	if cl == 1953 then
		cw('mc',"That has nothing to do with what I just said!")
	elseif cl == 1954 then
		updateSayori('4','s')
		cw('s',"Ahaha! You admitted it!")
	elseif cl == 1955 then
		cw('mc',"Jeez...")
	elseif cl == 1956 then
		cw('mc',"There's not even any point in speculating something that's never going to happen.")
	elseif cl == 1957 then
		updateSayori('1','d')
		cw('s',"Well, maybe...")
	elseif cl == 1958 then
		cw('s',"But I just like to think about it.")
	elseif cl == 1959 then
		updateSayori('1','y')
		cw('s',"It's not long before you won't need me anymore, you know?")
	elseif cl == 1960 then
		cw('mc',"Need you...?")
	elseif cl == 1961 then
		cw('mc',"Sayori...")
	elseif cl == 1962 then
		cw('mc',"I can't figure out how you're seeing things in your head right now.")
	elseif cl == 1963 then
		cw('s',"Sorry...")
	elseif cl == 1964 then
		cw('mc',"Everyone is different...")
	elseif cl == 1965 then
		cw('mc',"Nobody in the club is a replacement for you.")
	elseif cl == 1966 then
		updateSayori('1','k')
		cw('s',"Hmm...")
	elseif cl == 1967 then
		cw('s',"If you say so...")
	elseif cl == 1968 then
		hideSayori()
		cw('bl',"The conversation trails off, and I'm left feeling awkward.")
	elseif cl == 1969 then
		cw('bl',"But it was kind of her fault for trapping me with such a weird question...")
	elseif cl == 1970 then
		cw('bl',"I can't just lie to her.")
	elseif cl == 1971 then
		cw('bl',"But if there's something that makes her happy, I would hate to take that away from her.")
	elseif cl == 1972 then
		cw('bl',"That's why I said there's no point in speculating.")
	end
end
