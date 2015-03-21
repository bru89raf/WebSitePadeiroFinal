using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using WSCategoria;
using WSProduto;
using System.Net;

public partial class ListasElementos : System.Web.UI.Page
{
    Categoria wsCateg = new Categoria();
    Produto wsProduto = new Produto();

    protected void Page_Load(object sender, EventArgs e)
    {

        //CARREGAR TODAS AS COMBOS

        NetworkCredential myCredentials = new NetworkCredential("convidado", "convidado");
        wsCateg.Credentials = myCredentials;  

        Resgetallcategorias allCategorias = wsCateg.getallcategorias();

        ListItem seleccionaCateg = new ListItem();
        seleccionaCateg.Text = "Seleccione Categoria !";
        seleccionaCateg.Value = "0";
        
        DDLListaAllCategorias.Items.Add(seleccionaCateg);
        
        foreach (Categoria1 cat in allCategorias.categorias)
        {
            //INSERIR NA DDL
            ListItem elementoCategoria = new ListItem();
            elementoCategoria.Text = cat.nome;
            elementoCategoria.Value = cat.id.ToString();

            DDLListaAllCategorias.Items.Add(elementoCategoria);
        }



    }
    protected void btnEditar_Click(object sender, EventArgs e)
    {

        //VERIFICAR QUAL A COMBO BOX QUE FOI ALTERADA
        String ddlSeleccioneCategoria = DDLListaAllCategorias.SelectedValue;

        if(!ddlSeleccioneCategoria.Equals("0")){

            String idCategoria = DDLListaAllCategorias.SelectedItem.Value;

            Session["accao"] = "editar";
            Session["idCategoria"] = idCategoria;

            Response.Redirect("CategoriaN.aspx");

        }


    }
}