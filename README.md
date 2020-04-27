*nix version of Revorb by someone smarter than me, namely Jiri Hruska <jiri.hruska@fud.cz>

The `big-enough` branch makes no attempt to resize the output buffer with `realloc`. Thus, it's meant to be used with RevorbStd's `big-enough` branch which provides a large enough output buffer to cut down memory copy.
