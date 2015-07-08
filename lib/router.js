Router.configure({
    layoutTemplate : 'layout'
});

Router.route('/', { name: 'home'});
Router.route('/install', { name: 'install' });
Router.route('/docs', { name: 'docs' });
