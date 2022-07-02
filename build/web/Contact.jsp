

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HungPage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="./css/Header.css"/>
        <link rel="stylesheet" href="./css/Footer.css"/>
        <link rel="stylesheet" href="./css/Base.css"/>
        <link rel="stylesheet" href="./css/Contact.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="contact">
                <div class="contact_box">
                    <div class="contact_content">
                        <div class="contact_add-mail-phone">
                            <p class="contact_header">Liên hệ với chúng tôi</p>
                            <div class="contact_item contact_address">
                                <i class="fa-solid fa-location-dot"></i>
                                <p>Phường Minh Khai, Quận Bắc Tử Liêm, Hà Nội</p>
                            </div>
                            <div class="contact_item contact_phone">
                                <i class="fa-solid fa-phone"></i>
                                <a href="tel:0123456789">0123.456.789</a>
                            </div>
                            <div class="contact_item contact_mail">
                                <i class="fa-solid fa-envelope"></i>
                                <a href="mailto:hung@gmail.com">hung@gmail.com</a>
                            </div>
                        </div>
                        <div class="contact_help">
                            <p class="contact_help-header">
                                Bạn cần hỗ trợ? Hãy gửi thông tin cho chúng tôi
                            </p>
                            <p class="contact_help-text">
                                Chúng tôi rất sẵn lòng trả lời bất kỳ câu hỏi, thắc mắc nào của bạn.
                            </p>
                            <form>
                                <div class="form_item">
                                    <label>Họ và tên*</label>
                                    <input type="text" name="name" placeholder="Nhập họ và tên" />
                                </div>
                                <div class="form_item">
                                    <label>Email*</label>
                                    <input type="email" name="email" placeholder="Nhập địa chỉ email" />
                                </div>
                                <div class="form_item">
                                    <label>Điện thoại*</label>
                                    <input type="text" name="phone" placeholder="Nhập số điện thoại" />
                                </div>
                                <div class="form_item">
                                    <label>Nội dung*</label>
                                    <textarea rows="5" cols="100" name="context" placeholder="Nội dung liên hệ"></textarea>
                                </div>
                                <button type="submit">Gửi tin nhắn</button>
                            </form>
                        </div>
                    </div>
                    <div class="contact_map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29786.602140083553!2d105.7296703819568!3d21.05966720216896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454e33407ecc7%3A0x6b9d843be64f7f06!2zTWluaCBLaGFpLCBC4bqvYyBU4burIExpw6ptLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1656751028093!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
