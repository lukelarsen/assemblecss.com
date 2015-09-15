Router.configure
    layoutTemplate: 'layout',
    loadingTemplate: 'loading',
    notFoundTemplate: 'notFound',
    waitOn: ->
        Meteor.subscribe 'components'
        Meteor.subscribe 'utilities'
        Meteor.subscribe 'getStartedPages'

Router.route '/', name: 'home'

Router.route '/get-started', name: 'getStartedList'
Router.route '/get-started/:_id',
    name: 'getStartedPage',
    data: ->
        GetStartedPages.findOne this.params._id

Router.route '/components', name: 'componentsList'
Router.route '/components/:_id',
    name: 'componentPage',
    data: ->
        Components.findOne this.params._id

Router.route '/utilities', name: 'utilitiesList'
Router.route '/utilities/:_id',
    name: 'utilityPage',
    data: ->
        Utilities.findOne this.params._id

Router.onBeforeAction 'dataNotFound', only: 'componentsPage'
Router.onBeforeAction 'dataNotFound', only: 'utilitiesPage'