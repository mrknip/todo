<h1> Knip's to-do list </h1>

<p>The most basic of basic to-do lists.  This was put together on a sleepy Monday afternoon partly as a revision exercise and partly to give me a toy project to work on when thinking about writing idiomatic code, SOLID principles, etc.</p>
<p>As it stands, the list takes the name of the to-do list file as a command line parameter.</p>
<p>This is a first attempt, and an object lesson in how little time it takes for code to get murky.  There are already some clangers and omissions about the place that are deserving of attention:</p>

<ul>
<li>No validation on user input</li>
<li>Buggy file operations - will create a '.txt' file if no filename given, which was affecting the tests</li>
<li>UI is clunky and largely there so I could play with it.  Not fully implemented accessing the tasks by their place in the list.</li>
<li>Plenty of ugly and repetitive code</li>
<li>Tests are not necessarily monitoring how robust the program itself is.</li>
</ul>  

<p>On the plus side, it has what I believe to be a just-about-working set of CRUD functions, a solution to some encoding issues that Windows was throwing my way (finally!), and the file system will keep object states between sessions.</p>

<p>Next steps are to tidy up, add a few more functions (date added and deadlines, sorting).  Then I can start thinking about how to refactor into more idiomatic code, and where exactly it fails to meet the SOLID principles</p>
