using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        CVykEntities db = new CVykEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeaterADSOYAD.DataSource = db.TBLAnasayfa.ToList();
            RepeaterADSOYAD.DataBind();
            
            RepeaterAdSoyad2.DataSource = db.TBLAnasayfa.ToList();
            RepeaterAdSoyad2.DataBind();
            
            RepeaterMENU.DataSource = db.TBLMenu.ToList();
            RepeaterMENU.DataBind();

            RepeaterAcıklama.DataSource = db.TBLAnasayfa.ToList();
            RepeaterAcıklama.DataBind();

            RepeaterYetenek.DataSource = db.TBLYetenekler.ToList();
            RepeaterYetenek.DataBind();

            RepeaterResim.DataSource = db.TBLResimler.ToList();
            RepeaterResim.DataBind();

           
           


        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            TBLIletisimForm t = new TBLIletisimForm();
            
            
            t.NAME = TextBoxName.Text;
            t.EMAIL = TextBoxEmail.Text;
            t.MESSAGE = TextBoxMessage.Text;
            
            db.TBLIletisimForm.Add(t);
            db.SaveChanges();
            
        }
    }
}