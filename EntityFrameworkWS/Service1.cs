using EntityFrameworkWS.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;

namespace EntityFrameworkWS
{
    public partial class Service1 : ServiceBase
    {
        public Service1()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
#if (DEBUG)
            Debugger.Launch();
#endif
            roomhikeEntities db = new roomhikeEntities();
            var firstUser = db.AspNetUsers.FirstOrDefault();
            string guestRole = "Guest";
            var guestRoleExists = Roles.RoleExists(guestRole);
            if (!guestRoleExists)
            {
                Roles.CreateRole(guestRole);
            }
            if (Roles.IsUserInRole(firstUser.UserName,guestRole))
            {
                Roles.RemoveUserFromRole(firstUser.UserName, guestRole);
            }
            Roles.AddUserToRole(firstUser.UserName, guestRole);

        }

        protected override void OnStop()
        {
        }
    }
}
