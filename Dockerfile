from ghcr.io/open-webui/open-webui:main
run perl -e 'undef $/; $_ = <>; if (m|^<style .*?>(.*)</style>|ms) {print $1}' /app/build/index.html > /app/build/themes/base.css
run perl -e 'undef $/; $_ = <>; s|(^<style .*</style>)||ms; s|</html>|</html><link rel="stylesheet" href="/themes/base.css"><link rel="stylesheet" href="/themes/custom/base.css">|; print $_' /app/build/index.html > /tmp/index.html; mv /tmp/index.html /app/build/index.html
run perl -e 'undef $/; $_ = <>; s|("Enter your code here..."\)),([A-Za-z]+).up|$1,$2.lineWrapping,$2.up|; print $_' /app/build/_app/immutable/chunks/CodeEditor.*.js > /tmp/tmp.js; mv /tmp/tmp.js /app/build/_app/immutable/chunks/CodeEditor.*.js
run mkdir -p /app/build/themes/custom && touch /app/build/themes/custom/base.css
