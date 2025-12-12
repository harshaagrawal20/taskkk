<%@ Page Language="C#" MasterPageFile="~/Site.Master" %>
<%@ Register Src="~/UserControls/FeaturesPanel.ascx" TagPrefix="uc" TagName="FeaturesPanel" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <title>Free Sign Up - LoadsoR</title>
    <link rel="stylesheet" href="styles/signup.css" />
    <link rel="stylesheet" href="styles/registration.css" />
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <main class="main-wrapper">

        <!-- LEFT PANEL: Desktop 578x870, Tablet 482x721, Mobile 280x500 -->
        <section class="signup-panel">
            <div class="signup-container">
                <h1 class="signup-title">Free Sign Up with LoadsoR</h1>

                <!-- SIGNUP OPTIONS -->
                <div class="signup-options">
                    
                    <div class="option-card option-card-selected" data-type="customer" onclick="openModal('customer')">
                        <div class="option-image">
                            <img src="assets/customer.png" alt="Customer or Shipper" />
                        </div>
                        <div class="option-content">
                            <h3 class="option-title">Customer or Shipper</h3>
                            <p class="option-description">Sign up to ship smarter, faster, & with complete peace of mind.</p>
                        </div>
                    </div>

                    <div class="option-card" data-type="transporter" onclick="openModal('transporter')">
                        <div class="option-image">
                            <img src="assets/transporter.png" alt="Transporter or Booking Agent" />
                        </div>
                        <div class="option-content">
                            <h3 class="option-title">Transporter or Booking Agent</h3>
                            <p class="option-description">Boost your transport business with reliable leads.</p>
                        </div>
                    </div>

                    <div class="option-card" data-type="fleet" onclick="openModal('fleet')">
                        <div class="option-image">
                            <img src="assets/truck.png" alt="Truck Operator or Fleet Owner" />
                        </div>
                        <div class="option-content">
                            <h3 class="option-title">Truck Operator or Fleet Owner</h3>
                            <p class="option-description">Scale your fleet with consistent demand & easy job management.</p>
                        </div>
                    </div>

                    <div class="option-card" data-type="broker" onclick="openModal('broker')">
                        <div class="option-image">
                            <img src="assets/broker.png" alt="Broker or Truck Supplier" />
                        </div>
                        <div class="option-content">
                            <h3 class="option-title">Broker or Truck Supplier</h3>
                            <p class="option-description">Expand your network and supply more efficiently.</p>
                        </div>
                    </div>

                </div>

                <p class="login-link">Already have an account with LoadsoR? <a href="signin.aspx">Log in</a></p>
            </div>
        </section>

        <!-- RIGHT PANEL: Features Panel -->
        <uc:FeaturesPanel runat="server" />

    </main>

    <!-- CUSTOMER REGISTRATION MODAL -->
    <div class="modal-overlay" id="customerModal" style="display:none;">
        <div class="modal-container">
            
            <button type="button" class="modal-close" onclick="closeModal('customer')">×</button>

            <div class="modal-header">
                <h1 class="modal-title">Customer / Shipper Registration</h1>
            </div>

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

                    <div class="form-row row-email-tablet">
                        <div class="form-group">
                            <label class="form-label">Email<span class="required">*</span></label>
                            <input type="email" class="form-input" placeholder="username@domain.com" />
                        </div>
                        <div class="form-group profile-tablet">
                            <label class="form-label">Profile Image<span class="required">*</span></label>
                            <div class="file-input-wrapper">
                                <input type="file" class="file-input" id="profileImage1" accept="image/*" />
                                <button type="button" class="file-button" onclick="document.getElementById('profileImage1').click()">Choose File</button>
                                <span class="file-name">No File Chosen</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-row row-profile-desktop">
                        <div class="form-group">
                            <label class="form-label">Profile Image<span class="required">*</span></label>
                            <div class="file-input-wrapper">
                                <input type="file" class="file-input" id="profileImageDesktop1" accept="image/*" />
                                <button type="button" class="file-button" onclick="document.getElementById('profileImageDesktop1').click()">Choose File</button>
                                <span class="file-name">No File Chosen</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group checkbox-group">
                            <input type="checkbox" id="terms-check1" class="checkbox-input" />
                            <label for="terms-check1" class="checkbox-label">
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
                    <button type="button" class="btn-cancel" onclick="closeModal('customer')">Cancel</button>
                    <button type="submit" class="btn-submit">Create Account</button>
                </div>

            </form>
        </div>
    </div>

    <!-- TRANSPORTER REGISTRATION MODAL -->
    <div class="modal-overlay" id="transporterModal" style="display:none;">
        <div class="modal-container">
            
            <button type="button" class="modal-close" onclick="closeModal('transporter')">×</button>

            <div class="modal-header">
                <h1 class="modal-title">Transporter / Booking Agent Registration</h1>
            </div>

            <form class="registration-form">

                <!-- BASIC DETAILS SECTION -->
                <div class="form-section">
                    <div class="section-title-bar">
                        <h2 class="section-title">Basic Details</h2>
                    </div>
                    
                    <!-- Row 1: Transport Name & Company Legal Status -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">Transport Name<span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="Enter Transport Name" required />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Company Legal Status<span class="required">*</span></label>
                            <select class="form-input" required>
                                <option value="">Select your Legal Status</option>
                                <option value="proprietorship">Proprietorship</option>
                                <option value="partnership">Partnership</option>
                                <option value="pvt-ltd">Private Limited</option>
                                <option value="llp">LLP</option>
                            </select>
                        </div>
                    </div>

                    <!-- Row 2: First Name & Last Name -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">First Name<span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="Enter First Name" required />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Last Name<span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="Enter Last Name" required />
                        </div>
                    </div>

                    <!-- Row 3: Mobile No & WhatsApp No -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">Mobile No.<span class="required">*</span></label>
                            <div class="input-with-prefix">
                                <div class="country-code-wrapper">
                                    <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                    <span class="code-text">+91</span>
                                </div>
                                <input type="tel" class="form-input" placeholder="Mobile No." required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Whatsapp No.<span class="required">*</span></label>
                            <div class="input-with-prefix">
                                <div class="country-code-wrapper">
                                    <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                    <span class="code-text">+91</span>
                                </div>
                                <input type="tel" class="form-input" placeholder="Mobile No." required />
                            </div>
                        </div>
                    </div>

                    <!-- Row 4: Email & Pan No -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">Email<span class="required">*</span></label>
                            <input type="email" class="form-input" placeholder="username@domain.com" required />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Pan No.</label>
                            <input type="text" class="form-input" placeholder="Ex. ABCDE1234F" />
                        </div>
                    </div>
                </div>

                <!-- TERMS CHECKBOX -->
                <div class="form-group checkbox-group">
                    <input type="checkbox" id="termsCheckTransporter" class="checkbox-input" required />
                    <label for="termsCheckTransporter" class="checkbox-label">
                        I accept <a href="#" class="link">Terms of Service</a> & <a href="#" class="link">Privacy Policy</a>
                    </label>
                </div>

                <!-- FORM ACTIONS -->
                <div class="form-actions">
                    <button type="button" class="btn-cancel" onclick="closeModal('transporter')">Cancel</button>
                    <button type="submit" class="btn-submit">Create Account</button>
                </div>

            </form>
        </div>
    </div>

    <!-- FLEET OWNER REGISTRATION MODAL -->
    <div class="modal-overlay" id="fleetModal" style="display:none;">
        <div class="modal-container">
            
            <button type="button" class="modal-close" onclick="closeModal('fleet')">×</button>

            <div class="modal-header">
                <h1 class="modal-title">Truck Operator / Fleet Owner Registration</h1>
            </div>

            <form class="registration-form">

                <!-- BASIC DETAILS SECTION -->
                <div class="form-section">
                    <div class="section-title-bar">
                        <h2 class="section-title">Basic Details</h2>
                    </div>
                    
                    <!-- Row 1: First Name & Last Name -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">First Name<span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="Enter First Name" required />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Last Name<span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="Enter Last Name" required />
                        </div>
                    </div>

                    <!-- Row 2: Mobile No & WhatsApp No -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">Mobile No.<span class="required">*</span></label>
                            <div class="input-with-prefix">
                                <div class="country-code-wrapper">
                                    <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                    <span class="code-text">+91</span>
                                </div>
                                <input type="tel" class="form-input" placeholder="Mobile No." required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Whatsapp No.<span class="required">*</span></label>
                            <div class="input-with-prefix">
                                <div class="country-code-wrapper">
                                    <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                    <span class="code-text">+91</span>
                                </div>
                                <input type="tel" class="form-input" placeholder="Mobile No." required />
                            </div>
                        </div>
                    </div>

                    <!-- Row 3: Email & Pan No -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">Email<span class="required">*</span></label>
                            <input type="email" class="form-input" placeholder="username@domain.com" required />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Pan No.</label>
                            <input type="text" class="form-input" placeholder="Ex. ABCDE1234F" />
                        </div>
                    </div>
                </div>

                <!-- TERMS CHECKBOX -->
                <div class="form-group checkbox-group">
                    <input type="checkbox" id="termsCheckFleet" class="checkbox-input" required />
                    <label for="termsCheckFleet" class="checkbox-label">
                        I accept <a href="#" class="link">Terms of Service</a> & <a href="#" class="link">Privacy Policy</a>
                    </label>
                </div>

                <!-- FORM ACTIONS -->
                <div class="form-actions">
                    <button type="button" class="btn-cancel" onclick="closeModal('fleet')">Cancel</button>
                    <button type="submit" class="btn-submit">Create Account</button>
                </div>

            </form>
        </div>
    </div>

    <!-- BROKER REGISTRATION MODAL -->
    <div class="modal-overlay" id="brokerModal" style="display:none;">
        <div class="modal-container">
            
            <button type="button" class="modal-close" onclick="closeModal('broker')">×</button>

            <div class="modal-header">
                <h1 class="modal-title">Broker / Truck Supplier Registration</h1>
            </div>

            <form class="registration-form">

                <!-- BASIC DETAILS SECTION -->
                <div class="form-section">
                    <div class="section-title-bar">
                        <h2 class="section-title">Basic Details</h2>
                    </div>
                    
                    <!-- Row 1: First Name & Last Name -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">First Name<span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="Enter First Name" required />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Last Name<span class="required">*</span></label>
                            <input type="text" class="form-input" placeholder="Enter Last Name" required />
                        </div>
                    </div>

                    <!-- Row 2: Mobile No & WhatsApp No -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">Mobile No.<span class="required">*</span></label>
                            <div class="input-with-prefix">
                                <div class="country-code-wrapper">
                                    <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                    <span class="code-text">+91</span>
                                </div>
                                <input type="tel" class="form-input" placeholder="Mobile No." required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Whatsapp No.<span class="required">*</span></label>
                            <div class="input-with-prefix">
                                <div class="country-code-wrapper">
                                    <img src="assets/india-flag.png" alt="IN" class="flag-icon" onerror="this.style.display='none'" />
                                    <span class="code-text">+91</span>
                                </div>
                                <input type="tel" class="form-input" placeholder="Mobile No." required />
                            </div>
                        </div>
                    </div>

                    <!-- Row 3: Email & Pan No -->
                    <div class="form-row row-2col">
                        <div class="form-group">
                            <label class="form-label">Email<span class="required">*</span></label>
                            <input type="email" class="form-input" placeholder="username@domain.com" required />
                        </div>
                        <div class="form-group">
                            <label class="form-label">Pan No.</label>
                            <input type="text" class="form-input" placeholder="Ex. ABCDE1234F" />
                        </div>
                    </div>
                </div>

                <!-- TERMS CHECKBOX -->
                <div class="form-group checkbox-group">
                    <input type="checkbox" id="termsCheckBroker" class="checkbox-input" required />
                    <label for="termsCheckBroker" class="checkbox-label">
                        I accept <a href="#" class="link">Terms of Service</a> & <a href="#" class="link">Privacy Policy</a>
                    </label>
                </div>

                <!-- FORM ACTIONS -->
                <div class="form-actions">
                    <button type="button" class="btn-cancel" onclick="closeModal('broker')">Cancel</button>
                    <button type="submit" class="btn-submit">Create Account</button>
                </div>

            </form>
        </div>
    </div>

</asp:Content>

<asp:Content ID="ScriptsContent" ContentPlaceHolderID="scripts" runat="server">
    <script>
        // Open modal based on type
        function openModal(type) {
            // Close all modals first
            closeAllModals();
            
            var modalId = type + 'Modal';
            var modal = document.getElementById(modalId);
            if (modal) {
                modal.style.display = 'flex';
                document.body.classList.add('modal-open');
            }
        }

        // Close specific modal
        function closeModal(type) {
            var modalId = type + 'Modal';
            var modal = document.getElementById(modalId);
            if (modal) {
                modal.style.display = 'none';
                document.body.classList.remove('modal-open');
            }
        }

        // Close all modals
        function closeAllModals() {
            var modals = document.querySelectorAll('.modal-overlay');
            modals.forEach(function(modal) {
                modal.style.display = 'none';
            });
            document.body.classList.remove('modal-open');
        }

        // Close modal when clicking outside
        document.querySelectorAll('.modal-overlay').forEach(function(modal) {
            modal.addEventListener('click', function(e) {
                if (e.target === this) {
                    closeAllModals();
                }
            });
        });

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

        document.addEventListener('DOMContentLoaded', function() {
            // Add hover effects to option cards
            const optionCards = document.querySelectorAll('.option-card');
            optionCards.forEach(card => {
                card.addEventListener('mouseenter', function() {
                    optionCards.forEach(c => c.classList.remove('option-card-selected'));
                    this.classList.add('option-card-selected');
                });
            });
        });
    </script>
</asp:Content>
