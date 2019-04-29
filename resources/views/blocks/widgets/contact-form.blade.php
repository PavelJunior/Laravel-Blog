<section class="contact-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="contact-content-area">
                    <div class="row">

                        <div class="col-12 col-lg-6">
                            <div class="contact-content">
                                <h4>Get In Touch</h4>

                                <div class="alert alert-danger alert-dismissable" role="alert" style="display: none">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <strong>Errors occurred while filling out the form!</strong><br>
                                    <div class="errorsOutput"></div>
                                </div>

                                <div class="alert alert-success alert-dismissable" role="alertSuccess" style="display: none">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <strong>Thank you for your message! <a href="{{ route('main.index') }}"><b>Return on main page</b></a></strong><br>
                                </div>

                                <!-- Contact Form Area -->
                                <div class="contact-form-area">
                                    <form action="#" method="post" id="feedbackForm">
                                        <div class="row">
                                            {{ csrf_field() }}
                                            <div class="col-12 col-lg-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="contact-name"  name="name" value="{{ $user->name ?? null }}" placeholder="Name" data-parsley-required="true" data-parsley-maxlength="100">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="form-group">
                                                    <input type="email" class="form-control" id="contact-email" name="email" value="{{ $user->email ?? null }}" placeholder="Email" data-parsley-required="true" data-parsley-type="email" data-parsley-maxlength="255">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <input type="subject" class="form-control" id="contact-subject" name="subject" placeholder="Subject" data-parsley-required="true" data-parsley-maxlength="200">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <textarea class="form-control" name="body" id="message" cols="30" rows="10" placeholder="Message" data-parsley-required="true"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" class="btn foode-btn">Send</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-6">
                            <div class="contact-content contact-information">
                                <h4>Information</h4>

                                <!-- Single Contact Info -->
                                <div class="single-contact-info d-flex">
                                    <div class="icon">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <p>3919 New Cut Rd, Mary land, United State.</p>
                                </div>

                                <!-- Single Contact Info -->
                                <div class="single-contact-info d-flex">
                                    <div class="icon">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <p>(12)-100-100-100</p>
                                </div>

                                <!-- Single Contact Info -->
                                <div class="single-contact-info d-flex">
                                    <div class="icon">
                                        <i class="fa fa-print" aria-hidden="true"></i>
                                    </div>
                                    <p>(12)-112-123-123</p>
                                </div>

                                <!-- Single Contact Info -->
                                <div class="single-contact-info d-flex">
                                    <div class="icon">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <p>deercreative@gmail.com</p>
                                </div>

                                <!-- Contact Social Info -->
                                <div class="contact-social-info mt-50">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Google Plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>