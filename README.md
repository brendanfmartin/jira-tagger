# Tagger

Tool for creating links to JIRA tickets from github projects.

!!! No npm dependencies

_NOTE: the commits *must* contain the ticket number_

## Usage
```
node release.js <LOCAL/PATH/TO/REPO> <OLD.TAG> <NEW.TAG> <OUTPUT-NAME>
```

#### example
```
node release.js ../../project-name release-2018-02-22.0 release-2018-03-30.0 project-name
```
