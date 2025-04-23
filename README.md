# LinkedIn OAuth Redirect for Reshuffle App

This repository contains the redirect page for handling LinkedIn OAuth authentication for the Reshuffle iOS app.

## How It Works

1. User initiates LinkedIn authentication in the Reshuffle app
2. LinkedIn OAuth process redirects to `https://[your-github-username].github.io/reshuffle-oauth/linkedin-callback/`
3. The redirect page extracts the authorization code and redirects to the app via the custom URL scheme
4. The app receives and processes the authorization code to complete authentication

## File Structure

- `/index.html` - Main landing page
- `/linkedin-callback/index.html` - LinkedIn OAuth redirect handler

## Local Testing

To test locally:
1. Clone this repository
2. Open `linkedin-callback/index.html` in a browser with a URL like:
   `linkedin-callback/index.html?code=test-code&state=test-state`
3. It should attempt to redirect to `reshuffle://linkedin-callback?code=test-code&state=test-state` 