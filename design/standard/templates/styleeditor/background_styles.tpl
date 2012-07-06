<form action="{concat( '/styleeditor/setbackground/', $node.node_id )|ezurl( 'no' )}" method="post" enctype="multipart/form-data" id="ezste-upload-form">
    <h3>{'Please select a photo from your computer.'|i18n( 'design/standard/syleeditor/embed' )}</h3>
    <div class="row">
        <div class="span2">
            <ul class="thumbnails">
                <li class="span2">
                    <a href="#" class="thumbnail">
                        {def $image_path = 'http://placehold.it/160x120'}
                        {if ne( $rules[body][background-image].value, '' )}
                            {set $image_path = $rules[body][background-image].value|extract('4', $rules[body][background-image].value|count_chars())}
                            {set $image_path = $image_path|extract_left( $image_path|count_chars()|sub( '1' ) )}
                        {/if}
                        <img src="{$image_path}" alt="" id="ezste-image-preview" width="160" height="120" />
                        {undef $image_path}
                    </a>
                    <input type="hidden" name="Rules[body][properties][background-image][value]" value="{$rules[body][background-image].value}" id="ezste-background-image" />
                </li>
            </ul>
        </div>
        <div class="span10">
            <input type="file" name="File" class="input-file" id="ezste-file-input" />
            <input type="submit" name="UploadButton" value="{'Upload'|i18n( 'design/standard/syleeditor/embed' )}" class="btn btn-warning" id="ezste-upload-btn" />
            <div class="row">
                <div class="alert alert-error span3" id="ezste-error-desc" style="display: none">
                </div>
            </div>
        </div>
    </div>
    <div class="background-color">
        <label class="form-inline">{'Choose header background color'|i18n( 'design/standard/syleeditor/embed' )}
            <input type="text" class="input-mini" name="Rules[header][properties][background-color][value]" value="{$rules[header][background-color].value}" />
            <img src="{'color-picker-icon.gif'|ezimage( 'no' )}" alt="" class="colorpicker-icon" />
        </label>
    </div>
    <label class="radio inline">
        <input type="radio" name="Rules[body][properties][background-position][value]" value="top right"{if eq( $rules[body][background-position].value, 'top right' )} checked="checked"{/if} />{'Align right'|i18n( 'design/standard/syleeditor/embed' )}
    </label>
    <label class="radio inline">
        <input type="radio" name="Rules[body][properties][background-position][value]" value="top center"{if eq( $rules[body][background-position].value, 'top center' )} checked="checked"{/if} />{'Align center'|i18n( 'design/standard/syleeditor/embed' )}
    </label>
    <label class="radio inline">
        <input type="radio" name="Rules[body][properties][background-position][value]" value="top left"{if eq( $rules[body][background-position].value, 'top left' )} checked="checked"{/if} />{'Align left'|i18n( 'design/standard/syleeditor/embed' )}
    </label>
    <br />
    <label class="radio inline">
        <input type="radio" name="Rules[body][properties][background-repeat][value]" value="repeat-y"{if eq( $rules[body][background-repeat].value, 'repeat-y' )} checked="checked"{/if} />{'Repeat image vertically'|i18n( 'design/standard/syleeditor/embed' )}
    </label>
    <label class="radio inline">
        <input type="radio" name="Rules[body][properties][background-repeat][value]" value="repeat-x"{if eq( $rules[body][background-repeat].value, 'repeat-x' )} checked="checked"{/if} />{'Repeat image horizontally'|i18n( 'design/standard/syleeditor/embed' )}
    </label>
    <label class="radio inline">
        <input type="radio" name="Rules[body][properties][background-repeat][value]" value="no-repeat"{if eq( $rules[body][background-repeat].value, 'no-repeat' )} checked="checked"{/if} />{'Do not repeat image'|i18n( 'design/standard/syleeditor/embed' )}
    </label>
    <div class="background-color">
        <label class="form-inline">{'Choose background color'|i18n( 'design/standard/syleeditor/embed' )}
            <input type="text" class="input-mini" name="Rules[body][properties][background-color][value]" value="{$rules[body][background-color].value}" />
            <img src="{'color-picker-icon.gif'|ezimage( 'no' )}" alt="" class="colorpicker-icon" />
        </label>
    </div>
    <div class="site-style-buttons">
        <input type="submit" value="{'Reset'|i18n( 'design/standard/syleeditor/embed' )}" name="ResetButton" class="btn" />
        <input type="submit" value="{'Cancel'|i18n( 'design/standard/syleeditor/embed' )}" name="CancelButton" class="btn" />
        <input type="submit" value="{'Store'|i18n( 'design/standard/syleeditor/embed' )}" name="StoreButton" class="btn btn-warning" />
        <input type="hidden" name="ContentObjectID" value="{$object.id}" />
        <input type="hidden" name="ezxform_token" value="{$form_token}" />
    </div>
</form>
