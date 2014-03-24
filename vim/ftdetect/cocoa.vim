" Cocoapods files are actually Ruby
au BufRead,BufNewFile {Podfile,*.podspec} set ft=ruby

" ...except when they're YAML
au BufRead,BufNewFile {Podfile.lock} set ft=yaml

