# The Ultimate Filing System

This project provides simple, yet powerful, filing systems for your personal or professional documents.

## [View the Full Documentation](https://the-ultimate-filing-system.github.io/filesystem-structures/)

For a full explanation of the systems, including setup instructions and downloads, please visit our documentation site.

## Hugo Static Site

This repository now uses the Hugo static site generator.

### Prerequisites

Before you begin, you will need to install Hugo. You can find installation instructions for your operating system on the [official Hugo website](https://gohugo.io/getting-started/installing/).

### Running the Development Server

To see a live preview of the website, run the following command from the root of the repository:

```bash
hugo server -D
```

This will start a local server, and you can view the site by opening http://localhost:1313 in your web browser.

### Creating New Content

To create a new page, use the following command:

```bash
hugo new content posts/my-new-post.md
```

This will create a new Markdown file in the `content/posts` directory, pre-populated with the default front matter.
