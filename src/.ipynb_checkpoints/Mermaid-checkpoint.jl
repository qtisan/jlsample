import Base64.base64encode

"""
Make a `Mermaid` view in jupyter notebook.

```
Mermaid(\"\"\"
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
\"\"\")
```
"""
struct Mermaid
    diagram::String
end
Base.show(io::IO, mm::Mermaid) = begin
    q = base64encode("\n$(mm.diagram)")
    url = "https://mermaid.ink/img/$q"
    print(io, "<img src=\"$url\" />")
end
Base.show(io::IO, ::MIME"text/html", mm::Mermaid) = Base.show(io, mm)
