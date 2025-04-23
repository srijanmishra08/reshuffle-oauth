// IMPORTANT: Replace "srijanmishra08" with your actual GitHub username
// after setting up the GitHub repository

import Foundation

// Social Media API Configuration
public struct SocialConfig {
    // Twitter (X) API
    public struct Twitter {
        public static let apiKey = "MllmMFB3aHpwQVFNMVNiSDdET1k6MTpjaQ"
        public static let apiSecret = "3PanZ8Pfyo42cCmfp_NsOERmG_Hx1jgW7zY3UrEi_pQUhunrQP"
        public static let callbackURL = "reshuffle://twitter-callback"
        public static let authURL = "https://twitter.com/i/oauth2/authorize"
        public static let tokenURL = "https://api.twitter.com/2/oauth2/token"
        public static let requestTokenURL = "https://api.twitter.com/oauth/request_token"
        public static let accessTokenURL = "https://api.twitter.com/oauth/access_token"
        
        // API Key (v1) - Only used for specific V1 API calls if needed
        public static let v1ApiKey = "ERG17ER63OVR8gcjqfs7RC9U0"
        public static let v1ApiSecret = "TiIlMNCtX6G3zktsmj2I1ktYrc93SJzymfsin51TQH0l67CxZ5"
    }
    
    // LinkedIn API
    public struct LinkedIn {
        public static let clientId = "86m7srwxvzxwpq"
        public static let clientSecret = "WPL_AP1.gR0Fo6YQnJEWlflk.SMUmrw=="
        // Updated to use GitHub Pages as the OAuth redirect
        public static let callbackURL = "https://srijanmishra08.github.io/reshuffle-oauth/linkedin-callback/"
        public static let redirectScheme = "reshuffle"
        public static let authURL = "https://www.linkedin.com/oauth/v2/authorization"
        public static let tokenURL = "https://www.linkedin.com/oauth/v2/accessToken"
        // Consider updating the scope to use OpenID Connect if you've enabled it
        // public static let scope = "openid profile email"
        public static let scope = "r_liteprofile r_emailaddress"
    }
    
    // Instagram API
    public struct Instagram {
        public static let clientId = "583498367953205"
        public static let clientSecret = "e2bd131f3d7f47e892bbc49fad17c834"
        public static let callbackURL = "com.srijan.Reshuffle://oauth"
        public static let redirectScheme = "com.srijan.Reshuffle"
        public static let authURL = "https://api.instagram.com/oauth/authorize"
        public static let tokenURL = "https://api.instagram.com/oauth/access_token"
        public static let scope = "user_profile,user_media"
    }
} 