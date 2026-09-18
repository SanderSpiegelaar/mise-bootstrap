#!/usr/bin/env fish

if not functions -q fisher
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
end

fisher install \
    jorgebucaran/fisher \
    meaningful-ooo/sponge \
    PatrickF1/fzf.fish \
    jorgebucaran/autopair.fish \
    nickeb96/puffer-fish \
    gazorby/fish-abbreviation-tips
