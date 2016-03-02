env = require "./env"

module.exports =
  release:
    options:
      pretty: false
      data: {DEBUG: false}
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
  debug:
    options:
      pretty: true
      data: {DEBUG: true}
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

