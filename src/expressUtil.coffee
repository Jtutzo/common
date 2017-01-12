
util = require './util'

###
# Send an ajax object
# @param res
# @param object
# @exception NOT_OBJECT_EXCEPTION
###
module.exports.sendObject = (res, object) ->
    util.notObjectException res
    util.notObjectException object
    response = {'object': object}
    res.setHeader 'Content-Type', 'application/json'
    res.send response

###
# Send an ajax data
# @param res
# @param object
# @exception NOT_OBJECT_EXCEPTION
###
module.exports.sendData = (res, data) ->
    util.notObjectException res
    response = {'aaData': data}
    res.setHeader 'Content-Type', 'application/json'
    res.send response

###
# Send an ajax message
# @param res
# @param object
# @exception NOT_OBJECT_EXCEPTION, NOT_STRING_EXCEPTION
###
module.exports.sendMessage = (res, msg) ->
    util.notObjectException res
    util.notStringException msg
    res.setHeader 'Content-Type', 'text/html'
    res.send msg

###
# Send an ajax error
# @param res
# @param object
# @exception NOT_OBJECT_EXCEPTION, NOT_STRING_EXCEPTION
###
module.exports.sendError = (res, msg) ->
    util.notObjectException res
    util.notStringException msg
    res.setHeader 'Content-Type', 'text/html'
    res.send "Error technique : [#{msg}]"

###
# Vérifie et extrait le paramêtres correspondant au nom
# @param req
# @param name
# @param info: {type: string, required: boolean}
# @return params
# @exception NOT_OBJECT_EXCEPTION, NOT_STRING_EXCEPTION, BLANK_EXCEPTION
###
module.exports.extractParam = (req, name, info) ->
    util.notObjectException req
    util.notStringException name
    util.blankException name
    param = if util.isObject req.body then req.body[name] else null
    if util.isNotNullOrUndefined param then param = JSON.parse param

    if util.isObject info
        typeParam = util.getType param
        required = info['required'];
        type = info['type'];

        if required && (typeParam is util.UNDEFINED || typeParam is util.NULL) then throw new Error "module requestUtil => params : " + name + " is required."

        if util.isString type && util.isNotEmpty type && typeParam isnt type && ((!required && typeParam isnt util.UNDEFINED && typeParam isnt util.NULL) || required)
            throw new Error "module requestUtil => params : " + name + " bad type"

    param;
