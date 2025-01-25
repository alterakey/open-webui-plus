# open-webui-plus: small patches for open-webui

open-webui-plus is a flavor of open-webui container that lets you:

* apply custom CSS, and
* enable wordwrap for code blocks.

That's it. Nothing more or less.

## Building

the open-webui-plus container is to be built against the main branch of the original open-webui container. Hence, you could build it as follows:

```
docker pull ghcr.io/open-webui/open-webui:main
docker build -t open-webui-plus https://github.com/alterakey/open-webui-plus.git
```

Then you should be good to go. Should the building procedure fail feel free to file a bug (or better, PR).

## Usage

You can boot open-webui-plus just as you would do the original open-webui container. i.e. as follows:

```
docker run --restart=always -d -p 3000:8080 -v ~/.config/open-webui/data:/app/backend/data open-webui-plus
```

(NB. You could use regular Docker volume as well.)


### Applying custom CSS

To apply custom CSS, firstly place your CSS as base.css in the directory (or volume) of choice, then mount it at `/app/build/themes/custom` when booting the container. Hence, you could pass something like this:
```
-v ~/.config/open-webui/theme:/app/build/themes/custom
```

When you have made changes, remember to do a force reload in your browser to reflect them.

### Wordwrapping in code blocks

You should notice your code blocks are wordwrapped automatically.
