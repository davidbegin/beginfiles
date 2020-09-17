function! s:MdTitle(sign)
  let cnt=strwidth(getline('.'))
  execute "normal! o" repeat(a:sign,cnt)
  execute "normal! 0xj"
endfunction

" Get title of youtube link
function! s:YoutubeTitle(ytUrl)
  " what is . and the a: ????
  let l:ytTitle=system('youtube-dl -e "' . a:ytUrl . '"')
  return l:ytTitle
endfunction

function! s:CurlTitle(url)
  let s:rawTitle=system('curl -s ' . a:url . ' | grep "<title>"')
  if len(s:rawTitle)>0
      let s:title=substitute(substitute(s:rawTitle, '<title>', '', ''), '</title>', '', '')
  else
      let s:title=''
  endif
  return s:title
endfunction

function s:MdCreateLink(title, url, posStart, posEnd)
  let l:curPos=getcurpos()[1:]
  " set cursor to end of url to add ")"
  call cursor(l:curPos[0], a:posEnd)
  execute "normal! a)"
  " set cursor to start of url
  call cursor(l:curPos[0], a:posStart)
  execute "normal! i[" . a:title . "](\<esc>"
endfunction

" Create Markdown link getting title from url
function! MdLink()
  " Should reach cannonicial regex for URLs
  let s:regexForUrl='[a-z]*:\/\/[^ >,;)]*'

  " matchstr is part vimscript?
  " getline means grab the whole line
  let s:uri=matchstr(getline('.'), s:regexForUrl)

  let s:posStart=match(getline('.'), s:regexForUrl) + 1
  let s:posEnd=matchend(getline('.'), s:regexForUrl)

  if len(matchstr(s:uri, 'youtube\.com'))>0
      let s:title=s:YoutubeTitle(s:uri)
  elseif len(matchstr(s:uri, 'youtu.be'))>0
      let s:title=s:YoutubeTitle(s:uri)
  else
      let s:title=s:CurlTitle(s:uri)
  endif
  let s:cleanTitle=substitute(s:title, '\n\+$', '', '')
  call s:MdCreateLink(s:cleanTitle, s:uri, s:posStart, s:posEnd)
endfunction
