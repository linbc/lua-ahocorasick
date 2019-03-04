package = "lua-ahocorasick"
version = "0.2.0-4"
source = {
	url = "git://github.com/linbc/lua-ahocorasick.git",
    tag = "0.2.0-4",
}
description = {
	summary = "This is a lua binding to MultiFast, which is used for quickly and efficiently searching text for multiple strings." ;
	license = "MIT" ;
}
dependencies = {
	"lua >= 5.1"
}
external_dependencies = {
	--MULTIFAST = { header = "ahocorasick.h" }
}
build = {
	type = "builtin" ;
	modules = {
		[package] = {
            sources = { "src/ahocorasick.c", "src/node.c", "lahocorasick.c" };
			libraries = { "ahocorasick" } ;
			incdirs = { "$(MULTIFAST_INCDIR)" } ;
		} ;
	} ;
}
