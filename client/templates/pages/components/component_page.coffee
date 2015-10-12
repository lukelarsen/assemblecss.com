Template.componentPage.helpers
    components: ->
        Components.find({}, {sort: {title: 1}})

Template.componentPage.onRendered ->
    iconic = IconicJS()
    iconic.inject 'img.iconic'
    modal = new VanillaModal({})
    window.addEventListener 'load', ->
        tip_triggers = document.getElementsByClassName('tip-trigger')
        tip_closers = document.getElementsByClassName('tip__close')
        i = 0
        while i < tip_triggers.length
            tip_triggers[i].addEventListener 'click', ->
                the_tip = @parentNode.getElementsByClassName('tip')[0]
                the_tip.classList.add 'tip--visible'
                return
            tip_closers[i].addEventListener 'click', ->
                the_tip = @parentNode.parentNode.getElementsByClassName('tip')[0]
                the_tip.classList.remove 'tip--visible'
                return
            i++
        return
    return