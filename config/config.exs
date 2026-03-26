import Config

config :git_ops,
  mix_project: Mix.Project.get!(),
  changelog_file: "CHANGELOG.md",

  github_handle_lookup?: false,
  github_api_base_url: "https://api.github.com",

  # repository_url: "https://github.com/my_user/my_repo",
  types: [
    chore: [ hidden?: true ],
    # Makes an allowed commit type called `important` that gets
    # a section in the changelog with the header "Important Changes"
    important: [ header: "Important Changes" ]
  ],
  tags: [
    # Only add commits to the changelog that has the "backend" tag
    # allowed: ["backend"],
    # Filter out or not commits that don't contain tags
    allow_untagged?: true
  ],
  # Instructs the tool to manage your mix version in your `mix.exs` file
  # See below for more information
  manage_mix_version?: true,
  # Instructs the tool to manage the version in your README.md
  # Pass in `true` to use `"README.md"` or a string to customize
  # manage_readme_version: "README.md",
  # Manage an arbitrary list of files during release.
  # See "Managing additional files" below for details.
  # managed_files: [
  #   {"apps/my_app/mix.exs", :mix},
  #   {"README.md", :string}
  # ],
  version_tag_prefix: "v"
