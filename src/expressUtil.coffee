
util = require './util'

###
# Send an ajax object
# @param req
# @param res
# @param object
###
module.exports.sendObject = (req, res, object) -> response = {'object': object};res.setHeader 'Content-Type', 'application/json';res.send response

###
# Send an ajax data
# @param req
# @param res
# @param object
###
module.exports.sendData = (req, res, data) -> response = {'aaData': data};res.setHeader 'Content-Type', 'application/json';res.send response

###
# Send an ajax message
# @param req
# @param res
# @param object
###
module.exports.sendMessage = (req, res, msg) -> res.setHeader 'Content-Type', 'text/html';res.send msg

###
# Send an ajax error
# @param req
# @param res
# @param object
###
module.exports.sendError = (req, res, msg) -> res.setHeader 'Content-Type', 'text/html';res.send "Error technique : [" + msg + "]"

###
# Vérifie et extrait le paramêtres correspondant au nom
# @param req
# @param name
# @param info: {type: string, required: boolean}
# @return params
###
module.exports.extractParam = (req, name, info) ->
    util.notObjectException req, "requestUtil => req must be an object value"
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
