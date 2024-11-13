# Initialize git if not already done
git init

# Add remote repository if not already added
git remote add origin https://github.com/shysmile/level3-for-sa.git

# Add Dockerfile to the repository
git add Dockerfile

# Commit the changes
git commit -m "Add Dockerfile for Docker image creation"

# Push to GitHub
git push -u origin main

