define [
  "templates/components/user_item"
], (template) ->

  UserItem = Vue.component "user-item",

    props: ["user"]

    template: template

  UserItem
