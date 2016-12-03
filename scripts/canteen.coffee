module.exports = (robot) ->

    robot.hear /(.*) zu essen/, (res) ->
        day = res.match[1]
        
        days = [
            Monday = [
                "Gericht: Vegetarische Pizza",
                "Preis: 1,70€",
            ],
            Tuesday = [
                "Gericht: Hänchen Cordon Bleu",
                "Preis: 1,70€",
            ],
            Wednesday = [
                "Gericht: Veg. Schnitzel",
                "Preis:  1,70€",
            ],
            Thursday = [
                "Gericht: Gurkensalat",
                "Preis:  0,5€",
            ],
            Friday = [
                "Gericht: Petersilienkartoffeln",
                "Preis:  0,45€",
            ],
        ] 

        dayscheck = [
            "Montag",
            "Dienstag",
            "Mittwoch",
            "Donnerstag",
            "Freitag"
        ]

        for i in [0...5]
            if dayscheck[i].search(day) isnt -1
                res.send days[i][0] + ' ' + days[i][1]
            else if chksm is 4
                res.send "Für wann möchtest du den Mensaplan haben?"
            else
                chksm = chksm + 1
        
            
         