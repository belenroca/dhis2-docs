# Program rules supported in Android Capture App

The following is a comprehensive list of all Program rule components (variable types and actions) available in DHIS2, and notes on whether or not these have been implemented in the Android Capture app.

Any issues around using a particular feature with Android are highlighted with an exclamation mark !.

Every time the icon ![](resources/images/image1_icon.png) is presented, a tip will be provided for a better use and understanding of the app.


<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>Component implemented</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>&ndash;</p>
</td>
<td colspan="1" rowspan="1">
<p>Component not implemented (rule fails)</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>Non-applicable</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>Work in progress. Feature not completely implemented yet or with unexpected behaviour already reported .</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<h3>Program rule Variable source types supported</h3>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>Variable type</p>
</td>
<td colspan="1" rowspan="1">
<p>Description of variable type</p>
</td>
<td colspan="1" rowspan="1">
<p>Program Type</p>
</td>
<td colspan="1" rowspan="1">
<p>Status</p>
</td>
<td colspan="1" rowspan="1">
<p>Notes on implementation</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Data element from the newest event for a program stage</p>
</td>
<td colspan="1" rowspan="1">
<p>This source type works the same way as &lsquo;Data element from the newest event in the current program&rsquo;, except that it only evaluates values from a specific program stage.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Data element from the newest event in the current program</p>
</td>
<td colspan="1" rowspan="1">
<p>This source type is populated with the newest data value collected for the specified data element within the enrolment.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>This program rule variable will be populated with the newest data value found within the 10 newest events in the same organization unit.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Data element in current event</p>
</td>
<td colspan="1" rowspan="1">
<p>Variable takes the data element&rsquo;s value from the current event.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Contains the data value from the same event that the user currently has open.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Data element from previous event</p>
</td>
<td colspan="1" rowspan="1">
<p>Program rule variables with this source type will contain the newest value from all previous events for the specified data element. The event currently open is not evaluated</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>This program rule variable will be populated with the newest data value found within the 10 events preceding the current event date (i.e. not including the current event).</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Tracked entity attribute</p>
</td>
<td colspan="1" rowspan="1">
<p>Populates the program rule variable with a specified tracked entity attribute for the current TEI (e.g. current patient).</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Calculated value</p>
</td>
<td colspan="1" rowspan="2">
<p>Calculated value</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
</tbody>
</table>
<h3>&nbsp;</h3>
<hr />
<h3>&nbsp;</h3>
<h3>Program rule Actions supported (Data element in current event)</h3>
<p>!<a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1793&amp;sa=D&amp;ust=1557433016465000">ANDROAPP-1793</a>&nbsp;Program Rules support names and codes for option sets variables from 1.2.1</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>Action</p>
</td>
<td colspan="1" rowspan="1">
<p>Description of action</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Notes on implementation</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Field</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides an individual data element if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>! If you change the value after the field is hidden, it will revert the action depending on the value type rule engine default value. We recommend its use combined with the hasvalue function.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Section</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole section and its data elements if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option</p>
</td>
<td colspan="1" rowspan="1">
<p>hide a single option for an option set in a given data element/tracked entity attribute.</p>
<p>When combined with show option group the hide option takes precedence</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option Group</p>
</td>
<td colspan="1" rowspan="1">
<p>hide all options in a given option group and data element/tracked entity attribute</p>
<p>When combined with show option group the hide option takes precedence</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show option group</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to show only options from a given option group in a given data element/tracked entity attribute. To show an option group implicitly hides all options that is not part of the group(s) that is shown.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Assign Value</p>
</td>
<td colspan="1" rowspan="1">
<p>Assigns a value to a specified data element or attribute if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Warning</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows pop-up warning to the user if rule is true; does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Warning on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, at the point &lsquo;complete&rsquo; is clicked, a rule is true; this does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Error</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up error message to the user as soon as a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Error on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, when &lsquo;complete&rsquo; is clicked, a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Make Field Mandatory</p>
</td>
<td colspan="1" rowspan="1">
<p>Sets a data element as &lsquo;mandatory&rsquo; if rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Text</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information that is not an error or a warning, for example feedback.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;text is displayed in all sections</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;</p>
<ol start="1">
<li>Rules triggered by &lsquo;Current event variables are showing the text ONLY in the form.</li>
<li>Rules triggered by &lsquo;Built-in variables&rsquo; display text ONLY on the indicators tab</li>
<li>The other Program rule variables are displaying the text in BOTH the form and the indicator tab.</li>
</ol>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Key Value/Pair</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information drawn from a data element.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;key value / pair is not displayed in event programs</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;Rules triggered by &lsquo;Current event variables are not showing the key value / pair</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide&nbsp;Program Stage</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole program stage from the user if the rule is true</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Action rule only supported for&nbsp;Data element from the newest event in the current program variable type.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Create event</p>
</td>
<td colspan="1" rowspan="1">
<p>Create an event within the same enrollment.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>This action will be available in future versions of DHIS2. <a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1131&amp;sa=D&amp;ust=1557433016497000">ANDROAPP-1131</a></p>
</td>
</tr>
</tbody>
</table>
<hr />
<h3>Program rule Actions supported (Other variables)</h3>
<p>!<a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1793&amp;sa=D&amp;ust=1557433016498000">ANDROAPP-1793</a>&nbsp;Program Rules support names and codes for option sets variables from 1.2.1</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>Action</p>
</td>
<td colspan="1" rowspan="1">
<p>Description of action</p>
</td>
<td colspan="2" rowspan="1">
<p>Data element from the newest event in the current program</p>
</td>
<td colspan="2" rowspan="1">
<p>Data element from previous event</p>
</td>
<td colspan="1" rowspan="1">
<p>Data element from the newest event for a program stage</p>
</td>
<td colspan="1" rowspan="1">
<p>Tracked entity attribute</p>
</td>
<td colspan="1" rowspan="1">
<p>Notes on implementation</p>
</td>
</tr>
<tr>
<td colspan="2" rowspan="1">&nbsp;</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Field</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides an individual data element if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Section</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole section and its data elements if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option</p>
</td>
<td colspan="1" rowspan="1">
<p>hide a single option for an option set in a given data element/tracked entity attribute.</p>
<p>When combined with show option group the hide option takes precedence</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option Group</p>
</td>
<td colspan="1" rowspan="1">
<p>hide all options in a given option group and data element/tracked entity attribute</p>
<p>When combined with show option group the hide option takes precedence</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Assign Value</p>
</td>
<td colspan="1" rowspan="1">
<p>Assigns a value to a specified data element or attribute if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Warning</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows pop-up warning to the user if rule is true; does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Warning on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, at the point &lsquo;complete&rsquo; is clicked, a rule is true; this does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Error</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up error message to the user as soon as a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />The rule will let the user to finish the enrollment but will prevent from completing the events until rule is no longer true.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Error on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, when &lsquo;complete&rsquo; is clicked, a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Make Field Mandatory</p>
</td>
<td colspan="1" rowspan="1">
<p>Sets a data element as &lsquo;mandatory&rsquo; if rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Text</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information that is not an error or a warning, for example feedback.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;text is displayed in all sections</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;</p>
<ol start="1">
<li>Rules triggered by &lsquo;Current event&rsquo; variables are showing the text ONLY in the form.</li>
<li>Rules triggered by &lsquo;Built-in variables&rsquo; display text ONLY on the indicators tab</li>
<li>The other Program rule variables are displaying the text in BOTH the form and the indicator tab.</li>
</ol>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Key Value/Pair</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information drawn from a data element.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;key value / pair is not displayed in event programs</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;Rules triggered by built in variables or any variable type, with the exception of &lsquo;Current event&rsquo;, display the key value / pair ONLY in the indicators tab</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide&nbsp;Program Stage</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole program stage from the user if the rule is true</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Action rule only supported for&nbsp;Data element from the newest event in the current program variable type</p>
<p><img title="" src="images/image1.png" alt="" />If the event is auto-generated, the rule won&rsquo;t apply.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Create event</p>
</td>
<td colspan="1" rowspan="1">
<p>Create an event within the same enrollment.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>This action will be available in future versions of the App. <a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1131&amp;sa=D&amp;ust=1557433016558000">ANDROAPP-1131</a></p>
</td>
</tr>
</tbody>
</table>


## Functions to use in program rule expressions

| Function   | Description of function | Status        | Notes on implementation |
| ---- | ----------------------------- | ---- | -- |
| d2:ceil    | Rounds the input argument up to the nearest whole number.   | ✓    | |
| d2:floor   | Rounds the input argument down to the nearest whole number. | ✓    | |
| d2:round   | Rounds the input argument to the nearest whole number.      | ✓    | |
| d2:modulus | Produces the modulus when dividing the first with the second argument.        | ✓    | |
| d2:zing    | Evaluates the argument of type number to zero if the value is negative, otherwise to the value itself.   | ✓    | |
| d2:oizp    | Evaluates the argument of type number to one if the value is zero or positive, otherwise to zero.        | ✓    | |
| d2:concatenate      | Produces a string concatenated string from the input parameters. Supports any number of parameters.      | ✓    | |
| d2:daysBetween      | Produces the number of days between the first and second argument. If the second argument date is before the first argument,  the return value will be the negative number of days between the two dates. The static date format is 'yyyy-MM-dd'.        | ✓    | |
| d2:weeksBetween     | Produces the number of full weeks between the first and second argument. If the second argument date is before the first argument,  the return value will be the negative number of weeks between the two dates. The static date format is 'yyyy-MM-dd'. | ✓    | |
| d2:monthsBetween    | Produces the number of full months between the first and second argument. If the second argument date is before the first argument the return value will be the negative number of months between the two dates. The static date format is 'yyyy-MM-dd'. | ✓    | |
| d2:yearsBetween     | Produces the number of years between the first and second argument. If the second argument date is before the first argument, the return value will be the negative number of years between the two dates. The static date format is 'yyyy-MM-dd'.       | ✓    | |
| d2:addDays | Produces a date based on the first argument date, adding the second argument number of days.    | ✓    | |
| d2:count   | Counts the number of values that is entered for the source field in the argument.      | ✓    | |
| d2:countIfValue     | Counts the number of matching values that is entered for the source field in the first argument. Only occurrences that matches the second argument is counted. | ✓    | |
| d2:countIfZeroPos   | Counts the number of values that is zero or positive entered for the source field in the argument. The source field parameter is the name of one of the defined source fields in the program.      | ✓    | |
| d2:hasValue         | Returns the number of numeric zero and positive values among the given object arguments. Can be provided with any number of arguments.       | ✓    | |
| d2:validatePattern  | Evaluates to true if the input text is an exact match with the supplied regular expression pattern. The regular expression needs to be escaped.       | ✓    | |
| d2:left    | Evaluates to the left part of a text, num-chars from the first character.     | ✓    | |
| d2:right   | Evaluates to the right part of a text, num-chars from the last character.     | ✓    | |
| d2:substring        | Evaluates to the part of a string specified by the start and end character number.     | ✓    | |
| d2:split   | Split the text by delimiter, and keep the nth element (0 is the first).       | ✓    | |
| d2:length  | Find the length of a string.     | ✓    | |
| d2:zpvc    | Returns the number of numeric zero and positive values among the given object arguments. Can be provided any number of arguments.   | ✓    | |
| d2:inOrgUnitGroup\* | Evaluates whether the current organization unit is in the argument group. The argument can be defined with either ID or organization unit group code. | ![](resources/images/image3_icon.png) | |

\*Available in DHIS2 v2.30

---

## Standard variables to use in program rule expressions

![](resources/images/image1_icon.png)Available in DHIS2 v2.30

| Variable     | Description of function       | Status | Notes on implementation |
| --- | -------------------------------------------- | --- | -- |
| V{current_date}       | Contains the current date whenever the rule is executed. | ✓      | |
| V{event_date}         | Contains the event date of the current event execution. Will not have a value at the moment the rule is executed as part of the registration form. | ✓      | |
| V{due_date} \*        | This variable will contain the current date when the rule is executed. Note: This means that the rule might produce different results at different times, even if nothing else has changed.     | ✓      | |
| V{event_count}        | Contains the total number of events in the enrollment.   | ✓      | |
| V{enrollment_date} \* | Contains the enrollment date of the current enrollment. Will not have a value for single event programs.       | ✓      | |
| V{incident_date} \*   | Contains the incident date of the current enrollment. Will not have a value for single event programs.         | ✓      | |
| V{enrollment_id} \*   | Universal identifier string(UID) of the current enrollment. Will not have a value for single event programs.   | ✓      | |
| V{event_id}  | Universal identifier string(UID) of the current event context. Will not have a value at the moment the rule is executed as part of the registration form.   | ✓      | |
| V{orgunit_code}       | Contains the code of the orgunit that is linked to the current enrollment. For single event programs the code from the current event Org Unit will be used instead.  | ✓      | |
| V{environment}        | Contains a code representing the current runtime environment for the rules. The possible values is "WebClient", "AndroidClient" and "Server". Can be used when a program rule is only supposed to run in one or more of the client types.    | ✓      | |
| V{program_stage_id}   | Contains the ID of the current program stage that triggered the rules. This can be used to run rules in specific program stages, or avoid execution in certain stages. When executing the rules in the context of a TEI registration form the variable will be empty.   | ✓      | |
| V{program_stage_name} | Contains the name of the current program stage that triggered the rules. This can be used to run rules in specific program stages, or avoid execution in certain stages. When executing the rules in the context of a TEI registration form the variable will be empty. | ✓      | |

\*Only applies to tracker

---
