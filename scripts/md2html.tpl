<!DOCTYPE html>
<HTML lang = "en">
<HEAD>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
  {{#:title}}<title>{{:title}}</title>{{/:title}}
  {{{ :header_script }}}

  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]},
      TeX: { equationNumbers: { autoNumber: "AMS" } }
    });
  </script>

  <script type="text/javascript" async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
  </script>

  {{{ :highlight_stylesheet }}}

  <style type="text/css">
  {{{ :stylesheet }}}

  pre.output {
    padding-left: 6px;
  }
  div.title > em.title {
    font-size: 0.7em;
  }
  div.title > div {
    margin-top: -0.6em;
  }
  div.title > div > em {
    font-size: 0.5em;
  }
  div.footer > p {
    font-size: 0.6em;
    color: #999;
  }
  </style>
</HEAD>

<BODY>
  <div class ="container">
    <div class = "row">
      <div class = "col-md-12 twelve columns">
        <div class="title" style="text-align:center;color:#999;">
          {{#:title}}<em class="title" style="font-weight: bolder">{{:title}}</em>{{/:title}}
          <br />
          <div>
          {{#:author}}<em>{{{:author}}}&nbsp;/&nbsp;</em>{{/:author}}
          {{#:date}}<em>{{{:date}}}</em>{{/:date}}
          </div>
        </div>

        {{{ :body }}}

        <div style="padding: 10px;"></div>
        <HR/>
        <div class="footer">
          <p>
            Published from <a href="{{{:weave_source}}}">{{{:weave_source}}}</a>
            using <a href="http://github.com/JunoLab/Weave.jl">Weave.jl</a> {{:weave_version}} on {{:weave_date}}.
          </p>
        </div>
      </div>
    </div>
  </div>
</BODY>

</HTML>