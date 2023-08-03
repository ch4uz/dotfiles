if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END

