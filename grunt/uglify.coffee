env = require "./env"

config =
  release:
    files: [{
      expand: true
      dest: env.paths.dest.scripts
      src: ["**/*.js"]
      cwd: env.paths.dest.scripts
    }]

module.exports = config
