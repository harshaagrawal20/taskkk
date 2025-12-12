<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration - LoadsoR</title>
    <link rel="stylesheet" href="styles/registration.css" />
</head>

<body>

<!-- REGISTRATION MODAL -->
<div class="modal-overlay">
    <div class="modal-container">
        
        <!-- CLOSE BUTTON -->
        <a href="signup.aspx" class="modal-close">×</a>

        <!-- MODAL HEADER -->
        <div class="modal-header">
            <h1 class="modal-title">Customer / Shipper Registration</h1>
        </div>

        <!-- FORM CONTENT -->
        <form class="registration-form">

            <!-- BASIC DETAILS SECTION -->
            <div class="form-section">
                <div class="section-title-bar">
                    <h2 class="section-title">Basic Details</h2>
                </div>

                <div class="form-row row-2col">
                    <div class="form-group">
                        <label class="form-label">First Name<span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="First Name" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">Last Name</label>
                        <input type="text" class="form-input" placeholder="Last Name" />
                    </div>
                </div>

                <div class="form-row row-3col-desktop row-2col-tablet">
                    <div class="form-group">
                        <label class="form-label">Mobile No.<span class="required">*</span></label>
                        <div class="input-with-prefix">
                            <div class="country-code-wrapper">
                                <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                <span class="code-text">+91</span>
                            </div>
                            <input type="tel" class="form-input" placeholder="Mobile No." />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Whatsapp No.<span class="required">*</span></label>
                        <div class="input-with-prefix">
                            <div class="country-code-wrapper">
                                <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                <span class="code-text">+91</span>
                            </div>
                            <input type="tel" class="form-input" placeholder="Mobile No." />
                        </div>
                    </div>
                    <div class="form-group email-desktop">
                        <label class="form-label">Email<span class="required">*</span></label>
                        <input type="email" class="form-input" placeholder="username@domain.com" />
                    </div>
                </div>

                <!-- Email for tablet/mobile (separate row) -->
                <div class="form-row row-email-tablet">
                    <div class="form-group">
                        <label class="form-label">Email<span class="required">*</span></label>
                        <input type="email" class="form-input" placeholder="username@domain.com" />
                    </div>
                    <div class="form-group profile-tablet">
                        <label class="form-label">Profile Image<span class="required">*</span></label>
                        <div class="file-input-wrapper">
                            <input type="file" class="file-input" id="profileImage" accept="image/*" />
                            <button type="button" class="file-button" onclick="document.getElementById('profileImage').click()">Choose File</button>
                            <span class="file-name">No File Chosen</span>
                        </div>
                    </div>
                </div>

                <div class="form-row row-profile-desktop">
                    <div class="form-group">
                        <label class="form-label">Profile Image<span class="required">*</span></label>
                        <div class="file-input-wrapper">
                            <input type="file" class="file-input" id="profileImageDesktop" accept="image/*" />
                            <button type="button" class="file-button" onclick="document.getElementById('profileImageDesktop').click()">Choose File</button>
                            <span class="file-name">No File Chosen</span>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group checkbox-group">
                        <input type="checkbox" id="terms-check" class="checkbox-input" />
                        <label for="terms-check" class="checkbox-label">
                            I accept <a href="#" class="link">Terms of Service</a> & <a href="#" class="link">Privacy Policy</a>
                        </label>
                    </div>
                </div>
            </div>

            <!-- CONTACT DETAILS SECTION -->
            <div class="form-section">
                <div class="section-title-bar">
                    <h2 class="section-title">Contact Details</h2>
                </div>

                <div class="form-row row-3col-desktop row-1col-tablet">
                    <div class="form-group">
                        <label class="form-label">Address<span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter Address" />
                    </div>
                    <div class="form-group address-extra">
                        <label class="form-label">Pin Code<span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter Pin Code" />
                    </div>
                    <div class="form-group address-extra">
                        <label class="form-label">Country<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select Country</option>
                            <option>India</option>
                        </select>
                    </div>
                </div>

                <!-- Pin Code and Country for tablet (separate row) -->
                <div class="form-row row-pincode-tablet">
                    <div class="form-group">
                        <label class="form-label">Pin Code<span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter Pin Code" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">Country<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select Country</option>
                            <option>India</option>
                        </select>
                    </div>
                </div>

                <div class="form-row row-4col-desktop row-2col-tablet">
                    <div class="form-group">
                        <label class="form-label">State<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select State</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">District<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select District</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">City<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select City</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Area<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select Area</option>
                        </select>
                    </div>
                </div>

                <!-- City and Area for tablet (separate row) -->
                <div class="form-row row-city-tablet">
                    <div class="form-group">
                        <label class="form-label">City<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select City</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Area<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select Area</option>
                        </select>
                    </div>
                </div>

                <!-- Area for tablet (full width) -->
                <div class="form-row row-area-tablet">
                    <div class="form-group">
                        <label class="form-label">Area<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select Area</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- COMPANY DETAILS SECTION -->
            <div class="form-section">
                <div class="section-title-bar">
                    <h2 class="section-title">Company Details</h2>
                </div>

                <div class="form-row row-2col">
                    <div class="form-group">
                        <label class="form-label">Business Name<span class="required">*</span></label>
                        <input type="text" class="form-input" placeholder="Enter your Business Name" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">Company Type<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select your Company Type</option>
                        </select>
                    </div>
                </div>

                <div class="form-row row-2col">
                    <div class="form-group">
                        <label class="form-label">Company Legal Status<span class="required">*</span></label>
                        <select class="form-input">
                            <option>Select your Legal Status</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">GST Number</label>
                        <input type="text" class="form-input" placeholder="Ex. AAAAB0123NSD001" />
                    </div>
                </div>
            </div>

            <!-- FORM ACTIONS -->
            <div class="form-actions">
                <a href="signup.aspx" class="btn-cancel">Cancel</a>
                <button type="submit" class="btn-submit">Create Account</button>
            </div>

        </form>

    </div>
</div>

<script>
    // File input label update
    document.querySelectorAll('.file-input').forEach(function(input) {
        input.addEventListener('change', function(e) {
            const fileName = e.target.files[0]?.name || 'No File Chosen';
            const wrapper = e.target.closest('.file-input-wrapper');
            if (wrapper) {
                wrapper.querySelector('.file-name').textContent = fileName;
            }
        });
    });
</script>

</body>
</html>
