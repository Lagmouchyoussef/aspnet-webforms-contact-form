using System;
using System.Web.UI;

namespace TPWebForms
{
    public partial class WebForm1 : Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                lblResult.Text = "";
                return;
            }

            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string program = ddlProgram.SelectedItem.Text;
            string comment = txtComment.Text.Trim();

            lblResult.Text = "Thank you " + Server.HtmlEncode(fullName) + "!<br/>" +
                             "Your form was processed.<br/>" +
                             "Selected program: " + Server.HtmlEncode(program) + "<br/>" +
                             "A summary could be sent to " + Server.HtmlEncode(email) + ".";

            // The comment is read to demonstrate how to retrieve the multiline input. No data is saved.
        }
    }
}