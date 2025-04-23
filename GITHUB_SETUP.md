# GitHub Setup Instructions

Since we couldn't create a GitHub repository automatically, please follow these steps manually:

## 1. Create a GitHub Repository

1. Go to [GitHub](https://github.com) and log in
2. Click on the "+" icon in the top right corner and select "New repository"
3. Name your repository: `reshuffle-oauth` 
4. Add a description: "LinkedIn OAuth redirect for Reshuffle App"
5. Keep it as a Public repository
6. Leave "Initialize this repository with a README" unchecked
7. Click "Create repository"

## 2. Push the Code

After creating the repository, GitHub will show instructions. Follow the "push an existing repository" section:

```bash
# Make sure you're in the linkedin-redirect directory
git remote add origin https://github.com/srijanmishra08/reshuffle-oauth.git
git branch -M main
git push -u origin main
```

Replace `srijanmishra08` with your actual GitHub username.

## 3. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on "Settings"
3. Scroll down to the "GitHub Pages" section
4. In the "Source" dropdown, select "main" branch
5. Click "Save"
6. Wait a few minutes for GitHub Pages to deploy your site

## 4. Test Your Redirect

Your redirect page will be available at:

```
https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/
```

You can test it by adding parameters:

```
https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/?code=test-code&state=test-state
```

## 5. Update LinkedIn Developer Console

1. Go to [LinkedIn Developer Portal](https://www.linkedin.com/developers/apps)
2. Select your app
3. Go to the "Auth" tab
4. Update the Redirect URLs to include your GitHub Pages URL:
   - `https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/`
5. Save changes

## 6. Update Your App Configuration

Update the `SocialConfig.swift` file in your Reshuffle app to use the new redirect URL:

```swift
public static let callbackURL = "https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/"
``` 