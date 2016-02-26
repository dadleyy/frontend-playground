env = require "./env"

module.exports =

  all: [
    env.paths.tmp
    env.paths.dest.scripts
    env.paths.dest.templates
    "#{env.paths.dest.root}/index.html"
  ]
