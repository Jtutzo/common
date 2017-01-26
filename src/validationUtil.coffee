util require './util'

forms = {}

functionsValidations = {}

add = (validation) -> 
    util.notObjectException validation, "Validation must be an object value (validationUtil.add)"
    util.notStringException validation['form'], "validation.form must be a string value (validationUtil.add)"
    util.notStringException validation['field'], "validation.field must be a string value (validationUtil.add)"
    
    util.isNotArray forms[validation['form']] then forms[validation['form']] = {}
    forms[validation['form']][validation['field']] = validation
        

    
addFunctionValidation = (name, fct) -> 

toValidate = (form, field) -> 


validationUtil.add({
    form: "monForm",
    field: "monField",
    filers: ["required", "email"],
    value: function() {
        return vm.$data.value;
    }
    onError: function(msg) {
        vm.isSuccess = false;
        vm.isClean = false;
        vm.onError = true;
    },
    onSuccess: function(msg) {
        vm.onError = false;
        vm.isClean = false;
        vm.isSuccess = true;
    }
})

