﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConciFes
{
    public partial class MemberPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Remove("Kullanici");
            Session.Abandon();
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}