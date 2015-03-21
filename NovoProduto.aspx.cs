using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using WSProduto;
using WSAuthentication;
using WSCategoria;

public partial class Produtoaspx : System.Web.UI.Page
{
    Authentication wsAuth = new Authentication();
    Produto wsProd = new Produto();
    Categoria wsCateg = new Categoria();
    protected void Page_Load(object sender, EventArgs e)
    {
        //CARREGAR TODAS AS CATEGORIAS PARA DDL

        NetworkCredential myCredentials = new NetworkCredential("convidado", "convidado");
        wsCateg.Credentials = myCredentials;
        
        //OBTER TODAS AS CATEGORIAS        
        //Resgetallcategorias allCategorias = wsCateg.getallcategorias();            

        Resgetallcategorias allCategorias = wsCateg.getallcategorias();

        foreach (Categoria1 cat in allCategorias.categorias)
        {
            //INSERIR NA DDL
            ListItem elementoCategoria = new ListItem();
            elementoCategoria.Text = cat.nome;
            elementoCategoria.Value = cat.id.ToString();
            
            DDLCategoria.Items.Add(elementoCategoria);            
        }
        

        

    }
    protected void btnNovoProduto_Click(object sender, EventArgs e)
    {
        String nome = txtNomeProduto.Text;       
        //long precoKg = Convert.ToInt16( txtPrecoKg.Text );
        decimal precoAtual = Convert.ToInt16( txtPrecoUnidade.Text );
        int idCtaegoria =  Convert.ToInt16( DDLCategoria.SelectedItem.Value);

        NetworkCredential myCredentials = new NetworkCredential("francisco", "francisco");
        wsProd.Credentials = myCredentials;

        Reqaddproduto dadosProduto = new Reqaddproduto();
        dadosProduto.categoria = idCtaegoria;
        dadosProduto.nome = nome;
        dadosProduto.precounitario = precoAtual;

        Resaddproduto addProduto = wsProd.addProduto(dadosProduto);

        int retorno = addProduto.retorno.codigo;

        if (retorno == 1)
        {
            LabelMensagem.Text = addProduto.retorno.mensagem;
        }
        else
        {
            LabelMensagem.Text = addProduto.retorno.mensagem;
        }



    }
}
