# TinkerSoc Website

## Development

### Requirements
This is the Hugo implementation of the TinkerSoc website. You can either push updates to the master or test branches, which will be automatically built and served by [WebbTech](https://webbtech.uk) to [tinkersoc.org](https://tinkersoc.org) and [test.tinkersoc.org](https://test.tinkersoc.org) respectively, or you can build the site yourself using the instructions below:

To get started
building the website locally you will need a working [go](https://golang.org/)
installation.

You will also need `make`, the [`hugo`](https://github.com/spf13/hugo) tool, and
our [`image-gen`](https://github.com/TinkerSoc/image-gen)

To install the latter two, do:

```
go get -v github.com/spf13/hugo
go get -v github.com/TinkerSoc/image-gen
```

### Local serving

To see the website with your changes, run `hugo serve` and navigate to
[`http://localhost:1313`](http://localhost:1313)


## Writing content

### Text content
Content is in the `content` directory, organised in the same structure seen on
the website.

New blog posts should be named as `YYYY-MM-DD-some-title.md`, e.g.
`2012-11-21-the-arcade-cabinet.md`

Blog posts also need some "front matter", which gives metadata to hugo about the
post. An example front matter section would be like this:

```yaml
title: Ant Weight Robot Wars
date: 2016-09-10
layout: post
published: true
tags: ['robot wars']
```

### Image content

Images for blog posts should go in the `images` folder in the root of the
project. It is helpful to organise images by the blog post they appear in.
Images can then be inserted into blog posts using the picture tag.

E.g., the following will add `images/2012-11-21-the-arcade-cabinet/img1.jpg` to
a blog post.

```hugo
{{% picture "2012-11-21-the-arcade-cabinet/img1.jpg" %}}
```

When you add a new picture, various resolutions will need to be generated. You
can call `image-gen` to build those like this:

```
image-gen -c image-gen-config.json
```

Optionally the `--verbose` flag on `image-gen` might let you know that something
is happening. It takes about 30s to build all the images on my machine at the
time of writing. Documentation on `image-gen` can be found on it's [github
project page](https://github.com/TinkerSoc/image-gen).


## Submitting content

Push new content to a branch on this repo. When you push to the repository
continuous integration will build the website and let you know if anything
fails. If everything passes then submit a pull request of your branch to the
`deploy` branch, then one of the edittors can approve it.

Once it is approved the branch will be built and automatically pushed to our web
server.
