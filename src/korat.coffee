React = require 'react'
reps =
  'accept-charset': 'acceptCharset'
  'class': 'className'
  'for': 'htmlFor'
  'http-equiv': 'httpEquiv'
if module?.exports
  module.exports = ->
    a = Array.from arguments
    args = a
    args.splice 1,0,null if (a[1]?.$$typeof or
      Array.isArray a[1]) or
      (typeof a[1] isnt 'object')
    if !!args[1] and typeof args[1] is "object"
      for attr, v of args[1]
        rep = reps[attr]
        if rep
          args[1][rep] = v
          delete args[1][attr]
    React.createElement.apply React, args
