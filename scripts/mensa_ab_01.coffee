module.exports = (robot) ->

    robot.hear /(.*) essen/, (res) ->
        day = res.match[1]
        
        days = [
            Monday = [
                "Gericht: Test1",
                "Preis: 1,5",
            ],
            Tuesday = [
                "Gericht: Test2",
                "Preis: 2,5",
            ],
            Wednesday = [
                "Gericht: Test3",
                "Preis:  3,5",
            ],
            Thursday = [
                "Gericht: Test4",
                "Preis:  4,5",
            ],
            Friday = [
                "Gericht: Test5",
                "Preis:  5,5",
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
                res.send days[i]
            else if chksm is 4
                res.send "Für wann möchtest du den Mensaplan haben?"
            else
                chksm = chksm + 1
            
         