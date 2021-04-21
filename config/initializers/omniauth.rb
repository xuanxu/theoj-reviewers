Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['REVIEWERS_GH_KEY'], ENV['REVIEWERS_GH_CLIENT_SECRET'], scope: "public_repo"
end