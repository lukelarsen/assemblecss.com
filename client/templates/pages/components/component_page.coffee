Template.componentPage.helpers
    components: ->
        Components.find({}, {sort: {title: 1}})