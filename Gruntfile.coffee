# Generated on 2014-03-28 using generator-jekyllrb 1.2.1
'use strict'

module.exports = (grunt) ->
  require('time-grunt') grunt
  require('load-grunt-tasks') grunt

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    yeoman:
      app: 'app'
      dist: 'dist'

    watch:
      sass:
        files: [ '<%= yeoman.app %>/styles/**/*.{scss,sass}' ]
        tasks: [
          'sass:server'
          'autoprefixer:server'
        ]

      autoprefixer:
        files: [ '<%= yeoman.app %>/styles/**/*.css' ]
        tasks: [
          'copy:stageCss'
          'autoprefixer:server'
        ]

      coffee:
        files: [ '<%= yeoman.app %>/scripts/**/*.coffee' ]
        tasks: [ 'coffee:dist' ]

      coffeeTest:
        files: [ 'test/spec/**/*.coffee' ]
        tasks: [ 'coffee:test' ]

      jekyll:
        files: [
          '<%= yeoman.app %>/**/*.{html,yml,md,mkd,markdown}'
          '!<%= yeoman.app %>/_bower_components/**/*'
        ]
        tasks: [ 'jekyll:server' ]

      livereload:
        options:
          livereload: '<%= connect.options.livereload %>'

        files: [
          '.jekyll/**/*.html'
          '.tmp/styles/**/*.css'
          '{.tmp,<%= yeoman.app %>}/<%= js %>/**/*.js'
          '<%= yeoman.app %>/images/**/*.{gif,jpg,jpeg,png,svg,webp}'
        ]

    browserSync:
      server:
        bsFiles:
          src: [
            '.jekyll/**/*.html'
            '.tmp/css/**/*.css'
            '{.tmp,<%= yeoman.app %>}/scripts/**/*.js'
            '{<%= yeoman.app %>}/_bower_components/**/*.js'
            '<%= yeoman.app %>/img/**/*.{gif,jpg,jpeg,png,svg,webp}'
          ]
        options:
          server:
            baseDir: [
              '.jekyll'
              '.tmp'
              '<%= yeoman.app %>'
            ]
          watchTask: true
      dist:
        options:
          server:
            baseDir: '<%= yeoman.dist %>'
      test:
        bsFiles:
          src: [
            '.jekyll/**/*.html'
            '.tmp/css/**/*.css'
            '{.tmp,<%= yeoman.app %>}/scripts/**/*.js'
            '{<%= yeoman.app %>}/_bower_components/**/*.js'
            '<%= yeoman.app %>/img/**/*.{gif,jpg,jpeg,png,svg,webp}'
          ]
        options:
          server:
            baseDir: [
              '.jekyll'
              '.tmp'
              '<%= yeoman.app %>'
            ]
          watchTask: true

    clean:
      dist:
        files: [
          dot: true
          src: [
            '<%= yeoman.dist %>/*'
            '!<%= yeoman.dist %>/.git*'
          ]
        ]
      server: [
        '.tmp'
        '.jekyll'
      ]

    sass:
      options:
        bundleExec: true
        debugInfo: false
        lineNumbers: false
        loadPath: 'app/_bower_components'
      dist:
        files: [
          expand: true
          cwd: '<%= yeoman.app %>/styles'
          src: '**/*.{scss,sass}'
          dest: '.tmp/styles'
          ext: '.css'
        ]
      server:
        options:
          debugInfo: true
          lineNumbers: true
        files: [
          expand: true
          cwd: '<%= yeoman.app %>/styles'
          src: '**/*.{scss,sass}'
          dest: '.tmp/styles'
          ext: '.css'
        ]

    autoprefixer:
      options:
        browsers: [ 'last 2 versions' ]
      dist:
        files: [
          expand: true
          cwd: '<%= yeoman.dist %>/styles'
          src: '**/*.css'
          dest: '<%= yeoman.dist %>/styles'
        ]
      server:
        files: [
          expand: true
          cwd: '.tmp/styles'
          src: '**/*.css'
          dest: '.tmp/styles'
        ]

    coffee:
      dist:
        files: [
          expand: true
          cwd: '<%= yeoman.app %>/scripts'
          src: '**/*.coffee'
          dest: '.tmp/scripts'
          ext: '.js'
        ]
      test:
        files: [
          expand: true
          cwd: 'test/spec'
          src: '**/*.coffee'
          dest: '.tmp/spec'
          ext: '.js'
        ]

    replace:
      options:
        patterns: [
          match: 'VERSION'
          replacement: '<%= pkg.version %>'
        ,
          match: 'DATE'
          replacement: '<%= grunt.template.today("yyyy-mm-dd") %>'
        ,
          match: 'NAME'
          replacement: '<%= pkg.name %>'
        ,
          match: 'YEAR'
          replacement: '<%= grunt.template.today("yyyy") %>'
        ,
          match: 'DESCRIPTION'
          replacement: '<%= pkg.description %>'
        ,
          match: 'KEYWORDS'
          replacement: '<%= pkg.keywords.join(",") %>'
        ]
      jekyll:
        files: [
          expand: true
          flatten: true
          src: [ '.jekyll/index.html' ]
          dest: '.jekyll'
        ]
      dist:
        files: [
          expand: true
          flatten: true
          src: [ '<%= yeoman.dist %>/index.html' ]
          dest: '<%= yeoman.dist %>'
        ]

    jekyll:
      options:
        bundleExec: true
        config: '_config.yml,_config.build.yml'
        src: '<%= yeoman.app %>'
      dist:
        options:
          dest: '<%= yeoman.dist %>'
      server:
        options:
          config: '_config.yml'
          dest: '.jekyll'
      check:
        options:
          doctor: true

    useminPrepare:
      options:
        dest: '<%= yeoman.dist %>'
      html: '<%= yeoman.dist %>/index.html'

    usemin:
      options:
        assetsDirs: '<%= yeoman.dist %>'
      html: [ '<%= yeoman.dist %>/**/*.html' ]
      css: [ '<%= yeoman.dist %>/styles/**/*.css' ]

    htmlmin:
      dist:
        options:
          collapseWhitespace: true
          collapseBooleanAttributes: true
          removeAttributeQuotes: true
          removeRedundantAttributes: true
        files: [
          expand: true
          cwd: '<%= yeoman.dist %>'
          src: '**/*.html'
          dest: '<%= yeoman.dist %>'
        ]

    concat: {}

    uglify: {}

    cssmin:
      dist:
        options:
          check: 'gzip'

    imagemin:
      dist:
        options:
          progressive: true
        files: [
          expand: true
          cwd: '<%= yeoman.dist %>'
          src: '**/*.{jpg,jpeg,png}'
          dest: '<%= yeoman.dist %>'
        ]

    svgmin:
      dist:
        files: [
          expand: true
          cwd: '<%= yeoman.dist %>'
          src: '**/*.svg'
          dest: '<%= yeoman.dist %>'
        ]

    copy:
      dist:
        files: [
          expand: true
          dot: true
          cwd: '<%= yeoman.app %>'
          src: [
            'images/**/*'
            'fonts/**/*'
            '!**/_*{,/**}'
          ]
          dest: '<%= yeoman.dist %>'
        ]
      stageCss:
        files: [
          expand: true
          dot: true
          cwd: '<%= yeoman.app %>/styles'
          src: '**/*.css'
          dest: '.tmp/styles'
        ]

    filerev:
      options:
        length: 4
      dist:
        files: [src: [
          '<%= yeoman.dist %>/scripts/**/*.js'
          '<%= yeoman.dist %>/styles/**/*.css'
          '<%= yeoman.dist %>/fonts/**/*.{eot*,otf,svg,ttf,woff}'
        ]]

    coffeelint:
      options:
        'max_line_length':
          'level': 'ignore'
        'no_empty_param_list':
          'level': 'error'
      check: [ '<%= yeoman.app %>/scripts/**/*.coffee' ]

    concurrent:
      server: [
        'sass:server'
        'coffee:dist'
        'copy:stageCss'
        'jekyll:server'
      ]
      dist: [
        'sass:dist'
        'coffee:dist'
        'copy:dist'
        'replace:dist'
      ]

  grunt.registerTask 'serve', ( target ) ->
    return grunt.task.run [ 'build', 'browserSync:dist' ] if target is 'dist'

    grunt.task.run [
      'clean:server'
      'concurrent:server'
      'replace:jekyll'
      'autoprefixer:dist'
      'browserSync:server'
      'watch'
    ]

  grunt.registerTask 'test', [
    # 'clean:server',
    # 'concurrent:test',
    # 'connect:test'
  ]

  grunt.registerTask 'check', [
    'coffeelint:check'
  ]

  grunt.registerTask 'build', [
    'clean'
    'jekyll:dist'
    'concurrent:dist'
    'useminPrepare'
    'concat'
    'autoprefixer:dist'
    'cssmin'
    'uglify'
    'imagemin'
    'svgmin'
    'filerev'
    'usemin'
    'htmlmin'
  ]

  grunt.registerTask 'default', [
    'check'
    'test'
    'build'
  ]

  return
