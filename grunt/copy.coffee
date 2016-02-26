env = require "./env"


escapteTemplate = (html) ->
  html = html.replace /[\n]/g, ""
  html.replace /\"/g, "\\\""

convertToTemplate = (content) ->
  """
  define([
  ], function() {
    return "#{escapteTemplate content}";
  });
  """

copy =
  debug:
    options:
      process: (content, file_path) ->
        return content unless /\.html$/i.test file_path
        convertToTemplate content
    files: [{
      cwd: "#{env.paths.tmp}/scripts"
      src: ["**/*.js"]
      dest: env.paths.dest.scripts
      expand: true
    }, {
      cwd: "#{env.paths.tmp}/templates"
      src: ["**/*.html"]
      dest: env.paths.dest.templates
      expand: true
      ext: ".js"
    }]

module.exports = copy
