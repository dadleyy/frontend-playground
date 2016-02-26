env = require "./env"

module.exports =
  options: {}
  debug:
    files: [{
      cwd: env.paths.templates
      src: ["**/*.riot.tag"]
      dest: "#{env.paths.tmp}/templates"
      expand: true
      ext: ".js"
    }]
