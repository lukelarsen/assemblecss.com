@Components = new (orion.collection)('components',
    singularName: 'Component'
    pluralName: 'Components'
    link:
        title: 'Components'

    tabular:
        columns: [
            data: 'title'
            title: 'Title'
        ]
)


#Schema for this collection
Components.attachSchema new SimpleSchema(
    title:
        type: String
        optional: false
        label: 'Title'

    block:
        type: Object
        optional: true
        label: 'Block'

    'block.title':
        type: String
        optional: true
        label: 'Block Title'

    'block.requirements':
        type: [Object]
        optional: true
        label: 'Requirements'

    'block.requirements.$.requirement':
        type: String
        optional: true
        label: 'Requirement'

    'block.usage': orion.attribute('summernote',
        optional: true
        label: 'Usage')

    'block.example':
        type: Object
        optional: true
        label: 'Example'

    'block.example.html': orion.attribute('summernote',
        optional: true
        label: 'HTML')

    'block.example.html_message':
        type: String
        optional: true
        label: 'HTML Message'

    'block.example.sass': orion.attribute('summernote',
        optional: true
        label: 'Sass')

    'block.example.sass_message':
        type: String
        optional: true
        label: 'Sass Message'

    'block.example.rendered': orion.attribute('summernote',
        optional: true
        label: 'Rendered')

    'block.example.rendered_message':
        type: String
        optional: true
        label: 'Rendered Message'

    modifiers:
        type: [Object]
        optional: true
        label: 'Modifiers'

    'modifiers.$.title':
        type: String
        optional: false
        label: 'Modifier Title'

    'modifiers.$.requirements':
        type: [Object]
        optional: true
        label: 'Requirements'

    'modifiers.$.requirements.$.requirement':
        type: String
        optional: true
        label: 'Requirement'

    'modifiers.$.example':
        type: Object
        optional: true
        label: 'Example'

    'modifiers.$.example.html': orion.attribute('summernote',
        optional: true
        label: 'HTML')

    'modifiers.$.example.html_message':
        type: String
        optional: true
        label: 'HTML Message'

    'modifiers.$.example.sass': orion.attribute('summernote',
        optional: true
        label: 'Sass')

    'modifiers.$.example.sass_message':
        type: String
        optional: true
        label: 'Sass Message'

    'modifiers.$.example.rendered': orion.attribute('summernote',
        optional: true
        label: 'Rendered')

    'modifiers.$.example.rendered_message':
        type: String
        optional: true
        label: 'Rendered Message'

    extras:
        type: [Object]
        optional: true
        label: 'Extras'

    'extras.$.title':
        type: String
        optional: false
        label: 'Extra Title'

    'extras.$.requirements':
        type: [Object]
        optional: true
        label: 'Requirements'

    'extras.$.requirements.$.requirement':
        type: String
        optional: true
        label: 'Requirement'

    'extras.$.example':
        type: Object
        optional: true
        label: 'Example'

    'extras.$.example.html': orion.attribute('summernote',
        optional: true
        label: 'HTML')

    'extras.$.example.html_message':
        type: String
        optional: true
        label: 'HTML Message'

    'extras.$.example.sass': orion.attribute('summernote',
        optional: true
        label: 'Sass')

    'extras.$.example.sass_message':
        type: String
        optional: true
        label: 'Sass Message'

    'extras.$.example.rendered': orion.attribute('summernote',
        optional: true
        label: 'Rendered')

    'extras.$.example.rendered_message':
        type: String
        optional: true
        label: 'Rendered Message'

    the_options:
        type: [Object]
        optional: true
        label: 'Options'

    'the_options.$.variable':
        type: String
        optional: false
        label: 'Variable'

    'the_options.$.default':
        type: String
        optional: false
        label: 'Default'

    options_message:
        type: String
        optional: true
        label: 'Options Message'
)
