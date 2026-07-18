# Jekyll Template

This repository is the starting point for my Jekyll-based websites. It contains shared configuration, development tooling, Git conventions, and GitHub Actions workflows. The goal is consistency between projects while allowing each site to customize its theme, content, and deployment settings.

## Deployment Model

Development:

dev branch → GitHub Actions → GitHub Pages → dev.example.com

Production:

main/master branch → Cloudflare Pages → production domain

---

## Development Environment

### Required Software

Keep development machines synchronized.

Current baseline:

* Ruby: 3.3.x
* Bundler: 4.0.x
* Jekyll: 4.4.x
* Git
* Visual Studio Code

Ruby version is controlled by:

```
.ruby-version
```

Gem dependencies are controlled by:

```
Gemfile
Gemfile.lock
```

`Gemfile.lock` is intentionally committed to ensure consistent builds between:

* Local development
* GitHub Actions
* Cloudflare Pages

---

## Local Development

From the repository root:

Install/update dependencies:

```powershell
bundle install
```

Run diagnostics:

```powershell
.\.scripts\diagcheck.ps1
```

Start the development server:

```powershell
.\.scripts\serve.ps1
```

---

# Repository Workflow

## Branches

Typical branch usage:

| Branch      | Purpose                    |
| ----------- | -------------------------- |
| main        | Production source (GitHub default for new repositories) |
| master      | Production source (legacy repositories) |
| dev         | Development/testing source |


---

# Useful Git Commands

## Check current branch

```PowerShell
git branch
```

## Switch branches

```PowerShell
git switch branch-name
```

or

```PowerShell
git checkout dev
```

## Create a new branch

```PowerShell
git switch -c branch-name
```

## Download remote information

Fetch all repositories and branches:

```PowerShell
git fetch --all --prune
git branch -vv
```

## Pull remote branch that doesn’t exist locally

```PowerShell
git fetch origin dev:dev
git switch dev
```


## See remote branches

```PowerShell
git branch -r
```

## Create a local branch from an existing remote branch

```PowerShell
git switch -c branch-name origin/branch-name
```

Example:

```PowerShell
git switch -c dev origin/dev
```

## Update current branch

```PowerShell
git pull
```

## Commit changes

```PowerShell
git status
git add .
git commit -m "Description of changes"
git push
```

---

# Merging Development Into Production

Before merging:

```PowerShell
git switch dev
git pull
```

Switch to production branch:

```PowerShell
git switch main
git pull
```

Merge:

```PowerShell
git merge dev
```

Push:

```PowerShell
git push
```

If conflicts occur:

```PowerShell
git status
```

Resolve conflicts, then:

```PowerShell
git add .
git commit
git push
```

---

## Create a version tag for the workflows and push it

```PowerShell
git tag -a v1.0.0 -m "Release reusable workflow v1.0.0"
git push origin v1.0.0
```


# Creating a New Site From This Template

After copying this repository:

## Repository Configuration

Update:

* Repository name
* Remote Git URL
* README.md
* Site title and description
* Author information
* Domain names

Remove template-specific references.

---

## Jekyll Configuration

Review:

```
_config.yml
_config.dev.yml
_config.prod.yml
```

Update:

* `title`
* `description`
* `url`
* author information
* theme selection
* enabled plugins

---

## Theme

The template includes examples for:

* Minimal Mistakes
* Hydeout
* So Simple

Enable only the theme gem being used.

Remove or disable unused themes.

---

## Deployment

Update GitHub Actions workflows:

```
.github/workflows/
```

Change:

* Branch triggers
* Development domain
* Jekyll configuration files

For GitHub Pages development deployments:

* Ensure Pages is configured to use GitHub Actions
* Ensure the workflow has required permissions

For Cloudflare production deployments:

* Update Cloudflare Pages settings
* Verify production branch
* Verify build command

---

# Important Files

| File                 | Purpose                                  |
| -------------------- | ---------------------------------------- |
| `_config.dev.yml`    | Development overrides                    |
| `_config.prod.yml`   | Production overrides                     |
| `_config.yml`        | Shared Jekyll configuration              |
| `.editorconfig`      | Editor formatting consistency            |
| `.gitattributes`     | Line endings and Git file handling       |
| `.github/workflows/` | Shared GitHub Actions workflows          |
| `.gitignore`         | Files excluded from version control      |
| `.placeholder`       | Keeps intentionally empty directories tracked by Git |
| `.ruby-version`      | Ruby version used by local and CI builds |
| `.scripts/`          | Local development helper scripts         |
| `Gemfile.lock`       | Locked dependency versions               |
| `Gemfile`            | Required Ruby gems                       |

---

# GitHub Actions

Reusable workflows are maintained in:

```
.github/workflows/
```

The template repository contains shared workflow logic. Individual site repositories contain small caller workflows that provide site-specific settings.

The intent is:

* Template repository contains shared workflow logic
* Individual site repositories call the reusable workflow
* Site repositories provide site-specific settings

Workflow versions should be tagged.

Example:

```
uses: Wayward-Son-Developers/Jekyll-Template/.github/workflows/jekyll-build.yml@v1.1.0
```

Avoid referencing `main` for stable deployments.

When updating the reusable workflow:

1. Make changes in the template repository.
2. Test the workflow.
3. Create a new tag.
4. Update each site repository to reference the new tag.

---

# Future Maintenance Notes

When upgrading:

1. Update Ruby version
2. Update Bundler (`bundle update --bundler`)
3. Update gems
4. Test locally
5. Update template repository
6. Propagate changes to site repositories

Keep related changes synchronized between development machines.

# Planned Documentation Additions

* A small “Migration Checklist” section for moving an existing site into the template.
* A “Deployment Map” showing dev → GitHub Pages and main/master → Cloudflare Pages.
* A note about your future Cloudflare wrangler.toml conventions once that pipeline is finalized.
