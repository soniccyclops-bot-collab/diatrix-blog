(require 'ox-publish)

(setq org-publish-project-alist
      '(("blog-content"
         :base-directory "./org"
         :base-extension "org"
         :publishing-directory "./www"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t
         :auto-sitemap t
         :sitemap-title "Blog Posts"
         :sitemap-filename "sitemap.html"
         :html-head "<style>
body { font-family: Georgia, serif; max-width: 800px; margin: 40px auto; padding: 20px; line-height: 1.6; }
h1, h2, h3 { color: #333; }
pre { background: #f4f4f4; padding: 10px; overflow-x: auto; }
code { background: #f4f4f4; padding: 2px 4px; }
.org-src-container { margin: 1em 0; }
#table-of-contents { background: #f9f9f9; padding: 1em; margin: 1em 0; }
</style>")))

(org-publish-all t)
(message "Blog published successfully!")