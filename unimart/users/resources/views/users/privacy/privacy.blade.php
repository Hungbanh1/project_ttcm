@extends('layouts.admin')
@section('content')

 <link rel="stylesheet" media="screen" href="/web_static/css/bootstrap.min.css">

 <link rel="stylesheet" href="/web_static/categorized/vi/css/shopee_12ef6.css">
 <style>
    .content {
        padding: 0 100px;
        margin-top: 90px;
        margin-bottom: 20px;
    }

    .content img {
        max-width: 100% !important;
    }

    #outer_edm_edm,
    #outer_edm_edm table,
    #outer_edm_edm td {
        max-width: 100% !important;
        overflow: hidden;
    }

    #title {
        font-size: 2.5rem;
        text-align: center;
        margin-bottom: 30px;
        font-weight: bold;
    }

    

    

    

    .legal {
        line-height: 20px;
    }

    .legal ol {
        list-style-type: none;
        counter-reset: item;
        margin: 0;
        padding: 0;
    }

    .legal ol li:before {
        display: inline-block;
        width: 50px;
        content: counters(item, ".") ". ";
        font-weight: bold;
    }

    .legal ol li {
        display: table;
        counter-increment: item;
        margin-bottom: 0.6em;
        margin-left: 0;
        font-size: 120%;
        font-weight: bold;
        line-height: 50px;
    }

    .legal ol ol li:before {
        width: 50px;
        content: counters(item, ".");
        display: table-cell;
        font-weight: normal;
    }

    .legal ol ol li {
        font-size: 80%;
        font-weight: normal;
        line-height: 30px;
        margin: 20px 0 20px 0;
    }

    .legal ol ol ol li:before {
        content: "(" counter(item, lower-alpha) ")";
        display: table-cell;
        font-weight: normal;
    }

    .legal ol ol ol li {
        font-size: 100%;
        font-weight: normal;
        line-height: 30px;
    }

    .legal .hyphen-list li:before {
        content: '-';
    }

    .legal .no-numbering li:before {
        content: '  ';
    }

    .legal .number-numbering li:before {
        content: counters(item, ".");
        padding-right: 15px;
    }

    .legal .lower-th-numbering li:before {
        content: attr(data-attr);
    }

    .legal .lower-alpha-numbering li:before {
        content: "(" counter(item, lower-alpha) ")";
    }

    .legal .lower-roman-numbering li:before {
        content: "(" counter(item, lower-roman) ")";
    }

    .legal .lower-roman-numbering li span {
        text-decoration: underline;
    }

    .legal .decimal-numbering li:before {
        content: "(" counter(item, decimal) ")";
    }

    .legal .bold-text {
        font-weight: bold;
    }

    .legal .no-margin-bottom {
        margin-bottom: 0px;
    }

    .legal .justify-text {
        text-align: justify;
    }

    .legal p {
        font-size: 80%;
        font-weight: normal;
        line-height: 30px;
    }

    .legal a {
        text-decoration: none;
    }

</style>


<div class="container content">
    <div id="title">CHÍNH SÁCH BẢO MẬT</div>
    <h1 align="center" style="text-align:left;margin-left:0in;">
<span style="font-size:12px;"></span><br>
</h1>
<p>
<span style="font-size:12px;">
</span></p><p class="MsoNormal" style="text-align:justify;">
    <b>1. GIỚI THIỆU</b>
</p>
<p class="MsoNormal" style="text-align:justify;">
    1.1. Chào mừng bạn đến với nền
tảng Shopee.vn (bao gồm website và ứng dụng di động Shopee) được được vận hành
bởi Công ty TNHH Shopee và các công ty liên kết (gọi riêng và gọi chung là,
"Shopee", "chúng tôi", hay "của chúng tôi").
Shopee nghiêm túc thực hiện trách nhiệm của mình liên quan đến bảo mật thông
tin theo các quy định về bảo vệ bí mật thông tin cá nhân của pháp luật Việt Nam
(“Luật riêng tư”) và cam kết tôn trọng quyền riêng tư và sự quan tâm của tất cả
người dùng đối với website và ứng dụng di động của chúng tôi (“Nền tảng”)
(chúng tôi gọi chung Các Nền tảng và các dịch vụ chúng tôi cung cấp như được mô
tả trong Nền tảng của chúng tôi là "các Dịch Vụ"). Người dùng có
nghĩa là người đăng ký tài khoản với chúng tôi để sử dụng các Dịch Vụ, bao gồm
cả người mua và người bán (gọi chung và gọi riêng là “Các Người Dùng”, “bạn” hoặc
“của bạn”). Chúng tôi nhận biết tầm quan trọng của dữ liệu cá nhân mà bạn đã
tin tưởng giao cho chúng tôi và tin rằng chúng tôi có trách nhiệm quản lý, bảo
vệ và xử lý dữ liệu cá nhân của bạn một cách thích hợp. Chính sách bảo mật này
("Chính sách bảo mật" hay "Chính sách") được thiết kế để
giúp bạn hiểu được cách thức chúng tôi thu thập, sử dụng, tiết lộ và/hoặc xử lý
dữ liệu cá nhân mà bạn đã cung cấp cho chúng tôi và/hoặc lưu giữ về bạn, cho dù
là hiện nay hoặc trong tương lai, cũng như để giúp bạn đưa ra quyết định sáng
suốt trước khi cung cấp cho chúng tôi bất kỳ dữ liệu cá nhân nào của bạn.
</p>
<p class="MsoNormal" style="text-align:justify;">
    1.2 "Dữ Liệu Cá
Nhân" hay "dữ liệu cá nhân" có nghĩa là dữ liệu, dù đúng hay
không, về một cá nhân mà thông qua đó có thể được xác định được danh tính, hoặc
từ dữ liệu đó và thông tin khác mà một tổ chức có hoặc có khả năng tiếp cận.
Các ví dụ thường gặp về dữ liệu cá nhân có thể gồm có tên, số chứng minh nhân
dân và thông tin liên hệ.
</p>
<p class="MsoNormal" style="text-align:justify;">
    1.3 Bằng việc sử dụng Các Dịch
Vụ, đăng ký một tài khoản với chúng tôi hoặc truy cập Nền tảng, bạn xác nhận và
đồng ý rằng bạn chấp nhận các phương pháp, yêu cầu, và/hoặc chính sách được mô
tả trong Chính sách bảo mật này, và theo đây bạn đồng ý cho phép chúng tôi thu
thập, sử dụng, tiết lộ và/hoặc xử lý dữ liệu cá nhân của bạn như mô tả trong
đây. NẾU BẠN KHÔNG ĐỒNG Ý CHO PHÉP XỬ LÝ DỮ LIỆU CÁ NHÂN CỦA BẠN NHƯ MÔ TẢ
TRONG CHÍNH SÁCH NÀY, VUI LÒNG KHÔNG SỬ DỤNG CÁC DỊCH VỤ CỦA CHÚNG TÔI HAY TRUY
CẬP NỀN TẢNG HOẶC TRANG WEB CỦA CHÚNG TÔI. Nếu chúng tôi thay đổi Chính sách bảo
mật của mình, chúng tôi sẽ thông báo cho bạn bao gồm cả thông qua việc đăng tải
những thay đổi đó hoặc Chính sách bảo mật sửa đổi trên Nền tảng của chúng tôi.
Trong phạm vi pháp luật cho phép, việc tiếp tục sử dụng các Dịch Vụ hoặc Nền Tảng,
bao gồm giao dịch của bạn, được xem là bạn đã công nhận và đồng ý với các thay
đổi trong Chính Sách Bảo Mật này.
</p>
<p class="MsoNormal" style="text-align:justify;">
    1.4. Chính sách này áp dụng
cùng với các thông báo, điều khoản hợp đồng, điều khoản chấp thuận khác áp dụng
liên quan đến việc chúng tôi thu thập, lưu trữ, sử dụng, tiết lộ và/hoặc xử lý
dữ liệu cá nhân của bạn và không nhằm ghi đè những thông báo hoặc các điều khoản
đó trừ khi chúng tôi có tuyên bố ràng khác.
</p>
<p class="MsoNormal" style="text-align:justify;">
    1.5. Chính sách này được áp dụng
cho cả Người bán và Người mua đang sử dụng Dịch vụ trừ khi có tuyên bố rõ ràng
ngược lại.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>2.</b>&nbsp;<b>KHI NÀO SHOPEE SẼ THU THẬP DỮ LIỆU CÁ NHÂN?</b>
</p>
<p class="MsoNormal" style="text-align:justify;">
    2.1. Chúng tôi sẽ/có thể thu
thập dữ liệu cá nhân về bạn:
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi bạn đăng ký và/hoặc sử dụng Các Dịch
Vụ hoặc Nền tảng của chúng tôi, hoặc mở một tài khoản với chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi bạn gửi bất kỳ biểu mẫu nào, bao gồm
đơn đăng ký hoặc các mẫu đơn khác liên quan đến bất kỳ sản phẩm và dịch vụ nào
của chúng tôi, bằng hình thức trực tuyến hay dưới hình thức khác;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi bạn ký kết bất kỳ thỏa thuận nào hoặc
cung cấp các tài liệu hoặc thông tin khác liên quan đến tương tác giữa bạn với
chúng tôi, hoặc khi bạn sử dụng các sản phẩm và dịch vụ của chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi bạn tương tác với chúng tôi, chẳng hạn
như thông qua các cuộc gọi điện thoại (có thể được ghi âm lại), thư từ, fax, gặp
gỡ trực tiếp, các nền ứng dụng truyền thông xã hội và email;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi bạn sử dụng các dịch vụ điện tử của
chúng tôi, hoặc tương tác với chúng tôi qua Nền tảng hoặc Trang Web hoặc Các Dịch
Vụ của chúng tôi. Trường hợp này bao gồm thông qua tập tin cookie mà chúng tôi
có thể triển khai khi bạn tương tác với các Nền tảng hoặc Trang Web của chúng
tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi bạn cấp quyền trên thiết bị của bạn để
chia sẻ thông tin với ứng dụng hoặc Nền tảng của chúng tôi
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Khi bạn liên kết tài khoản Shopee với tài
khoản mạng xã hội của bạn hoặc các tài khoản bên ngoài khác hoặc sử dụng các
tính năng mạng xã hội khác, phù hợp với các chính sách của nhà cung cấp
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi
bạn thực hiện các giao dịch thông qua Dịch vụ của chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi
bạn cung cấp ý kiến phản hồi hoặc gửi khiếu nại cho chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi bạn đăng ký tham gia một cuộc thi; hoặc
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
khi
bạn gửi dữ liệu cá nhân của bạn cho chúng tôi vì bất kỳ lý do gì.
</p>
<p class="MsoNormal" style="text-align:justify;">
    Các trường hợp trên không nhằm
mục đích liệt kê đầy đủ các trường hợp và chỉ đưa ra một số trường hợp phổ biến
về thời điểm dữ liệu cá nhân của bạn có thể bị thu thập
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>3. SHOPEE SẼ THU THẬP NHỮNG DỮ LIỆU GÌ?</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    3.1. Dữ liệu cá nhân mà
Shopee có thể thu thập bao gồm:
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
họ tên;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
địa
chỉ email;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
ngày sinh;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
địa
chỉ thanh toán và/hoặc giao nhận hàng hóa;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
tài khoản ngân hàng và thông tin thanh
toán
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
số điện thoại;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
giới
tính;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Thông
tin được gửi bởi hoặc liên quan đến (các) thiết bị được sử dụng để truy cập vào
Các Dịch vụ hoặc Nền tảng của chúng tôi
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
thông
tin về mạng của bạn và những người và tài khoản mà bạn có tương tác;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
hình
ảnh hoặc âm thanh hoặc video mà bạn chia sẻ với chúng tôi
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Thông
tin về nhân thân được cấp bởi chính phủ hoặc các thông tin khác phục vụ cho các
mục đích đánh giá pháp lý, nhận biết khách hàng, xác minh thông tin hoặc phòng
chống gian lận của chúng tôi
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Dữ liệu truyền thông hoặc liên lạc, ví dụ
như các tùy chọn nhận thông tin quảng cáo từ chúng tôi hoặc các bên thứ ba của
bạn, tùy chọn phương tiện liên lạc và lịch sử thông tin liên lạc với chúng tôi,
các nhà cung cấp dịch vụ của chúng tôi, và các bên thứ ba khác;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Thông tin sử dụng và giao dịch, bao gồm
chi tiết về lịch sử tìm kiếm, giao dịch, quảng cáo và nội dung hiển thị mà
tương tác với Nền Tảng, cũng như các sản phẩm và dịch vụ có liên quan của bạn;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
dữ
liệu về địa điểm
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
bất kỳ thông tin nào khác về người dùng
khi người dùng đăng nhập để sử dụng Các Dịch Vụ hoặc Nền tảng của chúng tôi, và
khi người dùng sử dụng Các Dịch Vụ hoặc Nền tảng, cũng như thông tin về việc
người dùng sử dụng Các Dịch Vụ hoặc Nền tảng của chúng tôi như thế nào; và
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
dữ
liệu tổng hợp về nội dung người dùng sử dụng.
</p>
<p class="MsoNormal" style="text-align:justify;">
    3.2 Bạn đồng ý không cung cấp
cho chúng tôi bất cứ thông tin nào không chính xác hoặc gây hiểu nhầm và bạn đồng
ý sẽ thông báo cho chúng tôi về bất cứ thông tin nào không chính xác hoặc khi
có sự thay đổi thông tin. Chúng tôi bảo lưu quyền theo quyết định riêng của
chúng tôi được yêu cầu các tài liệu cần thiết khác để xác minh thông tin được bạn
cung cấp.
</p>
<p class="MsoNormal" style="text-align:justify;">
    3.3. Nếu bạn đăng nhập để trở
thành Người sử dụng các Nền tảng của chúng tôi sử dụng tài khoản mạng xã hội của
Bạn (“Tài khoản Mạng Xã hội”), liên kết tài khoản của bạn với Tài khoản Mạng Xã
hội của bạn hoặc sử dụng bất cứ tính năng mạng xã hội Shopee nào, chúng tôi có
quyền truy cập thông tin về bạn mà bạn đã cung cấp một cách tự nguyên cho nhà
cung cấp dịch vụ Tài khoản Mạng Xã hội của Bạn tuân theo các chính sách của các
nhà cung cấp dịch vụ này, và chúng tôi sẽ quản lý và sử dụng các dữ liệu cá
nhân này của bạn theo các quy định của Chính sách này tại mọi thời điểm.
</p>
<p class="MsoNormal" style="text-align:justify;">
    3.4&nbsp;Nếu bạn không muốn
chúng tôi thu thập thông tin/dữ liệu cá nhân nói trên, bạn có thể chọn không
tham gia vào bất kỳ lúc nào bằng cách thông báo bằng văn bản đến Nhân Viên Bảo
Vệ Dữ Liệu của chúng tôi. Có thể tìm thấy thêm thông tin về nội dung trong mục
"Bạn có thể rút lại sự cho phép xóa tên, yêu cầu truy cập hoặc điều chỉnh
thông tin bạn đã cung cấp cho chúng tôi bằng cách nào?" dưới đây. Tuy
nhiên, lưu ý rằng việc từ chối hoặc hủy bỏ cho phép chúng tôi thu thập, sử dụng
hoặc xử lý dữ liệu cá nhân của bạn có thể ảnh hưởng đến việc bạn sử dụng Các Dịch
Vụ và Nền tảng. Ví dụ như dịch vụ xác định vị trí sẽ không hoạt động nếu bạn
không cho phép ứng dụng truy cập vị trí của bạn.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>4. THU THẬP CÁC DỮ LIỆU KHÁC</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    4.1 Như với hầu hết các trang
web và các ứng dụng di động khác, thiết bị của bạn gửi thông tin có thể gồm có
dữ liệu về bạn, được một máy chủ web ghi lại khi bạn sử dụng Nền tảng của chúng
tôi. Thông tin này thông thường bao gồm nhưng không giới hạn địa chỉ IP, hệ điều
hành của máy tính/thiết bị di động, loại trình duyệt, loại thiết bị di động,
các đặc điểm của thiết bị di động, mã định danh thiết bị thống nhất (UDID) hoặc
mã định danh thiết bị di động (MEID) của thiết bị di động của bạn, địa chỉ tham
chiếu của Trang Web (nếu có), các trang mà bạn đã truy cập đến trên trang web
hoặc ứng dụng di động của chúng tôi và thời gian truy cập và đôi khi là
"cookie" (có thể vô hiệu hóa bằng cách sử dụng tùy chọn trình duyệt của
bạn) để giúp trang web ghi nhớ lần truy cập cuối cùng của bạn. Nếu bạn đăng nhập,
thông tin này được liên kết với tài khoản cá nhân của bạn. Thông tin này cũng
được đưa vào các số liệu thống kê ẩn danh để giúp chúng tôi hiểu được khách
truy cập sử dụng Trang Web của chúng tôi như thế nào.
</p>
<p class="MsoNormal" style="text-align:justify;">
    4.2 Các ứng dụng di động của
chúng tôi có thể thu thập thông tin chính xác về địa chỉ của thiết bị di động của
bạn sử dụng các công nghệ như GPS, Wi-Fi,…. Chúng tôi thu thập, sử dụng, công bố
và/hoặc xử lý các thông tin này cho một hoặc nhiều mục đích bao gồm nhưng không
giới hạn các dịch vụ được cung cấp dựa trên vị trí mà bạn yêu cầu hoặc chuyển
các nội dung có liên quan đến bạn dựa trên vị trí của bạn hoặc cho phép bạn
chia sẻ vị trí của bạn cho các Người sử dụng khác như là một phần của các Dịch
vụ được cung cấp bởi các ứng dụng di động của chúng tôi. Đối với phần lớn các
thiết bị di động, bạn có thể rút lại sự cho phép để chúng tôi được thu thập các
thông tin này dựa trên vị trí của bạn thông qua các cài đặt trên thiết bị. Nếu
bạn có câu hỏi nào về cách thức vô hiệu hóa các dịch vụ vị trí trên thiết bị di
động của bạn, vui lòng liên hệ với các nhà cung cấp dịch vụ thiết bị di động hoặc
nhà sản xuất thiết bị của bạn.
</p>
<p class="MsoNormal" style="text-align:justify;">
    4.3 Như khi bạn xem các trang
trên trang web hoặc ứng dụng di động của chúng tôi, khi bạn xem các nội dung và
quảng cáo và truy cập vào phần mềm khác trên Nền tảng của chúng tôi hoặc thông
qua Dịch vụ, phần lớn các thông tin tương tự được gửi đến cho chúng tôi (bao gồm
nhưng không giới hạn, địa chỉ IP, hệ điều hành, v.v..); nhưng, thay vì các số
lượt xem trang, thiết bị của bạn gửi đến chúng tôi các thông tin về nội dung,
quảng cáo được xem và/hoặc phần mềm được cài đặt bởi các Dịch vụ và Nền tảng và
thời điểm.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>5. COOKIES</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    5.1 Đôi khi chúng tôi hoặc
các nhà cung cấp dịch vụ được cho phép và các đối tác quảng cáo của chúng tôi
có thể sử dụng "cookie" hoặc các tính năng khác để cho phép chúng tôi
hoặc các bên thứ ba thu thập hoặc chia sẻ thông tin liên quan đến việc sử dụng
của bạn đối với Dịch vụ hoặc Nền tảng của chúng tôi. Các tính năng này sẽ giúp
chúng tôi cải thiện Nền tảng và Các Dịch Vụ chúng tôi cung cấp, giúp chúng tôi
đề xuất các dịch vụ và tính năng mới, và/hoặc cho phép chúng tôi và các đối tác
quảng cáo của chúng tôi cung cấp các nội dung có liên quan hơn đến bạn.
"Cookie" là các mã danh định được lưu trữ trên máy tính hoặc thiết bị
di động của bạn lưu trữ các dữ liệu về máy tính hoặc thiết bị, bằng cách nào và
khi nào Các Dịch Vụ hoặc Nền tảng được sử dụng hay truy cập, bởi bao nhiêu người
và để theo dõi những hoạt động trong Các Nền tảng của chúng tôi. Chúng tôi có
thể liên kết thông tin cookie với dữ liệu cá nhân. Cookie cũng liên kết với
thông tin về những nội dung bạn đã chọn để mua sắm và các trang web mà bạn đã
xem. Thông tin này được sử dụng để theo dõi giỏ hàng, để chuyển tải nội dung
phù hợp với sở thích của bạn, để cho phép các đối tác cung cấp dịch vụ quảng
cáo cung cấp dịch vụ quảng cáo trên các trang thông qua mạng Internet và để thực
hiện phân tích dữ liệu và hoặc theo dõi việc sử dụng Dịch vụ
</p>
<p class="MsoNormal" style="text-align:justify;">
    5.2&nbsp;Bạn có thể từ chối sử
dụng cookie bằng cách chọn các thiết lập thích hợp trên trình duyệt hoặc thiết
bị của bạn. Tuy nhiên, vui lòng lưu ý rằng nếu bạn thực hiện thao tác này bạn
có thể không sử dụng được các chức năng đầy đủ của Nền tảng hoặc Các Dịch Vụ của
chúng tôi.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>6. CHÚNG TÔI SỬ DỤNG THÔNG TIN BẠN CUNG CẤP CHO CHÚNG TÔI NHƯ THẾ NÀO?</b> <b></b>
</p>
<p class="MsoNormal" style="text-align:justify;">
    6.1 Chúng tôi có thể thu thập,
sử dụng, tiết lộ và/hoặc xử lý dữ liệu cá nhân của bạn cho các mục đích sau
đây:
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
xem xét và/hoặc xử lý đơn đăng ký/giao dịch của bạn với chúng tôi hoặc giao dịch
hay thư từ của bạn với các bên thứ ba qua Các Dịch Vụ;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
quản lý, điều hành, cung cấp và/hoặc quản lý việc bạn sử dụng và/hoặc truy cập
Các Dịch Vụ và các Nền tảng của chúng tôi (bao gồm các sở thích của bạn), cũng
như quan hệ và tài khoản người dùng của bạn với chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để đáp ứng, xử lý, giải quyết hoặc hoàn tất
một giao dịch và/hoặc đáp ứng các yêu cầu của bạn đối với các sản phẩm và dịch
vụ nhất định và thông báo cho bạn về các vấn đề dịch vụ và các hoạt động tài
khoản bất thường;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để thực thi các Điều Khoản Dịch Vụ của
chúng tôi hoặc bất kỳ thỏa thuận giấy phép người dùng cuối nào áp dụng;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để bảo vệ sự an toàn cá nhân và các quyền,
tài sản hoặc sự an toàn của người khác;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
phục vụ mục đích nhận dạng, xác minh, đánh giá pháp lý hoặc để nhận biết khách
hàng;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
đánh giá và đưa ra các quyết định liên quan đến hồ sơ tín dụng và rủi ro của bạn
và tính đủ điều kiện cho các sản phẩm tín dụng;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
duy trì và quản lý bất kỳ bản cập nhật phần mềm nào và/hoặc các bản cập nhật
khác và sự hỗ trợ có thể được yêu cầu tùy lúc nhằm đảm bảo Các Dịch Vụ của
chúng tôi hoạt động suôn sẻ;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
giải quyết hoặc tạo điều kiện thuận lợi cho dịch vụ khách hàng, thực hiện các
chỉ thị của bạn, giải quyết hoặc trả lời bất kỳ thắc mắc nào được gửi bởi (hoặc
nhằm được gửi bởi) bạn hoặc thay mặt bạn;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để liên hệ với bạn hoặc liên lạc với bạn
qua điện thoại, tin nhắn văn bản và/hoặc tin nhắn fax, email và/hoặc thư hoặc
cách khác nhằm mục đích quản trị và/hoặc quản lý quan hệ của bạn với chúng tôi
hoặc việc bạn sử dụng Các Dịch Vụ của chúng tôi, chẳng hạn như ở việc truyền đạt
thông tin hành chính cho bạn liên quan đến Các Dịch Vụ của chúng tôi. Bạn xác
nhận và đồng ý rằng sự liên lạc như thế của chúng tôi có thể là theo cách gửi
thư qua đường bưu điện, tài liệu hoặc thông báo cho bạn, có thể gồm có tiết lộ
dữ liệu cá nhân nhất định về bạn để cung cấp các tài liệu đó cũng như trên bao
bì/phong bì;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để cho phép các người dùng khác tương tác
hoặc liên lạc với bạn hoặc thấy một số hoạt động của bạn trên Nền tảng, bao gồm
để thông báo cho bạn khi một người dùng khác đã gửi cho bạn một tin nhắn riêng
tư hoặc đăng nhận xét về bạn trên Nền tảng hoặc để liên kết với việc bạn sử dụng
các tính năng xã hội trên Nền tảng;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
tiến hành các hoạt động nghiên cứu, phân tích và phát triển (bao gồm nhưng
không giới hạn phân tích dữ liệu, khảo sát, phát triển và/hoặc lập đặc tính sản
phẩm và dịch vụ), để phân tích cách thức bạn sử dụng Các Dịch Vụ của chúng tôi,
để giới thiệu sản phẩm và/hoặc dịch vụ theo sự quan tâm của bạn, để cải thiện
Các Dịch Vụ hoặc sản phẩm của chúng tôi và/hoặc để cải thiện trải nghiệm khách
hàng của bạn;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
cho phép kiểm tra và khảo sát khác để, ngoài những hoạt động khác, xác thực quy
mô và thành phần của đối tượng mục tiêu của chúng tôi, và hiểu được trải nghiệm
của họ với Các Dịch Vụ của Shopee;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
vì mục đích tiếp thị và quảng cáo, trong
trường hợp này, để gửi cho bạn qua các phương tiện và phương thức liên lạc khác
nhau, thông tin và tài liệu tiếp thị và quảng bá liên quan đến các sản phẩm
và/hoặc dịch vụ (bao gồm, nhưng không giới hạn các sản phẩm và/hoặc dịch vụ của
các bên thứ ba mà Shopee có thể hợp tác hoặc liên kết) mà Shopee (và/hoặc các
bên liên kết hoặc công ty có liên quan của nó) có thể bán, tiếp thị hoặc quảng
bá, cho dù các sản phẩm hoặc dịch vụ đó tồn tại vào lúc này hoặc được tạo ra
trong tương lai. Bạn có thể hủy đăng ký nhận các thông tin tiếp thị tại bất cứ
thời điểm nào bằng cách sử dụng chức năng hủy đăng ký trong các tài liệu tiếp
thị điện tử. Chúng tôi có thể sử dụng các thông tin liên hệ của bạn để gửi các
bản tin và/hoặc tài liệu truyền thông từ chúng tôi hoặc từ các công ty có liên
quan của chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để đáp ứng các thủ tục pháp lý hoặc để
tuân thủ hoặc theo quy định của pháp luật hiện hành, và các yêu cầu của cơ quan
nhà nước có thẩm quyền hoặc yêu cầu của bất cứ cơ quan tài phán nào hoặc khi
chúng tôi thực sự tin tưởng rằng việc tiết lộ thông tin là cần thiết, bao gồm
nhưng không giới hạn, đáp ứng các yêu cầu đáp ứng các yêu cầu công bố thông tin
theo yêu cầu của bất kỳ luật ràng buộc nào đối với Shopee hoặc các công ty hoặc
chi nhánh liên quan của Shopee (bao gồm, nếu có, việc hiển thị tên, chi tiết
liên hệ và chi tiết công ty của bạn);
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để lập số liệu thống kê và nghiên cứu đáp
ứng yêu cầu báo cáo và/hoặc duy trì sổ sách nội bộ hoặc theo quy định;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
thực hiện quy trình tìm hiểu và xác minh hoặc các hoạt động sàng lọc khác (bao
gồm nhưng không giới hạn kiểm tra lý lịch) tuân thủ các nghĩa vụ theo quy định
pháp luật hoặc cơ quan nhà nước có thẩm quyền hoặc các thủ tục kiểm soát rủi ro
của chúng tôi, có thể được pháp luật yêu cầu hoặc có thể đã được chúng tôi áp dụng;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
kiểm tra Các Dịch Vụ của chúng tôi hoặc hoạt động của Shopee
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để ngăn chặn hoặc điều tra bất kỳ hoạt động
gian lận thực tế hoặc bị nghi ngờ nào đối với Điều khoản dịch vụ của chúng tôi,
gian lận, các hành vi phi pháp, thiếu sót hay hành vi sai trái nào, cho dù có
liên quan đến việc bạn sử dụng Các Dịch Vụ của chúng tôi hay không hay bất kỳ vấn
đề nào phát sinh từ quan hệ của bạn với chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Để
đáp ứng bất cứ các mối đe dọa hoặc yêu cầu thực tế nào được khẳng định chống lại
Shopee hoặc các yêu cầu khác liên quan đến các Nội dung vi phạm quy định của
các bên thứ ba;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để lưu trữ, lập máy chủ, sao lưu (cho dù
là vì mục đích khôi phục sau thảm họa hoặc mục đích khác) đối với dữ liệu cá
nhân của bạn;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
để
xử lý và/hoặc tạo thuận tiện cho một giao dịch tài sản kinh doanh hoặc một giao
dịch tài sản kinh doanh tiềm năng, trường hợp giao dịch đó liên quan đến Shopee
như một bên tham gia hoặc chỉ liên quan đến một công ty hay công ty liên kết của
Shopee như một bên tham gia hoặc liên quan đến Shopee và/hoặc bất kỳ một hay
nhiều công ty hoặc công ty liên kết của Shopee như (các) bên tham gia, và có thể
có các tổ chức bên thứ ba khác tham gia giao dịch như thế. "Giao dịch tài
sản kinh doanh" là các giao dịch mua, bán, cho thuê, sáp nhập, hợp nhất hoặc
bất kỳ hoạt động mua lại, thanh lý hay tài trợ nào của một tổ chức hoặc một phần
của một tổ chức hoặc của bất kỳ hoạt động kinh doanh hay tài sản nào của một tổ
chức; và/hoặc
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
bất
kỳ mục đích nào mà chúng tôi thông báo cho bạn tại thời điểm xin sự cho phép của
bạn.
</p>
<p class="MsoNormal" style="text-align:justify;background:white;">
    (gọi chung là “<b>Các
Mục Đích</b>”)
</p>
<p class="MsoNormal" style="text-align:justify;">
    6.2 Bạn xác nhận, cho phép và
đồng ý rằng chúng tôi có thể truy cập, lưu trữ và tiết lộ thông tin Tài khoản
và Nội dung của bạn nếu luật pháp yêu cầu làm như vậy hoặc theo lệnh của tòa án
hoặc của bất kỳ cơ quan chính phủ hoặc cơ quan quản lý nào có thẩm quyền đối với
Shopee hoặc các chi nhánh của Shopee hoặc với lý do chính đáng Shopee tin rằng
việc truy cập, lưu giữ hoặc tiết lộ đó là cần thiết và chính đáng để: (a) tuân
thủ quy trình pháp lý; (b) tuân thủ yêu cầu từ bất kỳ cơ quan chính phủ hoặc cơ
quan quản lý nào có thẩm quyền đối với Shopee hoặc các chi nhánh có liên quan của
Shopee; (c) thực thi Điều khoản Dịch vụ của chúng tôi hoặc Chính sách Bảo mật
này; (d) phản hồi bất kỳ khiếu nại nào du cho là nguy cơ hoặc đang xảy ra trên
thực tế để chống lại Shopee hoặc các chi nhánh có liên quan hoặc khiếu nại khác
rằng bất kỳ Nội dung nào vi phạm quyền của bên thứ ba; (e) đáp ứng các yêu cầu
của bạn về dịch vụ khách hàng; hoặc (f) bảo vệ quyền, tài sản hoặc sự an toàn
cá nhân của Shopee hoặc các chi nhánh có liên quan, người dùng và / hoặc công
chúng.
</p>
<p class="MsoNormal" style="text-align:justify;">
    6.3 Vì Các Mục Đích mà chúng
tôi sẽ/có thể thu thập, sử dụng, tiết lộ hoặc xử lý dữ liệu cá nhân của bạn phụ
thuộc vào hoàn cảnh hiện có, mục đích đó có thể không xuất hiện bên trên. Tuy
nhiên, chúng tôi sẽ thông báo cho bạn biết mục đích khác đó tại thời điểm xin sự
cho phép của bạn, trừ phi việc xử lý dữ liệu áp dụng mà không có sự đồng ý của
bạn là được phép theo các quy định của pháp luật về bảo vệ bí mật thông tin cá
nhân hoặc theo quy định pháp luật.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>7. SHOPEE BẢO VỆ VÀ LƯU TRỮ THÔNG TIN KHÁCH HÀNG BẰNG CÁCH NÀO</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    7.1 Chúng tôi thực hiện các
biện pháp bảo mật khác nhau và luôn nỗ lực để đảm bảo sự an toàn của dữ liệu cá
nhân của bạn trên các hệ thống của chúng tôi. Dữ liệu cá nhân của người dùng được
lưu trữ đằng sau các mạng bảo mật và chỉ có thể được truy cập bởi một số nhân
viên có quyền truy cập đặc biệt đến các hệ thống của chúng tôi. Tuy nhiên, chắc
chắn không thể có sự đảm bảo an ninh tuyệt đối.
</p>
<p class="MsoNormal" style="text-align:justify;">
    7.2 Chúng tôi sẽ duy trì dữ
liệu cá nhân tuân theo các quy định của pháp luật về bảo vệ bí mật thông tin cá
nhân và/hoặc các điều luật hiện hành khác. Có nghĩa là, chúng tôi sẽ hủy hoặc
xóa thông tin nhận dạng ra khỏi dữ liệu cá nhân của bạn khi chúng tôi có lý do
hợp lý để xác định rằng (i) việc lưu giữ dữ liệu cá nhân đó không còn phục vụ mục
đích thu thập dữ liệu cá nhân đó nữa; (ii) việc lưu giữ không còn cần thiết cho
bất kỳ mục đích hợp pháp hay mục đích kinh doanh nào và (iii) không còn các lợi
ích hợp pháp nào khác để tiếp tục lưu giữ các dữ liệu cá nhân này. Nếu bạn
ngưng sử dụng Nền tảng của chúng tôi, hoặc quyền của bạn được sử dụng Nền tảng
và/hoặc Các Dịch Vụ bị chấm dứt hoặc hủy bỏ, chúng tôi có thể tiếp tục lưu, sử
dụng và/hoặc tiết lộ dữ liệu cá nhân của bạn tuân theo Chính sách bảo mật này
và các nghĩa vụ của chúng tôi theo các quy định của pháp luật về bảo vệ bí mật
thông tin cá nhân. Tùy thuộc vào quy định của pháp luật, chúng tôi có thể tiêu
hủy dữ liệu cá nhân của bạn một cách an toàn mà không cần thông báo trước cho bạn.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>8. SHOPEE CÓ TIẾT LỘ THÔNG TIN THU THẬP TỪ NGƯỜI TRUY CẬP HAY KHÔNG?</b>
</p>
<p class="MsoNormal" style="text-align:justify;">
    8.1 Trong quá trình thực hiện
hoạt động kinh doanh, chúng tôi sẽ/có thể cần phải sử dụng, xử lý, tiết lộ
và/hoặc chuyển giao dữ liệu cá nhân của bạn cho các nhà cung cấp dịch vụ bên thứ
ba, đại lý và/hoặc các công ty liên kết hoặc công ty liên quan của chúng tôi,
và/hoặc các bên thứ ba khác có thể ở Việt Nam hoặc bên ngoài Việt Nam, vì một
hay nhiều Mục Đích nói trên, và việc tiết lộ này sẽ được thực hiện theo đúng
trình tự và quy định của pháp luật hiện hành. Các nhà cung cấp dịch vụ bên thứ
ba, đại lý và/hoặc các công ty liên kết hoặc công ty liên quan và/hoặc các bên
thứ ba khác như thế sẽ xử lý dữ liệu cá nhân của bạn hoặc thay mặt chúng tôi hoặc
khác, vì một hoặc nhiều Mục Đích nói trên. Chúng tôi cố gắng đảm bảo rằng các
bên thứ ba và các chi nhánh của chúng tôi giữ an toàn cho dữ liệu cá nhân của bạn
khỏi bị truy cập, thu thập, sử dụng, tiết lộ, xử lý trái phép hoặc các rủi ro
tương tự và chỉ lưu giữ dữ liệu cá nhân của bạn miễn là dữ liệu cá nhân của bạn
vẫn còn cần thiết cho những việc nêu trên Mục đích Các bên thứ ba như thế bao gồm:
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
công ty con, công ty liên kết và công ty
liên quan của chúng tôi;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
người
bán hoặc người mua mà bạn đã thực hiện giao dịch hoặc tương tác trên Nền tảng
hoặc liên quan đến việc bạn sử dụng Dịch vụ cho các Mục đích đã nêu ở trên;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
những
người sử dụng khác của Nền tảng của chúng tôi cho một hoặc nhiều các Mục đích
đã nêu ở trên
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;background:white;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
nhà thầu, đại lý, nhà cung cấp dịch vụ và
các bên thứ ba khác mà chúng tôi thuê để hỗ trợ hoặc bổ sung cho hoạt động kinh
doanh của chúng tôi. Những bên này bao gồm, nhưng không giới hạn ở những bên
cung cấp các dịch vụ quản trị hoặc các dịch vụ khác cho chúng tôi chẳng hạn như
công ty bưu chính, công ty viễn thông, đối tác quảng cáo và truyền thông, công
ty công nghệ thông tin, các tổ chức hoạt động thương mại điện tử, và trung tâm
dữ liệu
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
các
cơ quan chính phủ hoặc cơ quan quản lý có thẩm quyền đối với Shopee hoặc nếu được
cho phép theo Mục 6.2;
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
người
mua hoặc người thừa nhiệm khác trong trường hợp sáp nhập, thoái vốn, tái cơ cấu,
tái tổ chức, giải thể hoặc bán hay chuyển nhượng một phần hoặc tất cả tài sản của
Shopee, cho dù là vấn đề đang diễn ra hay đang trong thủ tục phá sản, thanh lý
hoặc thủ tục tương tự, trong đó dữ liệu cá nhân Shopee lưu giữ về người dùng của
chúng tôi nằm trong các tài sản được chuyển nhượng; hoặc cho một bên đối tác
trong một giao dịch tài sản kinh doanh mà Shopee hoặc bất kỳ công ty liên kết
hay công ty liên quan nào của nó có tham gia giao dịch; và
</p>
<p class="MsoNormal" style="margin-left:.5in;text-align:justify;text-indent:-.25in;">
    ●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
bên
thứ ba mà chúng tôi tiết lộ thông tin vì một trong các Mục Đích và các bên thứ
ba đó ngược lại họ sẽ thu thập và xử lý dữ liệu cá nhân của bạn vì một hoặc nhiều
Mục Đích
</p>
<p class="MsoNormal" style="text-align:justify;">
    8.2 Chúng tôi có thể chia sẻ
thông tin bao gồm thông tin thống kê và nhân khẩu học về Người Dùng cũng như
thông tin về việc sử dụng Các Dịch Vụ của người dùng với đối tác cung cấp dịch
vụ quảng cáo và lập trình. Chúng tôi cũng sẽ chia sẻ thông tin thống kê và
thông tin nhân khẩu học về người dùng của chúng tôi và việc họ sử dụng Các Dịch
Vụ với các đối tác quảng cáo và bên thứ ba cung cấp dịch vụ quảng cáo, tái quảng
cáo, và/hoặc lập trình.
</p>
<p class="MsoNormal" style="text-align:justify;">
    8.3. Để tránh nghi ngờ, trong trường hợp các quy định
của pháp luật về bảo vệ bí mật thông tin cá nhân hoặc các điều luật hiện hành
khác cho phép một tổ chức chẳng hạn như chúng tôi thu thập, sử dụng hoặc tiết lộ
dữ liệu cá nhân của bạn mà không cần sự đồng ý của bạn, sự cho phép như thế của
pháp luật sẽ tiếp tục áp dụng. Phù hợp với các quy định nêu trên và theo các
quy định của pháp luật hiện hành, chúng tôi có thể sử dụng dữ liệu cá nhân của
bạn cho các cơ sở pháp lý đã được công nhận, bao gồm tuân thủ các nghĩa vụ pháp
lý của chúng tôi, để thực hiện hợp đồng của chúng tôi với bạn, để đạt được lợi
ích hợp pháp và lý do của chúng tôi để sử dụng dữ liệu đó cao hơn bất kỳ phương
hại nào đến quyền bảo vệ dữ liệu của bạn hoặc khi cần thiết liên quan với một
yêu cầu pháp lý.
</p>
<p class="MsoNormal" style="text-align:justify;">
    8.4 Các bên thứ ba có thể chặn
hoặc truy cập trái phép dữ liệu cá nhân được gửi đến hoặc có trên trang web,
các công nghệ có thể hoạt động không chính xác hoặc không hoạt động như dự kiến,
hoặc có người có thể truy cập, lạm dụng hoặc sử dụng sai trái thông tin mà
không phải lỗi của chúng tôi. Tuy nhiên chúng tôi sẽ triển khai các biện pháp bảo
mật hợp lý để bảo vệ dữ liệu cá nhân của bạn theo quy định của các quy định của
pháp luật về bảo vệ bí mật thông tin cá nhân; tuy nhiên không thể đảm bảo sự bảo
mật tuyệt đối chẳng hạn như trường hợp tiết lộ trái phép phát sinh từ hoạt động
tin tặc vì ý đồ xấu hoặc hành vi tấn cung tinh vi bưởi kẻ xấu mà không phải lỗi
của chúng tôi.
</p>
<p class="MsoNormal" style="text-align:justify;">
    8.5&nbsp; Shopee cho phép bạn chia sẻ video từ YouTube
trong tính năng Shopee Livestream (“Nội Dung YouTube”). Về mặt kỹ thuật, Shopee
sử dụng Tính Năng YouTube API của chính YouTube. Thông qua việc chia sẻ Nội
Dung YouTube, bạn theo đây đồng ý chịu sự điều chỉnh của Chính Sách Bảo Mật của
YouTube (<a href="http://www.google.com/policies/privacy">http://www.google.com/policies/privacy</a>).
</p>
<p class="MsoNormal" style="text-align:justify;">
    8.6 Như được quy định trong
Điều khoản dịch vụ của Shopee, Người dùng (bao gồm bất cứ người lao động, đại
lý, người đại diện hoặc bất cứ bên nào khác hành động cho Người dùng đó hoặc
thay mặt người dùng đó) sở hữu dữ liệu cá nhân của Người dùng khác thông qua việc
sử dụng Dịch vụ (“Bên nhận dữ liệu”) tại đây đồng ý rằng, họ sẽ (i) tuân thủ với
các quy định của pháp luật về bảo vệ dữ liệu cá nhân liên quan đến các dữ liệu
này, bao gồm bất cứ hoạt động thu thập, xử lý, lưu giữ và chuyển giao các dữ liệu
này; (ii) cho phép Shopee hoặc Người dùng mà dữ liệu cá nhân của Bên nhận được
thu thập (“Bên tiết lộ”) được xóa dữ liệu của anh hoặc cô ấy đã bị thu thập khỏi
cơ sở dữ liệu của Bên nhận dữ liệu; và (iii) cho phép Shopee hoặc Bên tiết lộ dữ
liệu được rà soát những nội dung đã bị thu thập liên quan đến họ bởi Bên nhận dữ
liệu, trong mỗi trường hợp (ii) và (iii) nêu trên, tuân thủ với và khi được yêu
cầu bởi các quy định của pháp luật có liên quan. &nbsp;
</p>
<p class="MsoNormal" style="text-align:justify;">
    8.7 Bất kể quy định nào được
quy định tại đây, Người bán (bao gồm bất cứ người lao động, đại lý, người đại
diện hoặc bất cứ bên nào khác hành động cho Người dùng đó hoặc thay mặt người
dùng đó) phải tuân thủ các quy định của pháp luật có liên quan và, liên quan đến
bất cứ dữ liệu cá nhân nào của Người mua nhận được từ Shopee, (i) không được
cho phép sử dụng các dữ liệu cá nhân của Người mua này trừ khi có lý do chính
đáng cần thiết để phản hồi các yêu cầu của Người mua và để thực hiện việc trả lời,
xử lý, giải quyết hoặc hoàn thành các giao dịch mà không có sự cho phép trước bằng
văn bản của Người mua và Shopee; (ii) phải ngưng việc liên lạc với Người mua sử
dụng các thông tin này bên ngoài nền tảng Shopee; (iii) không được cho phép tiết
lộ các dữ liệu cá nhân của Người mua này đến bất cứ bên thứ ba không được phép
nào mà không có sự cho phép trước bằng văn bản của Người mua và Shopee; (iv) phải
thực hiện các biện pháp an ninh thích hợp để bảo vệ từng dữ liệu cá nhân người
dùng của Shopee mà họ đang sở hữu, chỉ lưu giữ dữ liệu này chừng nào vẫn còn cần
thiết cho các mục đích ở trên và phù hợp với quy định của pháp luật bảo vệ dữ
liệu cá nhân, và xóa hoặc hoàn trả các dữ liệu này cho Shopee theo yêu cầu từ
Shopee hoặc trong thời gian sớm nhất có thể khi hoàn thành giao dịch; và (v)
thông báo cho Bộ phận bảo vệ Dữ liệu Cá nhân của Shopee tại <a href="mailto:dpo.vn@shopee.com">dpo.vn@shopee.com</a> trong trường hợp có khả năng vi phạm dữ liệu hoặc
mất dữ liệu khác của người dùng này.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>9. THÔNG TIN VỀ TRẺ EM</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    9.1 Các Dịch Vụ này không
dành cho trẻ em dưới 13 tuổi. Chúng tôi không cố tình thu thập hay lưu giữ bất
kỳ dữ liệu cá nhân hay thông tin không nhận dạng cá nhân nào của bất kỳ ai dưới
13 tuổi, bất kỳ phần nào của Nền tảng của chúng tôi hoặc Các Dịch Vụ khác cũng
không dành cho trẻ em dưới 13 tuổi. Bố/mẹ hoặc người giám hộ của trẻ em dưới 13
tuổi vui lòng giám sát và đảm bảo thông tin cá nhân của trẻ dưới 13 tuổi mà
mình đang giám hộ không đăng tải thông tin cá nhân cho Shopee. Trong trường hợp
thông tin cá nhân của của trẻ em dưới 13 tuổi do quý phụ huynh giám hộ được cung
cấp cho Shopee, Bố/mẹ hoặc người giám hộ theo đồng ý với việc xử lý thông tin của
trẻ em dưới 13 tuổi có liên quan, và đồng ý chịu sự điều chỉnh của Chính Sách
này thay mặt cho người được giám hộ. Chúng tôi sẽ khóa bất kỳ tài khoản nào chỉ
được sử dụng bởi đối tượng trẻ em như vậy và sẽ gỡ và/hoặc xóa bất kỳ dữ liệu
cá nhân nào mà chúng tôi cho là đã được gửi bởi bất kỳ trẻ em nào dưới 13 tuổi.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>10. THÔNG TIN THU THẬP BỞI CÁC BÊN THỨ BA</b>
</p>
<p class="MsoNormal" style="text-align:justify;">
    10.1 Nền tảng của chúng tôi sử
dụng Google Analytics, một dịch vụ phân tích web được cung cấp bởi Google, Inc.
("Google"). Google Analytics sử dụng cookie, là các tập tin văn bản
trên thiết bị của bạn, để giúp Nền tảng phân tích cách thức người dùng sử dụng
Nền tảng của chúng tôi. Thông tin được tạo bởi cookie về việc bạn sử dụng Nền tảng
(bao gồm địa chỉ IP của bạn) sẽ được gửi đến và lưu bởi Google trên các máy chủ
tại Hoa Kỳ. Google sẽ sử dụng thông tin này để đánh giá việc bạn sử dụng Nền tảng
của chúng tôi, soạn báo cáo về hoạt động trang web dành cho các nhà điều hành trang
web và cung cấp các dịch vụ khác liên quan đến hoạt động trang web và việc sử dụng
Internet. Google cũng có thể gửi thông tin này cho các bên thứ ba trong trường
hợp luật pháp có quy định như thế, hoặc trường hợp các bên thứ ba đó xử lý
thông tin thay mặt Google. Google sẽ không liên kết địa chỉ IP của bạn với bất
kỳ dữ liệu nào khác mà Google nắm giữ
</p>
<p class="MsoNormal" style="text-align:justify;">
    10.2 Chúng tôi, và các bên thứ
ba, có thể trong từng thời điểm cung cấp các bản tải về ứng dụng phần mềm cho bạn
sử dụng bởi Nền tảng hoặc thông qua Các Dịch Vụ. Những ứng dụng này có thể truy
cập riêng, và cho phép một bên thứ ba xem, thông tin nhận dạng của bạn, chẳng hạn
như tên, ID người dùng của bạn, Địa chỉ IP của thiết bị của bạn hoặc thông tin
khác chẳng hạn như game bạn đang chơi trong bất kỳ phiên truy cập cụ thể nào,
và bất kỳ cookie nào trước đây bạn có thể đã cài đặt hoặc đã được cài đặt cho bạn
bởi một ứng dụng phần mềm hoặc trang web của bên thứ ba. Ngoài ra, các ứng dụng
này có thể yêu cầu bạn cung cấp thêm thông tin trực tiếp cho các bên thứ ba.
Các sản phẩm hoặc dịch vụ của bên thứ ba được cung cấp thông qua các ứng dụng
này không thuộc sở hữu hay quyền kiểm soát của Shopee. Bạn nên đọc các điều khoản
và các chính sách khác được công bố bởi các bên thứ ba đó trên trang web của họ
hoặc nơi khác.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>11. LOẠI TRỪ TRÁCH NHIỆM VỀ NGHĨA VỤ BẢO MẬT VÀ CÁC TRANG WEB BÊN THỨ BA</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    11.1 CHÚNG TÔI KHÔNG ĐẢM BẢO
TÍNH BẢO MẬT ĐỐI VỚI DỮ LIỆU CÁ NHÂN VÀ/HOẶC THÔNG TIN KHÁC MÀ BẠN CUNG CẤP
TRÊN CÁC TRANG WEB CỦA BÊN THỨ BA. Chúng tôi thực hiện các biện pháp bảo mật
khác nhau để duy trì sự an toàn của dữ liệu cá nhân của bạn mà chúng tôi lưu giữ
hoặc kiểm soát. Dữ liệu cá nhân của bạn được lưu đằng sau các mạng bảo mật và
chỉ có thể được truy cập bởi một số cá nhân giới hạn có quyền truy cập đặc biệt
đến các hệ thống của chúng tôi, và đã được yêu cầu bảo mật dữ liệu cá nhân đó.
Khi bạn đặt hàng hoặc truy cập dữ liệu cá nhân của bạn, chúng tôi đề nghị sử dụng
một máy chủ bảo mật. Tất cả dữ liệu cá nhân hoặc thông tin cá nhân bạn cung cấp
sẽ được mã hóa vào các cơ sở dữ liệu của chúng tôi để chỉ được truy cập như mô
tả bên trên.
</p>
<p class="MsoNormal" style="text-align:justify;">
    11.2 Nhằm cung cấp cho bạn
giá trị gia tăng, chúng tôi có thể chọn các trang web hoặc ứng dụng hoặc dịch vụ
của bên thứ ba khác nhau để liên kết, và đóng khung bên trong Nền tảng. Chúng
tôi cũng có thể tham gia các quan hệ cùng tiếp thị và các quan hệ khác để cung
cấp dịch vụ thương mại điện tử và các dịch vụ và tính năng khác cho khách truy
cập. Những trang được liên kết này có các chính sách về quyền riêng tư cũng như
các biện pháp bảo mật riêng và độc lập. Ngay cả khi bên thứ ba đó có liên kết với
chúng tôi, chúng tôi cũng không kiểm soát các trang web/ứng dụng/dịch vụ được
liên kết này, mỗi trang đó có các phương pháp bảo vệ quyền riêng tư và thu thập
dữ liệu riêng biệt, độc lập với chúng tôi. Dữ liệu thu thập bởi các đối tác
cùng tiếp thị của chúng tôi hoặc các trang web/ứng dụng/dịch vụ của bên thứ ba
(ngay cả khi được cung cấp trên hoặc thông qua Nền tảng của chúng tôi) có thể
không được chúng tôi tiếp cận và/hoặc lưu giữ.
</p>
<p class="MsoNormal" style="text-align:justify;">
    11.3 Do đó chúng tôi không chịu
trách nhiệm hay trách nhiệm pháp lý đối với nội dung, các biện pháp bảo mật (hoặc
sự thiếu biện pháp bảo mật) và các hoạt động của các trang web/ứng dụng/dịch vụ
được liên kết này. Những trang web/ứng dụng/dịch vụ được liên kết này chỉ vì sự
thuận tiện cho bạn và do đó bạn tự chịu trách nhiệm khi truy cập chúng. Tuy
nhiên, chúng tôi tìm cách bảo vệ tính toàn vẹn của Nền tảng của chúng tôi và
các liên kết được đặt trên từng trang web đó và do đó chúng tôi hoan nghênh ý
kiến phản hồi về các trang web được liên kết này (bao gồm nếu một trang web cụ
thể không hoạt động).
</p>
<p class="MsoNormal" style="text-align:justify;">
    <br>
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>12. SHOPEE SẼ CHUYỂN THÔNG TIN CỦA BẠN RA NƯỚC NGOÀI?</b>
</p>
<p class="MsoNormal" style="text-align:justify;">
    12.1 Thông tin và/hoặc dữ liệu
cá nhân của bạn có thể được chuyển ra nước ngoài, lưu trữ hoặc xử lý bên ngoài
quốc gia của bạn cho một hoặc nhiều Mục đích. Trong phần lớn các trường hợp, dữ
liệu cá nhân của bạn sẽ được xử lý bởi chúng tôi tại Việt Nam, nơi đặt các máy
chủ của chúng tôi. Shopee sẽ chỉ chuyển dữ liệu cá nhân của bạn ra nước ngoài
khi phù hợp với các quy định của pháp luật về bảo vệ dữ liệu cá nhân.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>13. BẠN CÓ THỂ RÚT TÊN, XÓA TÊN, YÊU CẦU TRUY CẬP HOẶC ĐIỀU CHỈNH THÔNG
TIN BẠN ĐÃ CUNG CẤP CHO CHÚNG TÔI BẰNG CÁCH NÀO?</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    13.1<i>&nbsp;<u>Rút Lại Sự Đồng Ý</u></i><u></u>
</p>
<p class="MsoNormal" style="text-align:justify;">
    13.1.1 Bạn có thể rút lại sự
đồng ý cho phép thu thập, sử dụng và/hoặc tiết lộ và/hoặc yêu cầu xóa dữ liệu
cá nhân của bạn mà chúng tôi đang lưu giữ hoặc kiểm soát bằng cách gửi email
cho Chuyên viên Bảo Vệ Dữ Liệu Cá Nhân của chúng tôi tại địa chỉ email
dpo.vn@Shopee.com hoặc qua <a href="https://help.shopee.vn/vn/s/contactusform">ĐÂY</a>, và chúng tôi sẽ xử lý các yêu cầu này theo
Chính Sách Bảo Mật cũng như quy định pháp luật có liên quan. Tuy nhiên, việc bạn
rút lại sự cho phép của bạn có thể đồng nghĩa với việc chúng tôi sẽ không thể
tiếp tục cung cấp các Dịch vụ đến bạn và chúng tôi có thể cần phải chấm dứt mối
quan hệ hiện tại giữa bạn và/hoặc hợp đồng mà bạn có với Chúng tôi.
</p>
<p class="MsoNormal" style="text-align:justify;">
    13.1.2 Khi bạn chia sẻ nội
dung trên YouTube, bên cạnh việc rút lại sự cho phép của bạn bằng việc gửi
email cho chúng tôi phù hợp với quy định tại Điều 13.1.1, bạn cũng có thể rút lại
quyền truy cập của Shopee vào dữ liệu cá nhân của bạn thông qua trang cài đặt an
ninh của Google tại địa chỉ <a href="https://security.google.com/settings/security/permissions">https://security.google.com/settings/security/permissions</a>.
</p>
<p class="MsoNormal" style="text-align:justify;">
    13.2&nbsp;<i>Yêu Cầu Truy Cập đến hoặc Sửa Dữ Liệu Cá
Nhân</i>
</p>
<p class="MsoNormal" style="text-align:justify;">
    13.2.1 Nếu bạn đã đăng ký một
tài khoản với chúng tôi, cá nhân bạn có thể truy cập và/hoặc sửa dữ liệu cá
nhân của bạn mà chúng tôi đang lưu giữ hoặc kiểm soát thông qua trang Thiết Lập
Tài Khoản hoặc nhãn trên Nền tảng. Nếu bạn chưa đăng ký tài khoản với chúng
tôi, cá nhân bạn có thể yêu cầu truy cập và/hoặc sửa dữ liệu cá nhân của bạn mà
chúng tôi đang lưu giữ hoặc kiểm soát bằng cách gửi yêu cầu bằng văn bản cho
chúng tôi. Chúng tôi sẽ cần có đủ thông tin từ bạn để xác định danh tính của bạn
cũng như bản chất yêu cầu của bạn để có thể giải quyết yêu cầu của bạn. Do đó,
vui lòng gửi yêu cầu bằng văn bản của bạn bằng cách gửi email cho nhân viên Quản
lý dữ liệu của chúng tôi tại <a href="https://help.shopee.vn/vn/s/contactusform">ĐÂY</a>.
</p>
<p class="MsoNormal" style="text-align:justify;">
    13.2.2 Chúng tôi có thể tính
một khoản phí hợp lý cho bạn để giải quyết và xử lý yêu cầu truy cập dữ liệu cá
nhân của bạn. Nếu chúng tôi có tính phí, chúng tôi sẽ cung cấp cho bạn ước tính
lệ phí bằng văn bản. Vui lòng lưu ý rằng chúng tôi không buộc phải đáp ứng hay
giải quyết yêu cầu truy cập của bạn trừ phi bạn đã đồng ý đóng phí.
</p>
<p class="MsoNormal" style="text-align:justify;">
    13.2.3 Chúng tôi bảo lưu quyền
từ chối sửa dữ liệu cá nhân của bạn theo các quy định của pháp luật về bảo vệ
bí mật thông tin cá nhân, trường hợp các điều luật đó yêu cầu và/hoặc cho phép
một tổ chức từ chối sửa dữ liệu cá nhân trong các trường hợp như thế.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <b>14. THẮC MẮC, QUAN NGẠI HOẶC KHIẾU NẠI? LIÊN HỆ
VỚI CHÚNG TÔI</b> 
</p>
<p class="MsoNormal" style="text-align:justify;">
    14.1 Nếu bạn có bất kỳ thắc mắc
hoặc khiếu nại nào về các phương pháp bảo vệ quyền riêng tư của chúng tôi vui
lòng liên hệ với chúng tôi tại <a href="https://help.shopee.vn/vn/s/contactusform">ĐÂY</a>.
</p>
<p class="MsoNormal" style="text-align:justify;">
    <br>
</p>
<p class="MsoNormal" style="background:white;">
    <b>Bản Cập Nhật ngày 01/10/2021.</b><b></b>
</p>
<p class="MsoNormal" style="background:white;">
    <i>Phiên bản này có
hiệu lực vào ngày 08/10/2021.&nbsp;Để tham khảo phiên bản trước của
Chính sách Bảo mật, vui lòng bấm vào&nbsp;<a href="https://shopee.vn/docs/6980" target="_blank">ĐÂY</a>.</i>
</p>

<p></p>
</div>
@endsection
