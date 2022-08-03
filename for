<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Zig by Example: For</title>
    <link rel=stylesheet href="site.css">
  </head>
  <script>
      onkeydown = (e) => {
          
          if (e.key == "ArrowLeft") {
              window.location.href = 'while';
          }
          
          
      }
  </script>
  <body>
    <div class="example" id="for">
      <h2><a href="./">Zig by Example</a>: For</h2>
      
      <table>
        
        <tr>
          <td class="docs">
            <p><em>For loops</em> allow you to iterate over an array, slice, or tuple.</p>

          </td>
          <td class="code empty leading">
            
            
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code leading">
            <img title="Copy code" src="clipboard.png" class="copy" />
            <pre class="chroma"><span class="kr">const</span><span class="w"> </span><span class="n">std</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nb">@import</span><span class="p">(</span><span class="s">&#34;std&#34;</span><span class="p">);</span><span class="w">
</span><span class="w"></span><span class="kr">const</span><span class="w"> </span><span class="n">print</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">std</span><span class="p">.</span><span class="n">debug</span><span class="p">.</span><span class="n">print</span><span class="p">;</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="kr">pub</span><span class="w"> </span><span class="k">fn</span><span class="w"> </span><span class="n">main</span><span class="p">()</span><span class="w"> </span><span class="kt">anyerror</span><span class="o">!</span><span class="kt">void</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">    </span><span class="kr">var</span><span class="w"> </span><span class="n">array</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">[</span><span class="n">_</span><span class="p">]</span><span class="kt">u32</span><span class="p">{</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span><span class="w"> </span><span class="mi">3</span><span class="w"> </span><span class="p">};</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>By default, for loops iterate by value, meaning that you cannot modify
the loop&rsquo;s payload (in this case, <code>elem</code>).</p>

          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|</span><span class="n">elem</span><span class="o">|</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">        </span><span class="n">print</span><span class="p">(</span><span class="s">&#34;by val: {}</span><span class="se">\n</span><span class="s">&#34;</span><span class="p">,</span><span class="w"> </span><span class="p">.{</span><span class="n">elem</span><span class="p">});</span><span class="w">
</span><span class="w">    </span><span class="p">}</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>To iterate by reference, prefix the payload&rsquo;s name with a <code>*</code>. This will
let you modify the captured value.</p>

          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|*</span><span class="n">elem</span><span class="o">|</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">        </span><span class="n">elem</span><span class="w"> </span><span class="o">+=</span><span class="w"> </span><span class="mi">10</span><span class="p">;</span><span class="w">
</span><span class="w">        </span><span class="n">print</span><span class="p">(</span><span class="s">&#34;by ref: {}</span><span class="se">\n</span><span class="s">&#34;</span><span class="p">,</span><span class="w"> </span><span class="p">.{</span><span class="n">elem</span><span class="p">});</span><span class="w">
</span><span class="w">    </span><span class="p">}</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>To ignore a for loop&rsquo;s payload, use <code>_</code>.</p>

          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|</span><span class="n">_</span><span class="o">|</span><span class="w"> </span><span class="p">{}</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>To access a for loop&rsquo;s index, use the <code>|PAYLOAD, INDEX|</code> syntax.</p>

          </td>
          <td class="code">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|</span><span class="n">elem</span><span class="p">,</span><span class="w"> </span><span class="n">i</span><span class="o">|</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">        </span><span class="n">print</span><span class="p">(</span><span class="s">&#34;{}: {}</span><span class="se">\n</span><span class="s">&#34;</span><span class="p">,</span><span class="w"> </span><span class="p">.{</span><span class="w"> </span><span class="n">i</span><span class="p">,</span><span class="w"> </span><span class="n">elem</span><span class="w"> </span><span class="p">});</span><span class="w">
</span><span class="w">    </span><span class="p">}</span><span class="w">
</span><span class="w"></span><span class="p">}</span></pre>
          </td>
        </tr>
        
      </table>
      
      <table>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code">
            
            <pre class="chroma"><span class="gp">$</span> zig run for.zig
<span class="go">by val: 1
</span><span class="go">by val: 2
</span><span class="go">by val: 3
</span><span class="go">by ref: 10
</span><span class="go">by ref: 20
</span><span class="go">by ref: 30
</span><span class="go">0: 10
</span><span class="go">1: 20
</span><span class="go">2: 30</span></pre>
          </td>
        </tr>
        
      </table>
      
      

    <p class="footer">
      by <a href="https://github.com/ibokuri">Jason Phan</a> | <a href="https://github.com/ibokuri/zig-by-example">source</a> | <a href="https://github.com/ibokuri/zig-by-example#license">license</a>
    </p>

    </div>
    <script>
      var codeLines = [];
      codeLines.push('');codeLines.push('const std \u003D @import(\"std\");\u000Aconst print \u003D std.debug.print;\u000A');codeLines.push('pub fn main() anyerror!void {\u000A    var array \u003D [_]u32{ 1, 2, 3 };\u000A');codeLines.push('    for (array) |elem| {\u000A        print(\"by val: {}\\n\", .{elem});\u000A    }\u000A');codeLines.push('    for (array) |*elem| {\u000A        elem +\u003D 10;\u000A        print(\"by ref: {}\\n\", .{elem});\u000A    }\u000A');codeLines.push('    for (array) |_| {}\u000A');codeLines.push('    for (array) |elem, i| {\u000A        print(\"{}: {}\\n\", .{ i, elem });\u000A    }\u000A}\u000A');codeLines.push('');
    </script>
    <script src="site.js" async></script>
  </body>
</html>
