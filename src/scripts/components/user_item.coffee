define [
  "templates/components/user_item"
], (template) ->

  methods = {}

  methods.remove = ->
    delegate = @delegate
    delegate.remove @user

  methods.rename = ->
    @delegate.rename @user

  UserItem = Vue.component "user-item",

    props: ["user", "delegate"]

    template: template

    methods: methods

  UserItem
