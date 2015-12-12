using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SelectServiceReference.SelectServiceClient sc = 
        new SelectServiceReference.SelectServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateAuthorDropDownList();
        }

    }   

    protected void ReviewsButton_Click(object sender, EventArgs e)
    {
        PopulateDataList();

    }

    protected void PopulateAuthorDropDownList()
    {
        string[] authors = sc.GetAuthors();
        AuthorDropDownList.DataSource = authors;
        AuthorDropDownList.DataBind();
    }

    protected void PopulateDataList()
    {
        string authorName = AuthorDropDownList.SelectedItem.ToString();
        SelectServiceReference.ReviewInfo[] reviews = sc.GetReviewsByAuthor(authorName);
        DataList1.DataSource = reviews;
        DataList1.DataBind();

    }


}