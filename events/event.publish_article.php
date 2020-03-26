<?php

class eventpublish_article extends SectionEvent
{
    public $ROOTELEMENT = 'publish-article';

    public $eParamFILTERS = array(
        'admin-only'
    );

    public static function about()
    {
        return array(
            'name' => 'Publish Article',
            'author' => array(
                'name' => 'Stephen Bau',
                'website' => 'https://lab.stephenbau.com',
                'email' => 'bauhouse@gmail.com'),
            'version' => 'Symphony 2.7.10',
            'release-date' => '2020-03-26T17:23:43+00:00',
            'trigger-condition' => 'action[publish-article]'
        );
    }

    public static function getSource()
    {
        return '1';
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
                <pre class="XML"><code>&lt;publish-article result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/publish-article></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;publish-article result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/publish-article></code></pre>
                <p>The following is an example of what is returned if any options return an error:</p>
                <pre class="XML"><code>&lt;publish-article result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;filter name="admin-only" status="failed" />
    &lt;filter name="send-email" status="failed">Recipient not found&lt;/filter>
...&lt;/publish-article></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>Title
        &lt;input name="fields[title]" type="text" />
    &lt;/label>
    &lt;label>Body
        &lt;textarea name="fields[body]" rows="15" cols="50">&lt;/textarea>
    &lt;/label>
    &lt;label>Publish
        &lt;input name="fields[publish]" type="checkbox" value="yes" />
    &lt;/label>
    &lt;label>Date
        &lt;input name="fields[date]" type="text" />
    &lt;/label>
    &lt;label>Manage Images
        &lt;input name="fields[manage-images]" type="checkbox" value="yes" checked="checked" />
    &lt;/label>
    &lt;input name="fields[article-images]" type="hidden" value="..." />
    &lt;input name="fields[categories]" type="hidden" value="..." />
    &lt;label>Tags
        &lt;input name="fields[tags]" type="text" />
    &lt;/label>
    &lt;input name="action[publish-article]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="https://lab.stephenbau.com/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['publish-article'])) {
            return $this->__trigger();
        }
    }

}
