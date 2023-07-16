# Org + Noosphere
This intends to provide tools to build out a workflow to write notes in org-mode, but serialize them out to [Noosphere](https://github.com/subconsciousnetwork/noosphere).


## Usage

```
# Fill out env based on your setup
cp env.sample env

# Symlink your date-oriented org files to exclude dates (nicer for tab complete)
build-symlinks.sh /path/to/org/roam/files

# Add files you want to keep track of to the registry file
add-to-registry.sh /tmp/org-symlinks/mynote.org

# sync the files into your current noosphere directory (this generates .subtext files)
org-sync.sh
```
