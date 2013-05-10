window.Ember.TEMPLATES.application=Ember.Handlebars.compile("<div class='navbar navbar-inverse navbar-fixed-top'>\n  <div class='navbar-inner'>\n    <div class='container'>\n      <div class='nav-collapse collapse'>\n        <ul class='nav'>\n          <li {{bindAttr class=\"isHome:active\"}}>{{#linkTo 'index'}}Home{{/linkTo}}</li>\n          <li {{bindAttr class=\"isUsers:active\"}}>{{#linkTo 'users.index'}}Users{{/linkTo}}</li>\n        </ul>\n      </div>\n    </div>\n  </div>\n</div>\n<div class='container' id='main'>\n  <div class='content'>\n    <div class='row'>\n      <div class='span12'>\n        <div class='page-header'></div>\n        {{outlet}}\n      </div>\n    </div>\n  </div>\n</div>\n");