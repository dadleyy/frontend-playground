env = require "./env"

config =

  all:
    files: [
      "#{env.paths.scripts}/**/*"
      "#{env.paths.templates}/**/*"
    ]
    tasks: [
      "jade:debug"
      "concat:debug"
      "coffee:debug"
      "copy:debug"
    ]


module.exports = config
