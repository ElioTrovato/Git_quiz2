using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quiz2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);

        }


        protected void q1_SelectedIndexChanged(object sender, EventArgs e)
        {
            wizard1.ActiveStep.Title = "__";
            //wizard1.ActiveStepIndex = wizard1.ActiveStepIndex + 1;

            if (wizard1.ActiveStepIndex==11)
            {
                int score = 0;
                if (q1.SelectedValue == "2")
                    score += 1;
                if (q2.SelectedValue == "4")
                    score += 1;
                if (q3.SelectedValue == "4")
                    score += 1;
                if (q4.SelectedValue == "1")
                    score += 1;
                if (q5.SelectedValue == "1")
                    score += 1;
                if (q6.SelectedValue == "1")
                    score += 1;
                if (q7.SelectedValue == "4")
                    score += 1;
                if (q8.SelectedValue == "4")
                    score += 1;
                if (q9.SelectedValue == "2")
                    score += 1;
                if (q10.SelectedValue == "3")
                    score += 1;
                if (q11.SelectedValue == "4")
                    score += 1;
                if (q12.SelectedValue == "1")
                    score += 1;

                Panel1.Visible = true;
                Label1.Text = "your score is: " + score.ToString() + "!";
                q12.Enabled = false;
                ButtonSubmit.Visible = true;
                Button1.Visible = true;
                
            }
            if(wizard1.ActiveStepIndex<11)
            wizard1.ActiveStepIndex = wizard1.ActiveStepIndex + 1;

        }

        

       
    }
}