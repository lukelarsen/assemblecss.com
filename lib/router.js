Router.configure({
    layoutTemplate : 'layout'
});

Router.route('/', { name: 'home'});
Router.route('/install', { name: 'install' });
Router.route('/usage', { name: 'usage' });
Router.route('/docs', { name: 'docs' });
