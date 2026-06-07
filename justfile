default: write

_deploy_palette VARIANT \
    background currentline \
    surface overlay \
    foreground comment \
    cyan green \
    orange pink \
    purple red \
    yellow \
    light_background light_currentline \
    light_surface light_overlay \
    light_foreground light_comment \
    light_cyan light_green \
    light_orange light_pink \
    light_purple light_red \
    light_yellow:
    sed \
        -e "s/@@VARIANT@@/\u{{VARIANT}}/g" \
        -e "s/@@BACKGROUND@@/{{background}}/g" \
        -e "s/@@CURRENTLINE@@/{{currentline}}/g" \
        -e "s/@@SURFACE@@/{{surface}}/g" \
        -e "s/@@OVERLAY@@/{{overlay}}/g" \
        -e "s/@@FOREGROUND@@/{{foreground}}/g" \
        -e "s/@@COMMENT@@/{{comment}}/g" \
        -e "s/@@CYAN@@/{{cyan}}/g" \
        -e "s/@@GREEN@@/{{green}}/g" \
        -e "s/@@ORANGE@@/{{orange}}/g" \
        -e "s/@@PINK@@/{{pink}}/g" \
        -e "s/@@PURPLE@@/{{purple}}/g" \
        -e "s/@@RED@@/{{red}}/g" \
        -e "s/@@YELLOW@@/{{yellow}}/g" \
        -e "s/@@LIGHT_BACKGROUND@@/{{light_background}}/g" \
        -e "s/@@LIGHT_CURRENTLINE@@/{{light_currentline}}/g" \
        -e "s/@@LIGHT_SURFACE@@/{{light_surface}}/g" \
        -e "s/@@LIGHT_OVERLAY@@/{{light_overlay}}/g" \
        -e "s/@@LIGHT_FOREGROUND@@/{{light_foreground}}/g" \
        -e "s/@@LIGHT_COMMENT@@/{{light_comment}}/g" \
        -e "s/@@LIGHT_CYAN@@/{{light_cyan}}/g" \
        -e "s/@@LIGHT_GREEN@@/{{light_green}}/g" \
        -e "s/@@LIGHT_ORANGE@@/{{light_orange}}/g" \
        -e "s/@@LIGHT_PINK@@/{{light_pink}}/g" \
        -e "s/@@LIGHT_PURPLE@@/{{light_purple}}/g" \
        -e "s/@@LIGHT_RED@@/{{light_red}}/g" \
        -e "s/@@LIGHT_YELLOW@@/{{light_yellow}}/g" \
        .eldritch-@@VARIANT@@.theme > themes/eldritch-{{VARIANT}}.theme

# Dusk palette (used as the light variant bundled into cthulhu and abyss)
dusk_background    := "f0f3f4"
dusk_currentline   := "e2e6e8"
dusk_surface       := "d5d9db"
dusk_overlay       := "c9cbcd"
dusk_foreground    := "1e2029"
dusk_comment       := "5b73dc"
dusk_cyan          := "0ad6ff"
dusk_green         := "38ff9f"
dusk_orange        := "ffaf4d"
dusk_pink          := "fb5bb6"
dusk_purple        := "8a69f7"
dusk_red           := "fb5b66"
dusk_yellow        := "fff952"

write:
    mkdir -p themes
    # Cthulhu (dark) + Dusk (light)
    just _deploy_palette "cthulhu" \
        "212337" "323449" \
        "454759" "5b5c66" \
        "ebfafa" "7081d0" \
        "04d1f9" "37f499" \
        "f7c67f" "f265b5" \
        "a48cf2" "f16c75" \
        "f1fc79" \
        {{dusk_background}} {{dusk_currentline}} \
        {{dusk_surface}} {{dusk_overlay}} \
        {{dusk_foreground}} {{dusk_comment}} \
        {{dusk_cyan}} {{dusk_green}} \
        {{dusk_orange}} {{dusk_pink}} \
        {{dusk_purple}} {{dusk_red}} \
        {{dusk_yellow}}
    # Abyss (dark) + Dusk (light)
    just _deploy_palette "abyss" \
        "171928" "252738" \
        "353746" "474852" \
        "d8e6e6" "506299" \
        "0396b3" "2dcc82" \
        "d4a666" "d154a1" \
        "8b75d9" "cc5860" \
        "ccd663" \
        {{dusk_background}} {{dusk_currentline}} \
        {{dusk_surface}} {{dusk_overlay}} \
        {{dusk_foreground}} {{dusk_comment}} \
        {{dusk_cyan}} {{dusk_green}} \
        {{dusk_orange}} {{dusk_pink}} \
        {{dusk_purple}} {{dusk_red}} \
        {{dusk_yellow}}
