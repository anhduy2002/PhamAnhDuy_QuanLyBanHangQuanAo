<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Send Email</title>
            </head>
            <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
                id="bootstrap-css">
            <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <style>
                body {
                    background-color: #25274d;
                }

                .contact {
                    padding: 4%;
                    height: 400px;
                }

                .col-md-3 {
                    background: #ff9b00;
                    padding: 4%;
                    border-top-left-radius: 0.5rem;
                    border-bottom-left-radius: 0.5rem;
                }

                .contact-info {
                    margin-top: 10%;
                }

                .contact-info img {
                    margin-bottom: 15%;
                }

                .contact-info h2 {
                    margin-bottom: 10%;
                }

                .col-md-9 {
                    background: #fff;
                    padding: 3%;
                    border-top-right-radius: 0.5rem;
                    border-bottom-right-radius: 0.5rem;
                }

                .contact-form label {
                    font-weight: 600;
                }

                .contact-form button {
                    background: #25274d;
                    color: #fff;
                    font-weight: 600;
                    width: 25%;
                }

                .contact-form button:focus {
                    box-shadow: none;
                }
            </style>

            <body>
                



                <div class="container contact">
                    <form:form action="/mailer/send" method="post" enctype="multipart/form-data" modelAttribute="mailinfo">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="contact-info">
                                <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image" />
                                <h2>Contact FPT Store</h2>
                                <h4>We would love to hear from you !</h4>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="contact-form">
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="fname">From:</label>
                                    <div class="col-sm-10">
                                        <form:input  class="form-control" path="from" value="lebaodangtv@gmail.com" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="lname">To:</label>
                                    <div class="col-sm-10">
                                        <form:input  class="form-control" path="to" value="lebaodangtv@gmail.com" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="lname">Subject:</label>
                                    <div class="col-sm-10">
                                        <form:input  class="form-control" path="subject" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="comment">Comment:</label>
                                    <div class="col-sm-10">
                                        <form:textarea  class="form-control" path="body" rows="5" cols="30" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input class="btn btn-default" type="submit" value="Send" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
                </div>
            </body>
            </html>