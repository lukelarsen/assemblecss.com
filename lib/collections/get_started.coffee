@GetStartedPages = new (orion.collection)('getStartedPages',
    singularName: 'Page'
    pluralName: 'Pages'
    link:
        #The text that you want to show in the sidebar.
        #The default value is the name of the collection.
        title: 'Get Started Pages'

    tabular:
        #Here we set which data columns we want to appear on the data table
        #in the CMS panel.
        columns: [
            data: 'title'
            title: 'Title'
        ]
)


#Schema for this collection
GetStartedPages.attachSchema new SimpleSchema(
    title:
        type: String
        optional: false
        label: 'Title'

    sections:
        #The [] means that the value of sections is an array of Objects.
        type: [Object]
        optional: false
        label: 'Sections'
        minCount: 1
        #maxCount: 4

    'sections.$.title':
        type: String
        optional: false
        label: 'Title'

    #'sections.$.content':
    'sections.$.content': orion.attribute('summernote',
        optional: false
        #label: 'Content'
        label: 'Content')
)