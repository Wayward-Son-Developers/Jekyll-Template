# Jekyll-Template
This project is to have ready-made files/folders I'll need to copy into a new Jekyll project. It also holds GitHub Actions that I'll want to use across all my websites.

I'm setting up two main branches: master and dev. master get's cloned and built by Cloudflare Pages, and dev is used by GitHub Pages

I will give you the exact Git commands for creating and switching to a development branch, along with a quick note on how to publish it.

Use these commands:

`git checkout -b dev`

That creates a new branch named dev and switches to it immediately. If you already have a branch named dev and just want to switch to it:

`git checkout dev`

If you want to push the branch to GitHub so you can test it there:

`git push -u origin dev`

When you are ready to merge it back into your main branch:

```
git checkout main
git merge dev
git push origin main
```

If your default branch is master instead of main, replace main with master.
