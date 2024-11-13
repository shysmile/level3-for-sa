cd ../.github/workflows

cat > ci.yml << EOF
name: CI

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Set up Docker Buildx
      uses: docker/setup-buildx-action@v1

    - name: Log in to ACR
      uses: azure/docker-login@v1
      with:
        login-server: cepgbaseacr.azurecr.io
        username: ${{ secrets.ACR_USERNAME }}
        password: ${{ secrets.ACR_PASSWORD }}

    - name: Build and push Docker image
      uses: docker/build-push-action@v2
      with:
        context: .
        push: true
        tags: cepgbaseacr.azurecr.io/your-image-name:latest

    - name: Log out from ACR
      run: docker logout cepgbaseacr.azurecr.io
EOF
