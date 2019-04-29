<div class="map-area">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22236.40558254599!2d-118.25292394686001!3d34.057682914027104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2z4Kay4Ka4IOCmj-CmnuCnjeCmnOCnh-CmsuCnh-CmuCwg4KaV4KeN4Kav4Ka-4Kay4Ka_4Kar4KeL4Kaw4KeN4Kao4Ka_4Kav4Ka84Ka-LCDgpq7gpr7gprDgp43gppXgpr_gpqgg4Kav4KeB4KaV4KeN4Kak4Kaw4Ka-4Ka34KeN4Kaf4KeN4Kaw!5e0!3m2!1sbn!2sbd!4v1532328708137" allowfullscreen></iframe>
</div>
<!-- ##### Google Maps End ##### -->

<!-- ##### Contact Area Start ##### -->
@include('blocks.widgets.contact-form')

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.8.0/parsley.min.js"></script>

<script>
    $(function() {
        $('#feedbackForm').on('submit', function  (e) {
            var name = $('[name="name"]').val(),
                email = $('[name="email"]').val(),
                body = $('[name="body"]').val(),
                subject = $('[name="subject"]').val();

            e.stopPropagation();
            e.preventDefault();

            var postPromise = $.post( "{{ route('api.contact') }}", {
                name: name,
                email: email,
                body: body,
                subject: subject
            });
            postPromise.then(function (data) {
                    $('div[role="alert"]').hide().find('.errorsOutput').html('');
                    $('#feedbackForm').hide();
                    $('div[role="alertSuccess"]').show();
            }, function (errorData) {
                console.log(errorData);
                var errors = errorData.responseJSON.errors,
                    outErrors = [];
                for (var error in errors) {
                    outErrors.push(errors[error][0]);
                }
                $('div[role="alert"]').show().find('.errorsOutput').html(outErrors.join('<br>'));
            });
        });
    });
</script>

<script>
    $('#feedbackForm').parsley();
</script>