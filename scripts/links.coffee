# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.hear /ich möchte (.*) lernen/, (res) ->
    trigger = res.match[1]

    if trigger is "Java"
      res.send "https://www.codecademy.com/learn/learn-java \n http://openbook.rheinwerk-verlag.de/javainsel/"

    if trigger is "Python"
      res.send "https://www.codecademy.com/learn/python"

  robot.hear /loncapa|Loncapa/, (res) ->
    res.send "Hier ist die Anmeldeseite: \n https://loncpa.hs-hannover.de/adm/roles"

  robot.hear /moodle|Moodle/, (res) ->
    res.send "Hier ist die Anmeldeseite: \n https://modle.hs-hannover.de/"
  
  robot.hear /Druckguthaben|Druckkonto|druckguthaben|druckkonto/, (res) ->
    res.send "Hier kannst Du Dein Guthaben abrufen: \n https://student.it.hs-hannover.de/ "

  robot.hear /Prüfungsergebnisse|prüfungsergebnisse/,(res) ->
    res.send "Hier kannst Du Deine Ergbenisse einsehen: \n https://qispos.fh-hannover.de/qisserver/rds?state=user&type=0 "
  
  robot.hear /Mail|mail/,(res) ->
    res.send "Hier der Zugriff auf dein Mail-Konto: \n https://maill.hs-hannover.de/owa/#path=/mail"

  robot.hear /Bafög(.*)/,(res) ->
    trigger2 = res.match[1]
    
    if trigger2 is "formulare"|"formularen"
      res.send "Hier erhälst Du Infos zu den Formularen: \n https://www.bafoeg.de/de/alle-antragsformulare-432.php \n http://www.bafoeeg-rechner.de/FAQ/antragstellung.php"
    if trigger2 is "rechner"
      res.send "Hier kannst du Dein Bafög berechnen lassen \n https://www.bafoeg-rechner.de/Rechner/"

  robot.hear /studentenwerk|Studentenwerk/,(res) ->
    res.send "Hier die Website des Studentenwerk Hannover: \n http://www.studentenwrk-hannover.de/"

  robot.hear /mathe|Mathe/, (res) ->  
    res.send "Essentials: \n https://www.wolframalpha.com/ \n http://www.matebibel.de \n http://www.frustfrei-lernen.de/matematik/nachhilfe-in-matematik.html"
  
  robot.hear /asta|Asta/, (res) ->
    res.send "Hier die Website der Asta: \n https://www.astra-hsh.de"

  robot.hear /Fakultät (.*)/,(res) ->
    trigger3 = res.match[1]

    if trigger3 is "1"
     res.send "Hier die Website der Fakultät 1: \n http://f1.hs-hannover.de/startseite/index.html"
    if trigger3 is "2"
     res.send "Hier die Website der Fakultät 2: \n http://f2.hs-hannover.de/startseite/index.html"
    if trigger3 is "3"
     res.send "Hier die Website der Fakultät 3: \n http://f3.hs-hannover.de/startseite/index.html"
    if trigger3 is "4"
     res.send "Hier die Website der Fakultät 4: \n http://f4.hs-hannover.de/startseite/index.html"
  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
