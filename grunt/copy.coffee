env = require "./env"

copy =
  debug:
    files: [{
      cwd: "#{env.paths.tmp}/scripts"
      src: ["**/*.js"]
      dest: env.paths.dest.scripts
      expand: true
    }, {
      cwd: "#{env.paths.tmp}/templates"
      src: ["**/*.js"]
      dest: env.paths.dest.templates
      expand: true
    }]

module.exports = copy
