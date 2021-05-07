require 'octokit'

# This class includes all the methods involving calls to the GitHub API
# It reuses a memoized Octokit::Client instance
class GitHub
  include Singleton

  # Authenticated Octokit
  def github_client
    @github_client ||= Octokit::Client.new(access_token: ENV['REVIEWERS_GH_ACCESS_TOKEN'], auto_paginate: true)
  end

  # Returns true if the user in a member of the editors team
  def user_is_in_editors_team?(user_login)
    github_client.team_member?(Rails.application.settings[:editors_team_id], user_login)
  end
end