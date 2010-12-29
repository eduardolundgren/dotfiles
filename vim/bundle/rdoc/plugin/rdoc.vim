command! -nargs=0 RDocPreview call RDocRenderBufferToPreview()

function! RDocRenderBufferToPreview()
let rdocoutput = "/tmp/vimrdoc/"
call system("rdoc " . bufname("%") . " --op " . rdocoutput)
call system("open -a /Applications/Google\ Chrome.app/ " . rdocoutput . "index.html")
endfunction
