<#include "include_office.ftl">

  </head>
  <body>
 


    <div class="container bs-docs-container">
      <div class="row">
        
        <div class="col-md-9" role="main">
            <!-- Global Bootstrap settings
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="overview">Overview</h1>
    </div>
    <p class="lead">Get the lowdown on the key pieces of Bootstrap's infrastructure, including our approach to better, faster, stronger web development.</p>

    <h3 id="overview-doctype">HTML5 doctype</h3>
    <p>Bootstrap makes use of certain HTML elements and CSS properties that require the use of the HTML5 doctype. Include it at the beginning of all your projects.</p>
<div class="highlight"><pre><code class="html"><span class="cp">&lt;!DOCTYPE html&gt;</span>
<span class="nt">&lt;html</span> <span class="na">lang=</span><span class="s">&quot;en&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/html&gt;</span>
</code></pre></div>

    <h3 id="overview-mobile">Mobile first</h3>
    <p>With Bootstrap 2, we added optional mobile friendly styles for key aspects of the framework. With Bootstrap 3, we've rewritten the project to be mobile friendly from the start. Instead of adding on optional mobile styles, they're baked right into the core. In fact, <strong>Bootstrap is mobile first</strong>. Mobile first styles can be found throughout the entire library instead of in separate files.</p>
    <p>To ensure proper rendering and touch zooming, <strong>add the viewport meta tag</strong> to your <code>&lt;head&gt;</code>.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;meta</span> <span class="na">name=</span><span class="s">&quot;viewport&quot;</span> <span class="na">content=</span><span class="s">&quot;width=device-width, initial-scale=1.0&quot;</span><span class="nt">&gt;</span>
</code></pre></div>
    <p>You can disable zooming capabilities on mobile devices by adding <code>user-scalable=no</code> to the viewport meta tag. This disables zooming, meaning users are only able to scroll, and results in your site feeling a bit more like a native application. Overall we don't recommend this on every site, so use caution!</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;meta</span> <span class="na">name=</span><span class="s">&quot;viewport&quot;</span> <span class="na">content=</span><span class="s">&quot;width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no&quot;</span><span class="nt">&gt;</span>
</code></pre></div>

    <h3 id="overview-responsive-images">Responsive images</h3>
    <p>Images in Bootstrap 3 can be made responsive-friendly via the addition of the <code>.img-responsive</code> class. This applies <code>max-width: 100%;</code> and <code>height: auto;</code> to the image so that it scales nicely to the parent element.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;img</span> <span class="na">src=</span><span class="s">&quot;...&quot;</span> <span class="na">class=</span><span class="s">&quot;img-responsive&quot;</span> <span class="na">alt=</span><span class="s">&quot;Responsive image&quot;</span><span class="nt">&gt;</span>
</code></pre></div>

    <h3 id="overview-type-links">Typography and links</h3>
    <p>Bootstrap sets basic global display, typography, and link styles. Specifically, we:</p>
    <ul>
      <li>Set <code>background-color: #fff;</code> on the <code>body</code></li>
      <li>Use the <code>@font-family-base</code>, <code>@font-size-base</code>, and <code>@line-height-base</code> attributes as our typographic base</li>
      <li>Set the global link color via <code>@link-color</code> and apply link underlines only on <code>:hover</code></li>
    </ul>
    <p>These styles can be found within <code>scaffolding.less</code>.</p>

    <h3 id="overview-normalize">Normalize</h3>
    <p>For improved cross-browser rendering, we use <a href="http://necolas.github.io/normalize.css/" target="_blank">Normalize</a>, a project by <a href="http://twitter.com/necolas" target="_blank">Nicolas Gallagher</a> and <a href="http://twitter.com/jon_neal" target="_blank">Jonathan Neal</a>.</p>

    <h3 id="overview-container">Containers</h3>
    <p>Easily center a page's contents by wrapping its contents in a <code>.container</code>. Containers set <code>width</code> at various media query breakpoints to match our grid system.</p>
    <p>Note that, due to <code>padding</code> and fixed widths, containers are not nestable by default.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;container&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>
  </div>



  <!-- Grid system
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="grid">Grid system</h1>
    </div>
    <p class="lead">Bootstrap includes a responsive, mobile first fluid grid system that appropriately scales up to 12 columns as the device or viewport size increases. It includes <a href="#grid-example-basic">predefined classes</a> for easy layout options, as well as powerful <a href="#grid-less">mixins for generating more semantic layouts</a>.</p>

    <h3 id="grid-intro">Introduction</h3>
    <p>Grid systems are used for creating page layouts through a series of rows and columns that house your content. Here's how the Bootstrap grid system works:</p>
    <ul>
      <li>Rows must be placed within a <code>.container</code> for proper alignment and padding.</li>
      <li>Use rows to create horizontal groups of columns.</li>
      <li>Content should be placed within columns, and only columns may be immediate children of rows.</li>
      <li>Predefined grid classes like <code>.row</code> and <code>.col-xs-4</code> are available for quickly making grid layouts. LESS mixins can also be used for more semantic layouts.</li>
      <li>Columns create gutters (gaps between column content) via <code>padding</code>. That padding is offset in rows for the first and last column via negative margin on <code>.row</code>s.</li>
      <li>Grid columns are created by specifying the number of twelve available columns you wish to span. For example, three equal columns would use three <code>.col-xs-4</code>.</li>
    </ul>
    <p>Look to the examples for applying these principles to your code.</p>

    <div class="bs-callout bs-callout-info">
      <h4>Grids and full-width layouts</h4>
      <p>Folks looking to create fully fluid layouts (meaning your site stretches the entire width of the viewport) must wrap their grid content in a containing element with <code>padding: 0 15px;</code> to offset the <code>margin: 0 -15px;</code> used on <code>.row</code>s.</p>
    </div>

    <h3 id="grid-media-queries">Media queries</h3>
    <p>We use the following media queries in our LESS files to create the key breakpoints in our grid system.</p>
<div class="highlight"><pre><code class="css"><span class="c">/* Extra small devices (phones, less than 768px) */</span>
<span class="c">/* No media query since this is the default in Bootstrap */</span>

<span class="c">/* Small devices (tablets, 768px and up) */</span>
<span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-sm-min</span><span class="o">)</span> <span class="p">{</span> <span class="o">...</span> <span class="p">}</span>

<span class="c">/* Medium devices (desktops, 992px and up) */</span>
<span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-md-min</span><span class="o">)</span> <span class="p">{</span> <span class="o">...</span> <span class="p">}</span>

<span class="c">/* Large devices (large desktops, 1200px and up) */</span>
<span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-lg-min</span><span class="o">)</span> <span class="p">{</span> <span class="o">...</span> <span class="p">}</span>
</code></pre></div>
    <p>We occasionally expand on these media queries to include a <code>max-width</code> to limit CSS to a narrower set of devices.</p>
<div class="highlight"><pre><code class="css"><span class="k">@media</span> <span class="o">(</span><span class="nt">max-width</span><span class="o">:</span> <span class="k">@screen-xs-max</span><span class="o">)</span> <span class="p">{</span> <span class="o">...</span> <span class="p">}</span>
<span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-sm-min</span><span class="o">)</span> <span class="nt">and</span> <span class="o">(</span><span class="nt">max-width</span><span class="o">:</span> <span class="k">@screen-sm-max</span><span class="o">)</span> <span class="p">{</span> <span class="o">...</span> <span class="p">}</span>
<span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-md-min</span><span class="o">)</span> <span class="nt">and</span> <span class="o">(</span><span class="nt">max-width</span><span class="o">:</span> <span class="k">@screen-md-max</span><span class="o">)</span> <span class="p">{</span> <span class="o">...</span> <span class="p">}</span>
<span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-lg-min</span><span class="o">)</span> <span class="p">{</span> <span class="o">...</span> <span class="p">}</span>
</code></pre></div>

    <h3 id="grid-options">Grid options</h3>
    <p>See how aspects of the Bootstrap grid system work across multiple devices with a handy table.</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th></th>
            <th>
              Extra small devices
              <small>Phones (&lt;768px)</small>
            </th>
            <th>
              Small devices
              <small>Tablets (&ge;768px)</small>
            </th>
            <th>
              Medium devices
              <small>Desktops (&ge;992px)</small>
            </th>
            <th>
              Large devices
              <small>Desktops (&ge;1200px)</small>
            </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th>Grid behavior</th>
            <td>Horizontal at all times</td>
            <td colspan="3">Collapsed to start, horizontal above breakpoints</td>
          </tr>
          <tr>
            <th>Max container width</th>
            <td>None (auto)</td>
            <td>750px</td>
            <td>970px</td>
            <td>1170px</td>
          </tr>
          <tr>
            <th>Class prefix</th>
            <td><code>.col-xs-</code></td>
            <td><code>.col-sm-</code></td>
            <td><code>.col-md-</code></td>
            <td><code>.col-lg-</code></td>
          </tr>
          <tr>
            <th># of columns</th>
            <td colspan="4">12</td>
          </tr>
          <tr>
            <th>Max column width</th>
            <td class="text-muted">Auto</td>
            <td>60px</td>
            <td>78px</td>
            <td>95px</td>
          </tr>
          <tr>
            <th>Gutter width</th>
            <td colspan="4">30px (15px on each side of a column)</td>
          </tr>
          <tr>
            <th>Nestable</th>
            <td colspan="4">Yes</td>
          </tr>
          <tr>
            <th>Offsets</th>
            <td colspan="4">Yes</td>
          </tr>
          <tr>
            <th>Column ordering</th>
            <td colspan="4">Yes</td>
          </tr>
        </tbody>
      </table>
    </div>
    <p>Grid classes apply to devices with screen widths greater than or equal to the breakpoint sizes, and override grid classes targeted at smaller devices. Therefore, applying any <code>.col-md-</code> class to an element will not only affect its styling on medium devices but also on large devices if a <code>.col-lg-</code> class is not present.</p>

    <h3 id="grid-example-basic">Example: Stacked-to-horizontal</h3>
    <p>Using a single set of <code>.col-md-*</code> grid classes, you can create a basic grid system that starts out stacked on mobile devices and tablet devices (the extra small to small range) before becoming horizontal on desktop (medium) devices. Place grid columns in any <code>.row</code>.</p>
    <div class="bs-docs-grid">
      <div class="row show-grid">
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
        <div class="col-md-1">.col-md-1</div>
      </div>
      <div class="row show-grid">
        <div class="col-md-8">.col-md-8</div>
        <div class="col-md-4">.col-md-4</div>
      </div>
      <div class="row show-grid">
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4">.col-md-4</div>
      </div>
      <div class="row show-grid">
        <div class="col-md-6">.col-md-6</div>
        <div class="col-md-6">.col-md-6</div>
      </div>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-1&quot;</span><span class="nt">&gt;</span>.col-md-1<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-8&quot;</span><span class="nt">&gt;</span>.col-md-8<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-4&quot;</span><span class="nt">&gt;</span>.col-md-4<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-4&quot;</span><span class="nt">&gt;</span>.col-md-4<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-4&quot;</span><span class="nt">&gt;</span>.col-md-4<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-4&quot;</span><span class="nt">&gt;</span>.col-md-4<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-6&quot;</span><span class="nt">&gt;</span>.col-md-6<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-6&quot;</span><span class="nt">&gt;</span>.col-md-6<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

    <h3 id="grid-example-mixed">Example: Mobile and desktop</h3>
    <p>Don't want your columns to simply stack in smaller devices? Use the extra small and medium device grid classes by adding <code>.col-xs-*</code> <code>.col-md-*</code> to your columns. See the example below for a better idea of how it all works.</p>
    <div class="bs-docs-grid">
      <div class="row show-grid">
        <div class="col-xs-12 col-md-8">.col-xs-12 .col-md-8</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
      </div>
      <div class="row show-grid">
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
      </div>
      <div class="row show-grid">
        <div class="col-xs-6">.col-xs-6</div>
        <div class="col-xs-6">.col-xs-6</div>
      </div>
    </div>
<div class="highlight"><pre><code class="html"><span class="c">&lt;!-- Stack the columns on mobile by making one full-width and the other half-width --&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-12 col-md-8&quot;</span><span class="nt">&gt;</span>.col-xs-12 .col-md-8<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-md-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-md-4<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>

<span class="c">&lt;!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop --&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-md-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-md-4<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-md-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-md-4<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-md-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-md-4<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>

<span class="c">&lt;!-- Columns are always 50% wide, on mobile and desktop --&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6&quot;</span><span class="nt">&gt;</span>.col-xs-6<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6&quot;</span><span class="nt">&gt;</span>.col-xs-6<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

    <h3 id="grid-example-mixed-complete">Example: Mobile, tablet, desktops</h3>
    <p>Build on the previous example by creating even more dynamic and powerful layouts with tablet <code>.col-sm-*</code> classes.</p>
    <div class="bs-docs-grid">
      <div class="row show-grid">
        <div class="col-xs-12 col-sm-6 col-md-8">.col-xs-12 .col-sm-6 .col-md-8</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
      </div>
      <div class="row show-grid">
        <div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
        <div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
        <!-- Optional: clear the XS cols if their content doesn't match in height -->
        <div class="clearfix visible-xs"></div>
        <div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
      </div>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-12 col-sm-6 col-md-8&quot;</span><span class="nt">&gt;</span>.col-xs-12 .col-sm-6 .col-md-8<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-md-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-md-4<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-sm-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-sm-4<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-sm-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-sm-4<span class="nt">&lt;/div&gt;</span>
  <span class="c">&lt;!-- Optional: clear the XS cols if their content doesn&#39;t match in height --&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;clearfix visible-xs&quot;</span><span class="nt">&gt;&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-sm-4&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-sm-4<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

    <h3 id="grid-responsive-resets">Responsive column resets</h3>
    <p>With the four tiers of grids available you're bound to run into issues where, at certain breakpoints, your columns don't clear quite right as one is taller than the other. To fix that, use a combination of a <code>.clearfix</code> and our <a href="#responsive-utilities">responsive utility classes</a>.</p>
<div class="bs-docs-grid">
  <div class="row show-grid">
    <div class="col-xs-6 col-sm-3">
      .col-xs-6 .col-sm-3
      <br>
      Resize your viewport or check it out on your phone for an example.
    </div>
    <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>

    <!-- Add the extra clearfix for only the required viewport -->
    <div class="clearfix visible-xs"></div>

    <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
    <div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
  </div>
</div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-sm-3&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-sm-3<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-sm-3&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-sm-3<span class="nt">&lt;/div&gt;</span>

  <span class="c">&lt;!-- Add the extra clearfix for only the required viewport --&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;clearfix visible-xs&quot;</span><span class="nt">&gt;&lt;/div&gt;</span>

  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-sm-3&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-sm-3<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-6 col-sm-3&quot;</span><span class="nt">&gt;</span>.col-xs-6 .col-sm-3<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>
    <p>In addition to column clearing at responsive breakpoints, you may need to <strong>reset offsets, pushes, or pulls</strong>. Those resets are available for medium and large grid tiers only, since they start only at the (second) small grid tier. See this in action in <a href="../examples/grid/">the grid example</a>.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-5 col-md-6&quot;</span><span class="nt">&gt;</span>.col-sm-5 .col-md-6<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-5 col-sm-offset-2 col-md-6 col-md-offset-0&quot;</span><span class="nt">&gt;</span>.col-sm-5 .col-sm-offset-2 .col-md-6 .col-md-offset-0<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>

<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-6 col-md-5 col-lg-6&quot;</span><span class="nt">&gt;</span>.col-sm-6 .col-md-5 .col-lg-6<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-6 col-md-5 col-md-offset-2 col-lg-6 col-lg-offset-0&quot;</span><span class="nt">&gt;</span>.col-sm-6 .col-md-5 .col-md-offset-2 .col-lg-6 .col-lg-offset-0<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>


    <h3 id="grid-offsetting">Offsetting columns</h3>
    <p>Move columns to the right using <code>.col-md-offset-*</code> classes. These classes increase the left margin of a column by <code>*</code> columns. For example, <code>.col-md-offset-4</code> moves <code>.col-md-4</code> over four columns.</p>
    <div class="bs-docs-grid">
      <div class="row show-grid">
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
      </div>
      <div class="row show-grid">
        <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
        <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
      </div>
      <div class="row show-grid">
        <div class="col-md-6 col-md-offset-3">.col-md-6 .col-md-offset-3</div>
      </div>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-4&quot;</span><span class="nt">&gt;</span>.col-md-4<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-4 col-md-offset-4&quot;</span><span class="nt">&gt;</span>.col-md-4 .col-md-offset-4<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-3 col-md-offset-3&quot;</span><span class="nt">&gt;</span>.col-md-3 .col-md-offset-3<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-3 col-md-offset-3&quot;</span><span class="nt">&gt;</span>.col-md-3 .col-md-offset-3<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-6 col-md-offset-3&quot;</span><span class="nt">&gt;</span>.col-md-6 .col-md-offset-3<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>


    <h3 id="grid-nesting">Nesting columns</h3>
    <p>To nest your content with the default grid, add a new <code>.row</code> and set of <code>.col-md-*</code> columns within an existing <code>.col-md-*</code> column. Nested rows should include a set of columns that add up to 12.</p>
    <div class="row show-grid">
      <div class="col-md-9">
        Level 1: .col-md-9
        <div class="row show-grid">
          <div class="col-md-6">
            Level 2: .col-md-6
          </div>
          <div class="col-md-6">
            Level 2: .col-md-6
          </div>
        </div>
      </div>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-9&quot;</span><span class="nt">&gt;</span>
    Level 1: .col-md-9
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-6&quot;</span><span class="nt">&gt;</span>
        Level 2: .col-md-6
      <span class="nt">&lt;/div&gt;</span>
      <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-6&quot;</span><span class="nt">&gt;</span>
        Level 2: .col-md-6
      <span class="nt">&lt;/div&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

    <h3 id="grid-column-ordering">Column ordering</h3>
    <p>Easily change the order of our built-in grid columns with <code>.col-md-push-*</code> and <code>.col-md-pull-*</code> modifier classes.</p>
    <div class="row show-grid">
      <div class="col-md-9 col-md-push-3">.col-md-9 .col-md-push-3</div>
      <div class="col-md-3 col-md-pull-9">.col-md-3 .col-md-pull-9</div>
    </div>

<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-9 col-md-push-3&quot;</span><span class="nt">&gt;</span>.col-md-9 .col-md-push-3<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-md-3 col-md-pull-9&quot;</span><span class="nt">&gt;</span>.col-md-3 .col-md-pull-9<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

    <h3 id="grid-less">LESS mixins and variables</h3>
    <p>In addition to <a href="#grid-example-basic">prebuilt grid classes</a> for fast layouts, Bootstrap includes LESS variables and mixins for quickly generating your own simple, semantic layouts.</p>

    <h4>Variables</h4>
    <p>Variables determine the number of columns, the gutter width, and the media query point at which to begin floating columns. We use these to generate the predefined grid classes documented above, as well as for the custom mixins listed below.</p>
<div class="highlight"><pre><code class="css"><span class="k">@grid-columns</span><span class="o">:</span>              <span class="nt">12</span><span class="p">;</span>
<span class="k">@grid-gutter-width</span><span class="o">:</span>         <span class="nt">30px</span><span class="p">;</span>
<span class="k">@grid-float-breakpoint</span><span class="o">:</span>     <span class="nt">768px</span><span class="p">;</span>
</code></pre></div>

    <h4>Mixins</h4>
    <p>Mixins are used in conjunction with the grid variables to generate semantic CSS for individual grid columns.</p>
<div class="highlight"><pre><code class="css"><span class="o">//</span> <span class="nt">Creates</span> <span class="nt">a</span> <span class="nt">wrapper</span> <span class="nt">for</span> <span class="nt">a</span> <span class="nt">series</span> <span class="nt">of</span> <span class="nt">columns</span>
<span class="nc">.make-row</span><span class="o">(</span><span class="k">@gutter</span><span class="o">:</span> <span class="k">@grid-gutter-width</span><span class="o">)</span> <span class="p">{</span>
  <span class="o">//</span> <span class="nt">Then</span> <span class="nt">clear</span> <span class="nt">the</span> <span class="nt">floated</span> <span class="nt">columns</span>
  <span class="nc">.clearfix</span><span class="o">();</span>

  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-sm-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">margin-left</span><span class="o">:</span>  <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">-2</span><span class="o">)</span><span class="p">;</span>
    <span class="nt">margin-right</span><span class="o">:</span> <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">-2</span><span class="o">)</span><span class="p">;</span>
  <span class="p">}</span>

  <span class="o">//</span> <span class="nt">Negative</span> <span class="nt">margin</span> <span class="nt">nested</span> <span class="nt">rows</span> <span class="nt">out</span> <span class="nt">to</span> <span class="nt">align</span> <span class="nt">the</span> <span class="nt">content</span> <span class="nt">of</span> <span class="nt">columns</span>
  <span class="nc">.row</span> <span class="p">{</span>
    <span class="nt">margin-left</span><span class="o">:</span>  <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">-2</span><span class="o">)</span><span class="p">;</span>
    <span class="nt">margin-right</span><span class="o">:</span> <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">-2</span><span class="o">)</span><span class="p">;</span>
  <span class="p">}</span>
<span class="p">}</span>

<span class="o">//</span> <span class="nt">Generate</span> <span class="nt">the</span> <span class="nt">extra</span> <span class="nt">small</span> <span class="nt">columns</span>
<span class="nc">.make-xs-column</span><span class="o">(</span><span class="k">@columns</span><span class="p">;</span> <span class="k">@gutter</span><span class="o">:</span> <span class="k">@grid-gutter-width</span><span class="o">)</span> <span class="p">{</span>
  <span class="nt">position</span><span class="o">:</span> <span class="nt">relative</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Prevent</span> <span class="nt">columns</span> <span class="nt">from</span> <span class="nt">collapsing</span> <span class="nt">when</span> <span class="nt">empty</span>
  <span class="nt">min-height</span><span class="o">:</span> <span class="nt">1px</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Inner</span> <span class="nt">gutter</span> <span class="nt">via</span> <span class="nt">padding</span>
  <span class="nt">padding-left</span><span class="o">:</span>  <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>
  <span class="nt">padding-right</span><span class="o">:</span> <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>

  <span class="o">//</span> <span class="nt">Calculate</span> <span class="nt">width</span> <span class="nt">based</span> <span class="nt">on</span> <span class="nt">number</span> <span class="nt">of</span> <span class="nt">columns</span> <span class="nt">available</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@grid-float-breakpoint</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">float</span><span class="o">:</span> <span class="nt">left</span><span class="o">;</span>
    <span class="nt">width</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>

<span class="o">//</span> <span class="nt">Generate</span> <span class="nt">the</span> <span class="nt">small</span> <span class="nt">columns</span>
<span class="nc">.make-sm-column</span><span class="o">(</span><span class="k">@columns</span><span class="p">;</span> <span class="k">@gutter</span><span class="o">:</span> <span class="k">@grid-gutter-width</span><span class="o">)</span> <span class="p">{</span>
  <span class="nt">position</span><span class="o">:</span> <span class="nt">relative</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Prevent</span> <span class="nt">columns</span> <span class="nt">from</span> <span class="nt">collapsing</span> <span class="nt">when</span> <span class="nt">empty</span>
  <span class="nt">min-height</span><span class="o">:</span> <span class="nt">1px</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Inner</span> <span class="nt">gutter</span> <span class="nt">via</span> <span class="nt">padding</span>
  <span class="nt">padding-left</span><span class="o">:</span>  <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>
  <span class="nt">padding-right</span><span class="o">:</span> <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>

  <span class="o">//</span> <span class="nt">Calculate</span> <span class="nt">width</span> <span class="nt">based</span> <span class="nt">on</span> <span class="nt">number</span> <span class="nt">of</span> <span class="nt">columns</span> <span class="nt">available</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-sm-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">float</span><span class="o">:</span> <span class="nt">left</span><span class="o">;</span>
    <span class="nt">width</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>

<span class="o">//</span> <span class="nt">Generate</span> <span class="nt">the</span> <span class="nt">small</span> <span class="nt">column</span> <span class="nt">offsets</span>
<span class="nc">.make-sm-column-offset</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-sm-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">margin-left</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>
<span class="nc">.make-sm-column-push</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-sm-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">left</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>
<span class="nc">.make-sm-column-pull</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-sm-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">right</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>

<span class="o">//</span> <span class="nt">Generate</span> <span class="nt">the</span> <span class="nt">medium</span> <span class="nt">columns</span>
<span class="nc">.make-md-column</span><span class="o">(</span><span class="k">@columns</span><span class="p">;</span> <span class="k">@gutter</span><span class="o">:</span> <span class="k">@grid-gutter-width</span><span class="o">)</span> <span class="p">{</span>
  <span class="nt">position</span><span class="o">:</span> <span class="nt">relative</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Prevent</span> <span class="nt">columns</span> <span class="nt">from</span> <span class="nt">collapsing</span> <span class="nt">when</span> <span class="nt">empty</span>
  <span class="nt">min-height</span><span class="o">:</span> <span class="nt">1px</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Inner</span> <span class="nt">gutter</span> <span class="nt">via</span> <span class="nt">padding</span>
  <span class="nt">padding-left</span><span class="o">:</span>  <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>
  <span class="nt">padding-right</span><span class="o">:</span> <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>

  <span class="o">//</span> <span class="nt">Calculate</span> <span class="nt">width</span> <span class="nt">based</span> <span class="nt">on</span> <span class="nt">number</span> <span class="nt">of</span> <span class="nt">columns</span> <span class="nt">available</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-md-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">float</span><span class="o">:</span> <span class="nt">left</span><span class="o">;</span>
    <span class="nt">width</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>

<span class="o">//</span> <span class="nt">Generate</span> <span class="nt">the</span> <span class="nt">medium</span> <span class="nt">column</span> <span class="nt">offsets</span>
<span class="nc">.make-md-column-offset</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-md-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">margin-left</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>
<span class="nc">.make-md-column-push</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-md-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">left</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>
<span class="nc">.make-md-column-pull</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-md-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">right</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>

<span class="o">//</span> <span class="nt">Generate</span> <span class="nt">the</span> <span class="nt">large</span> <span class="nt">columns</span>
<span class="nc">.make-lg-column</span><span class="o">(</span><span class="k">@columns</span><span class="p">;</span> <span class="k">@gutter</span><span class="o">:</span> <span class="k">@grid-gutter-width</span><span class="o">)</span> <span class="p">{</span>
  <span class="nt">position</span><span class="o">:</span> <span class="nt">relative</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Prevent</span> <span class="nt">columns</span> <span class="nt">from</span> <span class="nt">collapsing</span> <span class="nt">when</span> <span class="nt">empty</span>
  <span class="nt">min-height</span><span class="o">:</span> <span class="nt">1px</span><span class="o">;</span>
  <span class="o">//</span> <span class="nt">Inner</span> <span class="nt">gutter</span> <span class="nt">via</span> <span class="nt">padding</span>
  <span class="nt">padding-left</span><span class="o">:</span>  <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>
  <span class="nt">padding-right</span><span class="o">:</span> <span class="o">(</span><span class="k">@gutter</span> <span class="o">/</span> <span class="nt">2</span><span class="o">)</span><span class="p">;</span>

  <span class="o">//</span> <span class="nt">Calculate</span> <span class="nt">width</span> <span class="nt">based</span> <span class="nt">on</span> <span class="nt">number</span> <span class="nt">of</span> <span class="nt">columns</span> <span class="nt">available</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-lg-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">float</span><span class="o">:</span> <span class="nt">left</span><span class="o">;</span>
    <span class="nt">width</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>

<span class="o">//</span> <span class="nt">Generate</span> <span class="nt">the</span> <span class="nt">large</span> <span class="nt">column</span> <span class="nt">offsets</span>
<span class="nc">.make-lg-column-offset</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-lg-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">margin-left</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>
<span class="nc">.make-lg-column-push</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-lg-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">left</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>
<span class="nc">.make-lg-column-pull</span><span class="o">(</span><span class="k">@columns</span><span class="o">)</span> <span class="p">{</span>
  <span class="k">@media</span> <span class="o">(</span><span class="nt">min-width</span><span class="o">:</span> <span class="k">@screen-lg-min</span><span class="o">)</span> <span class="p">{</span>
    <span class="nt">right</span><span class="o">:</span> <span class="nt">percentage</span><span class="o">((</span><span class="k">@columns</span> <span class="o">/</span> <span class="k">@grid-columns</span><span class="o">))</span><span class="p">;</span>
  <span class="err">}</span>
<span class="err">}</span>
</code></pre></div>

    <h4>Example usage</h4>
    <p>You can modify the variables to your own custom values, or just use the mixins with their default values. Here's an example of using the default settings to create a two-column layout with a gap between.</p>
<div class="highlight"><pre><code class="css"><span class="nc">.wrapper</span> <span class="p">{</span>
  <span class="o">.</span><span class="n">make</span><span class="o">-</span><span class="n">row</span><span class="p">();</span>
<span class="p">}</span>
<span class="nc">.content-main</span> <span class="p">{</span>
  <span class="o">.</span><span class="n">make</span><span class="o">-</span><span class="n">lg</span><span class="o">-</span><span class="n">column</span><span class="p">(</span><span class="m">8</span><span class="p">);</span>
<span class="p">}</span>
<span class="nc">.content-secondary</span> <span class="p">{</span>
  <span class="o">.</span><span class="n">make</span><span class="o">-</span><span class="n">lg</span><span class="o">-</span><span class="n">column</span><span class="p">(</span><span class="m">3</span><span class="p">);</span>
  <span class="o">.</span><span class="n">make</span><span class="o">-</span><span class="n">lg</span><span class="o">-</span><span class="n">column</span><span class="o">-</span><span class="n">offset</span><span class="p">(</span><span class="m">1</span><span class="p">);</span>
<span class="p">}</span>
</code></pre></div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;wrapper&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;content-main&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;content-secondary&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

  </div>




  <!-- Typography
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="type">Typography</h1>
    </div>

    <!-- Headings -->
    <h2 id="type-headings">Headings</h2>
    <p>All HTML headings, <code>&lt;h1&gt;</code> through <code>&lt;h6&gt;</code>, are available. <code>.h1</code> through <code>.h6</code> classes are also available, for when you want to match the font styling of a heading but still want your text to be displayed inline.</p>
    <div class="bs-example bs-example-type">
      <table class="table">
        <tbody>
          <tr>
            <td><h1>h1. Bootstrap heading</h1></td>
            <td class="info">Semibold 36px</td>
          </tr>
          <tr>
            <td><h2>h2. Bootstrap heading</h2></td>
            <td class="info">Semibold 30px</td>
          </tr>
          <tr>
            <td><h3>h3. Bootstrap heading</h3></td>
            <td class="info">Semibold 24px</td>
          </tr>
          <tr>
            <td><h4>h4. Bootstrap heading</h4></td>
            <td class="info">Semibold 18px</td>
          </tr>
          <tr>
            <td><h5>h5. Bootstrap heading</h5></td>
            <td class="info">Semibold 14px</td>
          </tr>
          <tr>
            <td><h6>h6. Bootstrap heading</h6></td>
            <td class="info">Semibold 12px</td>
          </tr>
        </tbody>
      </table>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;h1&gt;</span>h1. Bootstrap heading<span class="nt">&lt;/h1&gt;</span>
<span class="nt">&lt;h2&gt;</span>h2. Bootstrap heading<span class="nt">&lt;/h2&gt;</span>
<span class="nt">&lt;h3&gt;</span>h3. Bootstrap heading<span class="nt">&lt;/h3&gt;</span>
<span class="nt">&lt;h4&gt;</span>h4. Bootstrap heading<span class="nt">&lt;/h4&gt;</span>
<span class="nt">&lt;h5&gt;</span>h5. Bootstrap heading<span class="nt">&lt;/h5&gt;</span>
<span class="nt">&lt;h6&gt;</span>h6. Bootstrap heading<span class="nt">&lt;/h6&gt;</span>
</code></pre></div>

    <p>Create lighter, secondary text in any heading with a generic <code>&lt;small&gt;</code> tag or the <code>.small</code> class.</p>
    <div class="bs-example bs-example-type">
      <table class="table">
        <tbody>
          <tr>
            <td><h1>h1. Bootstrap heading <small>Secondary text</small></h1></td>
          </tr>
          <tr>
            <td><h2>h2. Bootstrap heading <small>Secondary text</small></h2></td>
          </tr>
          <tr>
            <td><h3>h3. Bootstrap heading <small>Secondary text</small></h3></td>
          </tr>
          <tr>
            <td><h4>h4. Bootstrap heading <small>Secondary text</small></h4></td>
          </tr>
          <tr>
            <td><h5>h5. Bootstrap heading <small>Secondary text</small></h5></td>
          </tr>
          <tr>
            <td><h6>h6. Bootstrap heading <small>Secondary text</small></h6></td>
          </tr>
        </tbody>
      </table>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;h1&gt;</span>h1. Bootstrap heading <span class="nt">&lt;small&gt;</span>Secondary text<span class="nt">&lt;/small&gt;&lt;/h1&gt;</span>
<span class="nt">&lt;h2&gt;</span>h2. Bootstrap heading <span class="nt">&lt;small&gt;</span>Secondary text<span class="nt">&lt;/small&gt;&lt;/h2&gt;</span>
<span class="nt">&lt;h3&gt;</span>h3. Bootstrap heading <span class="nt">&lt;small&gt;</span>Secondary text<span class="nt">&lt;/small&gt;&lt;/h3&gt;</span>
<span class="nt">&lt;h4&gt;</span>h4. Bootstrap heading <span class="nt">&lt;small&gt;</span>Secondary text<span class="nt">&lt;/small&gt;&lt;/h4&gt;</span>
<span class="nt">&lt;h5&gt;</span>h5. Bootstrap heading <span class="nt">&lt;small&gt;</span>Secondary text<span class="nt">&lt;/small&gt;&lt;/h5&gt;</span>
<span class="nt">&lt;h6&gt;</span>h6. Bootstrap heading <span class="nt">&lt;small&gt;</span>Secondary text<span class="nt">&lt;/small&gt;&lt;/h6&gt;</span>
</code></pre></div>


    <!-- Body copy -->
    <h2 id="type-body-copy">Body copy</h2>
    <p>Bootstrap's global default <code>font-size</code> is <strong>14px</strong>, with a <code>line-height</code> of <strong>1.428</strong>. This is applied to the <code>&lt;body&gt;</code> and all paragraphs. In addition, <code>&lt;p&gt;</code> (paragraphs) receive a bottom margin of half their computed line-height (10px by default).</p>
    <div class="bs-example">
      <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
      <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.</p>
      <p>Maecenas sed diam eget risus varius blandit sit amet non magna. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;p&gt;</span>...<span class="nt">&lt;/p&gt;</span>
</code></pre></div>

    <!-- Body copy .lead -->
    <h3>Lead body copy</h3>
    <p>Make a paragraph stand out by adding <code>.lead</code>.</p>
    <div class="bs-example">
      <p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;lead&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/p&gt;</span>
</code></pre></div>

    <!-- Using LESS -->
    <h3>Built with Less</h3>
    <p>The typographic scale is based on two LESS variables in <strong>variables.less</strong>: <code>@font-size-base</code> and <code>@line-height-base</code>. The first is the base font-size used throughout and the second is the base line-height. We use those variables and some simple math to create the margins, paddings, and line-heights of all our type and more. Customize them and Bootstrap adapts.</p>


    <!-- Emphasis -->
    <h2 id="type-emphasis">Emphasis</h2>
    <p>Make use of HTML's default emphasis tags with lightweight styles.</p>

    <h3>Small text</h3>
    <p>For de-emphasizing inline or blocks of text, use the <code>&lt;small&gt;</code> tag to set text at 85% the size of the parent. Heading elements receive their own <code>font-size</code> for nested <code>&lt;small&gt;</code> elements.</p>
    <p>You may alternatively use an inline element with <code>.small</code> in place of any <code>&lt;small&gt;</code></p>
    <div class="bs-example">
      <p><small>This line of text is meant to be treated as fine print.</small></p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;small&gt;</span>This line of text is meant to be treated as fine print.<span class="nt">&lt;/small&gt;</span>
</code></pre></div>


    <h3>Bold</h3>
    <p>For emphasizing a snippet of text with a heavier font-weight.</p>
    <div class="bs-example">
      <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;strong&gt;</span>rendered as bold text<span class="nt">&lt;/strong&gt;</span>
</code></pre></div>

    <h3>Italics</h3>
    <p>For emphasizing a snippet of text with italics.</p>
    <div class="bs-example">
      <p>The following snippet of text is <em>rendered as italicized text</em>.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;em&gt;</span>rendered as italicized text<span class="nt">&lt;/em&gt;</span>
</code></pre></div>

    <div class="bs-callout bs-callout-info">
      <h4>Alternate elements</h4>
      <p>Feel free to use <code>&lt;b&gt;</code> and <code>&lt;i&gt;</code> in HTML5. <code>&lt;b&gt;</code> is meant to highlight words or phrases without conveying additional importance while <code>&lt;i&gt;</code> is mostly for voice, technical terms, etc.</p>
    </div>

    <h3>Alignment classes</h3>
    <p>Easily realign text to components with text alignment classes.</p>
    <div class="bs-example">
      <p class="text-left">Left aligned text.</p>
      <p class="text-center">Center aligned text.</p>
      <p class="text-right">Right aligned text.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-left&quot;</span><span class="nt">&gt;</span>Left aligned text.<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-center&quot;</span><span class="nt">&gt;</span>Center aligned text.<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-right&quot;</span><span class="nt">&gt;</span>Right aligned text.<span class="nt">&lt;/p&gt;</span>
</code></pre></div>

    <h3>Emphasis classes</h3>
    <p>Convey meaning through color with a handful of emphasis utility classes. These may also be applied to links and will darken on hover just like our default link styles.</p>
    <div class="bs-example">
      <p class="text-muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</p>
      <p class="text-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
      <p class="text-success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
      <p class="text-info">Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
      <p class="text-warning">Etiam porta sem malesuada magna mollis euismod.</p>
      <p class="text-danger">Donec ullamcorper nulla non metus auctor fringilla.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-muted&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-primary&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-success&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-info&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-warning&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;text-danger&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/p&gt;</span>
</code></pre></div>
    <div class="bs-callout bs-callout-info">
      <h4>Dealing with specificity</h4>
      <p>Sometimes emphasis classes cannot be applied due to the specificity of another selector. In most cases, a sufficient workaround is to wrap your text in a <code>&lt;span&gt;</code> with the class.</p>
    </div>


    <!-- Abbreviations -->
    <h2 id="type-abbreviations">Abbreviations</h2>
    <p>Stylized implementation of HTML's <code>&lt;abbr&gt;</code> element for abbreviations and acronyms to show the expanded version on hover. Abbreviations with a <code>title</code> attribute have a light dotted bottom border and a help cursor on hover, providing additional context on hover.</p>

    <h3>Basic abbreviation</h3>
    <p>For expanded text on long hover of an abbreviation, include the <code>title</code> attribute with the <code>&lt;abbr&gt;</code> element.</p>
    <div class="bs-example">
      <p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;abbr</span> <span class="na">title=</span><span class="s">&quot;attribute&quot;</span><span class="nt">&gt;</span>attr<span class="nt">&lt;/abbr&gt;</span>
</code></pre></div>

    <h3>Initialism</h3>
    <p>Add <code>.initialism</code> to an abbreviation for a slightly smaller font-size.</p>
    <div class="bs-example">
      <p><abbr title="HyperText Markup Language" class="initialism">HTML</abbr> is the best thing since sliced bread.</p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;abbr</span> <span class="na">title=</span><span class="s">&quot;HyperText Markup Language&quot;</span> <span class="na">class=</span><span class="s">&quot;initialism&quot;</span><span class="nt">&gt;</span>HTML<span class="nt">&lt;/abbr&gt;</span>
</code></pre></div>


    <!-- Addresses -->
    <h2 id="type-addresses">Addresses</h2>
    <p>Present contact information for the nearest ancestor or the entire body of work. Preserve formatting by ending all lines with <code>&lt;br&gt;</code>.</p>
    <div class="bs-example">
      <address>
        <strong>Twitter, Inc.</strong><br>
        795 Folsom Ave, Suite 600<br>
        San Francisco, CA 94107<br>
        <abbr title="Phone">P:</abbr> (123) 456-7890
      </address>
      <address>
        <strong>Full Name</strong><br>
        <a href="mailto:#">first.last@example.com</a>
      </address>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;address&gt;</span>
  <span class="nt">&lt;strong&gt;</span>Twitter, Inc.<span class="nt">&lt;/strong&gt;&lt;br&gt;</span>
  795 Folsom Ave, Suite 600<span class="nt">&lt;br&gt;</span>
  San Francisco, CA 94107<span class="nt">&lt;br&gt;</span>
  <span class="nt">&lt;abbr</span> <span class="na">title=</span><span class="s">&quot;Phone&quot;</span><span class="nt">&gt;</span>P:<span class="nt">&lt;/abbr&gt;</span> (123) 456-7890
<span class="nt">&lt;/address&gt;</span>

<span class="nt">&lt;address&gt;</span>
  <span class="nt">&lt;strong&gt;</span>Full Name<span class="nt">&lt;/strong&gt;&lt;br&gt;</span>
  <span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;mailto:#&quot;</span><span class="nt">&gt;</span>first.last@example.com<span class="nt">&lt;/a&gt;</span>
<span class="nt">&lt;/address&gt;</span>
</code></pre></div>


    <!-- Blockquotes -->
    <h2 id="type-blockquotes">Blockquotes</h2>
    <p>For quoting blocks of content from another source within your document.</p>

    <h3>Default blockquote</h3>
    <p>Wrap <code>&lt;blockquote&gt;</code> around any <abbr title="HyperText Markup Language">HTML</abbr> as the quote. For straight quotes, we recommend a <code>&lt;p&gt;</code>.</p>
    <div class="bs-example">
      <blockquote>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
      </blockquote>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;blockquote&gt;</span>
  <span class="nt">&lt;p&gt;</span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;/blockquote&gt;</span>
</code></pre></div>

    <h3>Blockquote options</h3>
    <p>Style and content changes for simple variations on a standard <code>&lt;blockquote&gt;</code>.</p>

    <h4>Naming a source</h4>
    <p>Add <code>&lt;small&gt;</code> tag or <code>.small</code> class for identifying the source. Wrap the name of the source work in <code>&lt;cite&gt;</code>.</p>
    <div class="bs-example">
      <blockquote>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
        <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
      </blockquote>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;blockquote&gt;</span>
  <span class="nt">&lt;p&gt;</span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.<span class="nt">&lt;/p&gt;</span>
  <span class="nt">&lt;small&gt;</span>Someone famous in <span class="nt">&lt;cite</span> <span class="na">title=</span><span class="s">&quot;Source Title&quot;</span><span class="nt">&gt;</span>Source Title<span class="nt">&lt;/cite&gt;&lt;/small&gt;</span>
<span class="nt">&lt;/blockquote&gt;</span>
</code></pre></div>

    <h4>Alternate displays</h4>
    <p>Use <code>.pull-right</code> for a floated, right-aligned blockquote.</p>
    <div class="bs-example" style="overflow: hidden;">
      <blockquote class="pull-right">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
        <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
      </blockquote>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;blockquote</span> <span class="na">class=</span><span class="s">&quot;pull-right&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/blockquote&gt;</span>
</code></pre></div>


    <!-- Lists -->
    <h2 id="type-lists">Lists</h2>

    <h3>Unordered</h3>
    <p>A list of items in which the order does <em>not</em> explicitly matter.</p>
    <div class="bs-example">
      <ul>
        <li>Lorem ipsum dolor sit amet</li>
        <li>Consectetur adipiscing elit</li>
        <li>Integer molestie lorem at massa</li>
        <li>Facilisis in pretium nisl aliquet</li>
        <li>Nulla volutpat aliquam velit
          <ul>
            <li>Phasellus iaculis neque</li>
            <li>Purus sodales ultricies</li>
            <li>Vestibulum laoreet porttitor sem</li>
            <li>Ac tristique libero volutpat at</li>
          </ul>
        </li>
        <li>Faucibus porta lacus fringilla vel</li>
        <li>Aenean sit amet erat nunc</li>
        <li>Eget porttitor lorem</li>
      </ul>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;ul&gt;</span>
  <span class="nt">&lt;li&gt;</span>...<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ul&gt;</span>
</code></pre></div>

    <h3>Ordered</h3>
    <p>A list of items in which the order <em>does</em> explicitly matter.</p>
    <div class="bs-example">
      <ol>
        <li>Lorem ipsum dolor sit amet</li>
        <li>Consectetur adipiscing elit</li>
        <li>Integer molestie lorem at massa</li>
        <li>Facilisis in pretium nisl aliquet</li>
        <li>Nulla volutpat aliquam velit</li>
        <li>Faucibus porta lacus fringilla vel</li>
        <li>Aenean sit amet erat nunc</li>
        <li>Eget porttitor lorem</li>
      </ol>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;ol&gt;</span>
  <span class="nt">&lt;li&gt;</span>...<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ol&gt;</span>
</code></pre></div>

    <h3>Unstyled</h3>
    <p>Remove the default <code>list-style</code> and left margin on list items (immediate children only). <strong>This only applies to immediate children list items</strong>, meaning you will need to add the class for any nested lists as well.</p>
    <div class="bs-example">
      <ul class="list-unstyled">
        <li>Lorem ipsum dolor sit amet</li>
        <li>Consectetur adipiscing elit</li>
        <li>Integer molestie lorem at massa</li>
        <li>Facilisis in pretium nisl aliquet</li>
        <li>Nulla volutpat aliquam velit
          <ul>
            <li>Phasellus iaculis neque</li>
            <li>Purus sodales ultricies</li>
            <li>Vestibulum laoreet porttitor sem</li>
            <li>Ac tristique libero volutpat at</li>
          </ul>
        </li>
        <li>Faucibus porta lacus fringilla vel</li>
        <li>Aenean sit amet erat nunc</li>
        <li>Eget porttitor lorem</li>
      </ul>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;ul</span> <span class="na">class=</span><span class="s">&quot;list-unstyled&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;li&gt;</span>...<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ul&gt;</span>
</code></pre></div>

    <h3>Inline</h3>
    <p>Place all list items on a single line with <code>display: inline-block;</code> and some light padding.</p>
    <div class="bs-example">
      <ul class="list-inline">
        <li>Lorem ipsum</li>
        <li>Phasellus iaculis</li>
        <li>Nulla volutpat</li>
      </ul>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;ul</span> <span class="na">class=</span><span class="s">&quot;list-inline&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;li&gt;</span>...<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ul&gt;</span>
</code></pre></div>

    <h3>Description</h3>
    <p>A list of terms with their associated descriptions.</p>
    <div class="bs-example">
      <dl>
        <dt>Description lists</dt>
        <dd>A description list is perfect for defining terms.</dd>
        <dt>Euismod</dt>
        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
        <dd>Donec id elit non mi porta gravida at eget metus.</dd>
        <dt>Malesuada porta</dt>
        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
      </dl>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;dl&gt;</span>
  <span class="nt">&lt;dt&gt;</span>...<span class="nt">&lt;/dt&gt;</span>
  <span class="nt">&lt;dd&gt;</span>...<span class="nt">&lt;/dd&gt;</span>
<span class="nt">&lt;/dl&gt;</span>
</code></pre></div>

    <h4>Horizontal description</h4>
    <p>Make terms and descriptions in <code>&lt;dl&gt;</code> line up side-by-side. Starts off stacked like default <code>&lt;dl&gt;</code>s, but when the navbar expands, so do these.</p>
    <div class="bs-example">
      <dl class="dl-horizontal">
        <dt>Description lists</dt>
        <dd>A description list is perfect for defining terms.</dd>
        <dt>Euismod</dt>
        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
        <dd>Donec id elit non mi porta gravida at eget metus.</dd>
        <dt>Malesuada porta</dt>
        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
        <dt>Felis euismod semper eget lacinia</dt>
        <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
      </dl>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;dl</span> <span class="na">class=</span><span class="s">&quot;dl-horizontal&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;dt&gt;</span>...<span class="nt">&lt;/dt&gt;</span>
  <span class="nt">&lt;dd&gt;</span>...<span class="nt">&lt;/dd&gt;</span>
<span class="nt">&lt;/dl&gt;</span>
</code></pre></div>

    <div class="bs-callout bs-callout-info">
      <h4>Auto-truncating</h4>
      <p>Horizontal description lists will truncate terms that are too long to fit in the left column with <code>text-overflow</code>. In narrower viewports, they will change to the default stacked layout.</p>
    </div>
  </div>


  <!-- Code
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="code">Code</h1>
    </div>

    <h2>Inline</h2>
    <p>Wrap inline snippets of code with <code>&lt;code&gt;</code>.</p>
<div class="bs-example">
  For example, <code>&lt;section&gt;</code> should be wrapped as inline.
</div>
<div class="highlight"><pre><code class="html">For example, <span class="nt">&lt;code&gt;</span><span class="ni">&amp;lt;</span>section<span class="ni">&amp;gt;</span><span class="nt">&lt;/code&gt;</span> should be wrapped as inline.
</code></pre></div>

    <h2>Basic block</h2>
    <p>Use <code>&lt;pre&gt;</code> for multiple lines of code. Be sure to escape any angle brackets in the code for proper rendering.</p>
<div class="bs-example">
  <pre>&lt;p&gt;Sample text here...&lt;/p&gt;</pre>
</div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;pre&gt;</span><span class="ni">&amp;lt;</span>p<span class="ni">&amp;gt;</span>Sample text here...<span class="ni">&amp;lt;</span>/p<span class="ni">&amp;gt;</span><span class="nt">&lt;/pre&gt;</span>
</code></pre></div>

    <p>You may optionally add the <code>.pre-scrollable</code> class, which will set a max-height of 350px and provide a y-axis scrollbar.</p>
  </div>



  <!-- Tables
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="tables">Tables</h1>
    </div>

    <h2 id="tables-example">Basic example</h2>
    <p>For basic styling&mdash;light padding and only horizontal dividers&mdash;add the base class <code>.table</code> to any <code>&lt;table&gt;</code>. It may seem super redundant, but given the widespread use of tables for other plugins like calendars and date pickers, we've opted to isolate our custom table styles.</p>
    <div class="bs-example">
      <table class="table">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;table</span> <span class="na">class=</span><span class="s">&quot;table&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/table&gt;</span>
</code></pre></div>


    <h2 id="tables-striped">Striped rows</h2>
    <p>Use <code>.table-striped</code> to add zebra-striping to any table row within the <code>&lt;tbody&gt;</code>.</p>
    <div class="bs-callout bs-callout-danger">
      <h4>Cross-browser compatibility</h4>
      <p>Striped tables are styled via the <code>:nth-child</code> CSS selector, which is not available in Internet Explorer 8.</p>
    </div>
    <div class="bs-example">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;table</span> <span class="na">class=</span><span class="s">&quot;table table-striped&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/table&gt;</span>
</code></pre></div>


    <h2 id="tables-bordered">Bordered table</h2>
    <p>Add <code>.table-bordered</code> for borders on all sides of the table and cells.</p>
    <div class="bs-example">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td rowspan="2">1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>Mark</td>
            <td>Otto</td>
            <td>@TwBootstrap</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;table</span> <span class="na">class=</span><span class="s">&quot;table table-bordered&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/table&gt;</span>
</code></pre></div>


    <h2 id="tables-hover-rows">Hover rows</h2>
    <p>Add <code>.table-hover</code> to enable a hover state on table rows within a <code>&lt;tbody&gt;</code>.</p>
    <div class="bs-example">
      <table class="table table-hover">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;table</span> <span class="na">class=</span><span class="s">&quot;table table-hover&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/table&gt;</span>
</code></pre></div>


    <h2 id="tables-condensed">Condensed table</h2>
    <p>Add <code>.table-condensed</code> to make tables more compact by cutting cell padding in half.</p>
    <div class="bs-example">
      <table class="table table-condensed">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;table</span> <span class="na">class=</span><span class="s">&quot;table table-condensed&quot;</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/table&gt;</span>
</code></pre></div>


    <h2 id="tables-contextual-classes">Contextual classes</h2>
    <p>Use contextual classes to color table rows or individual cells.</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <colgroup>
          <col class="col-xs-1">
          <col class="col-xs-7">
        </colgroup>
        <thead>
          <tr>
            <th>Class</th>
            <th>Description</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              <code>.active</code>
            </td>
            <td>Applies the hover color to a particular row or cell</td>
          </tr>
          <tr>
            <td>
              <code>.success</code>
            </td>
            <td>Indicates a successful or positive action</td>
          </tr>
          <tr>
            <td>
              <code>.warning</code>
            </td>
            <td>Indicates a warning that might need attention</td>
          </tr>
          <tr>
            <td>
              <code>.danger</code>
            </td>
            <td>Indicates a dangerous or potentially negative action</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="bs-example">
      <table class="table">
        <thead>
          <tr>
            <th>#</th>
            <th>Column heading</th>
            <th>Column heading</th>
            <th>Column heading</th>
          </tr>
        </thead>
        <tbody>
          <tr class="active">
            <td>1</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
          </tr>
          <tr class="success">
            <td>3</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
          </tr>
          <tr>
            <td>4</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
          </tr>
          <tr class="warning">
            <td>5</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
          </tr>
          <tr>
            <td>6</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
          </tr>
          <tr class="danger">
            <td>7</td>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="c">&lt;!-- On rows --&gt;</span>
<span class="nt">&lt;tr</span> <span class="na">class=</span><span class="s">&quot;active&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/tr&gt;</span>
<span class="nt">&lt;tr</span> <span class="na">class=</span><span class="s">&quot;success&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/tr&gt;</span>
<span class="nt">&lt;tr</span> <span class="na">class=</span><span class="s">&quot;warning&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/tr&gt;</span>
<span class="nt">&lt;tr</span> <span class="na">class=</span><span class="s">&quot;danger&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/tr&gt;</span>

<span class="c">&lt;!-- On cells (`td` or `th`) --&gt;</span>
<span class="nt">&lt;tr&gt;</span>
  <span class="nt">&lt;td</span> <span class="na">class=</span><span class="s">&quot;active&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/td&gt;</span>
  <span class="nt">&lt;td</span> <span class="na">class=</span><span class="s">&quot;success&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/td&gt;</span>
  <span class="nt">&lt;td</span> <span class="na">class=</span><span class="s">&quot;warning&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/td&gt;</span>
  <span class="nt">&lt;td</span> <span class="na">class=</span><span class="s">&quot;danger&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/td&gt;</span>
<span class="nt">&lt;/tr&gt;</span>
</code></pre></div>


    <h2 id="tables-responsive">Responsive tables</h2>
    <p>Create responsive tables by wrapping any <code>.table</code> in <code>.table-responsive</code> to make them scroll horizontally up to small devices (under 768px). When viewing on anything larger than 768px wide, you will not see any difference in these tables.</p>
    <div class="bs-example">
      <div class="table-responsive">
        <table class="table">
          <thead>
            <tr>
              <th>#</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>2</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>3</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
          </tbody>
        </table>
      </div><!-- /.table-responsive -->

      <div class="table-responsive">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>#</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
              <th>Table heading</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>2</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
            <tr>
              <td>3</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
              <td>Table cell</td>
            </tr>
          </tbody>
        </table>
      </div><!-- /.table-responsive -->
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;table-responsive&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;table</span> <span class="na">class=</span><span class="s">&quot;table&quot;</span><span class="nt">&gt;</span>
    ...
  <span class="nt">&lt;/table&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

  </div>



  <!-- Forms
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="forms">Forms</h1>
    </div>

    <h2 id="forms-example">Basic example</h2>
    <p>Individual form controls automatically receive some global styling. All textual <code>&lt;input&gt;</code>, <code>&lt;textarea&gt;</code>, and <code>&lt;select&gt;</code> elements with <code>.form-control</code> are set to <code>width: 100%;</code> by default. Wrap labels and controls in <code>.form-group</code> for optimum spacing.</p>
    <div class="bs-example">
      <form role="form">
        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group">
          <label for="exampleInputFile">File input</label>
          <input type="file" id="exampleInputFile">
          <p class="help-block">Example block-level help text here.</p>
        </div>
        <div class="checkbox">
          <label>
            <input type="checkbox"> Check me out
          </label>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;form</span> <span class="na">role=</span><span class="s">&quot;form&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;exampleInputEmail1&quot;</span><span class="nt">&gt;</span>Email address<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;email&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;exampleInputEmail1&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Enter email&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;exampleInputPassword1&quot;</span><span class="nt">&gt;</span>Password<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;password&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;exampleInputPassword1&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Password&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;exampleInputFile&quot;</span><span class="nt">&gt;</span>File input<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;file&quot;</span> <span class="na">id=</span><span class="s">&quot;exampleInputFile&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;help-block&quot;</span><span class="nt">&gt;</span>Example block-level help text here.<span class="nt">&lt;/p&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label&gt;</span>
      <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span> Check me out
    <span class="nt">&lt;/label&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;submit&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span><span class="nt">&gt;</span>Submit<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;/form&gt;</span>
</code></pre></div>


    <h2 id="forms-inline">Inline form</h2>
    <p>Add <code>.form-inline</code> to your <code>&lt;form&gt;</code> for left-aligned and inline-block controls. <strong>This only applies to forms within viewports that are at least 768px wide.</strong></p>
    <div class="bs-callout bs-callout-danger">
      <h4>Requires custom widths</h4>
      <p>Inputs, selects, and textareas are 100% wide by default in Bootstrap. To use the inline form, you'll have to set a width on the form controls used within.</p>
    </div>
    <div class="bs-callout bs-callout-danger">
      <h4>Always add labels</h4>
      <p>Screen readers will have trouble with your forms if you don't include a label for every input. For these inline forms, you can hide the labels using the <code>.sr-only</code> class.</p>
    </div>
    <div class="bs-example">
      <form class="form-inline" role="form">
        <div class="form-group">
          <label class="sr-only" for="exampleInputEmail2">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label class="sr-only" for="exampleInputPassword2">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
        </div>
        <div class="checkbox">
          <label>
            <input type="checkbox"> Remember me
          </label>
        </div>
        <button type="submit" class="btn btn-default">Sign in</button>
      </form>
    </div><!-- /example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;form</span> <span class="na">class=</span><span class="s">&quot;form-inline&quot;</span> <span class="na">role=</span><span class="s">&quot;form&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;sr-only&quot;</span> <span class="na">for=</span><span class="s">&quot;exampleInputEmail2&quot;</span><span class="nt">&gt;</span>Email address<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;email&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;exampleInputEmail2&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Enter email&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;sr-only&quot;</span> <span class="na">for=</span><span class="s">&quot;exampleInputPassword2&quot;</span><span class="nt">&gt;</span>Password<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;password&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;exampleInputPassword2&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Password&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label&gt;</span>
      <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span> Remember me
    <span class="nt">&lt;/label&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;submit&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span><span class="nt">&gt;</span>Sign in<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;/form&gt;</span>
</code></pre></div>


    <h2 id="forms-horizontal">Horizontal form</h2>
    <p>Use Bootstrap's predefined grid classes to align labels and groups of form controls in a horizontal layout by adding <code>.form-horizontal</code> to the form. Doing so changes <code>.form-group</code>s to behave as grid rows, so no need for <code>.row</code>.</p>
    <div class="bs-example">
      <form class="form-horizontal" role="form">
        <div class="form-group">
          <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
          </div>
        </div>
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
              <label>
                <input type="checkbox"> Remember me
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Sign in</button>
          </div>
        </div>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;form</span> <span class="na">class=</span><span class="s">&quot;form-horizontal&quot;</span> <span class="na">role=</span><span class="s">&quot;form&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;inputEmail3&quot;</span> <span class="na">class=</span><span class="s">&quot;col-sm-2 control-label&quot;</span><span class="nt">&gt;</span>Email<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-10&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;email&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;inputEmail3&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Email&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;inputPassword3&quot;</span> <span class="na">class=</span><span class="s">&quot;col-sm-2 control-label&quot;</span><span class="nt">&gt;</span>Password<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-10&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;password&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;inputPassword3&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Password&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-offset-2 col-sm-10&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span>
        <span class="nt">&lt;label&gt;</span>
          <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span> Remember me
        <span class="nt">&lt;/label&gt;</span>
      <span class="nt">&lt;/div&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-offset-2 col-sm-10&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;submit&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span><span class="nt">&gt;</span>Sign in<span class="nt">&lt;/button&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/form&gt;</span>
</code></pre></div>


    <h2 id="forms-controls">Supported controls</h2>
    <p>Examples of standard form controls supported in an example form layout.</p>

    <h3>Inputs</h3>
    <p>Most common form control, text-based input fields. Includes support for all HTML5 types: <code>text</code>, <code>password</code>, <code>datetime</code>, <code>datetime-local</code>, <code>date</code>, <code>month</code>, <code>time</code>, <code>week</code>, <code>number</code>, <code>email</code>, <code>url</code>, <code>search</code>, <code>tel</code>, and <code>color</code>.</p>
    <div class="bs-callout bs-callout-danger">
      <h4>Type declaration required</h4>
      <p>Inputs will only be fully styled if their <code>type</code> is properly declared.</p>
    </div>
    <div class="bs-example">
      <form role="form">
        <input type="text" class="form-control" placeholder="Text input">
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Text input&quot;</span><span class="nt">&gt;</span>
</code></pre></div>
    <div class="bs-callout bs-callout-info">
      <h4>Input groups</h4>
      <p>To add integrated text or buttons before and/or after any text-based <code>&lt;input&gt;</code>, <a href="../components/#input-groups">check out the input group component</a>.</p>
    </div>

    <h3>Textarea</h3>
    <p>Form control which supports multiple lines of text. Change <code>rows</code> attribute as necessary.</p>
    <div class="bs-example">
      <form role="form">
        <textarea class="form-control" rows="3"></textarea>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;textarea</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">rows=</span><span class="s">&quot;3&quot;</span><span class="nt">&gt;&lt;/textarea&gt;</span>
</code></pre></div>

    <h3>Checkboxes and radios</h3>
    <p>Checkboxes are for selecting one or several options in a list while radios are for selecting one option from many.</p>
    <h4>Default (stacked)</h4>
    <div class="bs-example">
      <form role="form">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="">
            Option one is this and that&mdash;be sure to include why it's great
          </label>
        </div>
        <br>
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
            Option one is this and that&mdash;be sure to include why it's great
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
            Option two can be something else and selecting it will deselect option one
          </label>
        </div>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span> <span class="na">value=</span><span class="s">&quot;&quot;</span><span class="nt">&gt;</span>
    Option one is this and that<span class="ni">&amp;mdash;</span>be sure to include why it&#39;s great
  <span class="nt">&lt;/label&gt;</span>
<span class="nt">&lt;/div&gt;</span>

<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;radio&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;radio&quot;</span> <span class="na">name=</span><span class="s">&quot;optionsRadios&quot;</span> <span class="na">id=</span><span class="s">&quot;optionsRadios1&quot;</span> <span class="na">value=</span><span class="s">&quot;option1&quot;</span> <span class="na">checked</span><span class="nt">&gt;</span>
    Option one is this and that<span class="ni">&amp;mdash;</span>be sure to include why it&#39;s great
  <span class="nt">&lt;/label&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;radio&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;label&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;radio&quot;</span> <span class="na">name=</span><span class="s">&quot;optionsRadios&quot;</span> <span class="na">id=</span><span class="s">&quot;optionsRadios2&quot;</span> <span class="na">value=</span><span class="s">&quot;option2&quot;</span><span class="nt">&gt;</span>
    Option two can be something else and selecting it will deselect option one
  <span class="nt">&lt;/label&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

    <h4>Inline checkboxes</h4>
    <p>Use <code>.checkbox-inline</code> or <code>.radio-inline</code> class to a series of checkboxes or radios for controls appear on the same line.</p>
    <div class="bs-example">
      <form role="form">
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
        </label>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;checkbox-inline&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span> <span class="na">id=</span><span class="s">&quot;inlineCheckbox1&quot;</span> <span class="na">value=</span><span class="s">&quot;option1&quot;</span><span class="nt">&gt;</span> 1
<span class="nt">&lt;/label&gt;</span>
<span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;checkbox-inline&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span> <span class="na">id=</span><span class="s">&quot;inlineCheckbox2&quot;</span> <span class="na">value=</span><span class="s">&quot;option2&quot;</span><span class="nt">&gt;</span> 2
<span class="nt">&lt;/label&gt;</span>
<span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;checkbox-inline&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span> <span class="na">id=</span><span class="s">&quot;inlineCheckbox3&quot;</span> <span class="na">value=</span><span class="s">&quot;option3&quot;</span><span class="nt">&gt;</span> 3
<span class="nt">&lt;/label&gt;</span>
</code></pre></div>

    <h3>Selects</h3>
    <p>Use the default option, or add <code>multiple</code> to show multiple options at once.</p>
    <div class="bs-example">
      <form role="form">
        <select class="form-control">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
        <br>
        <select multiple class="form-control">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;select</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;option&gt;</span>1<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>2<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>3<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>4<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>5<span class="nt">&lt;/option&gt;</span>
<span class="nt">&lt;/select&gt;</span>

<span class="nt">&lt;select</span> <span class="na">multiple</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;option&gt;</span>1<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>2<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>3<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>4<span class="nt">&lt;/option&gt;</span>
  <span class="nt">&lt;option&gt;</span>5<span class="nt">&lt;/option&gt;</span>
<span class="nt">&lt;/select&gt;</span>
</code></pre></div>


    <h2 id="forms-controls-static">Static control</h2>
    <p>When you need to place plain text next to a form label within a horizontal form, use the <code>.form-control-static</code> class on a <code>&lt;p&gt;</code>.</p>
    <div class="bs-example">
      <form class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-sm-2 control-label">Email</label>
          <div class="col-sm-10">
            <p class="form-control-static">email@example.com</p>
          </div>
        </div>
        <div class="form-group">
          <label for="inputPassword" class="col-sm-2 control-label">Password</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword" placeholder="Password">
          </div>
        </div>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;form</span> <span class="na">class=</span><span class="s">&quot;form-horizontal&quot;</span> <span class="na">role=</span><span class="s">&quot;form&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;col-sm-2 control-label&quot;</span><span class="nt">&gt;</span>Email<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-10&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;p</span> <span class="na">class=</span><span class="s">&quot;form-control-static&quot;</span><span class="nt">&gt;</span>email@example.com<span class="nt">&lt;/p&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;inputPassword&quot;</span> <span class="na">class=</span><span class="s">&quot;col-sm-2 control-label&quot;</span><span class="nt">&gt;</span>Password<span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-sm-10&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;password&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;inputPassword&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Password&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/form&gt;</span>
</code></pre></div>


    <h2 id="forms-control-states">Form states</h2>
    <p>Provide feedback to users or visitors with basic feedback states on form controls and labels.</p>

    <h3 id="forms-input-focus">Input focus</h3>
    <p>We remove the default <code>outline</code> styles on some form controls and apply a <code>box-shadow</code> in its place for <code>:focus</code>.</p>
    <div class="bs-example">
      <form role="form">
        <input class="form-control" id="focusedInput" type="text" value="This is focused...">
      </form>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;focusedInput&quot;</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">value=</span><span class="s">&quot;This is focused...&quot;</span><span class="nt">&gt;</span>
</code></pre></div>

    <h3 id="forms-disabled-inputs">Disabled inputs</h3>
    <p>Add the <code>disabled</code> attribute on an input to prevent user input and trigger a slightly different look.</p>
    <div class="bs-example">
      <form role="form">
        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here鈥? disabled>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;disabledInput&quot;</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Disabled input here...&quot;</span> <span class="na">disabled</span><span class="nt">&gt;</span>
</code></pre></div>

    <h3 id="forms-disabled-fieldsets">Disabled fieldsets</h3>
    <p>Add the <code>disabled</code> attribute to a <code>&lt;fieldset&gt;</code> to disable all the controls within the <code>&lt;fieldset&gt;</code> at once.</p>

    <div class="bs-callout bs-callout-warning">
      <h4>Link functionality of <code>&lt;a&gt;</code> not impacted</h4>
      <p>This class will only change the appearance of <code>&lt;a class="btn btn-default"&gt;</code> buttons, not their functionality. Use custom JavaScript to disable links here.</p>
    </div>

    <div class="bs-callout bs-callout-danger">
      <h4>Cross-browser compatibility</h4>
      <p>While Bootstrap will apply these styles in all browsers, Internet Explorer 9 and below don't actually support the <code>disabled</code> attribute on a <code>&lt;fieldset&gt;</code>. Use custom JavaScript to disable the fieldset in these browsers.</p>
    </div>

    <div class="bs-example">
      <form role="form">
        <fieldset disabled>
          <div class="form-group">
            <label for="disabledTextInput">Disabled input</label>
            <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
          </div>
          <div class="form-group">
            <label for="disabledSelect">Disabled select menu</label>
            <select id="disabledSelect" class="form-control">
              <option>Disabled select</option>
            </select>
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox"> Can't check this
            </label>
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </fieldset>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;form</span> <span class="na">role=</span><span class="s">&quot;form&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;fieldset</span> <span class="na">disabled</span><span class="nt">&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;disabledTextInput&quot;</span><span class="nt">&gt;</span>Disabled input<span class="nt">&lt;/label&gt;</span>
      <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">id=</span><span class="s">&quot;disabledTextInput&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Disabled input&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;label</span> <span class="na">for=</span><span class="s">&quot;disabledSelect&quot;</span><span class="nt">&gt;</span>Disabled select menu<span class="nt">&lt;/label&gt;</span>
      <span class="nt">&lt;select</span> <span class="na">id=</span><span class="s">&quot;disabledSelect&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span><span class="nt">&gt;</span>
        <span class="nt">&lt;option&gt;</span>Disabled select<span class="nt">&lt;/option&gt;</span>
      <span class="nt">&lt;/select&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
    <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span>
      <span class="nt">&lt;label&gt;</span>
        <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;checkbox&quot;</span><span class="nt">&gt;</span> Can&#39;t check this
      <span class="nt">&lt;/label&gt;</span>
    <span class="nt">&lt;/div&gt;</span>
    <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;submit&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span class="nt">&gt;</span>Submit<span class="nt">&lt;/button&gt;</span>
  <span class="nt">&lt;/fieldset&gt;</span>
<span class="nt">&lt;/form&gt;</span>
</code></pre></div>

    <h3 id="forms-validation">Validation states</h3>
    <p>Bootstrap includes validation styles for error, warning, and success states on form controls. To use, add <code>.has-warning</code>, <code>.has-error</code>, or <code>.has-success</code> to the parent element. Any <code>.control-label</code>, <code>.form-control</code>, and <code>.help-block</code> within that element will receive the validation styles.</p>

    <div class="bs-example">
      <form role="form">
        <div class="form-group has-success">
          <label class="control-label" for="inputSuccess">Input with success</label>
          <input type="text" class="form-control" id="inputSuccess">
        </div>
        <div class="form-group has-warning">
          <label class="control-label" for="inputWarning">Input with warning</label>
          <input type="text" class="form-control" id="inputWarning">
        </div>
        <div class="form-group has-error">
          <label class="control-label" for="inputError">Input with error</label>
          <input type="text" class="form-control" id="inputError">
        </div>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group has-success&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;control-label&quot;</span> <span class="na">for=</span><span class="s">&quot;inputSuccess&quot;</span><span class="nt">&gt;</span>Input with success<span class="nt">&lt;/label&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;inputSuccess&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group has-warning&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;control-label&quot;</span> <span class="na">for=</span><span class="s">&quot;inputWarning&quot;</span><span class="nt">&gt;</span>Input with warning<span class="nt">&lt;/label&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;inputWarning&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;form-group has-error&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;label</span> <span class="na">class=</span><span class="s">&quot;control-label&quot;</span> <span class="na">for=</span><span class="s">&quot;inputError&quot;</span><span class="nt">&gt;</span>Input with error<span class="nt">&lt;/label&gt;</span>
  <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">id=</span><span class="s">&quot;inputError&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>


    <h2 id="forms-control-sizes">Control sizing</h2>
    <p>Set heights using classes like <code>.input-lg</code>, and set widths using grid column classes like <code>.col-lg-*</code>.</p>

    <h3>Height sizing</h3>
    <p>Create larger or smaller form controls that match button sizes.</p>
    <div class="bs-example bs-example-control-sizing">
      <form role="form">
        <div class="controls">
          <input class="form-control input-lg" type="text" placeholder=".input-lg">
          <input type="text" class="form-control" placeholder="Default input">
          <input class="form-control input-sm" type="text" placeholder=".input-sm">

          <select class="form-control input-lg">
            <option value="">.input-lg</option>
          </select>
          <select class="form-control">
            <option value="">Default select</option>
          </select>
          <select class="form-control input-sm">
            <option value="">.input-sm</option>
          </select>
        </div>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;form-control input-lg&quot;</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;.input-lg&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;Default input&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;form-control input-sm&quot;</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;.input-sm&quot;</span><span class="nt">&gt;</span>

<span class="nt">&lt;select</span> <span class="na">class=</span><span class="s">&quot;form-control input-lg&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/select&gt;</span>
<span class="nt">&lt;select</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/select&gt;</span>
<span class="nt">&lt;select</span> <span class="na">class=</span><span class="s">&quot;form-control input-sm&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/select&gt;</span>
</code></pre></div>

    <h3>Column sizing</h3>
    <p>Wrap inputs in grid columns, or any custom parent element, to easily enforce desired widths.</p>
    <div class="bs-example">
      <form role="form">
        <div class="row">
          <div class="col-xs-2">
            <input type="text" class="form-control" placeholder=".col-xs-2">
          </div>
          <div class="col-xs-3">
            <input type="text" class="form-control" placeholder=".col-xs-3">
          </div>
          <div class="col-xs-4">
            <input type="text" class="form-control" placeholder=".col-xs-4">
          </div>
        </div>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;row&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-2&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;.col-xs-2&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-3&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;.col-xs-3&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;col-xs-4&quot;</span><span class="nt">&gt;</span>
    <span class="nt">&lt;input</span> <span class="na">type=</span><span class="s">&quot;text&quot;</span> <span class="na">class=</span><span class="s">&quot;form-control&quot;</span> <span class="na">placeholder=</span><span class="s">&quot;.col-xs-4&quot;</span><span class="nt">&gt;</span>
  <span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;/div&gt;</span>
</code></pre></div>

    <h2 id="forms-help-text">Help text</h2>
    <p>Block level help text for form controls.</p>
    <div class="bs-example">
      <form role="form">
        <input type="text" class="form-control">
        <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
      </form>
    </div><!-- /.bs-example -->
<div class="highlight"><pre><code class="html"><span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;help-block&quot;</span><span class="nt">&gt;</span>A block of help text that breaks onto a new line and may extend beyond one line.<span class="nt">&lt;/span&gt;</span>
</code></pre></div>

  </div>



  <!-- Buttons
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="buttons">Buttons</h1>
    </div>

    <h2 id="buttons-options">Options</h2>
    <p>Use any of the available button classes to quickly create a styled button.</p>
    <div class="bs-example">
      <button type="button" class="btn btn-default">Default</button>
      <button type="button" class="btn btn-primary">Primary</button>
      <button type="button" class="btn btn-success">Success</button>
      <button type="button" class="btn btn-info">Info</button>
      <button type="button" class="btn btn-warning">Warning</button>
      <button type="button" class="btn btn-danger">Danger</button>
      <button type="button" class="btn btn-link">Link</button>
    </div>
<div class="highlight"><pre><code class="html"><span class="c">&lt;!-- Standard button --&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span><span class="nt">&gt;</span>Default<span class="nt">&lt;/button&gt;</span>

<span class="c">&lt;!-- Provides extra visual weight and identifies the primary action in a set of buttons --&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span class="nt">&gt;</span>Primary<span class="nt">&lt;/button&gt;</span>

<span class="c">&lt;!-- Indicates a successful or positive action --&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-success&quot;</span><span class="nt">&gt;</span>Success<span class="nt">&lt;/button&gt;</span>

<span class="c">&lt;!-- Contextual button for informational alert messages --&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-info&quot;</span><span class="nt">&gt;</span>Info<span class="nt">&lt;/button&gt;</span>

<span class="c">&lt;!-- Indicates caution should be taken with this action --&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-warning&quot;</span><span class="nt">&gt;</span>Warning<span class="nt">&lt;/button&gt;</span>

<span class="c">&lt;!-- Indicates a dangerous or potentially negative action --&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-danger&quot;</span><span class="nt">&gt;</span>Danger<span class="nt">&lt;/button&gt;</span>

<span class="c">&lt;!-- Deemphasize a button by making it look like a link while maintaining button behavior --&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-link&quot;</span><span class="nt">&gt;</span>Link<span class="nt">&lt;/button&gt;</span>
</code></pre></div>

    <h2 id="buttons-sizes">Sizes</h2>
    <p>Fancy larger or smaller buttons? Add <code>.btn-lg</code>, <code>.btn-sm</code>, or <code>.btn-xs</code> for additional sizes.</p>
    <div class="bs-example">
      <p>
        <button type="button" class="btn btn-primary btn-lg">Large button</button>
        <button type="button" class="btn btn-default btn-lg">Large button</button>
      </p>
      <p>
        <button type="button" class="btn btn-primary">Default button</button>
        <button type="button" class="btn btn-default">Default button</button>
      </p>
      <p>
        <button type="button" class="btn btn-primary btn-sm">Small button</button>
        <button type="button" class="btn btn-default btn-sm">Small button</button>
      </p>
      <p>
        <button type="button" class="btn btn-primary btn-xs">Extra small button</button>
        <button type="button" class="btn btn-default btn-xs">Extra small button</button>
      </p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;p&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-lg&quot;</span><span class="nt">&gt;</span>Large button<span class="nt">&lt;/button&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-lg&quot;</span><span class="nt">&gt;</span>Large button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary&quot;</span><span class="nt">&gt;</span>Default button<span class="nt">&lt;/button&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span><span class="nt">&gt;</span>Default button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-sm&quot;</span><span class="nt">&gt;</span>Small button<span class="nt">&lt;/button&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-sm&quot;</span><span class="nt">&gt;</span>Small button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-xs&quot;</span><span class="nt">&gt;</span>Extra small button<span class="nt">&lt;/button&gt;</span>
  <span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-xs&quot;</span><span class="nt">&gt;</span>Extra small button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;/p&gt;</span>
</code></pre></div>

    <p>Create block level buttons&mdash;those that span the full width of a parent&mdash; by adding <code>.btn-block</code>.</p>
    <div class="bs-example">
      <div class="well" style="max-width: 400px; margin: 0 auto 10px;">
        <button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button>
        <button type="button" class="btn btn-default btn-lg btn-block">Block level button</button>
      </div>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-lg btn-block&quot;</span><span class="nt">&gt;</span>Block level button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-lg btn-block&quot;</span><span class="nt">&gt;</span>Block level button<span class="nt">&lt;/button&gt;</span>
</code></pre></div>


    <h2 id="buttons-active">Active state</h2>
    <p>Buttons will appear pressed (with a darker background, darker border, and inset shadow) when active. For <code>&lt;button&gt;</code> elements, this is done via <code>:active</code>. For <code>&lt;a&gt;</code> elements, it's done with <code>.active</code>. However, you may use <code>.active</code> <code>&lt;button&gt;</code>s should you need to replicate the active state progammatically.</p>

    <h3>Button element</h3>
    <p>No need to add <code>:active</code> as it's a pseudo-class, but if you need to force the same appearance, go ahead and add <code>.active</code>.</p>
    <p class="bs-example">
      <button type="button" class="btn btn-primary btn-lg active">Primary button</button>
      <button type="button" class="btn btn-default btn-lg active">Button</button>
    </p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-lg active&quot;</span><span class="nt">&gt;</span>Primary button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-lg active&quot;</span><span class="nt">&gt;</span>Button<span class="nt">&lt;/button&gt;</span>
</code></pre></div>

    <h3>Anchor element</h3>
    <p>Add the <code>.active</code> class to <code>&lt;a&gt;</code> buttons.</p>
    <p class="bs-example">
      <a href="#" class="btn btn-primary btn-lg active" role="button">Primary link</a>
      <a href="#" class="btn btn-default btn-lg active" role="button">Link</a>
    </p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-lg active&quot;</span> <span class="na">role=</span><span class="s">&quot;button&quot;</span><span class="nt">&gt;</span>Primary link<span class="nt">&lt;/a&gt;</span>
<span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-lg active&quot;</span> <span class="na">role=</span><span class="s">&quot;button&quot;</span><span class="nt">&gt;</span>Link<span class="nt">&lt;/a&gt;</span>
</code></pre></div>


    <h2 id="buttons-disabled">Disabled state</h2>
    <p>Make buttons look unclickable by fading them back 50%.</p>

    <h3>Button element</h3>
    <p>Add the <code>disabled</code> attribute to <code>&lt;button&gt;</code> buttons.</p>
    <p class="bs-example">
      <button type="button" class="btn btn-primary btn-lg" disabled="disabled">Primary button</button>
      <button type="button" class="btn btn-default btn-lg" disabled="disabled">Button</button>
    </p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-lg btn-primary&quot;</span> <span class="na">disabled=</span><span class="s">&quot;disabled&quot;</span><span class="nt">&gt;</span>Primary button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-lg&quot;</span> <span class="na">disabled=</span><span class="s">&quot;disabled&quot;</span><span class="nt">&gt;</span>Button<span class="nt">&lt;/button&gt;</span>
</code></pre></div>

    <div class="bs-callout bs-callout-danger">
      <h4>Cross-browser compatibility</h4>
      <p>If you add the <code>disabled</code> attribute to a <code>&lt;button&gt;</code>, Internet Explorer 9 and below will render text gray with a nasty text-shadow that we cannot fix.</p>
    </div>

    <h3>Anchor element</h3>
    <p>Add the <code>.disabled</code> class to <code>&lt;a&gt;</code> buttons.</p>
    <p class="bs-example">
      <a href="#" class="btn btn-primary btn-lg disabled" role="button">Primary link</a>
      <a href="#" class="btn btn-default btn-lg disabled" role="button">Link</a>
    </p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-primary btn-lg disabled&quot;</span> <span class="na">role=</span><span class="s">&quot;button&quot;</span><span class="nt">&gt;</span>Primary link<span class="nt">&lt;/a&gt;</span>
<span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span> <span class="na">class=</span><span class="s">&quot;btn btn-default btn-lg disabled&quot;</span> <span class="na">role=</span><span class="s">&quot;button&quot;</span><span class="nt">&gt;</span>Link<span class="nt">&lt;/a&gt;</span>
</code></pre></div>
    <p>
      We use <code>.disabled</code> as a utility class here, similar to the common <code>.active</code> class, so no prefix is required.
    </p>
    <div class="bs-callout bs-callout-warning">
      <h4>Link functionality not impacted</h4>
      <p>This class will only change the <code>&lt;a&gt;</code>'s appearance, not its functionality. Use custom JavaScript to disable links here.</p>
    </div>
    <div class="bs-callout bs-callout-warning">
      <h4>Context-specific usage</h4>
      <p>While button classes can be used on <code>&lt;a&gt;</code> and <code>&lt;button&gt;</code> elements, only <code>&lt;button&gt;</code> elements are supported within our nav and navbar components.</p>
    </div>


    <h2 id="buttons-tags">Button tags</h2>
    <p>Use the button classes on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.</p>
    <form class="bs-example">
      <a class="btn btn-default" href="#" role="button">Link</a>
      <button class="btn btn-default" type="submit">Button</button>
      <input class="btn btn-default" type="button" value="Input">
      <input class="btn btn-default" type="submit" value="Submit">
    </form>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">href=</span><span class="s">&quot;#&quot;</span> <span class="na">role=</span><span class="s">&quot;button&quot;</span><span class="nt">&gt;</span>Link<span class="nt">&lt;/a&gt;</span>
<span class="nt">&lt;button</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">type=</span><span class="s">&quot;submit&quot;</span><span class="nt">&gt;</span>Button<span class="nt">&lt;/button&gt;</span>
<span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">value=</span><span class="s">&quot;Input&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;input</span> <span class="na">class=</span><span class="s">&quot;btn btn-default&quot;</span> <span class="na">type=</span><span class="s">&quot;submit&quot;</span> <span class="na">value=</span><span class="s">&quot;Submit&quot;</span><span class="nt">&gt;</span>
</code></pre></div>

    <div class="bs-callout bs-callout-warning">
      <h4>Cross-browser rendering</h4>
      <p>As a best practice, <strong>we highly recommend using the <code>&lt;button&gt;</code> element whenever possible</strong> to ensure matching cross-browser rendering.</p>
      <p>Among other things, there's <a href="https://bugzilla.mozilla.org/show_bug.cgi?id=697451">a Firefox bug</a> that prevents us from setting the <code>line-height</code> of <code>&lt;input&gt;</code>-based buttons, causing them to not exactly match the height of other buttons on Firefox.</p>
    </div>

  </div>



  <!-- Images
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="images">Images</h1>
    </div>

    <p>Add classes to an <code>&lt;img&gt;</code> element to easily style images in any project.</p>
    <div class="bs-callout bs-callout-danger">
      <h4>Cross-browser compatibility</h4>
      <p>Keep in mind that Internet Explorer 8 lacks support for rounded corners.</p>
    </div>
    <div class="bs-example bs-example-images">
      <img data-src="holder.js/140x140" class="img-rounded" alt="A generic square placeholder image with rounded corners">
      <img data-src="holder.js/140x140" class="img-circle" alt="A generic square placeholder image where only the portion within the circle circumscribed about said square is visible">
      <img data-src="holder.js/140x140" class="img-thumbnail" alt="A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera">
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;img</span> <span class="na">src=</span><span class="s">&quot;...&quot;</span> <span class="na">alt=</span><span class="s">&quot;...&quot;</span> <span class="na">class=</span><span class="s">&quot;img-rounded&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;img</span> <span class="na">src=</span><span class="s">&quot;...&quot;</span> <span class="na">alt=</span><span class="s">&quot;...&quot;</span> <span class="na">class=</span><span class="s">&quot;img-circle&quot;</span><span class="nt">&gt;</span>
<span class="nt">&lt;img</span> <span class="na">src=</span><span class="s">&quot;...&quot;</span> <span class="na">alt=</span><span class="s">&quot;...&quot;</span> <span class="na">class=</span><span class="s">&quot;img-thumbnail&quot;</span><span class="nt">&gt;</span>
</code></pre></div>

    <div class="bs-callout bs-callout-warning">
      <h4>Responsive images</h4>
      <p>Looking for how to make images more responsive? <a href="#overview-responsive-images">Check out the responsive images section</a> up top.</p>
    </div>

  </div>


  <!-- Helpers
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="helper-classes">Helper classes</h1>
    </div>


    <h3 id="helper-classes-close">Close icon</h3>
    <p>Use the generic close icon for dismissing content like modals and alerts.</p>
    <div class="bs-example">
      <p><button type="button" class="close" aria-hidden="true">&times;</button></p>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;button</span> <span class="na">type=</span><span class="s">&quot;button&quot;</span> <span class="na">class=</span><span class="s">&quot;close&quot;</span> <span class="na">aria-hidden=</span><span class="s">&quot;true&quot;</span><span class="nt">&gt;</span><span class="ni">&amp;times;</span><span class="nt">&lt;/button&gt;</span>
</code></pre></div>


    <h3 id="helper-classes-carets">Carets</h3>
    <p>Use carets to indicate dropdown functionality and direction. Note that the default caret will reverse automatically in <a href="../components/#btn-dropdowns-dropup">dropup menus</a>.</p>
    <div class="bs-example">
      <span class="caret"></span>
    </div>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;span</span> <span class="na">class=</span><span class="s">&quot;caret&quot;</span><span class="nt">&gt;&lt;/span&gt;</span>
</code></pre></div>


    <h3 id="helper-classes-floats">Quick floats</h3>
    <p>Float an element to the left or right with a class. <code>!important</code> is included to avoid specificity issues. Classes can also be used as mixins.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;pull-left&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;pull-right&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
</code></pre></div>
<div class="highlight"><pre><code class="css"><span class="o">//</span> <span class="nt">Classes</span>
<span class="nc">.pull-left</span> <span class="p">{</span>
  <span class="k">float</span><span class="o">:</span> <span class="k">left</span> <span class="cp">!important</span><span class="p">;</span>
<span class="p">}</span>
<span class="nc">.pull-right</span> <span class="p">{</span>
  <span class="k">float</span><span class="o">:</span> <span class="k">right</span> <span class="cp">!important</span><span class="p">;</span>
<span class="p">}</span>

<span class="o">//</span> <span class="nt">Usage</span> <span class="nt">as</span> <span class="nt">mixins</span>
<span class="nc">.element</span> <span class="p">{</span>
  <span class="o">.</span><span class="n">pull</span><span class="o">-</span><span class="k">left</span><span class="p">();</span>
<span class="p">}</span>
<span class="nc">.another-element</span> <span class="p">{</span>
  <span class="o">.</span><span class="n">pull</span><span class="o">-</span><span class="k">right</span><span class="p">();</span>
<span class="p">}</span>
</code></pre></div>

    <div class="bs-callout bs-callout-warning">
      <h4>Not for use in navbars</h4>
      <p>To align components in navbars with utility classes, use <code>.navbar-left</code> or <code>.navbar-right</code> instead. <a href="../components/#navbar-component-alignment">See the navbar docs</a> for details.</p>
    </div>


    <h3 id="helper-classes-center">Center content blocks</h3>
    <p>Set an element to <code>display: block</code> and center via <code>margin</code>. Available as a mixin and class.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;center-block&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
</code></pre></div>
<div class="highlight"><pre><code class="css"><span class="o">//</span> <span class="nt">Classes</span>
<span class="nc">.center-block</span> <span class="p">{</span>
  <span class="k">display</span><span class="o">:</span> <span class="k">block</span><span class="p">;</span>
  <span class="k">margin-left</span><span class="o">:</span> <span class="k">auto</span><span class="p">;</span>
  <span class="k">margin-right</span><span class="o">:</span> <span class="k">auto</span><span class="p">;</span>
<span class="p">}</span>

<span class="o">//</span> <span class="nt">Usage</span> <span class="nt">as</span> <span class="nt">mixins</span>
<span class="nc">.element</span> <span class="p">{</span>
  <span class="o">.</span><span class="k">center</span><span class="o">-</span><span class="k">block</span><span class="p">();</span>
<span class="p">}</span>
</code></pre></div>



    <h3 id="helper-classes-clearfix">Clearfix</h3>
    <p>Clear the <code>float</code> on any element with the <code>.clearfix</code> class. Utilizes <a href="http://nicolasgallagher.com/micro-clearfix-hack/">the micro clearfix</a> as popularized by Nicolas Gallagher. Can also be used as a mixin.</p>
<div class="highlight"><pre><code class="html"><span class="c">&lt;!-- Usage as a class --&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;clearfix&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
</code></pre></div>
<div class="highlight"><pre><code class="css"><span class="o">//</span> <span class="nt">Mixin</span> <span class="nt">itself</span>
<span class="nc">.clearfix</span><span class="o">()</span> <span class="p">{</span>
  <span class="o">&amp;:</span><span class="n">before</span><span class="o">,</span>
  <span class="o">&amp;:</span><span class="n">after</span> <span class="err">{</span>
    <span class="k">content</span><span class="o">:</span> <span class="s2">&quot; &quot;</span><span class="p">;</span>
    <span class="k">display</span><span class="o">:</span> <span class="n">table</span><span class="p">;</span>
  <span class="p">}</span>
  <span class="o">&amp;</span><span class="nd">:after</span> <span class="p">{</span>
    <span class="k">clear</span><span class="o">:</span> <span class="k">both</span><span class="p">;</span>
  <span class="p">}</span>
<span class="err">}</span>

<span class="o">//</span> <span class="nt">Usage</span> <span class="nt">as</span> <span class="nt">a</span> <span class="nt">Mixin</span>
<span class="nc">.element</span> <span class="p">{</span>
  <span class="o">.</span><span class="n">clearfix</span><span class="p">();</span>
<span class="p">}</span>
</code></pre></div>


    <h3 id="helper-classes-show-hide">Showing and hiding content</h3>
    <p>Force an element to be shown or hidden (<strong>including for screen readers</strong>) with the use of <code>.show</code> and <code>.hidden</code> classes. These classes use <code>!important</code> to avoid specificity conflicts, just like the <a href="#helper-classes-floats">quick floats</a>. They are only available for block level toggling. They can also be used as mixins.</p>
    <p><code>.hide</code> is available, but it does not always affect screen readers and is <strong>deprecated</strong> as of v3.0.1. Use <code>.hidden</code> or <code>.sr-only</code> instead.</p>
    <p>Furthermore, <code>.invisible</code> can be used to toggle only the visibility of an element, meaning its <code>display</code> is not modified and the element can still affect the flow of the document.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;show&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;hidden&quot;</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
</code></pre></div>
<div class="highlight"><pre><code class="css"><span class="o">//</span> <span class="nt">Classes</span>
<span class="nc">.show</span> <span class="p">{</span>
  <span class="k">display</span><span class="o">:</span> <span class="k">block</span> <span class="cp">!important</span><span class="p">;</span>
<span class="p">}</span>
<span class="nc">.hidden</span> <span class="p">{</span>
  <span class="k">display</span><span class="o">:</span> <span class="k">none</span> <span class="cp">!important</span><span class="p">;</span>
  <span class="k">visibility</span><span class="o">:</span> <span class="k">hidden</span> <span class="cp">!important</span><span class="p">;</span>
<span class="p">}</span>
<span class="nc">.invisible</span> <span class="p">{</span>
  <span class="k">visibility</span><span class="o">:</span> <span class="k">hidden</span><span class="p">;</span>
<span class="p">}</span>

<span class="o">//</span> <span class="nt">Usage</span> <span class="nt">as</span> <span class="nt">mixins</span>
<span class="nc">.element</span> <span class="p">{</span>
  <span class="o">.</span><span class="k">show</span><span class="p">();</span>
<span class="p">}</span>
<span class="nc">.another-element</span> <span class="p">{</span>
  <span class="o">.</span><span class="k">hidden</span><span class="p">();</span>
<span class="p">}</span>
</code></pre></div>


    <h3 id="helper-classes-screen-readers">Screen reader content</h3>
    <p>Hide an element to all devices <strong>except screen readers</strong> with <code>.sr-only</code>. Necessary for following <a href="../getting-started#accessibility">accessibility best practices</a>. Can also be used as a mixin.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;a</span> <span class="na">class=</span><span class="s">&quot;sr-only&quot;</span> <span class="na">href=</span><span class="s">&quot;#content&quot;</span><span class="nt">&gt;</span>Skip to main content<span class="nt">&lt;/a&gt;</span>
</code></pre></div>
<div class="highlight"><pre><code class="css"><span class="o">//</span> <span class="nt">Usage</span> <span class="nt">as</span> <span class="nt">a</span> <span class="nt">Mixin</span>
<span class="nc">.skip-navigation</span> <span class="p">{</span>
  <span class="o">.</span><span class="n">sr</span><span class="o">-</span><span class="n">only</span><span class="p">();</span>
<span class="p">}</span>
</code></pre></div>


    <h3 id="helper-classes-image-replacement">Image replacement</h3>
    <p>Utilize the <code>.text-hide</code> class or mixin to help replace an element's text content with a background image.</p>
<div class="highlight"><pre><code class="html"><span class="nt">&lt;h1</span> <span class="na">class=</span><span class="s">&quot;text-hide&quot;</span><span class="nt">&gt;</span>Custom heading<span class="nt">&lt;/h1&gt;</span>
</code></pre></div>
  <div class="highlight"><pre><code class="css"><span class="o">//</span> <span class="nt">Usage</span> <span class="nt">as</span> <span class="nt">a</span> <span class="nt">Mixin</span>
<span class="nc">.heading</span> <span class="p">{</span>
  <span class="o">.</span><span class="k">text</span><span class="o">-</span><span class="k">hide</span><span class="p">();</span>
<span class="p">}</span>
</code></pre></div>
  </div>



  <!-- Responsive utilities
  ================================================== -->
  <div class="bs-docs-section" id="responsive-utilities">
    <div class="page-header">
      <h1>Responsive utilities</h1>
    </div>
    <p class="lead">For faster mobile-friendly development, use these utility classes for showing and hiding content by device via media query. Also included are utility classes for toggling content when printed.</p>
    <p>Try to use these on a limited basis and avoid creating entirely different versions of the same site. Instead, use them to complement each device's presentation. <strong>Responsive utilities are currently only available for block and table toggling.</strong> Use with inline and table elements is currently not supported.</p>


    <h2 id="responsive-utilities-classes">Available classes</h2>
    <p>Use a single or combination of the available classes for toggling content across viewport breakpoints.</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped responsive-utilities">
        <thead>
          <tr>
            <th></th>
            <th>
              Extra small devices
              <small>Phones (&lt;768px)</small>
            </th>
            <th>
              Small devices
              <small>Tablets (&ge;768px)</small>
            </th>
            <th>
              Medium devices
              <small>Desktops (&ge;992px)</small>
            </th>
            <th>
              Large devices
              <small>Desktops (&ge;1200px)</small>
            </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th><code>.visible-xs</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
          </tr>
          <tr>
            <th><code>.visible-sm</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
          </tr>
          <tr>
            <th><code>.visible-md</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
          </tr>
          <tr>
            <th><code>.visible-lg</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <th><code>.hidden-xs</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
          </tr>
          <tr>
            <th><code>.hidden-sm</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
          </tr>
          <tr>
            <th><code>.hidden-md</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
          </tr>
          <tr>
            <th><code>.hidden-lg</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
          </tr>
        </tbody>
      </table>
    </div>


    <h2 id="responsive-utilities-print">Print classes</h2>
    <p>Similar to the regular responsive classes, use these for toggling content for print.</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped responsive-utilities">
        <thead>
          <tr>
            <th>Class</th>
            <th>Browser</th>
            <th>Print</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th><code>.visible-print</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
          </tr>
          <tr>
            <th><code>.hidden-print</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
          </tr>
        </tbody>
      </table>
    </div>


    <h2 id="responsive-utilities-tests">Test cases</h2>
    <p>Resize your browser or load on different devices to test the responsive utility classes.</p>

    <h3>Visible on...</h3>
    <p>Green checkmarks indicate the element <strong>is visible</strong> in your current viewport.</p>
    <div class="row responsive-utilities-test visible-on">
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-xs">Extra small</span>
        <span class="visible-xs">&#10004; Visible on x-small</span>
      </div>
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-sm">Small</span>
        <span class="visible-sm">&#10004; Visible on small</span>
      </div>
      <div class="clearfix visible-xs"></div>
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-md">Medium</span>
        <span class="visible-md">&#10004; Visible on medium</span>
      </div>
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-lg">Large</span>
        <span class="visible-lg">&#10004; Visible on large</span>
      </div>
    </div>
    <div class="row responsive-utilities-test visible-on">
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-xs hidden-sm">Extra small and small</span>
        <span class="visible-xs visible-sm">&#10004; Visible on x-small and small</span>
      </div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-md hidden-lg">Medium and large</span>
        <span class="visible-md visible-lg">&#10004; Visible on medium and large</span>
      </div>
      <div class="clearfix visible-xs"></div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-xs hidden-md">Extra small and medium</span>
        <span class="visible-xs visible-md">&#10004; Visible on x-small and medium</span>
      </div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-sm hidden-lg">Small and large</span>
        <span class="visible-sm visible-lg">&#10004; Visible on small and large</span>
      </div>
      <div class="clearfix visible-xs"></div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-xs hidden-lg">Extra small and large</span>
        <span class="visible-xs visible-lg">&#10004; Visible on x-small and large</span>
      </div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-sm hidden-md">Small and medium</span>
        <span class="visible-sm visible-md">&#10004; Visible on small and medium</span>
      </div>
    </div>

    <h3>Hidden on...</h3>
    <p>Here, green checkmarks also indicate the element <strong>is hidden</strong> in your current viewport.</p>
    <div class="row responsive-utilities-test hidden-on">
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-xs">Extra small</span>
        <span class="visible-xs">&#10004; Hidden on x-small</span>
      </div>
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-sm">Small</span>
        <span class="visible-sm">&#10004; Hidden on small</span>
      </div>
      <div class="clearfix visible-xs"></div>
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-md">Medium</span>
        <span class="visible-md">&#10004; Hidden on medium</span>
      </div>
      <div class="col-xs-6 col-sm-3">
        <span class="hidden-lg">Large</span>
        <span class="visible-lg">&#10004; Hidden on large</span>
      </div>
    </div>
    <div class="row responsive-utilities-test hidden-on">
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-xs hidden-sm">Extra small and small</span>
        <span class="visible-xs visible-sm">&#10004; Hidden on x-small and small</span>
      </div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-md hidden-lg">Medium and large</span>
        <span class="visible-md visible-lg">&#10004; Hidden on medium and large</span>
      </div>
      <div class="clearfix visible-xs"></div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-xs hidden-md">Extra small and medium</span>
        <span class="visible-xs visible-md">&#10004; Hidden on x-small and medium</span>
      </div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-sm hidden-lg">Small and large</span>
        <span class="visible-sm visible-lg">&#10004; Hidden on small and large</span>
      </div>
      <div class="clearfix visible-xs"></div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-xs hidden-lg">Extra small and large</span>
        <span class="visible-xs visible-lg">&#10004; Hidden on x-small and large</span>
      </div>
      <div class="col-xs-6 col-sm-6">
        <span class="hidden-sm hidden-md">Small and medium</span>
        <span class="visible-sm visible-md">&#10004; Hidden on small and medium</span>
      </div>
    </div>

  </div>

        </div>
      </div>

    </div>

    <!-- Footer
    ================================================== -->
    <footer class="bs-footer" role="contentinfo">
      <div class="container">
        <div class="bs-social">
  <ul class="bs-social-buttons">
    <li>
      <iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=twbs&amp;repo=bootstrap&amp;type=watch&amp;count=true" width="100" height="20" title="Star on GitHub"></iframe>
    </li>
    <li>
      <iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=twbs&amp;repo=bootstrap&amp;type=fork&amp;count=true" width="102" height="20" title="Fork on GitHub"></iframe>
    </li>
    <li class="follow-btn">
      <a href="https://twitter.com/twbootstrap" class="twitter-follow-button" data-link-color="#0069D6" data-show-count="true">Follow @twbootstrap</a>
    </li>
    <li class="tweet-btn">
      <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://getbootstrap.com/" data-count="horizontal" data-via="twbootstrap" data-related="mdo:Creator of Twitter Bootstrap">Tweet</a>
    </li>
  </ul>
</div>


        <p>Designed and built with all the love in the world by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>
        <p>Code licensed under <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>, documentation under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <ul class="footer-links">
          <li>Currently v3.0.3</li>
          <li class="muted">&middot;</li>
          <li><a href="../2.3.2/">Bootstrap 2.3.2 docs</a></li>
          <li class="muted">&middot;</li>
          <li><a href="http://blog.getbootstrap.com">Blog</a></li>
          <li class="muted">&middot;</li>
          <li><a href="https://github.com/twbs/bootstrap/issues?state=open">Issues</a></li>
          <li class="muted">&middot;</li>
          <li><a href="https://github.com/twbs/bootstrap/releases">Releases</a></li>
        </ul>
      </div>
    </footer>


  </body>
</html>
