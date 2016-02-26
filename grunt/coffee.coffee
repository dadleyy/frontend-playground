env = require "./env"

module.exports =

  debug:
    options:
      bare: true
    files: [{
      cwd: env.paths.scripts
      dest: "#{env.paths.tmp}/scripts"
      src: ["**/*.coffee"]
      expand: true
      ext: ".js"
    }]
