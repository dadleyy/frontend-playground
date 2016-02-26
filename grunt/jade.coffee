env = require "./env"

module.exports =
  debug:
    options:
      pretty: true
    files: [{
      cwd: env.paths.templates
      src: ["index.jade"]
      dest: env.paths.dest.root
      expand: true
      ext: ".html"
    }, {
      cwd: env.paths.templates
      src: ["**/*.component.jade"]
      dest: "#{env.paths.tmp}/templates"
      expand: true
      ext: ".html"
    }]

