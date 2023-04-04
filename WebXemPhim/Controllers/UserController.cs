using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebXemPhim.Models;

namespace WebXemPhim.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        dbWebsitePhimDataContext data = new dbWebsitePhimDataContext();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult Dangky(FormCollection collection, NguoiDung nd)
        {
           
            var hoten = collection["HotenND"];
            var tendn = collection["TenDN"];
            var matkhau = collection["MatKhau"];
            var nhaplaimk = collection["NhapLaiMK"];
            var email = collection["Email"];
            var sdt = collection["SDT"];
            if (String.IsNullOrEmpty(hoten))
            {
                ViewData["Loi1"] = "Họ tên người dùng không được để trống";
            }
            else if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi2"] = "Tên đăng nhập không được để trống";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["Loi3"] = "Mật khẩu không được để trống";
            }
            else if (String.IsNullOrEmpty(nhaplaimk))
            {
                ViewData["Loi4"] = "Phải nhập lại mật khẩu";
            }
            if (String.IsNullOrEmpty(email))
            {
                ViewData["Loi5"] = "Email không được để trống";
            }
            if (String.IsNullOrEmpty(sdt))
            {
                ViewData["Loi6"] = "Số điện thoại không được để trống";
            }
            else
            {
                nd.TenKhach = hoten;
                nd.TKNguoiDung.TenDN = tendn;
                nd.TKNguoiDung.MatKhau = matkhau;
                nd.Email = email;
                nd.SDT = sdt;
                data.NguoiDungs.InsertOnSubmit(nd);
                data.SubmitChanges();
                return RedirectToAction("Dangnhap");
            }
            return this.DangKy();   
        }

        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection collection)
        {
            var tendn = collection["TenDN"];
            var matkhau = collection["MatKhau"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi1"] = "Phải nhập tên đăng nhập";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["Loi2"] = "Phải nhập mật khẩu";
            }
            else
            {
                NguoiDung nd = data.NguoiDungs.SingleOrDefault(n => n.TKNguoiDung.TenDN == tendn && n.TKNguoiDung.MatKhau == matkhau);
                if (nd != null)
                {
                    ViewBag.Thongbao = "Đăng nhập thành công";
                    Session["TenDN"] = nd;
                }
                else
                    ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng";
            }
            return View();
        }
    }
}