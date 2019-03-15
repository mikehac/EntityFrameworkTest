using EntityFrameworkTest.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace EntityFrameworkTest.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        public ActionResult Index()
        {
            roomhikeEntities db = new roomhikeEntities();
            var firstUser = db.AspNetUsers.FirstOrDefault();
            if (!System.Web.Security.Roles.Enabled)
            {
                System.Web.Security.Roles.Enabled = true;
            }

            string guestRole = "Guest";
            var guestRoleExists = Roles.RoleExists(guestRole);
            if (!guestRoleExists)
            {
                Roles.CreateRole(guestRole);
            }
            Roles.AddUserToRole(firstUser.UserName, guestRole);
            return View();
        }
    }
}