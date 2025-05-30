git filter-branch -f --env-filter '
CORRECT_NAME="whiteshark209"
CORRECT_EMAIL="Petartijanic01@gmail.com"

# Update committer details
if [ "$GIT_COMMITTER_EMAIL" != "$CORRECT_EMAIL" ]; then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
elif [ "$GIT_COMMITTER_NAME" != "$CORRECT_NAME" ]; then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
fi

# Update author details
if [ "$GIT_AUTHOR_EMAIL" != "$CORRECT_EMAIL" ]; then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
elif [ "$GIT_AUTHOR_NAME" != "$CORRECT_NAME" ]; then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
fi
' --tag-name-filter cat -- --branches --tags