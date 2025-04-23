# LinkedIn Authentication Setup: Step-by-Step Guide

I've prepared everything you need to fix the LinkedIn authentication in your app. Follow these steps to complete the setup:

## Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com) and log in
2. Click the "+" icon in the top right corner and select "New repository"
3. Repository name: `reshuffle-oauth`
4. Description: "LinkedIn OAuth redirect for Reshuffle App"
5. Make it Public
6. Do NOT initialize with a README
7. Click "Create repository"

## Step 2: Push the Code to GitHub

After the repository is created, you'll see instructions. Execute these commands:

```bash
# Replace srijanmishra08 with your actual GitHub username
git remote add origin https://github.com/srijanmishra08/reshuffle-oauth.git
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your new repository on GitHub
2. Click "Settings" (tab at the top)
3. Scroll down to "GitHub Pages" section
4. Under "Source", select "main" branch
5. Click "Save"
6. Wait a few minutes (this is important)

## Step 4: Test Your Redirect Page

After GitHub Pages has deployed your site (a few minutes), visit:

```
https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/?code=test-code&state=test-state
```

You should see a page trying to redirect to `reshuffle://linkedin-callback?code=test-code&state=test-state`

## Step 5: Update LinkedIn Developer Settings

1. Go to [LinkedIn Developer Portal](https://www.linkedin.com/developers/apps)
2. Select your app
3. Go to the "Auth" tab
4. Under "OAuth 2.0 settings" > "Redirect URLs":
   - Add: `https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/`
5. Under "OAuth 2.0 scopes":
   - Check that you have `r_liteprofile` and `r_emailaddress`
   - If you want to use OpenID Connect (recommended), also add `openid`, `profile`, and `email`
6. Save your changes

## Step 6: Update Your App's Configuration

1. Open `iOSApp/Auth/SocialConfig.swift` in your app
2. Update the LinkedIn callbackURL:

```swift
public static let callbackURL = "https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/"
```

3. If you're using OpenID Connect (recommended), update the scope:

```swift
public static let scope = "openid profile email"
```

4. Save the file

## Step 7: Test LinkedIn Authentication in Your App

1. Run your app on a physical device (not simulator)
2. Try to authenticate with LinkedIn
3. You should now be redirected properly through the GitHub Pages site and back to your app

## Troubleshooting

If authentication still fails:

1. Check your browser console for errors on the redirect page
2. Verify that the GitHub Pages site is properly deployed
3. Make sure you've updated both the LinkedIn Developer Console and your app configuration
4. Check that your app's URL scheme (`reshuffle://`) is properly registered in Info.plist

## Notes About OpenID Connect

Since you mentioned you've added the "Sign In with LinkedIn using OpenID Connect" product, it's recommended to use the OpenID Connect configuration. This provides a more standardized way to authenticate users and get their profile information.

The main differences when using OpenID Connect:
- Scope changes to `openid profile email`
- You receive an ID token (JWT) in addition to the access token
- User profile information is available in the ID token and via the userinfo endpoint

The code I've provided supports both the traditional OAuth 2.0 approach and the newer OpenID Connect approach. 