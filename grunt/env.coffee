path = require "path"
env = {}

env.paths = {dest: {}, root: path.join __dirname, ".."}

env.paths.scripts = "#{env.paths.root}/src/scripts"
env.paths.templates = "#{env.paths.root}/src/templates"

env.paths.tmp = "#{env.paths.root}/tmp"
env.paths.bower = "#{env.paths.root}/bower_components"

env.paths.dest.root = "#{env.paths.root}/dist"
env.paths.dest.scripts = "#{env.paths.dest.root}/scripts"
env.paths.dest.templates = "#{env.paths.dest.root}/templates"

module.exports = env
