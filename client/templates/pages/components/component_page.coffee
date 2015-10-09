Template.componentPage.helpers
    components: ->
        Components.find({}, {sort: {title: 1}})

Template.componentPage.onRendered ->
    iconic = IconicJS()
    iconic.inject 'img.iconic'
    modal = new VanillaModal({})
    return