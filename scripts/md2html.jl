# ---
# title : Header Example
# author : Shuhei Kadowaki
# date: 16th May 2020
# ---

using Weave

filename = normpath(ARGS[1])
preview_path = normpath(joinpath(pwd(), "./preview"))
tpl_file = normpath(joinpath(pwd(), "./scripts/md2html.tpl"))
css_file = normpath(joinpath(pwd(), "./scripts/ursine-polar.css"))

weave(
    filename; 
    doctype = "md2html", 
    out_path = preview_path,
    template = tpl_file,
    css = css_file
    )

