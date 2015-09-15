Meteor.publish 'components', ->
    Components.find()

Meteor.publish 'utilities', ->
    Utilities.find()

Meteor.publish 'getStartedPages', ->
    GetStartedPages.find()