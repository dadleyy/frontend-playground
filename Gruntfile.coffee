module.exports = (grunt) ->

  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-riot"

  grunt.initConfig

    clean: require "./grunt/clean"
    jade: require "./grunt/jade"
    concat: require "./grunt/concat"
    watch: require "./grunt/watch"
    riot: require "./grunt/riot"
    coffee: require "./grunt/coffee"
    copy: require "./grunt/copy"
    uglify: require "./grunt/uglify"

  grunt.registerTask "default", [
    "clean:all"
    "jade:debug"
    "concat:debug"
    "coffee:debug"
    "copy:debug"
  ]

  grunt.registerTask "release", [
    "clean:all"
    "jade:release"
    "concat:debug"
    "coffee:debug"
    "copy:debug"
    "uglify:release"
  ]

