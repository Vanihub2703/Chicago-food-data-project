#!/bin/sh

# Correo antiguo asociado a Vanihub27
OLD_EMAIL="cavallinvanina@gmail.com"

# Correo correcto asociado a Vanihub2703
CORRECT_NAME="Vanihub2703"
CORRECT_EMAIL="vaninacavallin@gmail.com"

git filter-branch --env-filter '
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
