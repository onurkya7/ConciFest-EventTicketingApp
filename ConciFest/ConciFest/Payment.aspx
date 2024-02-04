<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" MasterPageFile="~/MemberPage.Master" Inherits="ConciFes.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="header" runat="server">
            <header class="site-header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 d-flex flex-wrap">
                            <p class="d-flex me-4 mb-0">
                                <i class="bi-person custom-icon me-2"></i>
                                <strong class="text-dark">Konser ve Festival Tanıtımlarına Hoşgeldiniz</strong>
                            </p>
                        </div>
                    </div>
                </div>
            </header>
    </div>
    <div id="section" runat="server" class="section section-buyticketpage"> 
        <section class="ticket-section section-padding">

   <script src="https://js.stripe.com/v3/"></script>
   <script>
     document.addEventListener("DOMContentLoaded", function() {
         var stripe = Stripe("pk_test_51NGwiIBlsXcGecrvCwKEiRIvMrFZwGFC2zNjkN9MAnSPbCcsqEmX0pQkm6M4gDXPrNu3UvRcRS8u7U6Ow2Vm59gi00Qlqq1DFB");

       // Set up elements
       var elements = stripe.elements();
       var cardElement = elements.create('card');
       cardElement.mount('#card-element');

       var nameInput = document.getElementById("name");

       // When the form is submitted...
       var form = document.getElementById("paymentform");
       form.addEventListener("submit", function(e) {
         e.preventDefault();

         // Tokenize payment details and confirm the payment intent.
         stripe.confirmCardPayment(
           "<%= clientSecret %>",
           {
             payment_method: {
               card: cardElement,
               billing_details: {
                 name: name.value,
               }
             }
           }
         ).then(function(result) {
           if(result.error) {
             alert(result.error.message);

           } else {
             console.log("successful payment!");

             form.submit();
           }
         })
       });
     });
   </script>

    <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-10 mx-auto">
                            <div class="custom-form ticket-form mb-5 mb-lg-0">
                                <h2 class="text-center mb-4">Ödeme Ekranı</h2>

                                <div class="ticket-form-body " style="justify-content: center;">
                                    <div class="row">
                                        <div class="col-lg-10 col-md-10 col-8 mx-auto">
                                            <asp:TextBox ID="TextUserName" CssClass="form-control" runat="server" style="border-color: orange;" ></asp:TextBox>
                                        </div>

                                        <div class="col-lg-10 col-md-10 col-8 mx-auto">
                                            <asp:TextBox ID="TextAd" CssClass="form-control" runat="server" style="border-color: orange;"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-8 mx-auto">
                                            <asp:TextBox ID="TextSoyad" CssClass="form-control" runat="server" style="border-color: orange;"></asp:TextBox>
                                        </div>

                                        <div class="col-lg-10 col-md-10 col-8 mx-auto">
                                            <asp:TextBox ID="TextEmail" CssClass="form-control" runat="server" style="border-color: orange;"></asp:TextBox>
                                        </div>

                                    </div>


                                    <div class="col-lg-10 col-md-10 col-8 mx-auto" id="card-element">Card element is rendered here.</div>

                                    <style>
                                      #card-element {
                                        font-size: 1.2em;
                                        padding: 20px;
                                        background-color: #f5f5f5;
                                        border: 1px solid #ccc;
                                        border-radius: 5px;
                                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                                        margin-bottom: 40px;
                                        margin-top:20px;
                                      }
                                    </style>

                                    <textarea name="ticket-form-message" rows="3" class="form-control"s
                                        id="ticket-form-message" placeholder="Ek Talep"></textarea>
                           
                                    <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                        <asp:Button id="button1" runat="server" Text="Ödemeyi Tamamla" CssClass="form-control" style="background-color: #ee5007; color: white; margin-top: 10px;"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
    </section>
</div>
 </asp:Content>