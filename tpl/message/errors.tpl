[{if $Errors.default|is_array && $Errors.default|count}]
    [{foreach from=$Errors.default item=oEr key=key}]
        <p class="alert alert-danger">[{$oEr->getOxMessage()}]</p>
    [{/foreach}]
[{/if}]
[{if $Errors.popup|is_array && $Errors.popup|count}]
    [{include file="message/errors_modal.tpl"}]
[{/if}]