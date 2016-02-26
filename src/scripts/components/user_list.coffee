define [
  "components/user_item"
  "templates/components/user_list"
], (UserItem, template) ->

  UserList = Vue.component "user-list",

    props: ["items"]

    template: template

    methods:

      clicked: ->
        @items = @items or []
        @items.push {name: "danny"}
        console.log @items
        true

  UserList
