discordia = require('discordia')
Dice = require('lovedice')
client = discordia.Client()
angrydie = Dice.newDie(3)
burndie = Dice.newDie(2)
kibdie = Dice.newDie(3)
alicedie = Dice.newDie(42)
jacklyndie = Dice.newDie(18)
andredie = Dice.newDie(20)
creepydie = Dice.newDie(2000)

client:on('ready', function()
	-- client.user is the path for your bot
	print('Logged in as '.. client.user.username)
	client:setGame("Type !help for commands!")
end)

client:on('memberJoin', function(member)
	if member.guild.id == '431822072604524549' then
		client:getGuild('431822072604524549'):getChannel('431823074694922241'):send(member.mentionString .. " has joined the server! Everyone say hi!")
	end
	if member.guild.id == '365258026774560779' then
		client:getGuild('365258026774560779'):getChannel('365258026774560781'):send(member.mentionString .. " has joined the server! Everyone say hi!")
	end
end)

client:on('messageCreate', function(message)

	text = message.content
	text = string.lower(text)
	member = message.author
	rolecheck = string.sub(text, 1, 5)
	derolecheck = string.sub(text, 1, 7)
	
	if message.author.id == "432030962537332736" then --Check if Rolebot is the message sender
		return true
		
	else
	
		if message.guild == nil then
			
			if text == "!commands " or text == "!help " or text == "!commands" or text == "!help" or text == "!command" or text == "!command " then
				message.author:send("Command list:\n!help, of course. **This is the only command that works in PM** \n\nReactions:\n!wtf                                   ''Wtf is even happening??''\n!begone                             begone, thot\n!dab                                   Jupet daberoni\n!burn                                  Random ''Jupet takes over'' picture\n!mad                                  Spit out a random 100/200%Mad picture\n!kib                                     One of two Kib pictures\n!eyy or !ey                         Eyyyyyy\n!ohfuck or !oh fuck          What have we done\n!aa(aaaa)                          aaaaaaaaaaaa\n\nRandom Faces!:\n!alice              Spits out a random Alice picture!\n!andre            Spits out a random Andre picture!\n!jacklyn          Spits out a random Jacklyn picture!\n\nRoles:\n!role <role>               Add role to yourself\n!derole <role>           Remove role from yourself\n!derole colors            Remove all colors from yourself\n!derole pronouns      Remove all pronouns from yourself\n!derole all                   (Get rid of all Color and Pronoun roles)")
			end
			
		--do nothing if it's not a guild channel
		else
	
		sender = message.channel
		
		if message.guild.id == '431822072604524549' then --check for FloraVerse Ashes
		
		SheHer = client:getGuild('431822072604524549'):getRole('431854739878182932')
		HeHim = client:getGuild('431822072604524549'):getRole('431854742646423560')
		TheyThem = client:getGuild('431822072604524549'):getRole('431854744810684447')
		BBQPotato = client:getGuild('431822072604524549'):getRole('431854810157809674')
		ItIts = client:getGuild('431822072604524549'):getRole('432059145538109440')
		Any = client:getGuild('431822072604524549'):getRole('432039584914866177')
		
		memerole = client:getGuild('431822072604524549'):getRole('431823441734139905')
		
		Color1 = client:getGuild('431822072604524549'):getRole('432212877357613066') --brown ish
		Color2 = client:getGuild('431822072604524549'):getRole('432212979615006736') --brown/yellow
		Color3 = client:getGuild('431822072604524549'):getRole('432213034061004800') --red
		Color4 = client:getGuild('431822072604524549'):getRole('432213140000866309') --purple
		Color5 = client:getGuild('431822072604524549'):getRole('432213202387075072') --blue
		Color6 = client:getGuild('431822072604524549'):getRole('432218090743398411') --green
		
		if text == "!wtf" then
			message.channel:send(message.author.mentionString .. "  https://cdn.discordapp.com/attachments/432263018135420931/432264050122948628/beleth_whatshappening.png")
			return true
		end
		
		if text == "!commands " or text == "!help " or text == "!commands" or text == "!help" or text == "!command" or text == "!command " then
				message.author:send("Command list:\n!help, of course. **This is the only command that works in PM** \n\nReactions:\n!wtf                                   ''Wtf is even happening??''\n!begone                             begone, thot\n!dab                                   Jupet daberoni\n!burn                                  Random ''Jupet takes over'' picture\n!mad                                  Spit out a random 100/200%Mad picture\n!kib                                     One of two Kib pictures\n!eyy or !ey                         Eyyyyyy\n!ohfuck or !oh fuck          What have we done\n!aa(aaaa)                          aaaaaaaaaaaa\n\nRandom Faces!:\n!alice              Spits out a random Alice picture!\n!andre            Spits out a random Andre picture!\n!jacklyn          Spits out a random Jacklyn picture!\n\nRoles:\n!role <role>               Add role to yourself\n!derole <role>           Remove role from yourself\n!derole colors            Remove all colors from yourself\n!derole pronouns      Remove all pronouns from yourself\n!derole all                   (Get rid of all Color and Pronoun roles)")
			end
		
		if text == "!begone" then
			message.channel:send(message.author.mentionString .. " https://cdn.discordapp.com/attachments/432033207274307584/432621721095241738/deepfry.jpg")
			return true
		end
		
		if text == "!dab" then
			message.channel:send(message.author.mentionString .. "https://cdn.discordapp.com/attachments/432026933082193920/433009769352003595/jupdab.jpg")
			return true
		end
		
		if text == "!burn" then
			
			roll = burndie:roll()
			
			if roll == 1 then
				message.channel:send(message.author.mentionString .. " https://cdn.discordapp.com/attachments/432011427335634944/433073731062071307/jupet_rises.jpg")
				return true
			elseif roll == 2 then
				message.channel:send(message.author.mentionString .. " https://media.discordapp.net/attachments/432027638761259018/433265493240053760/jupetrise.gif")
				return true
			end
			
		end
		
		if text == "!mad" then
		
			roll = angrydie:roll()
			
			if roll == 1 then
				message.channel:send(message.author.mentionString .. " https://cdn.discordapp.com/attachments/432011427335634944/433069126974570507/beleth_MAD.jpg")
				return true
			elseif roll == 2 then
				message.channel:send(message.author.mentionString .. " https://cdn.discordapp.com/attachments/432011427335634944/433069454319157248/34.jpg")
				return true
			elseif roll == 3 then
				message.channel:send(message.author.mentionString .. "  https://cdn.discordapp.com/attachments/432011427335634944/433070098115330048/cayenne_MAD.jpg")
				return true
			end
			
		end
		
		if text == "!alice" or text == "!alice " or text == "!andre" or text == "!andre " or text == "!jacklyn" or text == "!jacklyn " then
		
			if text == "!alice" or text == "!alice" then alicefaces()
			elseif text == "!andre" or text == "!andre " then andrefaces()
			elseif text == "!jacklyn" or text == "!jackelyn" or text == "!jacklyn " or text == "!jackelyn " then jacklynfaces()
			end
			
			if face == nil then
				print("Error: user rolled " .. roll)
				message.channel:send("Something went wrong! @RylenWolf#1302 , help! " .. facename)
				return true
			else
				facestring = ("Random " .. facename .. ", for " .. message.author.mentionString .. "!\n" .. face)
				rarecreepy()
				if facestring == nil then
					facename = "facestring error"
					message.channel:send("Something went wrong! @RylenWolf#1302 , help! " .. facename)
					return true
				else
					message.channel:send(facestring)
					roll = 0
					face = nil
					facestring = nil
				end
			end
				
			
		end
		
		if text == "!kib" then
			roll = kibdie:roll()
			
			if roll == 1 then
				message.channel:send(message.author.mentionString .. "https://cdn.discordapp.com/attachments/431822989923844108/435207631456567306/NeenonVogueCoverv1.png")
			elseif roll == 2 then
				message.channel:send(message.author.mentionString .. "https://cdn.discordapp.com/attachments/431822989923844108/435205675904401418/neenonrtest.gif")
			elseif roll == 3 then
				message.channel:send(message.author.mentionString .. "https://cdn.discordapp.com/attachments/431825066016112669/435988313850118144/draw_me_like_one_of_your_french_kibs.png
")
			end
			return true
		end
		
		if text == "!eyy" or text == "!ey" then
			message.channel:send(message.author.mentionString .. " https://cdn.discordapp.com/attachments/432027638761259018/433108906009427988/unknown.png")
			return true
		end
		
		if text == "!ohfuck" or text == "!oh fuck" then
			message.channel:send(message.author.mentionString .. " https://cdn.discordapp.com/attachments/431825020927475712/435487740843524097/mr5.gif")
			return true
		end
		
		if text == "!aaa" or  text == "!aaaa" or text == "!aaaaa" or text == "!aa" or text == "!aaaaaa" or text == "!a"  then
			message.channel:send(message.author.mentionString .. " https://imgur.com/a/a8QzN")
			return true
		end
		
		if Color1 == nil then else 
			if string.find(text, "!role", 1, true) and string.find(text, "c1", 1, true) and rolecheck == "!role" then
				message.member:removeRole(Color1) message.member:removeRole(Color2) message.member:removeRole(Color3) message.member:removeRole(Color4) message.member:removeRole(Color5) message.member:removeRole(Color6) --remove previous colours
				message:addReaction('👍')
				message.member:addRole(Color1)
				return true end end
			
		if Color2 == nil then else 
				if string.find(text, "!role", 1, true) and  string.find(text, "c2", 1, true) and rolecheck == "!role"  then
					message.member:removeRole(Color1) message.member:removeRole(Color2) message.member:removeRole(Color3) message.member:removeRole(Color4) message.member:removeRole(Color5) message.member:removeRole(Color6) --remove previous colours
					message:addReaction('👍')
					message.member:addRole(Color2)
					return true end end
				
		if Color3 == nil then else 
				if string.find(text, "!role", 1, true) and  string.find(text, "c3", 1, true) and rolecheck == "!role"  then 
					message.member:removeRole(Color1) message.member:removeRole(Color2) message.member:removeRole(Color3) message.member:removeRole(Color4) message.member:removeRole(Color5) message.member:removeRole(Color6) --remove previous colours
					message:addReaction('👍')
					message.member:addRole(Color3) 
					return true end end
				
		if Color4 == nil then else 
			if string.find(text, "!role", 1, true) and string.find(text, "c4", 1, true) and rolecheck == "!role"  then 
					message.member:removeRole(Color1) message.member:removeRole(Color2) message.member:removeRole(Color3) message.member:removeRole(Color4) message.member:removeRole(Color5) message.member:removeRole(Color6) --remove previous colours
					message:addReaction('👍')
					message.member:addRole(Color4) 
					return true end end
			
		if Color5 == nil then else 
			if string.find(text, "!role", 1, true) and string.find(text, "c5", 1, true) and rolecheck == "!role"  then 
					message.member:removeRole(Color1) message.member:removeRole(Color2) message.member:removeRole(Color3) message.member:removeRole(Color4) message.member:removeRole(Color5) message.member:removeRole(Color6) --remove previous colours
					message:addReaction('👍')
					message.member:addRole(Color5) 
					return true end end
			
		if Color6 == nil then else 
			if string.find(text, "!role", 1, true) and string.find(text, "c6", 1, true) and rolecheck == "!role"  then 
					message.member:removeRole(Color1) message.member:removeRole(Color2) message.member:removeRole(Color3) message.member:removeRole(Color4) message.member:removeRole(Color5) message.member:removeRole(Color6) --remove previous colours
					message:addReaction('👍')
					message.member:addRole(Color6) 
					return true end end
				
		if SheHer == nil then else 
				if string.find(text, "!role", 1, true) and (string.find(text, "she", 1, true) or string.find(text, "her", 1, true)) and rolecheck == "!role"  then 
				message:addReaction('👍')
				message.member:addRole(SheHer) 
				return true end end
				
		if TheyThem == nil then else 
				if string.find(text, "!role", 1, true) and (string.find(text, "they", 1, true) or string.find(text, "them", 1, true)) and rolecheck == "!role"  then 
				message:addReaction('👍')
				message.member:addRole(TheyThem) 
				return true end end
				
		if BBQPotato == nil then else 
				if string.find(text, "!role", 1, true) and (string.find(text, "bbq", 1, true) or string.find(text, "potato", 1, true)) and rolecheck == "!role"  then 
				message:addReaction('👍')
				message.member:addRole(BBQPotato) 
				return true end end
				
		if ItIts == nil then else 
				if string.find(text, "!role", 1, true) and (string.find(text, "it", 1, true) or string.find(text, "its", 1, true) or string.find(text, "it's", 1, true)) and rolecheck == "!role"  then 
				message:addReaction('👍')
				message.member:addRole(ItIts) 
				return true end end
				
		if Any == nil then else
				if string.find(text, "!role", 1, true) and  string.find(text, "any", 1, true) and rolecheck == "!role"  then 
				message:addReaction('👍')
				message.member:addRole(Any) 
				return true end end
				
		if memerole == nil then else
				if string.find(text, "!role", 1, true) and  (string.find(text, "meme", 1, true) or string.find(text, "MÃƒÂ¨mÃƒÂ©", 1, true)) and rolecheck == "!role"  then 
				message:addReaction('👍')
				message.member:addRole(memerole) 
				return true end end
				
		if HeHim == nil then else 
				if string.find(text, "!role", 1, true) and  (string.find(text, "he", 1, true) or string.find(text, "him", 1, true)) and rolecheck == "!role"  then
				
					if string.find(text, "she", 1, true) or string.find(text, "her", 1, true) or string.find(text, "they", 1, true) or string.find(text, "them", 1, true) then
						--do nothing because the letters "he" can be found in they and her
					else 
					message:addReaction('👍')
					message.member:addRole(HeHim) 
					return true end --end the check for she, her, they, them
					
					end --end the check for he or him
					
					end --end the nil check logic
				
		if Color1 == nil then else 
			if string.find(text, "!derole", 1, true) and string.find(text, "c1", 1, true) and derolecheck == "!derole"  then 
			message:addReaction('👍')
			message.member:removeRole(Color1) 
			return true end end
			
		if Color2 == nil then else 
				if string.find(text, "!derole", 1, true) and  string.find(text, "c2", 1, true) and derolecheck == "!derole"  then 
				message:addReaction('👍')
				message.member:removeRole(Color2) 
				return true end end
				
		if Color3 == nil then else 
				if string.find(text, "!derole", 1, true) and  string.find(text, "c3", 1, true) and derolecheck == "!derole"  then 
				message:addReaction('👍')
				message.member:removeRole(Color3) 
				return true end end
				
		if Color4 == nil then else 
			if string.find(text, "!derole", 1, true) and string.find(text, "c4", 1, true) and derolecheck == "!derole"  then 
			message:addReaction('👍')
			message.member:removeRole(Color4) 
			return true end end
			
		if Color5 == nil then else 
			if string.find(text, "!derole", 1, true) and string.find(text, "c5", 1, true) and derolecheck == "!derole"  then 
			message:addReaction('👍')
			message.member:removeRole(Color5) 
			return true end end
			
		if Color6 == nil then else 
			if string.find(text, "!derole", 1, true) and string.find(text, "c6", 1, true) and derolecheck == "!derole"  then 
			message:addReaction('👍')
			message.member:removeRole(Color6) 
			return true end end
				
		if SheHer == nil then else 
				if string.find(text, "!derole", 1, true) and  (string.find(text, "she", 1, true) or string.find(text, "her", 1, true)) and derolecheck == "!derole"   then 
				message:addReaction('👍')
				message.member:removeRole(SheHer) 
				return true end end
				
		if TheyThem == nil then else 
				if string.find(text, "!derole", 1, true) and  (string.find(text, "they", 1, true) or string.find(text, "them", 1, true)) and derolecheck == "!derole"   then 
				message:addReaction('👍')
				message.member:removeRole(TheyThem) 
				return true end end
				
		if BBQPotato == nil then else 
				if string.find(text, "!derole", 1, true) and  (string.find(text, "bbq", 1, true) or string.find(text, "potato", 1, true)) and derolecheck == "!derole"   then 
				message:addReaction('👍')
				message.member:removeRole(BBQPotato) 
				return true end end
				
		if ItIts == nil then else 
				if string.find(text, "!derole", 1, true) and  (string.find(text, "it", 1, true) or string.find(text, "its", 1, true) or string.find(text, "it's", 1, true)) and derolecheck == "!derole"   then 
				message:addReaction('👍')
				message.member:removeRole(ItIts) 
				return true end end
				
		if Any == nil then else
				if string.find(text, "!derole", 1, true) and  string.find(text, "any", 1, true) and derolecheck == "!derole"   then 
				message:addReaction('👍')
				message.member:removeRole(Any) 
				return true end end
				
		if memerole == nil then else
				if string.find(text, "!derole", 1, true) and  (string.find(text, "meme", 1, true) or string.find(text, "MÃƒÂ¨mÃƒÂ©", 1, true)) and derolecheck == "!derole"   then 
				message:addReaction('👍')
				message.member:removeRole(memerole) 
				return true end end
				
		if HeHim == nil then else 
				if string.find(text, "!derole", 1, true) and  (string.find(text, "he", 1, true) or string.find(text, "him", 1, true)) and derolecheck == "!derole"   then
				
					if string.find(text, "she", 1, true) or string.find(text, "her", 1, true) or string.find(text, "they", 1, true) or string.find(text, "them", 1, true) then
						--do nothing because the letters "he" can be found in they and her
					else 
					message:addReaction('👍')
					message.member:removeRole(HeHim) 
					return true end --end the check for she, her, they, them
					
					end --end the check for he or him
					
					end --end the nil check logic
					
		if text == "!derole colors" or text == "!derole colours" then
			if Color1 == nil then else 
				message.member:removeRole(Color1) end
			
			if Color2 == nil then else 
				message.member:removeRole(Color2) end
				
			if Color3 == nil then else 
				message.member:removeRole(Color3) end
				
			if Color4 == nil then else 
				message.member:removeRole(Color4) end
			
			if Color5 == nil then else 
				message.member:removeRole(Color5) end
			
			if Color6 == nil then else 
				message.member:removeRole(Color6) end
			message:addReaction('👍')
			return true 
		end
			
		if text == "!derole pronouns" then
			if SheHer == nil then else 
				message.member:removeRole(SheHer) end
				
			if TheyThem == nil then else 
				message.member:removeRole(TheyThem) end
				
			if BBQPotato == nil then else 
				message.member:removeRole(BBQPotato) end
				
			if ItIts == nil then else 
				message.member:removeRole(ItIts) end
				
			if Any == nil then else
				message.member:removeRole(Any) end
				
			if HeHim == nil then else 
				message.member:removeRole(HeHim) end
			message:addReaction('👍')
			return true 
		end
		
		if text == "!derole all" then
			if Color1 == nil then else 
				message.member:removeRole(Color1) end
			
			if Color2 == nil then else 
				message.member:removeRole(Color2) end
				
			if Color3 == nil then else 
				message.member:removeRole(Color3) end
				
			if Color4 == nil then else 
				message.member:removeRole(Color4) end
			
			if Color5 == nil then else 
				message.member:removeRole(Color5) end
			
			if Color6 == nil then else 
				message.member:removeRole(Color6) end
			
			if SheHer == nil then else 
				message.member:removeRole(SheHer) end
				
			if TheyThem == nil then else 
				message.member:removeRole(TheyThem) end
				
			if BBQPotato == nil then else 
				message.member:removeRole(BBQPotato) end
				
			if ItIts == nil then else 
				message.member:removeRole(ItIts) end
				
			if Any == nil then else
				message.member:removeRole(Any) end
				
			if HeHim == nil then else 
				message.member:removeRole(HeHim) end
			message:addReaction('👍')
			return true 
		end
				
		end --Should end the check for FloraVerse Ashes
		
		if text == "!help" then
			message.author:send("Hey, here's a handy list for help with my commands!~\n\n!role <rolename> to add a role to yourself.\n!derole <rolename> to remove a role from yourself!\nRoles I can assist with are: He/Him, She/Her, They/Them, It/Its, Any, BBQPotato, and any of the six colours (c1-c6).\n\nExamples: \n!role he for HeHim\n!derole they for They/Them.\n\nThis should work with any upper/lowercase, and even if you misspell some of it. For example, !role he will add the He/Him role.\n\nWant to start fresh? I can !derole colors, !derole pronouns, and !derole all for both!\n\n I might not get it every time, but I'll do my best!~")
			return true 
		end
		
		
		if message.guild.id == '365258026774560779' then --Check for Rylen's Bot Server
		
		testrole = client:getGuild('365258026774560779'):getRole('432040181349220363')
		
		
		if testrole == nil then else 
			if string.find(text, "!role", 1, true) and string.find(text, "test", 1, true) then
			message.member:addRole(testrole) end
			
			if string.find(text, "!derole", 1, true) and string.find(text, "test", 1, true) then
			message.member:removeRole(testrole) end
		end
		
		end --Should End the check for Rylen's Bot Server
	
	end --Should end the message.guild==nil check
	
	end --Should end RoleBot Check
	
end)

function alicefaces()
	roll = alicedie:roll()
	facename = "Alice"
	
	if roll == 1 then face = " https://cdn.discordapp.com/attachments/426886605903626255/426887010901295115/unknown-58.png"
	elseif roll == 2 then face = " https://cdn.discordapp.com/attachments/426886605903626255/426887011505537034/unknown-35.png"
	elseif roll == 3 then face = " https://cdn.discordapp.com/attachments/426886605903626255/426887011505537035/JPEG_20180323_161057.jpg"
	elseif roll == 4 then face = " https://cdn.discordapp.com/attachments/426886605903626255/426887011505537036/THATS_WHAT_YOU_THINK.PNG"
	elseif roll == 5 then face = " https://cdn.discordapp.com/attachments/426886605903626255/426887012197466122/unknown-48.png"
	elseif roll == 6 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426887012197466124/unknown-52.png'
	elseif roll == 7 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426887012704845834/unknown-45.png'
	elseif roll == 8 then face = ' https://i.imgur.com/sXWmbOJ.png'
	elseif roll == 9 then face = ' https://i.imgur.com/Hi8SzHz.png'
	elseif roll == 10 then face = ' https://i.imgur.com/ju8XtF9.png'
	elseif roll == 11 then face = ' https://i.imgur.com/6F3wpS4.png'
	elseif roll == 12 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426895947226939394/Capture_2018-03-23-18-11-55.png'
	elseif roll == 13 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426897326813216779/Capture_2018-03-23-18-16-53.png'
	elseif roll == 14 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426897327354150913/Capture_2018-03-23-18-17-18.png'
	elseif roll == 15 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426897327354150914/Capture_2018-03-23-18-16-35.png'
	elseif roll == 16 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426898465285734400/Capture_2018-03-23-18-18-40.png'
	elseif roll == 17 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426898477096632320/Capture_2018-03-23-18-19-35.png'
	elseif roll == 18 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/426941396054835210/Capture_2018-03-23-21-09-21.png'
	elseif roll == 19 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427122669993984000/alice.png'
	elseif roll == 20 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427123267040706571/unknown.png'
	elseif roll == 21 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427123932605186048/unknown.png'
	elseif roll == 22 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427124088801067018/unknown.png'
	elseif roll == 23 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427144012286263297/Capture_2018-03-23-21-00-26.png'
	elseif roll == 24 then face = ' https://imgur.com/a/GC8AA'
	elseif roll == 25 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427322581259911168/unknown.png'
	elseif roll == 26 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427323785457172491/unknown.png'
	elseif roll == 27 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427324307816054784/unknown.png'
	elseif roll == 28 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427324821911633921/unknown.png'
	elseif roll == 29 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427324945497063444/unknown.png'
	elseif roll == 30 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427325540437852160/unknown.png'
	elseif roll == 31 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427326319521693697/unknown.png'
	elseif roll == 32 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427326378250207242/unknown.png'
	elseif roll == 33 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427326550304882718/unknown.png'
	elseif roll == 34 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427326853825560576/unknown.png'
	elseif roll == 35 then face = ' https://i.imgur.com/ICeYyFh.png'
	elseif roll == 36 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/427939532810354719/tumblr_nvlagdyMDP1qh7zxeo1_500.png'
	elseif roll == 37 then face = ' https://i.imgur.com/k0unsnw.png'
	elseif roll == 38 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/428015386852589569/bun_thief_by_purplekecleon-d717ej4.png'
	elseif roll == 39 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/428071059485360128/DLmZMGbVwAA5iEK.png'
	elseif roll == 40 then face = ' https://pbs.twimg.com/media/DZRUM9JUMAA9TWj.jpg:large'
	elseif roll == 41 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/431042380049940481/unknown.png'
	elseif roll == 42 then face = ' https://cdn.discordapp.com/attachments/426886605903626255/433425197756841994/image.jpg'
	end
	
end

function jacklynfaces()
	roll = jacklyndie:roll()
	facename = "Jacklyn"
	
	if roll == 1 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426896430586920962/jackie.png'
	elseif roll == 2 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426900538286669834/Captura.PNG'
	elseif roll == 3 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426900740297195520/Angery.PNG'
	elseif roll == 4 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426900955934621708/Bork.PNG'
	elseif roll == 5 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426901477865422878/Displeased.PNG'
	elseif roll == 6 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426902146210988052/OhNo.PNG'
	elseif roll == 7 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426937168468901889/images23.jpg'
	elseif roll == 8 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426938744973688833/Capture_2018-03-23-20-59-45.png'
	elseif roll == 9 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426938758227689472/Capture_2018-03-23-20-59-17.png'
	elseif roll == 10 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/426938771116785684/Capture_2018-03-23-21-01-15.png'
	elseif roll == 11 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/427322698809606145/unknown.png'
	elseif roll == 12 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/427322832729407490/unknown.png'
	elseif roll == 13 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/427323620877139979/unknown.png'
	elseif roll == 14 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/427325272614895637/unknown.png'
	elseif roll == 15 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/427327174761119744/unknown.png'
	elseif roll == 16 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/427327436557123595/unknown.png'
	elseif roll == 17 then face = ' https://cdn.discordapp.com/attachments/426886575578808322/429864357849989120/unknown.png'
	elseif roll == 18 then face = ' https://i.imgur.com/vR6Xv2w.png'
	end
	
end

function andrefaces()
	roll = andredie:roll()
	facename = "Andre"
	
	if roll == 1 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426886428396355596/Andre.PNG'
	elseif roll == 2 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426892224907706368/Screen_Shot_2018-03-18_at_12.22.41_PM.png'
	elseif roll == 3 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426897283502702593/andre.png'
	elseif roll == 4 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426897376566050816/default_IMG_3917.PNG'
	elseif roll == 5 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426897402616610836/andre.jpg'
	elseif roll == 6 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426901583889170432/unknown.png'
	elseif roll == 7 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426901671478820871/Andreputoamo.PNG'
	elseif roll == 8 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426901711471247371/andre18.png'
	elseif roll == 9 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426901773543014401/Andre16.png'
	elseif roll == 10 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426901796431200291/AndrePissed.png'
	elseif roll == 11 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426901928174419978/andre20.png'
	elseif roll == 12 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426903300525522974/unknown.png'
	elseif roll == 13 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426906387977863169/why.png'
	elseif roll == 14 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426906677699149829/andre.PNG'
	elseif roll == 15 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/426918822583336970/PicsArt_08-20-05.14.57.jpg'
	elseif roll == 16 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/428623211534614538/unknown.png'
	elseif roll == 17 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/428664339633799169/unknown.png'
	elseif roll == 18 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/428665086459248650/unknown.png'
	elseif roll == 19 then face = ' https://cdn.discordapp.com/attachments/426885938157715464/430036676602101761/Screen_Shot_2018-03-31_at_11.26.53_PM.png'
	elseif roll == 20 then face = ' https://cdn.discordapp.com/attachments/435558949945737216/435573549848068097/unknown.png'
	end
end

function rarecreepy()

	roll = creepydie:roll()
	facename = "Rare Creepy"
	
	if roll == 1 then face = ' https://cdn.discordapp.com/attachments/431825066016112669/435364968909766657/Paranoia_paranoia_everyones_going_to_AAAAAAAAAAAAAA.jpg'
	facestring = ("Easter Egg! RARE CREEPY FOR " .. message.author.mentionString .. "! " .. face)
	elseif roll == 2 then face = ' https://cdn.discordapp.com/attachments/435558949945737216/435578406277480459/y_e_s.gif'
	end
	
end

client:run('Bot <Bot token numbers go here but not because hacks n stuff')
