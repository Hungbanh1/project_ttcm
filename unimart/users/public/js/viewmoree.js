function AddCart(id) {
    console.log(id);
    $.ajax({
        url: 'cart/add/' + id,
        type: 'GET',
    }).done(function (response) {
        var closable = alertify.alert().setting('closable');
        alertify
            .alert()
            .setting({
                label: 'DONE',
                message: 'Bạn đã thêm đơn hàng thành công !!!',
                onok: function () {
                    alertify.success('Thành công !!!');
                    setInterval(function () {
                        location.reload();
                    }, 1800);
                },
            })
            .show();
    });
}
// $('.btn-view-more').click(function () {
//     alert('ok');
// });

$(document).ready(function () {
    $('.btn-view-more').click(function () {
        // alert('ok');
        $(this).prev().slideDown().removeClass('view-more');
        $(this).addClass('hidden');
        $('.btn-hidden').removeClass('hidden');
    });

    $('.btn-hidden').click(function () {
        // alert('ok');

        $('.btn-view-more').removeClass('hidden');
        $('.btn-view-more').prev().addClass('view-more');
        $(this).addClass('hidden');
    });
});
