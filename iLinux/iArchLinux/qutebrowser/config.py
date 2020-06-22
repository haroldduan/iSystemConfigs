# Dracula theme settings
import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

# default page
c.url.default_page = 'https://cn.bing.com'
# start pages
c.url.start_pages = ['https://cn.bing.com']
# searchengines config
c.url.searchengines = {
    'DEFAULT': 'https://cn.bing.com/search?q={}',
    'google': 'https://google.com/search?q={}',
    'bing': 'https://cn.bing.com/search?q={}',
    'duckduckgo': 'https://duckduckgo.com/?q={}',
    'github': 'https://github.com/search?q={}',
    'npm': 'https://npmjs.com/search?q={}',
    'baidu': 'https://baidu.com/s?wd={}',
    'mijisou': 'https://mijisou.com/search?q={}'
}

config.unbind('<ctrl+tab>')
config.bind('<ctrl+tab>', 'tab-next')
config.bind('<ctrl+shift+tab>', 'tab-prev')
config.unbind('<Alt-1>')
config.unbind('<Alt-2>')
config.unbind('<Alt-3>')
config.unbind('<Alt-4>')
config.unbind('<Alt-5>')
config.unbind('<Alt-6>')
config.unbind('<Alt-7>')
config.unbind('<Alt-8>')
config.unbind('<Alt-9>')
config.bind('<Ctrl-1>', 'tab-focus 1')
config.bind('<Ctrl-2>', 'tab-focus 2')
config.bind('<Ctrl-3>', 'tab-focus 3')
config.bind('<Ctrl-4>', 'tab-focus 4')
config.bind('<Ctrl-5>', 'tab-focus 5')
config.bind('<Ctrl-6>', 'tab-focus 6')
config.bind('<Ctrl-7>', 'tab-focus 7')
config.bind('<Ctrl-8>', 'tab-focus 8')
config.bind('<Ctrl-9>', 'tab-focus 9')
config.bind('<Ctrl-0>', 'tab-focus -1')