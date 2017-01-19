dateUtil = require '../bin/dateUtil'

describe "Test la librairie utilDate du module common\n", () ->
    
    ###====================================================================================
    #                               Tests des methodes 
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
            
        it "Creer une date bidon au format 'MM-DD-YY, devrait retourner une date invalide", () -> 
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
    
    
    ###
    # Test de la méthode toFormat
    ###
    describe "Test de la méthode : toFormat\n", () -> 
        
        it "Date = null, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> dateUtil.toFormat null, "DD/MM/YYYY").toThrow "ArgumentException"
        
        it "Date = undefined, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> dateUtil.toFormat undefined, "DD/MM/YYYY").toThrow "ArgumentException"
            
        it "Date = {}, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> dateUtil.toFormat {}, "DD/MM/YYYY").toThrow "ArgumentException"
        
        it "Date = Invalide date, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> dateUtil.toFormat (new Date NaN), "MM-DD-YY").toThrow "ArgumentException"
            
        it "Date = 10/24/1993, devrait retourner '24/10/1993'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "DD/MM/YYYY").toBe "24/10/1993"
        
        it "Date = 10/24/1993, devrait retourner '24/10/93'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "DD/MM/YY").toBe "24/10/93"
            
        it "Date = 10/24/1993, devrait retourner '24-10-1993'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "DD-MM-YYYY").toBe "24-10-1993"
        
        it "Date = 10/24/1993, devrait retourner '24-10-93'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "DD-MM-YY").toBe "24-10-93"
        
        it "Date = 10/24/1993, devrait retourner '10/24/1993'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "MM/DD/YYYY").toBe "10/24/1993"
        
        it "Date = 10/24/1993, devrait retourner '10/24/93'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "MM/DD/YY").toBe "10/24/93"
            
        it "Date = 10/24/1993, devrait retourner '10-24-1993'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "MM-DD-YYYY").toBe "10-24-1993"
        
        it "Date = 10/24/1993, devrait retourner '10-24-93'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "MM-DD-YY").toBe "10-24-93"
        
        it "Date = 10/24/1993, sans format, devrait retourner '10/24/1993'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993")).toBe "10/24/1993"
        
        it "Change le format par défaut, devrait retourner '24/10/1993'", () -> 
            dateUtil.setDefaultFormat "DD/MM/YYYY"
            expect(dateUtil.toFormat (new Date "10/24/1993")).toBe "24/10/1993"
            dateUtil.setDefaultFormat "MM/DD/YYYY"
        
        it "Avec format {}, devrait retourner '10/24/1993'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), {}).toBe "10/24/1993"
        
        it "Avec format 'bidon', devrait retourner '10/24/1993'", () -> 
            expect(dateUtil.toFormat (new Date "10/24/1993"), "bidon").toBe "10/24/1993"
    
    ###
    # Test de la méthode isValide
    ###
    describe "Test de la méthode : isValide\n", () -> 
        
        it "Date = null, devrait retourner false", () -> 
            expect(dateUtil.isValide null).toBe false
            
        it "Date = undefined, devrait retourner false", () -> 
            expect(dateUtil.isValide undefined).toBe false
        
        it "Date = false, devrait retourner false", () -> 
            expect(dateUtil.isValide false).toBe false
        
        it "Date = true, devrait retourner false", () -> 
            expect(dateUtil.isValide true).toBe false
        
        it "Date = 0, devrait retourner false", () -> 
            expect(dateUtil.isValide 0).toBe false
        
        it "Date = 1, devrait retourner false", () -> 
            expect(dateUtil.isValide 1).toBe false
        
        it "Date = NaN, devrait retourner false", () -> 
            expect(dateUtil.isValide NaN).toBe false
        
        it "Date = '', devrait retourner false", () -> 
            expect(dateUtil.isValide "").toBe false
        
        it "Date = 'abc', devrait retourner false", () -> 
            expect(dateUtil.isValide "abc").toBe false
        
        it "Date = {}, devrait retourner false", () -> 
            expect(dateUtil.isValide {}).toBe false
        
        it "Date = {getTime: () -> return 1}, devrait retourner false", () -> 
            expect(dateUtil.isValide {getTime: () -> return 1}).toBe false
        
        it "Date = [], devrait retourner false", () -> 
            expect(dateUtil.isValide []).toBe false
        
        it "Date = (() ->), devrait retourner false", () -> 
            expect(dateUtil.isValide (() ->)).toBe false
        
        it "Date = new Date 10/24/1993, devrait retourner true", () -> 
            expect(dateUtil.isValide (new Date "10/24/1993")).toBe true
        
        it "Date = new Date NaN, devrait retourner false", () -> 
            expect(dateUtil.isValide (new Date NaN)).toBe false