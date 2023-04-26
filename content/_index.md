---
title: MAMBG SRE Runbook
---

## About

Welcome to the MAMBG SRE Runbook site! This site contains various documentation used
by the MAMBG SRE team.

## Getting started

To get started, use the navigation tree on the left or use the search field to find
documentation you are looking for.

## Adding Documentation

The content on this site is stored as markdown files in the
[hawkeye-sre-handbook](https://gitlab.eng.vmware.com/hawkeye/hawkeye-sre-runbook.git) repository
and is rendered using [hugo](https://gohugo.io)

### Install Hugo

First, ensure that you have [installed
hugo](https://gohugo.io/getting-started/installing/). On macOS, this can be done
with homebrew:

```shell
brew install hugo
```

### Clone the documentation repo

Next, clone the repo:

```shell
git clone https://gitlab.eng.vmware.com/hawkeye/hawkeye-sre-runbook.git
```

### Add new content

To add new content, you should use the `hugo` command line to scaffold and edit
a new file:
 
```shell
hugo new --editor $EDITOR <category>/<subcategory>/<name>.md
```

It is recommended to fill in some additional [front
matter](https://gohugo.io/content-management/front-matter/) such as tags so that
it is easier to find later on.

### View your changes

Before your content is reviewed and published, you can run hugo locally to view
the page and make sure everything looks good.

From the root of the repo, run

```shell
make run
```

This will spin up a local instance of site, which can be accessed via
[http://localhost:1313](http://localhost:1313).

{{< hint type=note >}}
Hugo will automatically (re)render the page when a file has changed,
therefore you can continue updating the file while this is running
{{< /hint >}}

### Publish the content

For the page to become active on the site, you should first ensure that the
`draft` front matter is set to `false`. Then [create a merge/pull
request]()
with your changes.

Once changes are merged into the main branch, a gitlab pipeline will run to
render and build a new container with the site content. This should be
automatically deployed shortly after the changes have been merged.

## Updating Documentation

Similarly to adding documentation, you can clone the repo and submit a merge request.

Alternatively, each page will have a "*Edit this page*" link at the top. This will
bring you to the built-in Gitlab editor where you can directly submit a merge request.

## Useful features

Hugo provides some useful features such as
[shortcodes](https://gohugo.io/content-management/shortcodes/) and that can be used
in markdown files which extend the formatting beyond the standard.

This site uses the [geekdocs](https://geekdocs.de/) theme, which includes
various shortcodes

- [table of contents](https://geekdocs.de/shortcodes/toc/)
- [hints](https://geekdocs.de/shortcodes/hints/)
- [tabs](https://geekdocs.de/shortcodes/tabs/)
- ..more
