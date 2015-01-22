var generator = require('yeoman-generator');

module.exports = generator.Base.extend({
    askModuleName: function() {
        var done = this.async();
        this.prompt({
          type    : 'input',
          name    : 'name',
          message : 'What will be your module name?'
        }, function (answers) {
            this.moduleName = answers.name;
            done();
            }.bind(this));
    },

    writing: function() {
        this.fs.copyTpl(
            this.templatePath('default/**/*.coffee'),
            this.destinationPath(this.moduleName),
            {moduleName: this.moduleName}
        );
    },

    done: function() {
        this.log.ok("Initial structure for module " + this.moduleName + " is ready.");
    }
});