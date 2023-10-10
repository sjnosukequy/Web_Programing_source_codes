<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en-US">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="styles/main.css" type="text/css" />
        <link rel="stylesheet" href="styles/radio_butt.css" type="text/css" />
        <link rel="stylesheet" href="styles/checkbox.css" type="text/css" />
        <link rel="stylesheet" href="./Bootstrap/cdn.jsdelivr.net_npm_bootstrap@5.3.2_dist_css_bootstrap.min.css"
            type="text/css" />
        <title>Survey</title>
    </head>

    <body>
        <div id="Survey_id">
            <form action="emailList" method="post">
                <img src="https://seeklogo.com/images/N/Neon_Genesis_Evangelion-logo-B4E0C643B0-seeklogo.com.png"
                    width="100" height="100" />
                <h1>Survey</h1>
                <p>If you have a moment, we'd appreciate it if you would fill out this survey</p>
                <p><i> ${message} </i></p>

                <h2>Your Information<div class="req">*</div>:</h2>
                <div id="info">
                    <input type="text" id="fname" name="fname" placeholder="First Name">
                    <input type="text" id="lname" name="lname" placeholder="Last name">
                    <input type="email" id="email" name="email" placeholder="Email">
                    <!-- <label for="DOB">Date of birth:</label> -->
                    <input type="date" id="DOB" name="DOB">
                </div>

                <h2>How do you hear about us?<div class="req">*</div>
                </h2>

                <div id="Hear">
                    <div class="radio_cus">
                        <input type="radio" id="SearchE" name="heard?" value="Search engine">
                        <label for="SearchE">Search engine</label>
                    </div>

                    <div class="radio_cus">
                        <input type="radio" id="WordM" name="heard?" value="Word of mouth">
                        <label for="WordM">Word of mouth</label>
                    </div>

                    <div class="radio_cus">
                        <input type="radio" id="Social" name="heard?" value="Social Media">
                        <label for="Social">Social Media</label>
                    </div>

                    <div class="radio_cus">
                        <input type="radio" id="Other" name="heard?" value="Other">
                        <label for="Other">Other</label>
                    </div>
                </div>

                <h2>Would you like to receive announcements about new CDs and special offers?</h2>
                <div id="receive">
                    <!-- <input type="checkbox" name="contact?" value="false">
                    <label for="yes1"> No, thanks </label><br> -->

                    <input type="checkbox" name="contact?" value="true" class="ui-checkbox">
                    <label for="yes2"> YES, please send me email announcements </label><br>

                    <label for="contact">Please contact me by: </label>
                    <select name="contact" id="contactinfo">
                        <option value="Email or Postal mail">Email or Postal mail</option>
                        <option value="SMS">SMS</option>
                        <option value="Email only">Email only</option>
                        <option value="Postal mail only">Postal mail only</option>
                        <option value="Telepathy">Telepathy</option>
                        <option value="All">All</option>
                    </select>
                    <br>
                </div>

                <input type="submit" value="Submit">
                <input type="hidden" name="action" value="add">
            </form>
        </div>
        <c:import url="/includes/footer.jsp" />
    </body>

    </html>