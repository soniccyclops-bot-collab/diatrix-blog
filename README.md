# Nathan's Org-Mode Blog

Pure org-mode to HTML static blog. No markdown corporate nonsense.

## Local Development

1. Write posts in `org/posts/`
2. Generate HTML preview: `emacs --batch --load build-blog.el`
3. View in `www/` directory
4. Push to main - GitHub Actions will build and deploy

## Structure

- `org/` - Source .org files
- `org/posts/` - Blog posts
- `www/` - Generated HTML (auto-created)
- `build-blog.el` - Org-publish configuration

## Live Blog

Visit: https://soniccyclops-bot-collab.github.io/diatrix-blog/