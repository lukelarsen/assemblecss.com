@Utilities = new (orion.collection)('utilities',
    singularName: 'Utility'
    pluralName: 'Utilities'
    link:
        title: 'Utilities'

    tabular:
        columns: [
            data: 'title'
            title: 'Title'
        ]
)


#Schema for this collection
Utilities.attachSchema new SimpleSchema(
    title:
        type: String
        optional: false
        label: 'Title'

    requirements:
        type: [Object]
        optional: true
        label: 'Requirements'

    'requirements.$.requirement':
        type: String
        optional: true
        label: 'Requirement'

    examples_html:
        type: [Object]
        optional: true
        label: 'HTML Examples'

    'examples_html.$.example': orion.attribute('summernote',
        optional: true
        label: 'Example')

    'examples_html.$.message':
        type: String
        optional: true
        label: 'Message'

    examples_sass:
        type: [Object]
        optional: true
        label: 'Sass Examples'

    'examples_sass.$.example': orion.attribute('summernote',
        optional: true
        label: 'Example')

    'examples_sass.$.message':
        type: String
        optional: true
        label: 'Message'

    examples_rendered:
        type: [Object]
        optional: true
        label: 'Rendered Examples'

    'examples_rendered.$.rendered': orion.attribute('summernote',
        optional: true
        label: 'Rendered')

    the_options:
        type: [Object]
        optional: true
        label: 'Options'

    'the_options.$.variable':
        type: String
        optional: true
        label: 'Variable'

    'the_options.$.default':
        type: String
        optional: true
        label: 'Default'

    options_message:
        type: String
        optional: true
        label: 'Options Message'
)
