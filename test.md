Link - doesn't render in Github markdown

[View System Architecture Diagram](https://github.com/samlmcewan/structurizr-test/blob/main/mermaid/structurizr-SoftwareSystem-SystemContext.mmd)

Embed - does render but will have to be copied over again if mermaid file changes

```mermaid
graph TB
  linkStyle default fill:#ffffff
  1["<div style='font-weight: bold'>User</div><div style='font-size: 70%; margin-top: 0px'>[Person]</div><div style='font-size: 80%; margin-top:10px'></div>"]
  style 1 fill:#08427b,stroke:#052e56,color:#ffffff
  2("<div style='font-weight: bold'>Software System</div><div style='font-size: 70%; margin-top: 0px'>[Software System]</div><div style='font-size: 80%; margin-top:10px'></div>")
  style 2 fill:#1168bd,stroke:#0b4884,color:#ffffff
  1-. "<div>Uses</div><div style='font-size: 70%'></div>" .->2
