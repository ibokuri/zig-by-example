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
          
          
          if (e.key == "ArrowRight") {
              window.location.href = 'if-else';
          }
          
      }
  </script>
  <body>
    <div class="example" id="for">
      <h2><a href="./">Zig by Example</a>: For</h2>
      
      <table>
        
        <tr>
          <td class="docs">
            <p><em>For loops</em> can be used to iterate over sequences.</p>

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
            
            <pre class="chroma"><span class="kr">pub</span><span class="w"> </span><span class="k">fn</span><span class="w"> </span><span class="n">main</span><span class="p">()</span><span class="w"> </span><span class="o">!</span><span class="kt">void</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">    </span><span class="kr">var</span><span class="w"> </span><span class="n">array</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">[</span><span class="n">_</span><span class="p">]</span><span class="kt">u32</span><span class="p">{</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span><span class="w"> </span><span class="mi">3</span><span class="w"> </span><span class="p">};</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>Here, we iterate over <code>array</code> by <em>value</em>, storing a copy of each element
in <code>elem</code>. Note that since <code>elem</code> is just a copy, we cannot use it to
modify <code>array</code>&rsquo;s contents.</p>

          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|</span><span class="n">elem</span><span class="o">|</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">        </span><span class="n">print</span><span class="p">(</span><span class="s">&#34;by val: {}</span><span class="se">\n</span><span class="s">&#34;</span><span class="p">,</span><span class="w"> </span><span class="p">.{</span><span class="n">elem</span><span class="p">});</span><span class="w">
</span><span class="w">    </span><span class="p">}</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>To iterate by <em>reference</em>, we can loop over a slice of <code>array</code> and
prefix <code>elem</code> with a <code>*</code>. Here, <code>elem</code> is a pointer to an element in
<code>array</code>, which we can use to modify <code>array</code>&rsquo;s contents.</p>

          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="o">&amp;</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|*</span><span class="n">elem</span><span class="o">|</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">        </span><span class="n">elem</span><span class="p">.</span><span class="o">*</span><span class="w"> </span><span class="o">+=</span><span class="w"> </span><span class="mi">100</span><span class="p">;</span><span class="w">
</span><span class="w">        </span><span class="n">print</span><span class="p">(</span><span class="s">&#34;by ref: {}</span><span class="se">\n</span><span class="s">&#34;</span><span class="p">,</span><span class="w"> </span><span class="p">.{</span><span class="n">elem</span><span class="p">.</span><span class="o">*</span><span class="p">});</span><span class="w">
</span><span class="w">    </span><span class="p">}</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>Here, we iterate over multiple sequences. Note that both sequences
<em>must</em> have the same length.</p>

          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="n">array</span><span class="p">,</span><span class="w"> </span><span class="o">&amp;</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|</span><span class="n">val</span><span class="p">,</span><span class="w"> </span><span class="o">*</span><span class="n">ref</span><span class="o">|</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">        </span><span class="n">_</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">val</span><span class="p">;</span><span class="w">
</span><span class="w">        </span><span class="n">_</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">ref</span><span class="p">;</span><span class="w">
</span><span class="w">    </span><span class="p">}</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>You may also specify a <em>range</em> with the <code>start..end</code> syntax. Note that
<code>end</code> may be omitted if another sequence is being iterated over as well;
the compiler will infer the range&rsquo;s size.</p>

          </td>
          <td class="code leading">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="mi">0</span><span class="p">..,</span><span class="w"> </span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|</span><span class="n">i</span><span class="p">,</span><span class="w"> </span><span class="n">elem</span><span class="o">|</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="w">        </span><span class="n">print</span><span class="p">(</span><span class="s">&#34;{}: {}</span><span class="se">\n</span><span class="s">&#34;</span><span class="p">,</span><span class="w"> </span><span class="p">.{</span><span class="w"> </span><span class="n">i</span><span class="p">,</span><span class="w"> </span><span class="n">elem</span><span class="w"> </span><span class="p">});</span><span class="w">
</span><span class="w">    </span><span class="p">}</span></pre>
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>To ignore the elements of a sequence, use <code>_</code>.</p>

          </td>
          <td class="code">
            
            <pre class="chroma"><span class="w">    </span><span class="k">for</span><span class="w"> </span><span class="p">(</span><span class="n">array</span><span class="p">)</span><span class="w"> </span><span class="o">|</span><span class="n">_</span><span class="o">|</span><span class="w"> </span><span class="p">{}</span><span class="w">
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
</span><span class="go">by ref: 101
</span><span class="go">by ref: 102
</span><span class="go">by ref: 103
</span><span class="go">0: 101
</span><span class="go">1: 102
</span><span class="go">2: 103</span></pre>
          </td>
        </tr>
        
      </table>
      
      
      <p class="next">
        Next example: <a href="if-else">If/Else</a>.
      </p>
      

    <p class="footer">
      by <a href="https://github.com/ibokuri">Jason Phan</a> | <a href="https://github.com/ibokuri/zig-by-example">source</a> | <a href="https://github.com/ibokuri/zig-by-example#license">license</a>
    </p>

    </div>
    <script>
      var codeLines = [];
      codeLines.push('');codeLines.push('const std \u003D @import(\"std\");\u000Aconst print \u003D std.debug.print;\u000A');codeLines.push('pub fn main() !void {\u000A    var array \u003D [_]u32{ 1, 2, 3 };\u000A');codeLines.push('    for (array) |elem| {\u000A        print(\"by val: {}\\n\", .{elem});\u000A    }\u000A');codeLines.push('    for (\u0026array) |*elem| {\u000A        elem.* +\u003D 100;\u000A        print(\"by ref: {}\\n\", .{elem.*});\u000A    }\u000A');codeLines.push('    for (array, \u0026array) |val, *ref| {\u000A        _ \u003D val;\u000A        _ \u003D ref;\u000A    }\u000A');codeLines.push('    for (0.., array) |i, elem| {\u000A        print(\"{}: {}\\n\", .{ i, elem });\u000A    }\u000A');codeLines.push('    for (array) |_| {}\u000A}\u000A');codeLines.push('');
    </script>
    <script src="site.js" async></script>
  </body>
</html>
