
function! s:PostChatByUser()
  let s:viewer = input('Search: ')
  let s:chat=system('beginchat -a | grep -i ' . s:viewer . ' | tail -5 ')
  let @+ = s:chat
endfunction

function! s:LastTwitchMsg()
  let s:chat=system('beginchat -c 2')
  let @+ = s:chat
  execute "normal! p"
endfunction

function! s:ObsSceneCommands()
  let s:chat=system('echo "codin\ncubin\nbrb\nstartin\nlecture\nbreakin\nnews" | dmenu -l 29 | xargs scene')
endfunction

function! s:ObsSourceCommands()
  let s:chat=system('echo "jdi\nidk\nwyp\ni_like_that_thing\ni_hate_that_thing\nrevolution\npeace" | dmenu -l 30 | xargs so')
endfunction

function! s:TwitchCommands()
  let s:chat=system('cat ~/.config/TWITCH_CHAT_COMMANDS | dmenu -l 30 | xargs beginbot')
endfunction

function! s:DecryptTheChat()
  let s:chat=system('beginchat -c 1')
  let @+ = s:chat
  execute "normal! p"
endfunction

function! s:PostChat()
  let s:chat=system('beginchat')
  let @+ = s:chat
endfunction

function! s:SendToTwitch()
  let s:msg=getline('.')
  " Escape "'s or we won't be able to send lines with "
  let s:msg=substitute(s:msg, '"', '\\\"', '')
  let s:regexForUrl='[a-z]*:\/\/[^ >,;)]*'
  let s:uri=matchstr(s:msg, s:regexForUrl)
  if len(s:uri)>0
      let s:twitch_call=system('beginbot " ' .  s:uri. '"')
  else
      let s:twitch_call=system('beginbot " ' .  s:msg . '"')
  endif
endfunction

function! s:GistAndPost(type)
  if a:type ==# 'V'
    let l:lines = getline("'<", "'>")
  else
    let l:lines = getline('^', '$')
  endif
  let l:uri = system('gist', l:lines)
  let s:chat=system('beginbot ' . l:uri . ' ')
endfunction
