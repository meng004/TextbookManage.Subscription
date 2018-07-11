using System;
using System.Web.Security;
using USCTAMis.Web.WebClient;


namespace USCTAMis.WebPage
{
    public partial class Login : USCTAMis.Web.WebControls.Page
    {
        private readonly USCTAMis.IBLL.Sys.IUser logUser = new USCTAMis.BLL.Sys.User();

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void bt_Login_Click(object sender, EventArgs e)
        {
            if (!logUser.ValidateUser(txt_UserName.Text.Trim(), txt_Password.Text.Trim()))
            {
                USCTAMis.Web.WebClient.ScriptManager.Alert("您输入的用户名或密码不正确！");
                return;
            }
            Redirect(txt_UserName.Text.Trim());
        }



        /// <summary>
        /// 根据用户名重定向功能页面
        /// </summary>
        /// <param name="userName"></param>
        private void Redirect(string userName)
        {
            //检查是否存在用户名
            if (string.IsNullOrWhiteSpace(userName))
            {
                Response.Write("没有对应的用户");
                return;
            }

            //创建用户配置文件
            ProfileManger currentUserProfile = new ProfileManger(userName);
            currentUserProfile.SetUserProfile();
            //创建授权证书
            System.Web.Security.FormsAuthentication.SetAuthCookie(userName, true);

            //由其他页面跳转过来
            if (!string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
            {
                FormsAuthentication.RedirectFromLoginPage(userName, true);
                return;
            }

            Response.Redirect("Main.aspx");
            
        }

    }
}