Template.componentsList.helpers
    components: ->
        Components.find({}, {sort: {title: 1}})