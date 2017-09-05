# Artsy Workflow for Alfred

This is a workflow for Alfred that comes with a few neat commands:

```
'a' => open artsy.net
'ag reponame' => open the repo in your default browser
'ah appname' => open the app's Heroku Dashboard in your default browser
'az zoomroomname' => open the Zoom room name
```

## Install

The recommended way to install this workflow is to clone it down and then
symlink it over to your workflows folder:

```
git clone git@github.com:jonallured/team-artsy.alfredworkflow.git team-artsy
ln -s team-artsy ~/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences/workflows/team-artsy
```

Those commands will clone and name the resulting folder `team-artsy` and then
create the symlink into the workflows folder for Alfred. If you've changed where
your Alfred workflows live, just substitute that in the command above.
