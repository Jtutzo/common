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
paramsCache = {
    url: "",
    repalceUrl: '{referentiel}',
    success: null,
    failure: null,
    method: 'POST',
    async: false,
    labelTechnicalError: "Erreur technique"
}

cache = []

###====================================================================================
#                                   methodes ajax
#===================================================================================###
###
# default's configuration ajax query
# @param confAjax
# @exception NOT_OBJECT_EXCEPTION
###
defaultConfAjax = (confAjax) -> paramsAjax = newConfAjax confAjax;true

    
###
# default's configuration cache
# @param confCache
# @exception NOT_OBJECT_EXCEPTION
###
defaultConfCache = (confCache) -> paramsCache = newConfCache confCache;true
    

###
# Send ajax query 
# @param confAjax
# @exception NO_DATA_RECEIVED_EXCEPTION
###
sendQuery = (confAjax) -> 
    confAjax = if util.isNullOrUndefiend confAjax then {} else confAjax
    conf = newConfAjax confAjax
    query conf
    true


###
# Search in cache (or send query ajax)
# @param referentiel
# @param success
# @param failure
# @exception BLANK_EXCEPTION, NOT_STRING_EXCEPTION, ARGUMENT_EXCEPTION, NO_DATA_RECEIVED_EXCEPTION
###
searchInCache = (referentiel, success, faillure) -> 
    util.blankException referentiel, "referentiel mustn't be blank (ajaxUtil.searchCache)."
    util.notStringException referentiel, "referentiel must be a string value (ajaxUtil.searchCache)."
    if util.isNotBlank cache[referentiel] then response = cache[referentiel];success?(response)
    else 
        expr = paramsCache['url'].indexOf(paramsCache['repalceUrl']) < 0;
        util.argumentException expr, "repalceUrl isn't present in default url (ajaxUtil.searchCache)."

        conf = newConfCache {
            url: url.replace repalceUrl, referentiel
            success: (resp) -> 
                resp = if util.isNotNullOrUndefined resp then resp.obj else resp
                success?(resp)
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
newConfCache = (conf) -> 

    util.notObjectException conf, "conf must be an object value (util.factoryConfReferentiel)."

    retour = util.clone paramsCache

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
module.exports.defaultConfCache = defaultConfCache

module.exports.sendQuery = sendQuery
module.exports.searchInCache = searchInCache