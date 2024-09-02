from git import Repo

repo = Repo('.')

# Get the latest commit
latest_commit = repo.head.commit

# Get the list of changed files in the latest commit
changed_files = latest_commit.stats.files

# Print the names of the changed files
for file in changed_files:
    print(file)
