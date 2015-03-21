using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WSAuthentication;
using System.Net;

public partial class Index : System.Web.UI.Page
{
    private String userWS = "convidado";
    private String passWS = "convidado";

    Authentication wsAuth = new Authentication();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        //CRIAR VARIAVEIS DE SISTEA
        Session["userWS"] = userWS;
        Session["passWS"] = passWS;

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //botoa de login

        String username = txtUsername.Text;
        String password = txtPassword.Text;

        try
        {
            NetworkCredential myCredentials = new NetworkCredential(username, password);
            wsAuth.Credentials = myCredentials;

            Reslogin resposta = wsAuth.login();
            int retorno = resposta.retorno.codigo;

            if (retorno == 1)
            {
                //LOGIN COM SUCESSO
                Response.Redirect("Produtos.aspx");

            }
            else
            {
                //LOGIN INVALIDO 
                LabelMensagem.Text = "ERRO";
                txtUsername.Text = "";
                txtPassword.Text = "";
            }


        }
        catch (WebException we)
        {
            LabelMensagem.Text = we.ToString();
        }

    }
}