<?php

class eventsave_comment extends SectionEvent
{
    public $ROOTELEMENT = 'save-comment';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'Save Comment',
            'author' => array(
                'name' => 'Stephen Bau',
                'website' => 'https://lab.stephenbau.com',
                'email' => 'bauhouse@gmail.com'),
            'version' => 'Symphony 2.7.10',
            'release-date' => '2020-03-26T17:24:40+00:00',
            'trigger-condition' => 'action[save-comment]'
        );
    }

    public static function getSource()
    {
        return '3';
    }

    public static function allowEditorToParse()
    {
        return true;
    }

    public static function documentation()
    {
        return '
                <h3>Success and Failure XML Examples</h3>
                <p>When saved successfully, the following XML will be returned:</p>
                <pre class="XML"><code>&lt;save-comment result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/save-comment></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;save-comment result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/save-comment></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>Author
        &lt;input name="fields[author]" type="text" />
    &lt;/label>
    &lt;label>Email
        &lt;input name="fields[email]" type="text" />
    &lt;/label>
    &lt;label>Website
        &lt;input name="fields[website]" type="text" />
    &lt;/label>
    &lt;label>Date
        &lt;input name="fields[date]" type="text" />
    &lt;/label>
    &lt;input name="fields[article]" type="hidden" value="..." />
    &lt;label>Comment
        &lt;textarea name="fields[comment]" rows="8" cols="50">&lt;/textarea>
    &lt;/label>
    &lt;input name="action[save-comment]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="https://lab.stephenbau.com/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['save-comment'])) {
            return $this->__trigger();
        }
    }

}
