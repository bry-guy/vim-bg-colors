" bg color scheme for lightline (github.com/itchyny/lightline.vim).
" altered from moonfly color scheme for lightline (github.com/bluz71/vim-moonfly-colors)
"
" URL:     github.com/bry-guy/vim-bg-colors
" License: MIT (https://opensource.org/licenses/MIT)

let s:white   = ['#c6c6c6', 251]
let s:grey247 = ['#9e9e9e', 247]
let s:black = ['#000000', 236]
let s:grey234 = ['#1c1c1c', 234]
let s:blue    = ['#80a0ff', 4]
let s:purple  = ['#ae81ff', 13]
let s:crimson = ['#ff5189', 9]

if exists('g:lightline')
    let s:p = {
        \ 'normal': {},
        \ 'inactive': {},
        \ 'insert': {},
        \ 'replace': {},
        \ 'visual': {},
        \ 'tabline': {}}

    let s:p.normal.left     = [[s:grey234, s:blue],    [s:white, s:black]]
    let s:p.normal.middle   = [[s:white,   s:black]]
    let s:p.normal.right    = [[s:white,   s:black], [s:blue, s:black]]
    let s:p.normal.warning  = [[s:white,   s:black]]
    let s:p.normal.error    = [[s:blue,    s:black]]

    let s:p.inactive.left   = [[s:grey247, s:black], [s:grey247, s:black]]
    let s:p.inactive.middle = [[s:grey247, s:black]]
    let s:p.inactive.right  = [[s:grey247, s:black], [s:grey247, s:black]]

    let s:p.insert.left     = [[s:grey234, s:white],   [s:white, s:black]]
    let s:p.replace.left    = [[s:grey234, s:crimson], [s:white, s:black]]
    let s:p.visual.left     = [[s:grey234, s:purple],  [s:white, s:black]]

    let s:p.tabline.left    = [[s:grey247, s:black]]
    let s:p.tabline.middle  = [[s:grey247, s:black]]
    let s:p.tabline.right   = [[s:grey247, s:black]]
    let s:p.tabline.tabsel  = [[s:blue,    s:black]]

    let g:lightline#colorscheme#bg#palette = lightline#colorscheme#flatten(s:p)
endif
