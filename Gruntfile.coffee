module.exports = (grunt) ->

  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-riot"

  grunt.initConfig

    clean: require "./grunt/clean"
    jade: require "./grunt/jade"
    concat: require "./grunt/concat"
    riot: require "./grunt/riot"
    coffee: require "./grunt/coffee"
    copy: require "./grunt/copy"

  grunt.registerTask "default", [
    "clean"
    "jade"
    "concat"
    "coffee"
    "riot"
    "copy"
  ]
