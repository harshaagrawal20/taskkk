<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transporter Registration - LoadsoR</title>
    <link rel="stylesheet" href="styles/transporter.css" />
</head>

<body>

<!-- HEADER -->
<header class="app-header">
    <div class="header-container">
        <div class="header-left">
            <button class="menu-toggle">☰</button>
            <img src="assets/logo.png" alt="LoadsoR Logo" class="logo" />
            <nav class="nav-links">
                <a href="#">Dashboard</a>
                <a href="#">Load Posts</a>
                <a href="#">Verifications</a>
                <a href="#">Tracking</a>
                <a href="#">Check Challan</a>
                <a href="#">More</a>
            </nav>
        </div>
        <div class="header-right">
            <button class="btn-signup-header">Free Sign Up</button>
            <button class="btn-signin-header">Sign In</button>
        </div>
    </div>
</header>

<!-- REGISTRATION MODAL -->
<div class="modal-overlay">
    <div class="modal-container">
        
        <!-- CLOSE BUTTON -->
        <button class="modal-close">✕</button>

        <!-- MODAL HEADER -->
        <div class="modal-header">
            <h2 class="modal-title">Transporter / Booking Agent Registration</h2>
        </div>

        <!-- REGISTRATION FORM -->
        <form class="registration-form">

            <!-- BASIC DETAILS SECTION -->
            <div class="form-section">
                <h3 class="section-title">Basic Details</h3>
                
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Transport Name <span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter transport name" required />
                    </div>
                    <div class="form-group">
                        <label class="form-label">Company Legal Status <span class="required">*</span></label>
                        <select class="form-input" required>
                            <option>Select Status</option>
                            <option>Registered</option>
                            <option>Unregistered</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">First Name <span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter first name" required />
                    </div>
                    <div class="form-group">
                        <label class="form-label">Last Name <span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter last name" required />
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Mobile Number <span class="required">*</span></label>
                        <div class="input-with-prefix">
                            <select class="country-code">
                                <option>+91</option>
                                <option>+1</option>
                                <option>+44</option>
                            </select>
                            <input type="tel" class="form-input" placeholder="10 digit number" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">WhatsApp Number <span class="required">*</span></label>
                        <div class="input-with-prefix">
                            <select class="country-code">
                                <option>+91</option>
                                <option>+1</option>
                                <option>+44</option>
                            </select>
                            <input type="tel" class="form-input" placeholder="10 digit number" required />
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Email <span class="required">*</span></label>
                        <input type="email" class="form-input" placeholder="Enter email" required />
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Pan No. <span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter PAN number" required />
                    </div>
                </div>
            </div>

            <!-- TERMS CHECKBOX -->
            <div class="form-group checkbox-group">
                <input type="checkbox" id="termsCheck" class="checkbox-input" required />
                <label for="termsCheck" class="checkbox-label">
                    I agree to the <a href="#" class="link">Terms & Conditions</a>
                </label>
            </div>

            <!-- FORM ACTIONS -->
            <div class="form-actions">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="submit" class="btn-submit">Create Account</button>
            </div>

        </form>
    </div>
</div>

</body>
</html>
