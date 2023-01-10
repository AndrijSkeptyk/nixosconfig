// Заменить текст в настройках расширения командами vim
settings.omnibarMaxResults=15;
settings.nextLinkRegex=/((>>|next)+)/i;
settings.prevLinkRegex=/((<<|prev(ious)?)+)/i;
settings.defaultSearchEngine="sx"; 
settings.enableEmojiInsertion=true;
settings.startToShowEmoji=1;
settings.smartCase=true;



api.removeSearchAlias('b');
api.removeSearchAlias('d');
api.removeSearchAlias('e');
api.removeSearchAlias('g');
api.removeSearchAlias('h');
api.removeSearchAlias('s');
api.removeSearchAlias('w');
api.removeSearchAlias('y');



api.addSearchAlias('gg', 'google', 'https://www.google.com/search?q=', 's', 'https://www.google.com/complete/search?client=chrome-omni&gs_ri=chrome-ext&oit=1&cp=1&pgcl=7&q=', function(response) {
    var res = JSON.parse(response.text);
    return res[1];
});

api.addSearchAlias('dd', 'duckduckgo', 'https://duckduckgo.com/?q=', 's', 'https://duckduckgo.com/ac/?q=', function(response) {
    var res = JSON.parse(response.text);
    return res.map(function(r){
        return r.phrase;
    });
});

api.addSearchAlias('aw', 'arch wiki', 'https://wiki.archlinux.org/index.php?title=Special:Search&search=', 's','https://duckduckgo.com/ac/?q=', function(response) {
    var res = JSON.parse(response.text);
    return res.map(function(r){
        return r.phrase;
    });
});

api.addSearchAlias('bi', 'bing', 'http://global.bing.com/search?setmkt=en-us&setlang=en-us&q=', 's', 'http://api.bing.com/osjson.aspx?query=', function(response) {
    var res = JSON.parse(response.text);
    return res[1];
});
api.addSearchAlias('so', 'stackoverflow', 'http://stackoverflow.com/search?q=');
api.addSearchAlias('gh', 'github', 'https://github.com/search?q=', 's', 'https://api.github.com/search/repositories?order=desc&q=', function(response) {
    var res = JSON.parse(response.text)['items'];
    return res ? res.map(function(r){
        return {
            title: r.description,
            url: r.html_url
        };
    }) : [];
});
api.addSearchAlias('yt', 'youtube', 'https://www.youtube.com/results?search_query=', 's',
'https://clients1.google.com/complete/search?client=youtube&ds=yt&callback=cb&q=', function(response) {
    var res = JSON.parse(response.text.substr(9, response.text.length-10));
    return res[1].map(function(d) {
        return d[0];
    });
});




api.addSearchAlias('we', 'wiki en', 'https://en.wikipedia.org/wiki/', 's', 'https://en.wikipedia.org/w/api.php?action=opensearch&format=json&formatversion=2&namespace=0&limit=40&search=', function(response) {
    return JSON.parse(response.text)[1];
});
api.addSearchAlias('wu', 'wiki ua', 'https://uk.wikipedia.org/wiki/', 's', 'https://uk.wikipedia.org/w/api.php?action=opensearch&format=json&formatversion=2&namespace=0&limit=40&search=', function(response) {
    return JSON.parse(response.text)[1];
});
api.addSearchAlias('wr', 'wiki ru', 'https://ru.wikipedia.org/wiki/', 's', 'https://ru.wikipedia.org/w/api.php?action=opensearch&format=json&formatversion=2&namespace=0&limit=40&search=', function(response) {
    return JSON.parse(response.text)[1];
});

//api.addSearchAlias('sx', 'searx', 'http://localhost:8888/search?q=', 's');
api.addSearchAlias('sx', 'searx', 'https://farside.link/searx/search?q=', 's');
api.addSearchAlias('sn', 'searx', 'https://farside.link/searxng/search?q=', 's');
api.addSearchAlias('rt', 'rutracker peekier', 'https://peekier.com/#!site:rutracker.org ', 's');
api.addSearchAlias('mg', 'metager', 'https://metager3.de/en/meta/meta.ger3?eingabe=', 's');
api.addSearchAlias('dog', 'dogfile', 'https://www.dogpile.com/serp?q=', 's');
api.addSearchAlias('et', 'etools', 'https://www.etools.ch/searchSubmit.do?query=', 's');
api.addSearchAlias('gb', 'gigablast', 'http://www.gigablast.com/search?c=main&qlangcountry=en-us&q=', 's');
api.addSearchAlias('lg', 'libgen rus', 'http://gen.lib.rus.ec/search.php?view=simple&res=25&phrase=1&column=def&page=1&req=', 's');
api.addSearchAlias('p', 'peekier', 'https://peekier.com/#!', 's');
api.addSearchAlias('q', 'guant', 'https://www.qwant.com/?client=opensearch&q=', 's');
api.addSearchAlias('lk', 'lukol', 'https://www.lukol.com/s.php?q=#gsc.tab=0&gsc.page=1&gsc.q=', 's');
api.addSearchAlias('sw', 'swisscows', 'https://swisscows.com/web?culture=ru&region=iv&query=', 's');
api.addSearchAlias('io', 'libraries.io', 'https://libraries.io/search?q=', 's');
api.addSearchAlias('fl', 'flickr', 'https://www.flickr.com/search/?text=', 's');
api.addSearchAlias('v', 'vimeo', 'https://vimeo.com/search?q=', 's');
api.addSearchAlias('bl', 'blogsearchengine', 'http://www.blogsearchengine.org/search.html?q=', 's');
api.addSearchAlias('sc', 'searccode', 'https://searchcode.com/?q=', 's');
api.addSearchAlias('ss', 'social-searcher', 'https://www.social-searcher.com/social-buzz/?q5=', 's');
api.addSearchAlias('gt', 'google translate', 'https://translate.google.com/#view=home&op=translate&sl=auto&tl=ru&text=');



// Tab Next/Prev
api.map('}', 'R');
api.map('{', 'E');

//Next/Prev Page
api.map(']', ']]');
api.map('[', '[[');

//mapkey('K', '#1Click on the previous link on current page', previousPage);
//mapkey('J', '#1Click on the next link on current page', nextPage);

// Move Tab Left/Right
api.map('>', '>>');
api.map('<', '<<');


//map('+', 'zi');
//map('-', 'zo');
//map('=', 'zr');



// Chrome Flags
// mapkey('gF', '#12Open Chrome Flags', function() {
//    tabOpenLink("chrome://flags/");
// });


