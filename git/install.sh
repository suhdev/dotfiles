#!/bin/sh

# aliases
git config --global alias.co                              "checkout"
git config --global alias.promote                         "!$ZSH/bin/git-promote"
git config --global alias.wtf                             "!$ZSH/bin/git-wtf"
git config --global alias.unpushed-st                     "!$ZSH/bin/git-unpushed-stat"
git config --global alias.nuke                            "!$ZSH/bin/git-nuke"
git config --global alias.count                           "shortlog -sn"
git config --global alias.lc                              "!$ZSH/bin/git-add-rm-line-count"
git config --global alias.g                               "grep --break --heading --line-number"
git config --global alias.gi                              "grep --break --heading --line-number -i"
git config --global alias.changed                         "show --pretty=\"format:\" --name-only"
git config --global alias.cp-branch-name                  "!git rev-parse --abbrev-ref HEAD | pbcopy"
git config --global alias.delete-local-merged             "!zsh -ic git-delete-local-merged"
git config --global alias.add-upstream                    "!zsh -ic \"add-upstream \$*\""
git config --global alias.sync                            "!zsh -ic git-sync"
git config --global alias.fm                              "!zsh -ic \"git-fetch-merge \$*\""
git config --global alias.pr                              "!zsh -ic \"open-pr \$*\""
git config --global alias.add-remote                      "!zsh -ic \"add-upstream \$*\""

# colors
git config --global color.diff                            "auto"
git config --global color.status                          "auto"
git config --global color.branch                          "auto"
git config --global color.ui                              "true"

# core
git config --global core.excludesfile                     "~/.gitignore"
git config --global core.editor                           "vim"
git config --global core.compression                      "-1"
git config --global core.autocrlf                         "input"
git config --global core.whitespace                       "trailing-space,space-before-tab"
git config --global core.precomposeunicode                "true"


git config --global apply.whitespace                      "nowarn"
git config --global help.autocorrect                      "1"

# mergetool
git config --global merge.tool                            "diffmerge"
git config --global mergetool.diffmerge.cmd               "diffmerge --merge --result=\$MERGED \$LOCAL \$BASE \$REMOTE"
git config --global mergetool.diffmerge.trustExitCode     "true"
git config --global mergetool.diffmerge.keepBackup        "false"

# difftool
git config --global diff.tool                             "diffmerge"
git config --global difftool.prompt                       "false"
git config --global difftool.diffmerge.cmd                "diffmerge \$LOCAL \$REMOTE"

# grep
git config --global grep.extendRegexp                     "true"
git config --global grep.lineNumber                       "true"

# push
git config --global push.default                          "simple"

# submodule
git config --global submodule.fetchJobs                   "4"

# commit
git config --global commit.template                       "$ZSH/git/template.txt"
