package = "nosigpipe"
version = "scm-1"
source = {
    url = "git://github.com/mah0x211/lua-nosigpipe.git"
}
description = {
    summary = "a module that ignore SIGPIPE",
    homepage = "https://github.com/mah0x211/lua-nosigpipe",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        nosigpipe = "src/nosigpipe.c",
    }
}
