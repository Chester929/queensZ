//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap
//= require select2
//= require cocoon

$('.reset').click(function() {
    return $('.search-input').val('');
});

$('.add-item').click(function() {
    return $('.select2').select2({
        theme: 'bootstrap',
        placeholder: '',
        allowClear: true
    });
});