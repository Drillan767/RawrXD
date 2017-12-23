//= require jquery/dist/jquery.min.js
//= require popper.js/dist/umd/popper.js
//= require bootstrap/dist/js/bootstrap.js
//= require tinymce/tinymce
//= require tinymce/themes/modern/theme.min.js
//= require rails-ujs
//= require turbolinks
//= require_tree .

tinymce.init({
    selector: '#content',
    branding: false,
    plugins: "code",
    entity_encoding : "raw",
    menu: {
        edit: {
            title: 'Edit',
            items: 'undo redo | cut copy paste pastetext | selectall'
        },
        format: {
            title: 'Format',
            items: 'bold italic underline strikethrough superscript subscript code | removeformat'
        },
    }
});