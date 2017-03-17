# Korat

Tiny tool for react/react-native with pure functions. no closing tags, no braces.

Made by coffeescript. but it is useful with javascript.

It's just a thin wrapper around [React.createElement](https://facebook.github.io/react/docs/top-level-api.html#react.createelement) like JSX.

but more simple and concise. fun with the Korat!
[![Build Status](https://img.shields.io/travis/acidsound/korat.svg?style=flat-square)](https://travis-ci.org/acidsound/korat)
[![NPM version](https://img.shields.io/npm/v/korat.svg?style=flat-square)](https://www.npmjs.org/package/korat)

## Installation
```
$ npm install korat --save
```

## Usage 
### in React
```coffee
React = require 'react'
{ Component } = React
k = require 'korat'

class App extends Component
  constructor: (props)->
    super props
    @state =
      newTodo: ""
  render: ->
    k 'div',
      k 'h2', 'Todos'
      k 'ul',
        k 'li', key: v, "#{v}. Task" for v in [0..5]
      k NewTodo, todo: @state.newTodo
      k 'button',
        onClick: (e)-> @addNewTodo

class NewTodo extends Component
  constructor: (props)->
    super props
    @state =
      todo: props.todo
  render: ->
    k 'div',
      k 'label', 'for': 'addTodo', 'Add Todo'
      k 'input',
        id: 'addTodo',
        type: 'text',
        value: @props.todo
        onChange: (e)->
          @props.todo = e.target.value
ReactDOM.render b(App),
  document.getElementById 'container'
```
### in React-Native
```coffee
React = require 'react'
{Component} = React
{
  StyleSheet
  Text
  View
} = require 'react-native'
k = require 'korat'
class App extends Component
  render: ->
    k View, style: styles.container,
      k Text, "Open up main.js to start working on your app."
      k View,
        k Text, key:v, "#{v}number" for v in [1..5]
styles = StyleSheet.create
  container:
    flex: 1
    backgroundColor: '#fff'
    alignItems: 'center'
    justifyContent: 'center'
```

## Thanks to

