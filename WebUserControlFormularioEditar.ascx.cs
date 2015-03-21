using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Net;
using WSCategoria;

public partial class WebUserControlFormularioEditar : System.Web.UI.UserControl
{

    public int accaoAmostrar;

    Categoria wsCateg = new Categoria();

    protected void Page_Load(object sender, EventArgs e)
    {
        String accao ;
        int  idCat;
        accao = Session["accao"].ToString();


        if (accao.Equals("editar"))
        {
            LabelAccaoCategoria.Text = "EDITAR CATEGORIA";
            btnCategoria.Text = "EDITAR CATEGORIA";
            accaoAmostrar = 1; //editar

            //Editar
            idCat = Convert.ToInt16(Session["idCategoria"].ToString());
            
            //OBTER OS DADOS DA CATEGORIA
            NetworkCredential myCredentials = new NetworkCredential("francisco", "francisco");
            wsCateg.Credentials = myCredentials;

            Resgetcategoria obterCategoria = wsCateg.getCategoria(Convert.ToInt16(idCat));

            txtNomeCategoria.Text = obterCategoria.nome;
            txtDescricao.Text = obterCategoria.descricao;


        }
        else {
            
            LabelAccaoCategoria.Text = "NOVA CATEGORIA";
            btnCategoria.Text = "NOVA CATEGORIA";
            accaoAmostrar = 2; // novo

        }


    }


    protected void btnAddCategoria_Click(object sender, EventArgs e)
    {
        if (accaoAmostrar == 1) //EDITAR
        {
         
            //ATUALIZAR OS DADOS NA BASE DE DADOS
            



        }
        else { //NOVO

            String nome = txtNomeCategoria.Text;
            String descricao = txtDescricao.Text;

            NetworkCredential myCredentials = new NetworkCredential("francisco", "francisco");
            wsCateg.Credentials = myCredentials;

            Reqaddcategoria dadoscategoria = new Reqaddcategoria();
            dadoscategoria.nome = nome;
            dadoscategoria.descricao = descricao;
            Resaddcategoria addCategoria = wsCateg.addcategoria(dadoscategoria);

            int retorno = addCategoria.retorno.codigo;

            if (retorno == 1)
            {
                limpaCampos();
                LabelMensagem.Text = addCategoria.retorno.mensagem;
            }
            else
            {
                limpaCampos();
                LabelMensagem.Text = addCategoria.retorno.mensagem;
            }



        }
    }

    protected void limpaCampos()
    {
        txtDescricao.Text = "";
        txtNomeCategoria.Text = "";
    }

}