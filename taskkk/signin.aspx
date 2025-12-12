<%@ Page Language="C#" MasterPageFile="~/Site.Master" %>
<%@ Register Src="~/UserControls/FeaturesPanel.ascx" TagPrefix="uc" TagName="FeaturesPanel" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <title>Sign In - LoadsoR</title>
    <link rel="stylesheet" href="styles/signin.css" />
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <main class="main-wrapper">

        <section class="signin-panel">
            <div class="signin-container">
                <h1 class="signin-title">Sign In with LoadsoR</h1>

                <div class="form-group">
                    <label class="form-label">Mobile No. <span class="required">*</span></label>
                    <div class="input-wrapper">
                        <select class="country-code">
                            <option value="+91">🇮🇳 +91</option>
                        </select>
                        <input type="tel" class="form-input" placeholder="Mobile No." />
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Password <span class="required">*</span></label>
                    <input type="password" class="form-input" placeholder="Enter Password" />
                </div>

                <a href="#" class="forgot-password" onclick="openResetModal(event)">Forgot Password?</a>

                <button class="btn-signin-submit">Sign In</button>

                <p class="signup-link">Don't have an account with LoadsoR? <a href="signup.aspx">Sign up</a></p>

              
                <div class="qr-section">
                    <h3 class="qr-title">Log In with QR Code</h3>
                    <p class="qr-subtitle">Scan this with the mobile app to log in instantly</p>
                    <img src="assets/qr.png" alt="QR Code" class="qr-code" />
                </div>
            </div>
        </section>

        <uc:FeaturesPanel runat="server" />

    </main>
    
    <!-- Reset Password Modal -->
    <div id="resetPasswordModal" class="reset-password-modal" style="display:none;">
        <div class="modal-container">
            <a href="#" class="modal-close" onclick="closeResetModal(); return false;">×</a>

            <div class="modal-header">
                <h2 class="modal-title">Reset Password</h2>
            </div>

            <div class="form-section">
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Mobile No. <span class="required">*</span></label>
                        <div class="input-with-prefix">
                            <select class="country-code">
                                <option value="+91" selected>+91</option>
                                <option value="+1">+1</option>
                                <option value="+44">+44</option>
                            </select>
                            <input type="tel" class="form-input" placeholder="Enter your mobile" maxlength="10" />
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label or-label">OR</label>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Email <span class="required">*</span></label>
                        <input type="email" class="form-input" placeholder="Enter your email" />
                    </div>
                </div>
            </div>

            <div class="form-actions">
                <button type="button" class="btn-cancel" onclick="closeResetModal()">Cancel</button>
                <button type="button" class="btn-submit">Send</button>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="ScriptsContent" ContentPlaceHolderID="scripts" runat="server">
    <script>
        function openResetModal(e) {
            e.preventDefault();
            document.getElementById('resetPasswordModal').style.display = 'flex';
            document.body.style.overflow = 'hidden';
        }
        
        function closeResetModal() {
            document.getElementById('resetPasswordModal').style.display = 'none';
            document.body.style.overflow = 'auto';
        }
        
        // Close modal when clicking outside
        document.addEventListener('DOMContentLoaded', function () {
            var modal = document.getElementById('resetPasswordModal');
            modal.addEventListener('click', function (e) {
                if (e.target === modal) closeResetModal();
            });
        });
    </script>
</asp:Content>
