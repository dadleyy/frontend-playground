env = require "./env"

concat =
  debug:
    files: [{
      src: [
        "#{env.paths.bower}/riot/riot.js"
        "#{env.paths.bower}/requirejs/require.js"
      ]
      dest: "#{env.paths.dest.scripts}/vendor.bundle.js"
    }]

module.exports = concat
