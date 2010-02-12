# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bluecloth}
  s.version = "2.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Granger"]
  s.date = %q{2010-01-25}
  s.default_executable = %q{bluecloth}
  s.description = %q{BlueCloth is a Ruby implementation of [Markdown][1], a text-to-HTML conversion
tool for web writers. To quote from the project page: Markdown allows you to
write using an easy-to-read, easy-to-write plain text format, then convert it to
structurally valid XHTML (or HTML).}
  s.email = ["ged@FaerieMUD.org"]
  s.executables = ["bluecloth"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["ChangeLog", "README", "LICENSE", "LICENSE.discount"]
  s.files = ["Rakefile", "ChangeLog", "README", "LICENSE", "spec/bluecloth/101_changes_spec.rb", "spec/bluecloth/autolinks_spec.rb", "spec/bluecloth/blockquotes_spec.rb", "spec/bluecloth/code_spans_spec.rb", "spec/bluecloth/emphasis_spec.rb", "spec/bluecloth/entities_spec.rb", "spec/bluecloth/hrules_spec.rb", "spec/bluecloth/images_spec.rb", "spec/bluecloth/inline_html_spec.rb", "spec/bluecloth/links_spec.rb", "spec/bluecloth/lists_spec.rb", "spec/bluecloth/paragraphs_spec.rb", "spec/bluecloth/titles_spec.rb", "spec/bluecloth_spec.rb", "spec/bugfix_spec.rb", "spec/contributions_spec.rb", "spec/discount_spec.rb", "spec/markdowntest_spec.rb", "spec/lib/constants.rb", "spec/lib/helpers.rb", "spec/lib/matchers.rb", "bin/bluecloth", "lib/bluecloth.rb", "ext/bluecloth.c", "ext/Csio.c", "ext/css.c", "ext/docheader.c", "ext/generate.c", "ext/markdown.c", "ext/mkdio.c", "ext/resource.c", "ext/version.c", "ext/xml.c", "ext/xmlpage.c", "ext/amalloc.h", "ext/bluecloth.h", "ext/config.h", "ext/cstring.h", "ext/markdown.h", "ext/mkdio.h", "ext/extconf.rb", "rake/191_compat.rb", "rake/dependencies.rb", "rake/helpers.rb", "rake/hg.rb", "rake/manual.rb", "rake/packaging.rb", "rake/publishing.rb", "rake/rdoc.rb", "rake/style.rb", "rake/svn.rb", "rake/testing.rb", "rake/verifytask.rb", "./LICENSE.discount", "./spec/data/antsugar.txt", "./spec/data/ml-announce.txt", "./spec/data/re-overflow.txt", "./spec/data/re-overflow2.txt", "./spec/data/markdowntest/Amps and angle encoding.text", "./spec/data/markdowntest/Auto links.text", "./spec/data/markdowntest/Backslash escapes.text", "./spec/data/markdowntest/Blockquotes with code blocks.text", "./spec/data/markdowntest/Code Blocks.text", "./spec/data/markdowntest/Code Spans.text", "./spec/data/markdowntest/Hard-wrapped paragraphs with list-like lines.text", "./spec/data/markdowntest/Horizontal rules.text", "./spec/data/markdowntest/Inline HTML (Advanced).text", "./spec/data/markdowntest/Inline HTML (Simple).text", "./spec/data/markdowntest/Inline HTML comments.text", "./spec/data/markdowntest/Links, inline style.text", "./spec/data/markdowntest/Links, reference style.text", "./spec/data/markdowntest/Links, shortcut references.text", "./spec/data/markdowntest/Literal quotes in titles.text", "./spec/data/markdowntest/Markdown Documentation - Basics.text", "./spec/data/markdowntest/Markdown Documentation - Syntax.text", "./spec/data/markdowntest/Nested blockquotes.text", "./spec/data/markdowntest/Ordered and unordered lists.text", "./spec/data/markdowntest/Strong and em together.text", "./spec/data/markdowntest/Tabs.text", "./spec/data/markdowntest/Tidyness.text", "./spec/data/markdowntest/Amps and angle encoding.html", "./spec/data/markdowntest/Auto links.html", "./spec/data/markdowntest/Backslash escapes.html", "./spec/data/markdowntest/Blockquotes with code blocks.html", "./spec/data/markdowntest/Code Blocks.html", "./spec/data/markdowntest/Code Spans.html", "./spec/data/markdowntest/Hard-wrapped paragraphs with list-like lines.html", "./spec/data/markdowntest/Horizontal rules.html", "./spec/data/markdowntest/Inline HTML (Advanced).html", "./spec/data/markdowntest/Inline HTML (Simple).html", "./spec/data/markdowntest/Inline HTML comments.html", "./spec/data/markdowntest/Links, inline style.html", "./spec/data/markdowntest/Links, reference style.html", "./spec/data/markdowntest/Links, shortcut references.html", "./spec/data/markdowntest/Literal quotes in titles.html", "./spec/data/markdowntest/Markdown Documentation - Basics.html", "./spec/data/markdowntest/Markdown Documentation - Syntax.html", "./spec/data/markdowntest/Nested blockquotes.html", "./spec/data/markdowntest/Ordered and unordered lists.html", "./spec/data/markdowntest/Strong and em together.html", "./spec/data/markdowntest/Tabs.html", "./spec/data/markdowntest/Tidyness.html", "./ext/VERSION", "Rakefile.local", "LICENSE.discount"]
  s.homepage = %q{http://deveiate.org/projects/BlueCloth/}
  s.rdoc_options = ["-w", "4", "-HN", "-i", ".", "-m", "README", "-t", "bluecloth", "-W", "http://deveiate.org/projects/BlueCloth/browser/"]
  s.require_paths = ["lib", "ext"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{BlueCloth is a Ruby implementation of Markdown}
  s.test_files = ["spec/bluecloth/101_changes_spec.rb", "spec/bluecloth/autolinks_spec.rb", "spec/bluecloth/blockquotes_spec.rb", "spec/bluecloth/code_spans_spec.rb", "spec/bluecloth/emphasis_spec.rb", "spec/bluecloth/entities_spec.rb", "spec/bluecloth/hrules_spec.rb", "spec/bluecloth/images_spec.rb", "spec/bluecloth/inline_html_spec.rb", "spec/bluecloth/links_spec.rb", "spec/bluecloth/lists_spec.rb", "spec/bluecloth/paragraphs_spec.rb", "spec/bluecloth/titles_spec.rb", "spec/bluecloth_spec.rb", "spec/bugfix_spec.rb", "spec/contributions_spec.rb", "spec/discount_spec.rb", "spec/markdowntest_spec.rb", "spec/lib/constants.rb", "spec/lib/helpers.rb", "spec/lib/matchers.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
