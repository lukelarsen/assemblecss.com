Template.utilitiesList.helpers
    utilities: ->
        Utilities.find({}, {sort: {title: 1}})