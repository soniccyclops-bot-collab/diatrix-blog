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
         :html-head "<style>
body { 
  font-family: Georgia, serif; 
  max-width: 800px; 
  margin: 40px auto; 
  padding: 20px; 
  line-height: 1.6;
  background: url('./circuit-bg.gif') repeat;
  background-color: #dcdcdc;
}
#content {
  background: rgba(255, 255, 255, 0.9);
  padding: 20px;
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
</style>")))

(org-publish-all t)

;; Copy the background image to the output directory
(copy-file "./circuit-bg.gif" "./www/circuit-bg.gif" t)

(message "Blog published successfully!")