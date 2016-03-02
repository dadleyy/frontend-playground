define [
  "components/user_item"
  "templates/components/user_list"
], (UserItem, template) ->

  class Delegate

    constructor: (items=[]) ->
      @user_list = items

  Delegate::remove = (user) ->
    index = null
    index = i for u, i in @user_list when u.name == user.name
    return -1 if index == null
    @user_list.splice index, 1

  Delegate::rename = (user) ->
    user.name = chance.name()

  methods = {}

  methods.clicked = ->
    console.log @items
    @items.push {name: chance.name()}
    true

  UserList = Vue.component "user-list",

    props: []

    template: template

    data: ->
      items = []
      delegate = new Delegate items
      {items: items, delegate: delegate}

    methods: methods

  UserList
