Template.utilityPage.helpers
    utilities: ->
        Utilities.find({}, {sort: {title: 1}})