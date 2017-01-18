util = require '../bin/util.js'

describe "Test la librairie util du module common\n", () ->
    
    ###====================================================================================
    #                         Tests les methodes exception
    #===================================================================================###
    ###
    # Test de la méthode argumentException
    ###
    describe "Test de la méthode : argumentException\n", () -> 
        
        it "expr = false, devrait retourner undefined", () -> 
            expect(util.argumentException false, "message").toBeUndefined()
        
        it "expr = true, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> util.argumentException true, "message").toThrow new Error "ArgumentException"
        
        it "expr n'est pas un boolean, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> util.argumentException {}, "message").toThrow new Error "ArgumentException"
        
        it "Sans message, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> util.argumentException false).toThrow new Error "ArgumentException"
        
        it "Avec un message vide, devrait lancer l'exception ArgumentException", () -> 
            expect(() -> util.argumentException false).toThrow new Error "ArgumentException"
    
    
    ###
    # Test de la méthode nullOrUndefinedException
    ###
    describe "Test de la méthode : nullOrUndefinedException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NullOrUndefinedException", () -> 
            expect(() -> util.nullOrUndefinedException null, "message").toThrow new Error "NullOrUndefinedException"
        
        it "La valeur est undefined, devrait lancer l'exception NullOrUndefinedException", () -> 
            expect(() -> util.nullOrUndefinedException undefined, "message").toThrow new Error "NullOrUndefinedException"
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException false, "message").toBeUndefined()
        
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException 1, "message").toBeUndefined()
        
        it "La valeur est un NaN, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException NaN, "message").toBeUndefined()
            
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException "", "message").toBeUndefined()
            
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException true).toBeUndefined()
        
        it "Avec un message vide, , devrait retourner undefined", () -> 
            expect(util.nullOrUndefinedException true, "").toBeUndefined()
    
    
    ###
    # Test de la méthode notNullOrUndefinedException
    ###
    describe "Test de la méthode : notNullOrUndefinedException\n", () -> 
    
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.notNullOrUndefinedException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () ->  
            expect(util.notNullOrUndefinedException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException false, "message").toThrow new Error "NotNullOrUndefinedException"
        
        it "La valeur est true, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException true, "message").toThrow new Error "NotNullOrUndefinedException"
        
        it "La valeur est 0, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException 0, "message").toThrow new Error "NotNullOrUndefinedException"
            
        it "La valeur est 1, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException 1, "message").toThrow new Error "NotNullOrUndefinedException"
            
        it "La valeur est NaN, devrait lancer l'exception NullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException NaN, "message").toThrow new Error "NotNullOrUndefinedException"
            
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException "", "message").toThrow new Error "NotNullOrUndefinedException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException "abc", "message").toThrow new Error "NotNullOrUndefinedException"
        
        it "La valeur est un objet, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException {}, "message").toThrow new Error "NotNullOrUndefinedException"
        
        it "La valeur est une liste, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException [], "message").toThrow new Error "NotNullOrUndefinedException"
        
        it "La valeur est une function, devrait lancer l'exception NotNullOrUndefinedException", () -> 
            expect(() -> util.notNullOrUndefinedException (() ->), "message").toThrow new Error "NotNullOrUndefinedException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notNullOrUndefinedException null).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notNullOrUndefinedException null, "").toBeUndefined()
        
    
    ###
    # Test de la méthode nullException
    ###
    describe "Test de la méthode : nullException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NullException", () -> 
            expect(() -> util.nullException null, "message").toThrow new Error "NullException"
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.nullException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.nullException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.nullException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.nullException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.nullException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.nullException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.nullException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.nullException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.nullException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.nullException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.nullException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.nullException true).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.nullException true, "").toBeUndefined()
            
    
    ###
    # Test de la méthode notNullException
    ###
    describe "Test de la méthode : notNullException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.notNullException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException undefined, "message").toThrow new Error "NotNullException"
        
        it "La valeur est false, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException false, "message").toThrow new Error "NotNullException"
            
        it "La valeur est true, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException true, "message").toThrow new Error "NotNullException"
        
        it "La valeur est 0, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException 0, "message").toThrow new Error "NotNullException"
            
        it "La valeur est 1, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException 1, "message").toThrow new Error "NotNullException"
            
        it "La valeur est NaN, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException NaN, "message").toThrow new Error "NotNullException"
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException "", "message").toThrow new Error "NotNullException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException "abc", "message").toThrow new Error "NotNullException"
        
        it "La valeur est un objet, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException {}, "message").toThrow new Error "NotNullException"
        
        it "La valeur est une liste, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException [], "message").toThrow new Error "NotNullException"
        
        it "La valeur est une function, devrait lancer l'exception NotNullException", () -> 
            expect(() -> util.notNullException (() ->), "message").toThrow new Error "NotNullException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notNullException null).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notNullException null, "").toBeUndefined()
            
    
    ###
    # Test de la méthode undefinedException
    ###
    describe "Test de la méthode : undefinedException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.undefinedException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait lancer l'exception UndefinedException", () -> 
            expect(() -> util.undefinedException undefined, "message").toThrow new Error "UndefinedException"
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.undefinedException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.undefinedException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.undefinedException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.undefinedException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.undefinedException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.undefinedException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.undefinedException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.undefinedException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.undefinedException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.undefinedException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.undefinedException true).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.undefinedException true, "").toBeUndefined()
    
    
    ###
    # Test de la méthode notUndefinedException
    ###
    describe "Test de la méthode : notUndefinedException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException null, "message").toThrow new Error "NotUndefinedException"
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.notUndefinedException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException false, "message").toThrow new Error "NotUndefinedException"
            
        it "La valeur est true, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException true, "message").toThrow new Error "NotUndefinedException"
        
        it "La valeur est 0, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException 0, "message").toThrow new Error "NotUndefinedException"
            
        it "La valeur est 1, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException 1, "message").toThrow new Error "NotUndefinedException"
            
        it "La valeur est NaN, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException NaN, "message").toThrow new Error "NotUndefinedException"
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException "", "message").toThrow new Error "NotUndefinedException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException "abc", "message").toThrow new Error "NotUndefinedException"
        
        it "La valeur est un objet, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException {}, "message").toThrow new Error "NotUndefinedException"
        
        it "La valeur est une liste, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException [], "message").toThrow new Error "NotUndefinedException"
        
        it "La valeur est une function, devrait lancer l'exception NotUndefinedException", () -> 
            expect(() -> util.notUndefinedException (() ->), "message").toThrow new Error "NotUndefinedException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notUndefinedException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notUndefinedException undefined, "").toBeUndefined()
    
    
    ###
    # Test de la méthode blankException
    ###
    describe "Test de la méthode : blankException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception BlankException", () -> 
            expect(() -> util.blankException null, "message").toThrow new Error "BlankException"
        
        it "La valeur est undefined, devrait lancer l'exception BlankException", () -> 
            expect(() -> util.blankException undefined, "message").toThrow new Error "BlankException"
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.blankException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.blankException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.blankException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.blankException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.blankException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception BlankException", () -> 
            expect(() -> util.blankException "", "message").toThrow new Error "BlankException"
        
        it "La valeur est une chaine de caractère vide (avec un espace), devrait lancer l'exception BlankException", () -> 
            expect(() -> util.blankException " ", "message").toThrow new Error "BlankException"
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.blankException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.blankException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.blankException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.blankException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.blankException true).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.blankException true, "").toBeUndefined()
    
    
    ###
    # Test de la méthode notBlankException
    ###
    describe "Test de la méthode : notBlankException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.notBlankException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.notBlankException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException false, "message").toThrow new Error "NotBlankException"
            
        it "La valeur est true, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException true, "message").toThrow new Error "NotBlankException"
        
        it "La valeur est 0, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException 0, "message").toThrow new Error "NotBlankException"
            
        it "La valeur est 1, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException 1, "message").toThrow new Error "NotBlankException"
            
        it "La valeur est NaN, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException NaN, "message").toThrow new Error "NotBlankException"
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.notBlankException "", "message").toBeUndefined()
            
        it "La valeur est une chaine de caractère vide (avec un espace), devrait retourner undefined", () -> 
            expect(util.notBlankException " ", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException "abc", "message").toThrow new Error "NotBlankException"
        
        it "La valeur est un objet, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException {}, "message").toThrow new Error "NotBlankException"
        
        it "La valeur est une liste, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException [], "message").toThrow new Error "NotBlankException"
        
        it "La valeur est une function, devrait lancer l'exception NotBlankException", () -> 
            expect(() -> util.notBlankException (() ->), "message").toThrow new Error "NotBlankException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notBlankException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notBlankException undefined, "").toBeUndefined()
    
    
    ###
    # Test de la méthode emptyException
    ###
    describe "Test de la méthode : emptyException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception EmptyException", () -> 
            expect(() -> util.emptyException null, "message").toThrow new Error "EmptyException"
        
        it "La valeur est undefined, devrait lancer l'exception EmptyException", () -> 
            expect(() -> util.emptyException undefined, "message").toThrow new Error "EmptyException"
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.emptyException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.emptyException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.emptyException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.emptyException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.emptyException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception EmptyException", () -> 
            expect(() -> util.emptyException "", "message").toThrow new Error "EmptyException"
        
        it "La valeur est une chaine de caractère vide (avec un espace), devrait lancer l'exception EmptyException", () -> 
            expect(() -> util.emptyException " ", "message").toThrow new Error "EmptyException"
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.emptyException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet vide, devrait lancer l'exception EmptyException", () -> 
            expect(() -> util.emptyException {}, "message").toThrow new Error "EmptyException"
            
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.emptyException {a:1, b:2}, "message").toBeUndefined()
        
        it "La valeur est une liste vide, devrait lancer l'exception EmptyException", () -> 
            expect(() -> util.emptyException [], "message").toThrow new Error "EmptyException"
            
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.emptyException [1, 2], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.emptyException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.emptyException true).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.emptyException true, "").toBeUndefined()
            
    
    ###
    # Test de la méthode notEmptyException
    ###
    describe "Test de la méthode : notEmptyException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.notEmptyException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.notEmptyException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException false, "message").toThrow new Error "NotEmptyException"
            
        it "La valeur est true, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException true, "message").toThrow new Error "NotEmptyException"
        
        it "La valeur est 0, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException 0, "message").toThrow new Error "NotEmptyException"
            
        it "La valeur est 1, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException 1, "message").toThrow new Error "NotEmptyException"
            
        it "La valeur est NaN, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException NaN, "message").toThrow new Error "NotEmptyException"
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.notEmptyException "", "message").toBeUndefined()
            
        it "La valeur est une chaine de caractère vide (avec un espace), devrait retourner undefined", () -> 
            expect(util.notEmptyException " ", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException "abc", "message").toThrow new Error "NotEmptyException"
        
        it "La valeur est un objet vide, devrait retourner undefined", () -> 
            expect(util.notEmptyException {}, "message").toBeUndefined()
            
        it "La valeur est un objet, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException {a:1, b:2}, "message").toThrow new Error "NotEmptyException"
        
        it "La valeur est une liste vide, devrait retourner undefined", () -> 
            expect(util.notEmptyException [], "message").toBeUndefined()
            
        it "La valeur est une liste, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException [1, 2], "message").toThrow new Error "NotEmptyException"
        
        it "La valeur est une function, devrait lancer l'exception NotEmptyException", () -> 
            expect(() -> util.notEmptyException (() ->), "message").toThrow new Error "NotEmptyException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notEmptyException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notEmptyException undefined, "").toBeUndefined()
            
            
    ###
    # Test de la méthode booleanException
    ###
    describe "Test de la méthode : booleanException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.booleanException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.booleanException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait lancer l'exception BooleanException", () -> 
            expect(() -> util.booleanException false, "message").toThrow new Error "BooleanException"
            
        it "La valeur est true, devrait lancer l'exception BooleanException", () -> 
            expect(() -> util.booleanException true, "message").toThrow new Error "BooleanException"
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.booleanException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.booleanException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.booleanException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.booleanException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.booleanException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.booleanException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.booleanException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.booleanException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.booleanException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.booleanException undefined, "").toBeUndefined()
           
    
    ###
    # Test de la méthode notBooleanException
    ###
    describe "Test de la méthode : notBooleanException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException null, "message").toThrow new Error "NotBooleanException"
        
        it "La valeur est undefined, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException undefined, "message").toThrow new Error "NotBooleanException"
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.notBooleanException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.notBooleanException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException 0, "message").toThrow new Error "NotBooleanException"
            
        it "La valeur est 1, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException 1, "message").toThrow new Error "NotBooleanException"
            
        it "La valeur est NaN, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException NaN, "message").toThrow new Error "NotBooleanException"
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException "", "message").toThrow new Error "NotBooleanException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException "abc", "message").toThrow new Error "NotBooleanException"
        
        it "La valeur est un objet, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException {}, "message").toThrow new Error "NotBooleanException"
        
        it "La valeur est une liste, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException [], "message").toThrow new Error "NotBooleanException"
        
        it "La valeur est une function, devrait lancer l'exception NotBooleanException", () -> 
            expect(() -> util.notBooleanException (() ->), "message").toThrow new Error "NotBooleanException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notBooleanException true).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notBooleanException true, "").toBeUndefined()
            
    
    ###
    # Test de la méthode numberException
    ###
    describe "Test de la méthode : numberException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.numberException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.numberException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.numberException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.numberException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait lancer l'exception NumberException", () -> 
            expect(() -> util.numberException 0, "message").toThrow new Error "NumberException"
            
        it "La valeur est 1, devrait lancer l'exception NumberException", () -> 
            expect(() -> util.numberException 1, "message").toThrow new Error "NumberException"
            
        it "La valeur est NaN, devrait lancer l'exception NumberException", () -> 
            expect(() -> util.numberException NaN, "message").toThrow new Error "NumberException"
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.numberException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.numberException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.numberException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.numberException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.numberException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.numberException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.numberException undefined, "").toBeUndefined()
            
    
    ###
    # Test de la méthode notNumberException
    ###
    describe "Test de la méthode : notNumberException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException null, "message").toThrow new Error "NotNumberException"
        
        it "La valeur est undefined, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException undefined, "message").toThrow new Error "NotNumberException"
        
        it "La valeur est false, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException false, "message").toThrow new Error "NotNumberException"
            
        it "La valeur est true, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException true, "message").toThrow new Error "NotNumberException"
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.notNumberException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.notNumberException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.notNumberException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException "", "message").toThrow new Error "NotNumberException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException "abc", "message").toThrow new Error "NotNumberException"
        
        it "La valeur est un objet, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException {}, "message").toThrow new Error "NotNumberException"
        
        it "La valeur est une liste, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException [], "message").toThrow new Error "NotNumberException"
        
        it "La valeur est une function, devrait lancer l'exception NotNumberException", () -> 
            expect(() -> util.notNumberException (() ->), "message").toThrow new Error "NotNumberException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notNumberException 0).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notNumberException 0, "").toBeUndefined()
            
    
    ###
    # Test de la méthode stringException
    ###
    describe "Test de la méthode : stringException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.stringException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.stringException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.stringException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.stringException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.stringException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.stringException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.stringException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception StringException", () -> 
            expect(() -> util.stringException "", "message").toThrow new Error "StringException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception StringException", () -> 
            expect(() -> util.stringException "abc", "message").toThrow new Error "StringException"
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.stringException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.stringException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.stringException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.stringException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.stringException undefined, "").toBeUndefined()
            
    
    ###
    # Test de la méthode notNumberException
    ###
    describe "Test de la méthode : notStringException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException null, "message").toThrow new Error "NotStringException"
        
        it "La valeur est undefined, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException undefined, "message").toThrow new Error "NotStringException"
        
        it "La valeur est false, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException false, "message").toThrow new Error "NotStringException"
            
        it "La valeur est true, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException true, "message").toThrow new Error "NotStringException"
        
        it "La valeur est 0, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException 0, "message").toThrow new Error "NotStringException"
            
        it "La valeur est 1, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException 1, "message").toThrow new Error "NotStringException"
            
        it "La valeur est NaN, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException NaN, "message").toThrow new Error "NotStringException"
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.notStringException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.notStringException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException {}, "message").toThrow new Error "NotStringException"
        
        it "La valeur est une liste, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException [], "message").toThrow new Error "NotStringException"
        
        it "La valeur est une function, devrait lancer l'exception NotStringException", () -> 
            expect(() -> util.notStringException (() ->), "message").toThrow new Error "NotStringException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notStringException "").toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notStringException "", "").toBeUndefined()
            
            
    ###
    # Test de la méthode objectException
    ###
    describe "Test de la méthode : objectException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.objectException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.objectException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.objectException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.objectException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.objectException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.objectException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.objectException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.objectException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.objectException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait lancer l'exception ObjectException", () -> 
            expect(() -> util.objectException {}, "message").toThrow new Error "ObjectException"
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.objectException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.objectException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.objectException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.objectException undefined, "").toBeUndefined()
    
    
    ###
    # Test de la méthode notObjectException
    ###
    describe "Test de la méthode : notObjectException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException null, "message").toThrow new Error "NotObjectException"
        
        it "La valeur est undefined, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException undefined, "message").toThrow new Error "NotObjectException"
        
        it "La valeur est false, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException false, "message").toThrow new Error "NotObjectException"
            
        it "La valeur est true, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException true, "message").toThrow new Error "NotObjectException"
        
        it "La valeur est 0, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException 0, "message").toThrow new Error "NotObjectException"
            
        it "La valeur est 1, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException 1, "message").toThrow new Error "NotObjectException"
            
        it "La valeur est NaN, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException NaN, "message").toThrow new Error "NotObjectException"
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException "", "message").toThrow new Error "NotObjectException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException "abc", "message").toThrow new Error "NotObjectException"
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.notObjectException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException [], "message").toThrow new Error "NotObjectException"
        
        it "La valeur est une function, devrait lancer l'exception NotObjectException", () -> 
            expect(() -> util.notObjectException (() ->), "message").toThrow new Error "NotObjectException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notObjectException {}).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notObjectException {}, "").toBeUndefined()
    
    
    ###
    # Test de la méthode arrayException
    ###
    describe "Test de la méthode : arrayException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.arrayException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.arrayException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.arrayException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.arrayException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.arrayException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.arrayException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.arrayException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.arrayException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.arrayException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.arrayException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait lancer l'exception ArrayException", () -> 
            expect(() -> util.arrayException [], "message").toThrow new Error "ArrayException"
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.arrayException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.arrayException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.arrayException undefined, "").toBeUndefined()
    
    
    ###
    # Test de la méthode notArrayException
    ###
    describe "Test de la méthode : notArrayException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException null, "message").toThrow new Error "NotArrayException"
        
        it "La valeur est undefined, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException undefined, "message").toThrow new Error "NotArrayException"
        
        it "La valeur est false, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException false, "message").toThrow new Error "NotArrayException"
            
        it "La valeur est true, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException true, "message").toThrow new Error "NotArrayException"
        
        it "La valeur est 0, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException 0, "message").toThrow new Error "NotArrayException"
            
        it "La valeur est 1, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException 1, "message").toThrow new Error "NotArrayException"
            
        it "La valeur est NaN, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException NaN, "message").toThrow new Error "NotArrayException"
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException "", "message").toThrow new Error "NotArrayException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException "abc", "message").toThrow new Error "NotArrayException"
        
        it "La valeur est un objet, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException {}, "message").toThrow new Error "NotArrayException"
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.notArrayException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.notArrayException (() ->), "message").toThrow new Error "NotArrayException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notArrayException []).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notArrayException [], "").toBeUndefined()
    
    
    ###
    # Test de la méthode functionException
    ###
    describe "Test de la méthode : functionException\n", () -> 
        
        it "La valeur est null, devrait retourner undefined", () -> 
            expect(util.functionException null, "message").toBeUndefined()
        
        it "La valeur est undefined, devrait retourner undefined", () -> 
            expect(util.functionException undefined, "message").toBeUndefined()
        
        it "La valeur est false, devrait retourner undefined", () -> 
            expect(util.functionException false, "message").toBeUndefined()
            
        it "La valeur est true, devrait retourner undefined", () -> 
            expect(util.functionException true, "message").toBeUndefined()
        
        it "La valeur est 0, devrait retourner undefined", () -> 
            expect(util.functionException 0, "message").toBeUndefined()
            
        it "La valeur est 1, devrait retourner undefined", () -> 
            expect(util.functionException 1, "message").toBeUndefined()
            
        it "La valeur est NaN, devrait retourner undefined", () -> 
            expect(util.functionException NaN, "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère vide, devrait retourner undefined", () -> 
            expect(util.functionException "", "message").toBeUndefined()
        
        it "La valeur est une chaine de caractère, devrait retourner undefined", () -> 
            expect(util.functionException "abc", "message").toBeUndefined()
        
        it "La valeur est un objet, devrait retourner undefined", () -> 
            expect(util.functionException {}, "message").toBeUndefined()
        
        it "La valeur est une liste, devrait retourner undefined", () -> 
            expect(util.functionException [], "message").toBeUndefined()
        
        it "La valeur est une function, devrait lancer l'exception FunctionException", () -> 
            expect(() -> util.functionException (() ->), "message").toThrow new Error "FunctionException"
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.functionException undefined).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.functionException undefined, "").toBeUndefined()
            
    
    ###
    # Test de la méthode notFunctionException
    ###
    describe "Test de la méthode : notFunctionException\n", () -> 
        
        it "La valeur est null, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException null, "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est undefined, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException undefined, "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est false, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException false, "message").toThrow new Error "NotFunctionException"
            
        it "La valeur est true, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException true, "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est 0, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException 0, "message").toThrow new Error "NotFunctionException"
            
        it "La valeur est 1, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException 1, "message").toThrow new Error "NotFunctionException"
            
        it "La valeur est NaN, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException NaN, "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est une chaine de caractère vide, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException "", "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est une chaine de caractère, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException "abc", "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est un objet, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException {}, "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est une liste, devrait lancer l'exception NotFunctionException", () -> 
            expect(() -> util.notFunctionException [], "message").toThrow new Error "NotFunctionException"
        
        it "La valeur est une function, devrait retourner undefined", () -> 
            expect(util.notFunctionException (() ->), "message").toBeUndefined()
        
        it "Sans message, devrait retourner undefined", () -> 
            expect(util.notFunctionException (() ->)).toBeUndefined()
        
        it "Avec un message vide, devrait retourner undefined", () -> 
            expect(util.notFunctionException (() ->), "").toBeUndefined()
            
    
    ###====================================================================================
    #                         Tests les methodes utils
    #===================================================================================###
    ###
    # Test de la méthode isNullOrUndefined
    ###
    describe "Test de la méthode : isNullOrUndefined\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNullOrUndefined null).toBe(true)
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNullOrUndefined undefined).toBe(true)
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isNullOrUndefined false).toBe(false)
        
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isNullOrUndefined true).toBe(false)
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isNullOrUndefined 0).toBe(false)
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isNullOrUndefined 1).toBe(false)
        
        it "La valeur est un NaN, devrait retourner false", () -> 
            expect(util.isNullOrUndefined NaN).toBe(false)
            
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNullOrUndefined "").toBe(false)
            
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNullOrUndefined "abc").toBe(false)
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isNullOrUndefined {}).toBe(false)
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isNullOrUndefined []).toBe(false)
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isNullOrUndefined (() ->)).toBe(false)
            
    
    ###
    # Test de la méthode isNotNullOrUndefined
    ###
    describe "Test de la méthode : isNotNullOrUndefined\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotNullOrUndefined null).toBe(false)
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotNullOrUndefined undefined).toBe(false)
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined false).toBe(true)
        
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined true).toBe(true)
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined 0).toBe(true)
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined 1).toBe(true)
        
        it "La valeur est un NaN, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined NaN).toBe(true)
            
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined "").toBe(true)
            
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined "abc").toBe(true)
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined {}).toBe(true)
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined []).toBe(true)
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isNotNullOrUndefined (() ->)).toBe(true)
    
    
    ###
    # Test de la méthode isBlank
    ###
    describe "Test de la méthode : isBlank\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isBlank null).toBe(true)
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isBlank undefined).toBe(true)
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isBlank false).toBe(false)
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isBlank true).toBe(false)
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isBlank 0).toBe(false)
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isBlank 1).toBe(false)
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isBlank NaN).toBe(false)
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isBlank "").toBe(true)
        
        it "La valeur est une chaine de caractère vide (avec un espace), devrait retourner true", () -> 
            expect(util.isBlank " ").toBe(true)
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isBlank "abc").toBe(false)
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isBlank {}).toBe(false)
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isBlank []).toBe(false)
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isBlank (() ->)).toBe(false)
    
    
     ###
    # Test de la méthode isNotBlank
    ###
    describe "Test de la méthode : isNotBlank\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isNotBlank null).toBe(false)
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isNotBlank undefined).toBe(false)
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotBlank false).toBe(true)
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotBlank true).toBe(true)
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotBlank 0).toBe(true)
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotBlank 1).toBe(true)
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotBlank NaN).toBe(true)
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNotBlank "").toBe(false)
        
        it "La valeur est une chaine de caractère vide (avec un espace), devrait retourner false", () -> 
            expect(util.isNotBlank " ").toBe(false)
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotBlank "abc").toBe(true)
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotBlank {}).toBe(true)
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotBlank []).toBe(true)
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotBlank (() ->)).toBe(true)
            
    
    ###
    # Test de la méthode isEmpty
    ###
    describe "Test de la méthode : isEmpty\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isEmpty null).toBe(true)
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isEmpty undefined).toBe(true)
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isEmpty false).toBe(false)
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isEmpty true).toBe(false)
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isEmpty 0).toBe(false)
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isEmpty 1).toBe(false)
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isEmpty NaN).toBe(false)
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isEmpty "").toBe(true)
        
        it "La valeur est une chaine de caractère vide (avec un espace), devrait retourner true", () -> 
            expect(util.isEmpty " ").toBe(true)
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isEmpty "abc").toBe(false)
        
        it "La valeur est un objet vide, devrait retourner true", () -> 
            expect(util.isEmpty {}).toBe(true)
            
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isEmpty {a:1, b:2}).toBe(false)
        
        it "La valeur est une liste vide, devrait retourner true", () -> 
            expect(util.isEmpty []).toBe(true)
            
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isEmpty [1, 2]).toBe(false)
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isEmpty (() ->)).toBe(false)
            
            
    ###
    # Test de la méthode isNotEmpty
    ###
    describe "Test de la méthode : isEmpty\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isNotEmpty null).toBe(false)
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isNotEmpty undefined).toBe(false)
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotEmpty false).toBe(true)
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotEmpty true).toBe(true)
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotEmpty 0).toBe(true)
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotEmpty 1).toBe(true)
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotEmpty NaN).toBe(true)
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNotEmpty "").toBe(false)
        
        it "La valeur est une chaine de caractère vide (avec un espace), devrait retourner false", () -> 
            expect(util.isNotEmpty " ").toBe(false)
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotEmpty "abc").toBe(true)
        
        it "La valeur est un objet vide, devrait retourner false", () -> 
            expect(util.isNotEmpty {}).toBe(false)
            
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotEmpty {a:1, b:2}).toBe(true)
        
        it "La valeur est une liste vide, devrait retourner false", () -> 
            expect(util.isNotEmpty []).toBe(false)
            
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotEmpty [1, 2]).toBe(true)
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotEmpty (() ->)).toBe(true)
            
    
    ###
    # Test de la méthode isEquals
    ###
    describe "Test de la méthode : isEquals\n", () -> 
        
        it "Comparaison de null et null, devrait retourner true", () -> 
            expect(util.isEquals null, null).toBe(true)
            
        it "Comparaison de null et 1, devrait retourner false", () -> 
            expect(util.isEquals null, 1).toBe(false)
        
        it "Comparaison de undefined et undefined, devrait retourner true", () -> 
            expect(util.isEquals undefined, undefined).toBe(true)
            
        it "Comparaison de undefined et null, devrait retourner false", () -> 
            expect(util.isEquals undefined, null).toBe(false)
        
        it "Comparaison de false et false, devrait retourner true", () -> 
            expect(util.isEquals false, false).toBe(true)
            
        it "Comparaison de false et 0, devrait retourner false", () -> 
            expect(util.isEquals false, 0).toBe(false)
            
        it "Comparaison de true et true, devrait retourner true", () -> 
            expect(util.isEquals true, true).toBe(true)
            
        it "Comparaison de true et false, devrait retourner false", () -> 
            expect(util.isEquals true, false).toBe(false)
        
        it "Comparaison de 0 et 0, devrait retourner true", () -> 
            expect(util.isEquals 0, 0).toBe(true)
            
        it "Comparaison de 0 et 1, devrait retourner false", () -> 
            expect(util.isEquals 0, 1).toBe(false)
            
        it "Comparaison de 1 et 1, devrait retourner true", () -> 
            expect(util.isEquals 1, 1).toBe(true)
            
        it "Comparaison de 1 et [], devrait retourner false", () -> 
            expect(util.isEquals 1, []).toBe(false)
            
        it "Comparaison de NaN et NaN, devrait retourner true", () -> 
            expect(util.isEquals NaN, NaN).toBe(true)
        
        it "Comparaison de '' et '', devrait retourner true", () -> 
            expect(util.isEquals "", "").toBe(true)
        
        it "Comparaison de ' ' et '', devrait retourner false", () -> 
            expect(util.isEquals " ", "").toBe(false)
        
        it "Comparaison de 'abc et 'abc, devrait retourner true", () -> 
            expect(util.isEquals "abc", "abc").toBe(true)
            
        it "Comparaison de 'abc et {}, devrait retourner false", () -> 
            expect(util.isEquals "abc", {}).toBe(false)
        
        it "Comparaison de {} et {}, devrait retourner true", () -> 
            expect(util.isEquals {}, {}).toBe(true)
            
        it "Comparaison de {a:1, b:2} et {a:1, b:2}, devrait retourner true", () -> 
            expect(util.isEquals {a:1, b:2}, {a:1, b:2}).toBe(true)
            
        it "Comparaison de {a:1, b:2} et {a:1, b:3}, devrait retourner false", () -> 
            expect(util.isEquals {a:1, b:2}, {a:1, b:3}).toBe(false)
            
        it "Comparaison de {a:1, b:2} et {a:'1', b:2}, devrait retourner false", () -> 
            expect(util.isEquals {a:1, b:2}, {a:"1", b:2}).toBe(false)
        
        it "Comparaison de [] et [], devrait retourner true", () -> 
            expect(util.isEquals [], []).toBe(true)
            
        it "Comparaison de [1, 2] et [1, 2], devrait retourner true", () -> 
            expect(util.isEquals [1, 2], [1, 2]).toBe(true)
        
        it "Comparaison de [1, 2] et [1, 3], devrait retourner false", () -> 
            expect(util.isEquals [1, 2], [1, 3]).toBe(false)
            
        it "Comparaison de [1, 2] et ['1', 2], devrait retourner false", () -> 
            expect(util.isEquals [1, 2], ["1", 2]).toBe(false)
        
        it "Comparaison de (() ->) et null, devrait lancer l'exception FunctionException", () -> 
            expect(() -> util.isEquals (() ->), null).toThrow("FunctionException")
            
        it "Comparaison de null et (() ->), devrait lancer l'exception FunctionException", () -> 
            expect(() -> util.isEquals (() ->), null).toThrow("FunctionException")
            
    
    ###
    # Test de la méthode isNotEquals
    ###
    describe "Test de la méthode : isNotEquals\n", () -> 
        
        it "Comparaison de null et null, devrait retourner false", () -> 
            expect(util.isNotEquals null, null).toBe(false)
            
        it "Comparaison de null et 1, devrait retourner true", () -> 
            expect(util.isNotEquals null, 1).toBe(true)
        
        it "Comparaison de undefined et undefined, devrait retourner false", () -> 
            expect(util.isNotEquals undefined, undefined).toBe(false)
            
        it "Comparaison de undefined et null, devrait retourner true", () -> 
            expect(util.isNotEquals undefined, null).toBe(true)
        
        it "Comparaison de false et false, devrait retourner false", () -> 
            expect(util.isNotEquals false, false).toBe(false)
            
        it "Comparaison de false et 0, devrait retourner true", () -> 
            expect(util.isNotEquals false, 0).toBe(true)
            
        it "Comparaison de true et true, devrait retourner false", () -> 
            expect(util.isNotEquals true, true).toBe(false)
            
        it "Comparaison de true et false, devrait retourner true", () -> 
            expect(util.isNotEquals true, false).toBe(true)
        
        it "Comparaison de 0 et 0, devrait retourner false", () -> 
            expect(util.isNotEquals 0, 0).toBe(false)
            
        it "Comparaison de 0 et 1, devrait retourner true", () -> 
            expect(util.isNotEquals 0, 1).toBe(true)
            
        it "Comparaison de 1 et 1, devrait retourner false", () -> 
            expect(util.isNotEquals 1, 1).toBe(false)
            
        it "Comparaison de 1 et [], devrait retourner true", () -> 
            expect(util.isNotEquals 1, []).toBe(true)
            
        it "Comparaison de NaN et NaN, devrait retourner false", () -> 
            expect(util.isNotEquals NaN, NaN).toBe(false)
        
        it "Comparaison de '' et '', devrait retourner false", () -> 
            expect(util.isNotEquals "", "").toBe(false)
        
        it "Comparaison de ' ' et '', devrait retourner true", () -> 
            expect(util.isNotEquals " ", "").toBe(true)
        
        it "Comparaison de 'abc et 'abc, devrait retourner false", () -> 
            expect(util.isNotEquals "abc", "abc").toBe(false)
            
        it "Comparaison de 'abc et {}, devrait retourner true", () -> 
            expect(util.isNotEquals "abc", {}).toBe(true)
        
        it "Comparaison de {} et {}, devrait retourner false", () -> 
            expect(util.isNotEquals {}, {}).toBe(false)
            
        it "Comparaison de {a:1, b:2} et {a:1, b:2}, devrait retourner false", () -> 
            expect(util.isNotEquals {a:1, b:2}, {a:1, b:2}).toBe(false)
            
        it "Comparaison de {a:1, b:2} et {a:1, b:3}, devrait retourner true", () -> 
            expect(util.isNotEquals {a:1, b:2}, {a:1, b:3}).toBe(true)
            
        it "Comparaison de {a:1, b:2} et {a:'1', b:2}, devrait retourner true", () -> 
            expect(util.isNotEquals {a:1, b:2}, {a:"1", b:2}).toBe(true)
        
        it "Comparaison de [] et [], devrait retourner false", () -> 
            expect(util.isNotEquals [], []).toBe(false)
            
        it "Comparaison de [1, 2] et [1, 2], devrait retourner false", () -> 
            expect(util.isNotEquals [1, 2], [1, 2]).toBe(false)
        
        it "Comparaison de [1, 2] et [1, 3], devrait retourner true", () -> 
            expect(util.isNotEquals [1, 2], [1, 3]).toBe(true)
            
        it "Comparaison de [1, 2] et ['1', 2], devrait retourner true", () -> 
            expect(util.isNotEquals [1, 2], ["1", 2]).toBe(true)
        
        it "Comparaison de (() ->) et null, devrait lancer l'exception FunctionException", () -> 
            expect(() -> util.isNotEquals (() ->), null).toThrow("FunctionException")
            
        it "Comparaison de null et (() ->), devrait lancer l'exception FunctionException", () -> 
            expect(() -> util.isNotEquals (() ->), null).toThrow("FunctionException")
            
    
    ###
    # Test de la méthode contains
    ###
    describe "Test de la méthode : contains\n", () -> 
        
        it "Array = [null, 1] et seq = null, devrait retourner true", () -> 
            expect(util.contains [null, 1], null).toBe(true)
            
        it "Array = [null, 1] et seq = 2, devrait retourner false", () -> 
            expect(util.contains [null, 1], 2).toBe(false)
            
        it "Array = null et seq = 2, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.contains null, 2).toThrow "NotArrayException"
            
        it "Array = [undefined] et seq = [undefined], devrait retourner true", () -> 
            expect(util.contains [undefined], [undefined]).toBe(true)
            
        it "Array = [undefined, null] et seq = [undefined, null], devrait retourner true", () -> 
            expect(util.contains [undefined, null], [undefined, null]).toBe(true)
        
        it "Array = [undefined, 1] et seq = [undefined, 1, 2], devrait retourner false", () -> 
            expect(util.contains [undefined, 1], [undefined, 1, 2]).toBe(false)
            
        it "Array = [undefined, 1] et seq = [undefined, '1'], devrait retourner false", () -> 
            expect(util.contains [undefined, 1], [undefined, '1']).toBe(false)
            
        it "Array = [undefined, 1, 2] et seq = [undefined, 1], devrait retourner true", () -> 
            expect(util.contains [undefined, 1, 2], [undefined, 1]).toBe(true)
            
        it "Array = [undefined], devrait retourner true", () -> 
            expect(util.contains [undefined]).toBe(true)
            
        it "Array = [{a:1, b:3}, {a:2, b: 3}] et seq = {a:2, b: 3}, devrait retourner true", () -> 
            expect(util.contains [{a:1, b:3}, {a:2, b: 3}], {a:2, b: 3}).toBe(true)
        
        it "Array = [{a:1, b:3}, {a:2, b: 3}] et seq = {a:2, b: 4}, devrait retourner false", () -> 
            expect(util.contains [{a:1, b:3}, {a:2, b: 3}], {a:2, b: 4}).toBe(false)
        
        it "Array = ['coucou', 'lala', 'blabla'] et seq = ['coucou', 'blabla'], devrait retourner true", () -> 
            expect(util.contains ['coucou', 'lala', 'blabla'], ['coucou', 'blabla']).toBe(true)
        
        it "Array = ['coucou', 'blabla'] et seq = ['coucou', 'lala', 'blabla'], devrait retourner false", () -> 
            expect(util.contains ['coucou', 'blabla'], ['coucou', 'lala', 'blabla']).toBe(false)
            
    
    ###
    # Test de la méthode noContains
    ###
    describe "Test de la méthode : noContains\n", () -> 
        
        it "Array = [null, 1] et seq = null, devrait retourner false", () -> 
            expect(util.noContains [null, 1], null).toBe(false)
            
        it "Array = [null, 1] et seq = 2, devrait retourner true", () -> 
            expect(util.noContains [null, 1], 2).toBe(true)
            
        it "Array = null et seq = 2, devrait lancer l'exception NotArrayException", () -> 
            expect(() -> util.noContains null, 2).toThrow "NotArrayException"
            
        it "Array = [undefined] et seq = [undefined], devrait retourner false", () -> 
            expect(util.noContains [undefined], [undefined]).toBe(false)
            
        it "Array = [undefined, null] et seq = [undefined, null], devrait retourner false", () -> 
            expect(util.noContains [undefined, null], [undefined, null]).toBe(false)
        
        it "Array = [undefined, 1] et seq = [undefined, 1, 2], devrait retourner true", () -> 
            expect(util.noContains [undefined, 1], [undefined, 1, 2]).toBe(true)
            
        it "Array = [undefined, 1] et seq = [undefined, '1'], devrait retourner true", () -> 
            expect(util.noContains [undefined, 1], [undefined, '1']).toBe(true)
            
        it "Array = [undefined, 1, 2] et seq = [undefined, 1], devrait retourner false", () -> 
            expect(util.noContains [undefined, 1, 2], [undefined, 1]).toBe(false)
            
        it "Array = [undefined], devrait retourner false", () -> 
            expect(util.noContains [undefined]).toBe(false)
            
        it "Array = [{a:1, b:3}, {a:2, b: 3}] et seq = {a:2, b: 3}, devrait retourner false", () -> 
            expect(util.noContains [{a:1, b:3}, {a:2, b: 3}], {a:2, b: 3}).toBe(false)
        
        it "Array = [{a:1, b:3}, {a:2, b: 3}] et seq = {a:2, b: 4}, devrait retourner true", () -> 
            expect(util.noContains [{a:1, b:3}, {a:2, b: 3}], {a:2, b: 4}).toBe(true)
        
        it "Array = ['coucou', 'lala', 'blabla'] et seq = ['coucou', 'blabla'], devrait retourner false", () -> 
            expect(util.noContains ['coucou', 'lala', 'blabla'], ['coucou', 'blabla']).toBe(false)
        
        it "Array = ['coucou', 'blabla'] et seq = ['coucou', 'lala', 'blabla'], devrait retourner true", () -> 
            expect(util.noContains ['coucou', 'blabla'], ['coucou', 'lala', 'blabla']).toBe(true)
    
    ###
    # Test de la méthode clone
    ###
    describe "Test de la méthode : clone\n", () -> 
        
        it "Clone d'une valeur undefined, devrait lancer l'exception UndefinedException", () -> 
            expect(() -> util.clone undefined).toThrow "UndefinedException"
            
        it "Clone d'une valeur null, devrait retourner null", () -> 
            expect(util.clone null).toBeNull()
            
        it "Clone d'un boolean, devrait retourner la copie du boolean", () -> 
            expect(util.clone true).toBe true
            
        it "Clone d'un nombre, devrait retourner la copie du nombre", () -> 
            expect(util.clone 1).toBe 1
            
        it "Clone d'un string, devrait retourner la copie du string", () -> 
            expect(util.clone "abc").toBe "abc"
            
        it "Clone d'un objet, devrait retourner la copie du objet", () -> 
            expect(util.clone {a:1, b:2}).toEqual {a:1, b:2}
            
        it "Clone d'une liste, devrait retourner la copie de la liste", () -> 
            expect(util.clone [1, 2]).toEqual [1, 2]
            
        it "Clone d'une function, devrait lancer l'exception FunctionException", () -> 
            expect(() -> util.clone (() ->)).toThrow "FunctionException"
            
    
    ###====================================================================================
    #                            methode check or get type
    #===================================================================================###
    ###
    # Test de la méthode isNull
    ###
    describe "Test de la méthode : isNull\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNull null).toBe true
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isNull undefined).toBe false
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isNull false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isNull true).toBe false
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isNull 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isNull 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isNull NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNull "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isNull "abc").toBe false
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isNull {}).toBe false
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isNull []).toBe false
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isNull (() ->)).toBe false
            
    
    ###
    # Test de la méthode isNull
    ###
    describe "Test de la méthode : isNotNull\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isNotNull null).toBe false
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotNull undefined).toBe true
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotNull false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotNull true).toBe true
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotNull 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotNull 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotNull NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isNotNull "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotNull "abc").toBe true
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotNull {}).toBe true
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotNull []).toBe true
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotNull (() ->)).toBe true
            
    
    ###
    # Test de la méthode isUndefined
    ###
    describe "Test de la méthode : isUndefined\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isUndefined null).toBe false
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isUndefined undefined).toBe true
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isUndefined false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isUndefined true).toBe false
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isUndefined 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isUndefined 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isUndefined NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isUndefined "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isUndefined "abc").toBe false
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isUndefined {}).toBe false
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isUndefined []).toBe false
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isUndefined (() ->)).toBe false
            
    
    ###
    # Test de la méthode isNotUndefined
    ###
    describe "Test de la méthode : isNotUndefined\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotUndefined null).toBe true
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isNotUndefined undefined).toBe false
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotUndefined false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotUndefined true).toBe true
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotUndefined 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotUndefined 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotUndefined NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isNotUndefined "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotUndefined "abc").toBe true
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotUndefined {}).toBe true
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotUndefined []).toBe true
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotUndefined (() ->)).toBe true
    
    
    ###
    # Test de la méthode isBoolean
    ###
    describe "Test de la méthode : isBoolean\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isBoolean null).toBe false
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isBoolean undefined).toBe false
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isBoolean false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isBoolean true).toBe true
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isBoolean 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isBoolean 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isBoolean NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isBoolean "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isBoolean "abc").toBe false
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isBoolean {}).toBe false
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isBoolean []).toBe false
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isBoolean (() ->)).toBe false
    
    
    ###
    # Test de la méthode isNotBoolean
    ###
    describe "Test de la méthode : isNotBoolean\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotBoolean null).toBe true
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotBoolean undefined).toBe true
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isNotBoolean false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isNotBoolean true).toBe false
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotBoolean 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotBoolean 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotBoolean NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isNotBoolean "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotBoolean "abc").toBe true
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotBoolean {}).toBe true
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotBoolean []).toBe true
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotBoolean (() ->)).toBe true
    
    
    ###
    # Test de la méthode isNumber
    ###
    describe "Test de la méthode : isNumber\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isNumber null).toBe false
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isNumber undefined).toBe false
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isNumber false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isNumber true).toBe false
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNumber 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNumber 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNumber NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNumber "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isNumber "abc").toBe false
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isNumber {}).toBe false
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isNumber []).toBe false
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isNumber (() ->)).toBe false
    
    
    ###
    # Test de la méthode isNotNumber
    ###
    describe "Test de la méthode : isNotNumber\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotNumber null).toBe true
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotNumber undefined).toBe true
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotNumber false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotNumber true).toBe true
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isNotNumber 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isNotNumber 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isNotNumber NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isNotNumber "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotNumber "abc").toBe true
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotNumber {}).toBe true
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotNumber []).toBe true
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotNumber (() ->)).toBe true
            
    
    ###
    # Test de la méthode isString
    ###
    describe "Test de la méthode : isString\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isString null).toBe false
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isString undefined).toBe false
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isString false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isString true).toBe false
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isString 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isString 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isString NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isString "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isString "abc").toBe true
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isString {}).toBe false
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isString []).toBe false
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isString (() ->)).toBe false
    
    
    ###
    # Test de la méthode isNotString
    ###
    describe "Test de la méthode : isNotString\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotString null).toBe true
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotString undefined).toBe true
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotString false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotString true).toBe true
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotString 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotString 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotString NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isNotString "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isNotString "abc").toBe false
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotString {}).toBe true
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotString []).toBe true
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotString (() ->)).toBe true
    
    
    ###
    # Test de la méthode isObject
    ###
    describe "Test de la méthode : isObject\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isObject null).toBe false
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isObject undefined).toBe false
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isObject false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isObject true).toBe false
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isObject 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isObject 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isObject NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isObject "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isObject "abc").toBe false
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isObject {}).toBe true
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isObject []).toBe false
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isObject (() ->)).toBe false
            
    
    ###
    # Test de la méthode isNotObject
    ###
    describe "Test de la méthode : isNotObject\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotObject null).toBe true
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotObject undefined).toBe true
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotObject false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotObject true).toBe true
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotObject 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotObject 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotObject NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isNotObject "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotObject "abc").toBe true
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isNotObject {}).toBe false
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotObject []).toBe true
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotObject (() ->)).toBe true
    
    
    ###
    # Test de la méthode isArray
    ###
    describe "Test de la méthode : isArray\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isArray null).toBe false
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isArray undefined).toBe false
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isArray false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isArray true).toBe false
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isArray 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isArray 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isArray NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isArray "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isArray "abc").toBe false
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isArray {}).toBe false
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isArray []).toBe true
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isArray (() ->)).toBe false
    
    
    ###
    # Test de la méthode isNotArray
    ###
    describe "Test de la méthode : isNotArray\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotArray null).toBe true
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotArray undefined).toBe true
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotArray false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotArray true).toBe true
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotArray 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotArray 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotArray NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isNotArray "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotArray "abc").toBe true
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotArray {}).toBe true
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isNotArray []).toBe false
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isNotArray (() ->)).toBe true
    
    
    ###
    # Test de la méthode isFunction
    ###
    describe "Test de la méthode : isFunction\n", () -> 
        
        it "La valeur est null, devrait retourner false", () -> 
            expect(util.isFunction null).toBe false
        
        it "La valeur est undefined, devrait retourner false", () -> 
            expect(util.isFunction undefined).toBe false
        
        it "La valeur est false, devrait retourner false", () -> 
            expect(util.isFunction false).toBe false
            
        it "La valeur est true, devrait retourner false", () -> 
            expect(util.isFunction true).toBe false
        
        it "La valeur est 0, devrait retourner false", () -> 
            expect(util.isFunction 0).toBe false
            
        it "La valeur est 1, devrait retourner false", () -> 
            expect(util.isFunction 1).toBe false
            
        it "La valeur est NaN, devrait retourner false", () -> 
            expect(util.isFunction NaN).toBe false
        
        it "La valeur est une chaine de caractère vide, devrait retourner false", () -> 
            expect(util.isFunction "").toBe false
        
        it "La valeur est une chaine de caractère, devrait retourner false", () -> 
            expect(util.isFunction "abc").toBe false
        
        it "La valeur est un objet, devrait retourner false", () -> 
            expect(util.isFunction {}).toBe false
        
        it "La valeur est une liste, devrait retourner false", () -> 
            expect(util.isFunction []).toBe false
        
        it "La valeur est une function, devrait retourner true", () -> 
            expect(util.isFunction (() ->)).toBe true
    
    
    ###
    # Test de la méthode isNotFunction
    ###
    describe "Test de la méthode : isNotFunction\n", () -> 
        
        it "La valeur est null, devrait retourner true", () -> 
            expect(util.isNotFunction null).toBe true
        
        it "La valeur est undefined, devrait retourner true", () -> 
            expect(util.isNotFunction undefined).toBe true
        
        it "La valeur est false, devrait retourner true", () -> 
            expect(util.isNotFunction false).toBe true
            
        it "La valeur est true, devrait retourner true", () -> 
            expect(util.isNotFunction true).toBe true
        
        it "La valeur est 0, devrait retourner true", () -> 
            expect(util.isNotFunction 0).toBe true
            
        it "La valeur est 1, devrait retourner true", () -> 
            expect(util.isNotFunction 1).toBe true
            
        it "La valeur est NaN, devrait retourner true", () -> 
            expect(util.isNotFunction NaN).toBe true
        
        it "La valeur est une chaine de caractère vide, devrait retourner true", () -> 
            expect(util.isNotFunction "").toBe true
        
        it "La valeur est une chaine de caractère, devrait retourner true", () -> 
            expect(util.isNotFunction "abc").toBe true
        
        it "La valeur est un objet, devrait retourner true", () -> 
            expect(util.isNotFunction {}).toBe true
        
        it "La valeur est une liste, devrait retourner true", () -> 
            expect(util.isNotFunction []).toBe true
        
        it "La valeur est une function, devrait retourner false", () -> 
            expect(util.isNotFunction (() ->)).toBe false
    
    
    ###
    # Test de la méthode getType
    ###
    describe "Test de la méthode : getType\n", () -> 
        
        it "La valeur est null, devrait retourner 'null'", () -> 
            expect(util.getType null).toBe "null"
        
        it "La valeur est undefined, devrait retourner 'undefined'", () -> 
            expect(util.getType undefined).toBe "undefined"
        
        it "La valeur est false, devrait retourner 'boolean'", () -> 
            expect(util.getType false).toBe "boolean"
            
        it "La valeur est true, devrait retourner 'boolean'", () -> 
            expect(util.getType true).toBe "boolean"
        
        it "La valeur est 0, devrait retourner 'number'", () -> 
            expect(util.getType 0).toBe "number"
            
        it "La valeur est 1, devrait retourner 'number'", () -> 
            expect(util.getType 1).toBe "number"
            
        it "La valeur est NaN, devrait retourner 'number'", () -> 
            expect(util.getType NaN).toBe "number"
        
        it "La valeur est une chaine de caractère vide, devrait retourner 'string'", () -> 
            expect(util.getType "").toBe "string"
        
        it "La valeur est une chaine de caractère, devrait retourner 'string'", () -> 
            expect(util.getType "abc").toBe "string"
        
        it "La valeur est un objet, devrait retourner 'object'", () -> 
            expect(util.getType {}).toBe "object"
        
        it "La valeur est une liste, devrait retourner 'array'", () -> 
            expect(util.getType []).toBe "array"
        
        it "La valeur est une function, devrait retourner 'function'", () -> 
            expect(util.getType (() ->)).toBe "function"