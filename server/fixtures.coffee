## COMPONENTS
if Components.find().count() == 0
    Components.insert
        title: 'Forms'
        block: {
            title: '%form'
            requirements: [
                { requirement: 'grids' }
                { requirement: 'something else' }
            ]
            example: {
                html: '<h6>some html code</h6>'
                sass: 'some Scss code'
                rendered: 'rendered html here'
            }

        }
        modifiers: [
            {
                title: '%form--fit'
                requirements: [
                    { requirement: 'variable on' }
                ]
                example: {
                    html: '<h6>some html code</h6>'
                    sass: 'some Scss code'
                    rendered: 'rendered html here'
                }
            }
            {
                title: '%form--full'
                requirements: [
                    { requirement: 'variable on' }
                ]
                example: {
                    html: '<h6>some html code</h6>'
                    sass: 'some Scss code'
                    rendered: 'rendered html here'
                }
            }
            {
                title: '%form--halves'
                requirements: [
                    { requirement: 'variable on' }
                ]
                example: {
                    html: '<h6>some html code</h6>'
                    sass: 'some Scss code'
                    rendered: 'rendered html here'
                }
            }
        ]
        extras: [
            {
                title: '.check-list'
                requirements: [
                    { requirement: 'variable on' }
                ]
                example: {
                    html: '<h6>some html code</h6>'
                    sass: 'some Scss code'
                    rendered: 'rendered html here'
                }
            }
            {
                title: '.check-list--inline'
                requirements: [
                    { requirement: 'variable on' }
                ]
                example: {
                    html: '<h6>some html code</h6>'
                    sass: 'some Scss code'
                    rendered: 'rendered html here'
                }
            }
        ]
        the_options: [
            {
                variable: '$form-item-push-bottom'
                default: '10px'
            }
            {
                variable: '$form-item-border-color'
                default: '#808080'
            }
        ]
        options_message: 'Message here'

## UTILITIES
if Utilities.find().count() == 0
    Utilities.insert
        title: 'Arrows'
        requirements: [
            { requirement: 'grids' }
            { requirement: 'something else' }
        ]
        examples_html: [
            {
                example: 'some html code'
                message: 'some message'
            }
            {
                example: 'some other html code'
                message: 'some other message'
            }
        ]
        examples_sass: [
            {
                example: 'some Scss code'
                message: 'some message'
            }
            {
                example: 'some other Scss code'
                message: 'some other message'
            }

        ]
        examples_rendered: [
            {
                rendered: 'rendered css here'
            }
        ]
        the_options: [
            {
                variable: '$utility_option'
                default: '10px'
            }
            {
                variable: '$some_other_option'
                default: '#808080'
            }
        ]
        options_message: 'Message here'

## GET STARTED PAGES
if GetStartedPages.find().count() == 0
    GetStartedPages.insert
        title: 'Install'
        sections: [
            {
                title: 'Install with Bower'
                content: '<code>bower install assemble.css</code><br><br>
                <p>Then you\'ll need to:</p>

                <ol>
                    <li>Download the <a href="https://github.com/lukelarsen/assemble.css-template" target="_blank">assemble.css-template</a></li>
                    <li>Place the images and stylesheets directories in your project where you need them.</li>
                    <li>Depending on how you structure your app you might need to help Assemble.css find files it needs to compile. You can adjust this in the stylesheets/style.scss file. You need to make sure the path to general-returns.scss and assemble.scss are correct.</li>
                </ol>

                <p>You do not need stylesheets/style.meteor.scss and scss.json. They aren\'t needed when using Bower.</p>

                <p>All done.</p>'
            }
            {
                title: 'Install witih Meteor'
                content: '<code>meteor add lukelarsen:assemble.css-meteor</code><br><br>
                <p>Then you\'ll need to:</p>

                <ol>
                    <li>Download the <a href="https://github.com/lukelarsen/assemble.css-template" target="_blank">assemble.css-template</a></li>
                    <li>Place scss.json file at the root of your project directory</li>
                    <li>Place the stylesheets directory in your client directory</li>
                    <li>Place the images directory in your public directory</li>
                    <li>Remove style.scss from the stylesheets directory. It isn\'t needed when using Meteor.</li>
                </ol>

                <p>NOTE: When you run your app for the first time with Assemble.css it might throw an error saying a file it tried to import wasn\'t found. Just exit out and run meteor a second time and it will compile just fine.</p>

                <p>All done.</p>'
            }
        ]

    GetStartedPages.insert
        title: 'Usage'
        sections: [
            {
                title: 'Using Assemble.css'
                content: '<p>Assemble.css is very configurable. If you don\'t want a portion of the framework you don\'t have to include it in your css output. You shouldn\'t need to modify the contents you install via Bower or Meteor. All the configurations will happen in the assemble.css-template. Within stylesheets/ui/options you can set all the variables that will include the css code for the components you want. Everything is excluded by default so you will need to go and set the components you want to true. You may also set some design options by editing the design variables in specific option files.</p>

                <p>One design variable that often needs updating is $webkit-select-arrow. It looks for an image to use as a background-image for select boxes. If you move your image dirctory around you\'ll need to update this variable to point to the svg file.</p>'
            }
        ]
