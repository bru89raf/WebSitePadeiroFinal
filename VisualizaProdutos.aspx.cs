using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using WSCategoria;
using WSProduto;

public partial class VisualizaProdutos : System.Web.UI.Page
{
    //CREDENCIAS BASE
    NetworkCredential myCredentials = new NetworkCredential("convidado", "convidado");

    string URLImagem = "http://brrf-pc:8080/services/loadProductImage/";
    
    Categoria wsCateg = new Categoria();
    Produto wsProd = new Produto();


    protected void Page_Load(object sender, EventArgs e)
    {
        
       
               
        //VALIDAR WEBSERVICE
        wsCateg.Credentials = myCredentials;

        //OBTER TODAS AS CATEGORIAS        
               

        Resgetallcategorias allCategorias = wsCateg.getallcategorias();

        DDLSeleccionaCategoria.Items.Add("SELLECIONE UM PRODUTO !");
        foreach (Categoria1 cat in allCategorias.categorias)
        {
            //INSERIR NA DDL
            ListItem elementoCategoria = new ListItem();
            elementoCategoria.Text = cat.nome;
            elementoCategoria.Value = cat.id.ToString();

            DDLSeleccionaCategoria.Items.Add(elementoCategoria);
        }

    }



    protected void DDLSeleccionaCategoria_SelectedIndexChanged(object sender, EventArgs e)
    {
        //QUANDO SELECIONAMOS A CAREGORIA VAMOS CARREGAR OS PRODUTOS REDERENTES

        //CATEGORIA DE PESQUISA 
        String idCategoria = DDLSeleccionaCategoria.SelectedItem.Value;
        //VALIDAR WEBSERVICE
        wsProd.Credentials = myCredentials;

        Reqprodutoscategorias categoriaPesquisa = new Reqprodutoscategorias();
        categoriaPesquisa.idcategoria = Convert.ToInt16(idCategoria);
        categoriaPesquisa.idcategoriaSpecified = true;

        Resgetprodutoscategorias obterProdutosCategoria = wsProd.getProdutosCategorias(categoriaPesquisa);

        DDLSeleccionaProduto.Items.Add("SELECCIONE UM PRODUTO !");
        foreach (Produtocategoria prod in obterProdutosCategoria.produtocategoria) {
            ListItem elementoProduto = new ListItem();
            elementoProduto.Text = prod.nomeproduto;
            elementoProduto.Value = prod.idproduto.ToString();
            DDLSeleccionaProduto.Items.Add(elementoProduto);
        }

        


    }
    protected void DDLSeleccionaProduto_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            //MOSTRAR DADOS REFERENTES AO PRODUTO SELECCIONA
            String idProduto = DDLSeleccionaProduto.SelectedItem.Value;
            //VALIDA O WEBSERVICE
            wsProd.Credentials = myCredentials;
            //OBTER DADOS
                   
            Resgetproduto obterProduto = wsProd.getProduto(Convert.ToInt16(idProduto));

            //ESCREVER INFORMAÇÃO
            LabelPrecoAtual.Text = obterProduto.precounitario.ToString();


            ImageProduto.ImageUrl = URLImagem + idProduto;


        }
        catch (WebException we) {
            LabelMensagem.Text = we.ToString();
        }
        



    }
}