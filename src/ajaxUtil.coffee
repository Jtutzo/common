###====================================================================================
#                                     Dépendances
#===================================================================================###
$ = require 'jquery'
util = require './util'


###====================================================================================
#                                     Constantes
#===================================================================================###
#Ajax response
SUCCESS = 'SUCCESS'
ERROR = 'ERROR'

NO_DATA_RECEIVED_EXCEPTION = "NoDataReceived"


###====================================================================================
#                                     Variables
#===================================================================================###
#default params for ajax query
paramsAjax = {
    url: "",
    data: null,
    success: null,
    failure: null,
    method: 'POST',
    async: true,
    labelTechnicalError: "Erreur technique"
}

#default params for referentiel ajax query
paramsReferentiel = {
    url: "",
    repalceUrl: '{referentiel}',
    success: null,
    failure: null,
    method: 'POST',
    async: false,
    labelTechnicalError: "Erreur technique"
}

#Cache referentiel
referentiel = {
    cache: [],
    alreadySend: [],
    callbacks: []
}


###====================================================================================
#                                   methodes ajax
#===================================================================================###
###
# default's configuration ajax query
# @param confAjax
# @return confAjax
# @exception NOT_OBJECT_EXCEPTION
###
defaultConfAjax = (confAjax) -> paramsAjax = newConfAjax if util.isUndefined confAjax then {} else confAjax

    
###
# default's configuration cache referenteil
# @param confCache
# @return confRef 
# @exception NOT_OBJECT_EXCEPTION
###
confReferentiel = (confRef) -> paramsReferentiel = newConfReferentiel if util.isUndefined confRef then {} else confRef
    

###
# Send ajax query 
# @param confAjax
# @exception NO_DATA_RECEIVED_EXCEPTION
###
send = (confAjax) -> 
    confAjax = if util.isNullOrUndefiend confAjax then {} else confAjax
    conf = newConfAjax confAjax
    query conf
    true


###
# Search in cache referentiel (or send query ajax)
# @param name
# @param success
# @param failure
# @exception BLANK_EXCEPTION, NOT_STRING_EXCEPTION, ARGUMENT_EXCEPTION, NO_DATA_RECEIVED_EXCEPTION
###
toReferentiel = (name, success, faillure) -> 
    util.blankException name, "name mustn't be blank (ajaxUtil.toReferentiel)."
    util.notStringException name, "name must be a string value (ajaxUtil.toReferentiel)."
    if util.isNotBlank referentiel['cache'][name] then response = referentiel['cache'][name];success?(response)
    else if  referentiel['alreadySend'][name] then referentiel.callbacks.push success
    else
        expr = paramsReferentiel['url'].indexOf(paramsReferentiel['repalceUrl']) < 0;
        util.argumentException expr, "repalceUrl isn't present in default url (ajaxUtil.toReferentiel)."

        conf = newConfReferentiel {
            url: url.replace repalceUrl, name
            success: (resp) -> 
                resp = if util.isNotNullOrUndefined resp then resp.obj else resp
                referentiel['cache'][name] = resp
                success?(resp)
                for callback in referentiel['callbacks'] then callback?(resp)
                true
            faillure: faillure
        }
        query conf
    true
    

###====================================================================================
#                                   methodes privates
#===================================================================================###
###
# factory conf ajax query
# @param conf
# @private
# @exception NOT_OBJECT_EXCEPTION, EMPTY_EXCEPTION, NOT_STRING_EXCEPTION, NOT_BOOLEAN_EXCEPTION, ARGUMENT_EXCEPTION
###
newConfAjax = (conf) -> 

    util.notObjectException conf, "conf must be an object value (util.factoryParamsAjax)."

    retour = util.clone paramsAjax

    #url
    if util.isNotNullOrUndefined conf['url'] 
        util.notStringException conf['url'], "conf.url must be a string value (util.factoryParamsAjax)."
        retour['url'] = conf['url'];
            
    #data
    if util.isNotUndefined conf['data']
        expr = (util.isNotNull conf['data']) and util.isNotObject conf['data']
        util.argumentException expr, "conf.data must be a null or an object value (util.factoryParamsAjax)."
        retour['data'] = util.clone conf['data']

    #success
    if util.isNotUndefined conf['success']
        expr = (util.isNotNull conf['success']) and util.isNotFunction conf['success']
        util.argumentException expr, "conf.success must be a null or a function value (util.factoryParamsAjax)."
        retour['success'] = conf['success']

    #failure
    if util.isNotUndefined conf['failure']
        expr = (util.isNotNull conf['failure']) && util.isNotFunction conf['failure']
        util.argumentException expr, "conf.failure must be a null or a function value (util.factoryParamsAjax)."
        retour['failure'] = conf['failure']

    #method
    if util.isNotNullOrUndefined conf['method']
        util.notStringException conf['method'], "conf.method must be a string value (util.factoryParamsAjax)."
        expr = conf['method'] isnt 'POST' && conf['method'] isnt 'GET'
        util.argumentException expr, "conf.methode must be equals to 'GET' or 'POST' (util.factoryParamsAjax)."
        retour['method'] = conf['method'];

    #async
    if util.isNotNullOrUndefined conf['async']
        util.notBooleanException conf['async'], "conf.async must be a boolean value (util.factoryParamsAjax)."
        retour['async'] = conf['async'];

    retour


###
# factory conf referentiel query
# @param conf
# @private
# @exception NOT_OBJECT_EXCEPTION, EMPTY_EXCEPTION, NOT_STRING_EXCEPTION, NOT_BOOLEAN_EXCEPTION, ARGUMENT_EXCEPTION
###
newConfReferentiel = (conf) -> 

    util.notObjectException conf, "conf must be an object value (util.factoryConfReferentiel)."

    retour = util.clone paramsReferentiel

    #url
    if util.isNotNullOrUndefined conf['url']
        util.notStringException conf['url'], "conf.url must be a string value (util.factoryConfReferentiel)."
        retour['url'] = conf['url']

    #repalceUrl
    if util.isNotNullOrUndefined conf['repalceUrl']
        util.notStringException conf['repalceUrl'], "conf.repalceUrl must be a string value (util.factoryConfReferentiel)."
        retour['repalceUrl'] = util.clone conf['repalceUrl']

    #success
    if isNotUndefined conf['success']
        expr = (util.isNotNull conf['success']) and util.isNotFunction conf['success']
        util.argumentException expr, "conf.success must be a null or a function value (util.factoryParamsAjax)."
        retour['success'] = conf['success']

    #failure
    if isNotUndefined conf['failure']
        expr = (util.isNotNull conf['failure']) and util.isNotFunction conf['failure']
        util.argumentException expr, "conf.failure must be a null or a function value (util.factoryParamsAjax)."
        retour['failure'] = conf['failure']

    #method
    if isNotNullOrUndefined conf['method']
        util.notStringException conf['method'], "conf.method must be a string value (util.factoryParamsAjax)."
        expr = conf['method'] isnt 'POST' and conf['method'] isnt 'GET'
        util.argumentException expr, "conf.methode must be equals to 'GET' or 'POST' (util.factoryParamsAjax)."
        retour['method'] = conf['method']

    #async
    if isNotNullOrUndefined conf['async']
        util.notBooleanException conf['async'], "conf.async must be a boolean value (util.factoryParamsAjax)."
        retour['async'] = conf['async']

    retour


###
# Send query with ajax jquery lib 
# @param conf
# @private
# @exception NO_DATA_RECEIVED_EXCEPTION
###
query = (conf) -> 
    success = (obj) -> util.debug "Response : #{obj}";conf.success?(obj)
    failure = (obj) -> util.error "error : #{obj}";conf.failure?(obj)
            
    util.notObjectException conf, "options must be an object value (util.query)."
    $.ajaxSetup {async: (if conf.async then true else false)}
            
    util.debug "[" + conf.method + "][" + conf.url + "][data : " + conf.data + "]"
    $.ajax {type: conf.method, url : conf.url, data : conf.data}
    .done (response) -> 
        try
            if response? and util.isNotUndefined response
                obj = toObject response, conf
                    
                if !obj then throw Error(NO_DATA_RECEIVED_EXCEPTION);
                else if obj.typeMessage == SUCCESS then success(obj)
                else failure?(obj)
            else failure?(obj)
        catch e then util.error "exception : " + exception + " [response : " + response +"]"
        true
    .fail (jqXHR, textStatus) -> 
        obj = {}
        obj.errorMessages = [conf.url + ' -> [Statut : ' + jqXHR.status + ',' + jqXHR.statusText + ']']
        failure?(obj)
        true
    $.ajaxSetup {async: true}
    true
             
        
###
# Convert ajax response to object 
# @param response
# @return object
# @private
###
toObject = (response, conf) -> 
    retour = response
    try
        retour = JSON.parse response
    catch e 
            
    if util.isString retour
        if retour is SUCCESS then retour = {typeMessage: SUCCESS, errorMessages: []}
        else if retour is ERROR then retour = {typeMessage: ERROR, errorMessages: [conf['labelTechnicalError']]}
        else retour = {typeMessage: ERROR, errorMessages: [retour]}
    else if typeof retour['aaData'] isnt 'undefined'
        retour = {
            typeMessage: SUCCESS,
            errorMessages: [],
            data: retour['aaData']
        }
    else if typeof retour['object'] isnt 'undefined'
        retour = {
            typeMessage: SUCCESS,
            errorMessages: [],
            data: retour['object']
        }
    retour


###====================================================================================
#                                   Exports
#===================================================================================###    
module.exports.SUCCESS = SUCCESS
module.exports.ERROR = ERROR

module.exports.NO_DATA_RECEIVED_EXCEPTION = NO_DATA_RECEIVED_EXCEPTION

module.exports.defaultConfAjax = defaultConfAjax
module.exports.confReferentiel = confReferentiel

module.exports.send = send
module.exports.toReferentiel = toReferentiel