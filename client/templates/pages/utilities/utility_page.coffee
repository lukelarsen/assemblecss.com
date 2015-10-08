Template.utilityPage.helpers
    utilities: ->
        Utilities.find({}, {sort: {title: 1}})

Template.utilityPage.onRendered ->
    iconic = IconicJS()
    iconic.inject 'img.iconic'
    return
