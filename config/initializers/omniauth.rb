Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
           '595963884321-4hhr10t4pr0d0cpndfsobc98o5oge8u6.apps.googleusercontent.com',
           'okc8bMnQVydsS0UNwdTEW17p'
end
