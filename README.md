# Org + Noosphere
This intends to provide tools to build out a workflow to write notes in org-mode, but serialize them out to [Noosphere](https://github.com/subconsciousnetwork/noosphere).

## Installation
Clone the git repo.
Get [org-to-subtext](https://github.com/justinabrahms/org-roam-to-subtext) on your path.

## Usage

```
# Fill out env based on your setup
cp env.sample env


# Add the "share" tag to any of your files you want to render out. using `org-roam-tag-add`

# Render out the files into your current directory (this generates .subtext files)
org-sync.sh

# save & sync
orb sphere save
orb sphere sync
```
