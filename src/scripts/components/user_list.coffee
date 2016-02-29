define [
  "components/user_item"
  "templates/components/user_list"
], (UserItem, template) ->

  methods = {}

  methods.clicked = ->
    @items = @items or []
    @items.push {name: chance.name()}
    true

  UserList = Vue.component "user-list",

    props: ["items"]

    template: template

    methods: methods

  UserList
