using System;
using System.Web.UI;

namespace TPWebForms
{
    public partial class ContactForm : Page
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

            lblResult.Text = "Thank you " + Server.HtmlEncode(fullName) +
                             "! Your form was processed. " +
                             "Program: " + Server.HtmlEncode(program) +
                             ". A summary could be sent to " +
                             Server.HtmlEncode(email) + ".";

            // The comment is read, but the submitted information is not stored.
        }
    }
}
