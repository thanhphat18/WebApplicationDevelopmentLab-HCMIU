<%-- 
    Document   : form
    Created on : Apr 13, 2024, 1:43:53 PM
    Author     : thanhphatchau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="form.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="images/icon.jpg">
    <title>Register</title>
    </head>
    <body>
    <div class='main'>
        <div class ='bar'>
            <h1>Join us to be one of her fans!</h1>
        </div>
    </div>
    <div class="content">
        <div class="form">
            <form action="./formsubmit" method="POST">
                <table align ='center'>
                    <tr>
                        <th>
                            Your name:
                        </th>
                        <th>
                            <input type="text" name="name" placeholder="Eg: Nguyen Van A">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Your email:
                        </th>
                        <th>
                            <input type="email" name ="username" placeholder="username@gmail.com">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Your password:
                        </th>
                        <th>
                            <input type="password" name ="password" placeholder="***************">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Your DoB:
                        </th>
                        <th>
                            <input type="date" name = "date">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Living city:
                        </th>
                        <th>
                            <select name="city" size='1'>
                                <option value="hcm">Ho Chi Minh City</option>
                                <option value="hn">Ha Noi</option>
                                <option value="ct">Can Tho</option>
                                <option value="dn">Da Nang</option>
                                <option value="hue">Hue</option>
                                <option value="other">other</option>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <th>Your favourite album:</th>
                        <th>
                            <input type="text" name ="album" placeholder="Eg: Born to Die">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Your favourite songs:
                        </th>
                        <th>
                            <input type="text" name = "songs" placeholder="Eg: West Cost">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Why u join her fan?
                        </th>
                        <th>
                            <textarea name="explain" cols="40" rows="5" placeholder="Write at least 200 words..."></textarea>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            We need to check your knowledge before signing in.
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            1. Which album is Grammy-nominated?
                        </th>
                    </tr>
                    <tr>
                        <th colspan ="2">
                            <input type="checkbox" name="a1" value="NFR">NFR <br>
                            <input type="checkbox" name="a2" value="hnm">Honeymoon <br>
                            <input type="checkbox" name="a3" value="BTD">Born to Die <br>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            2. What is Lana's real name?
                        </th>
                    </tr>
                    <tr>
                        <th colspan ="2">
                            <input type="checkbox" name="n1" value="Jessica">Jessica <br>
                            <input type="checkbox" name="n1" value="Jessica">Elizabeth <br>
                            <input type="checkbox" name="n1" value="Jessica">Monica <br>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            3. Which is her unreleased song?
                        </th>
                    </tr>
                    <tr>
                        <th colspan ="2">
                            <input type="checkbox" name="n1" value="Jessica">Queen of Disaster <br>
                            <input type="checkbox" name="n1" value="Jessica">Say yes to Heaven <br>
                            <input type="checkbox" name="n1" value="Jessica">Margaret<br>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <input type="submit">
                        </th>
                    </tr>
                </table>
                <p class="backmenu">Back to <a href="menu.html">menu</a></p>
            </form>
        </div>
    </div>
    <footer>
        <div class="footerContainer">
            <div class="iconfooter">
                <h1>Del Rey for Everyone</h1>
            </div>
            <div class="socialIcons">
                <a href="https://www.facebook.com/lanadelrey" target="blank"><i class="fa-brands fa-facebook"></i></a>
                <a href="https://www.instagram.com/honeymoon/" target="blank"><i class="fa-brands fa-instagram"></i></a>
                <a href="https://www.youtube.com/channel/UCqk3CdGN_j8IR9z4uBbVPSg" target="blank"><i class="fa-brands fa-youtube"></i></a>
                <a href="http://www.lanadelrey.com" target="blank"><i class="fa-solid fa-podcast"></i></i></a>
            </div>
            <div class="footerbottom">
                <p>Copyright &copy;2024; Designed by <span class="designer">Chau Thanh Phat - ITITIU21135</span></p>
            </div>
        </div>
    </footer>
</body>
</html>
