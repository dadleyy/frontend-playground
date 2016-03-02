env = require "./env"

concat =
  debug:
    options:
      nonull: true
    files: [{
      src: [
        "#{env.paths.bower}/vue/dist/vue.js"
        "#{env.paths.bower}/requirejs/require.js"
      ]
      dest: "#{env.paths.dest.scripts}/vendor.bundle.js"
    }]

module.exports = concat
