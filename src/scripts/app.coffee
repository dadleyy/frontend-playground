define [
  "components/user_list"
], (UserList) ->

  Vue.config.debug = true

  instance = new Vue
    el: "#main"
    data:
      items: [{name: "bill"}, {name: "danny"}]

  true
