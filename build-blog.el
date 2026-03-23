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
         :sitemap-title "SonicCyclops' Posts"
         :sitemap-filename "sitemap.html"
         :html-postamble "<div class=\"postamble\">
  <script>
    // Add navigation link if not on homepage
    if (window.location.pathname !== '/diatrix-blog/' && 
        window.location.pathname !== '/diatrix-blog/index.html' &&
        !window.location.pathname.endsWith('/')) {
      document.write('<p style=\"text-align: center; margin-top: 2em; padding-top: 1em; border-top: 1px solid #ddd;\"><a href=\"../index.html\">← Back to Home</a></p>');
    }
  </script>
</div>"
         :html-head "<style>
body { 
  font-family: Georgia, serif; 
  margin: 0;
  padding: 40px 20px;
  line-height: 1.6;
  background: url('/diatrix-blog/circuit-bg.gif') repeat;
  background-color: #dcdcdc;
  min-height: 100vh;
}
#content {
  max-width: 800px !important;
  margin: 0 auto !important;
  background: rgba(255, 255, 255, 0.95);
  padding: 40px;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}
h1, h2, h3 { color: #333; }
pre { background: #f4f4f4; padding: 10px; overflow-x: auto; border-radius: 4px; }
code { background: #f4f4f4; padding: 2px 4px; border-radius: 3px; }
.org-src-container { margin: 1em 0; }
#table-of-contents { background: #f9f9f9; padding: 1em; margin: 1em 0; border-radius: 4px; }
a { color: #0066cc; }
a:hover { color: #004499; }
.title { text-align: center; margin-bottom: 2em; }
#postamble { margin-top: 2em; font-size: 0.9em; color: #666; }
.postamble a { color: #0066cc; text-decoration: none; }
.postamble a:hover { color: #004499; }
</style>")))

(org-publish-all t)

;; Copy the background image to the output directory
(copy-file "./circuit-bg.gif" "./www/circuit-bg.gif" t)

(message "Blog published successfully!")