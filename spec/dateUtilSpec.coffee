dateUtil = require '../bin/dateUtil'

describe "Test la librairie utilDate du module common\n", () ->
    
    ###====================================================================================
    #                         Tests des methodes 
    #===================================================================================###
    ###
    # Test de la méthode toBuild
    ###
    describe "Test de la méthode : toBuild\n", () -> 
        
        it "Creer une date au format 'DD/MM/YYYY avec dateString = null, devrait retourner null", () -> 
            expect(dateUtil.toBuild null, "DD/MM/YYYY").toBeNull()
        
        it "Creer une date au format 'DD/MM/YYYY avec dateString = undefined, devrait retourner null", () -> 
            expect(dateUtil.toBuild undefined, "DD/MM/YYYY").toBeNull()
            
        it "Creer une date au format 'DD/MM/YYYY avec dateString = {}, devrait retourner null", () -> 
            expect(dateUtil.toBuild {}, "DD/MM/YYYY").toBeNull()
        
        it "Creer une date au format 'DD/MM/YYYY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "24/10/1993", "DD/MM/YYYY").toEqual(new Date "10/24/1993")
        
        it "Creer une date au format 'DD/MM/YY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "24/10/93", "DD/MM/YY").toEqual(new Date "10/24/1993")
            
        it "Creer une date au format 'DD-MM-YYYY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "24-10-1993", "DD-MM-YYYY").toEqual(new Date "10/24/1993")
        
        it "Creer une date au format 'DD-MM-YY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "24-10-93", "DD-MM-YY").toEqual(new Date "10/24/1993")
        
        it "Creer une date au format 'MM/DD/YYYY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "10/24/1993", "MM/DD/YYYY").toEqual(new Date "10/24/1993")
        
        it "Creer une date au format 'MM/DD/YY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "10/24/93", "MM/DD/YY").toEqual(new Date "10/24/1993")
            
        it "Creer une date au format 'MM-DD-YYYY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "10-24-1993", "MM-DD-YYYY").toEqual(new Date "10/24/1993")
        
        it "Creer une date au format 'MM-DD-YY, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "10-24-93", "MM-DD-YY").toEqual(new Date "10/24/1993")
            
        it "Creer une date au format 'MM-DD-YY, devrait retourner une date invalide", () -> 
            expect((dateUtil.toBuild "blabla", "MM-DD-YY").getTime()).toBeNaN()
        
        it "Creer une date sans format, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "10/24/1993").toEqual(new Date "10/24/1993")
        
        it "Creer une date sans format avec dateString = 24/10/1993, devrait retourner une date invalide", () -> 
            expect((dateUtil.toBuild "24/10/1993").getTime()).toBeNaN()
            
        it "Change le format par défaut, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            dateUtil.setDefaultFormat "DD/MM/YYYY"
            expect(dateUtil.toBuild "24/10/1993").toEqual(new Date "10/24/1993")
            dateUtil.setDefaultFormat "MM/DD/YYYY"
            
        it "Creer une date avec format bidon, devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "10/24/1993", {}).toEqual(new Date "10/24/1993")
            
        it "Creer une date avec format 'bidon', devrait retourner une date valide correspondant à 24/10/1993", () -> 
            expect(dateUtil.toBuild "10/24/1993", "bidon").toEqual(new Date "10/24/1993")
