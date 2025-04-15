
if [ -z "$1" ]; then
    echo "Usage: $0  https://github.com/daniel-ndeto/GAU-CAFETERIA.git"
    exit 1
fi

REMOTE_URL=$1
BRANCH=${2:-main}

echo "Deleting existing Git history..."
rm -rf .git

echo "Initializing a new Git repository..."
git init

echo "Adding all project files..."
git add .

echo "Creating an initial commit..."
git commit -m "Initial commit"

echo "Renaming branch to ${BRANCH}..."
git branch -M "${BRANCH}"

echo "Adding new remote repository: ${REMOTE_URL}..."
git remote add origin "${REMOTE_URL}"

echo "Pushing initial commit to remote repository..."
git push -u origin "${BRANCH}"

echo "Repository successfully reset and pushed to ${REMOTE_URL}!"
