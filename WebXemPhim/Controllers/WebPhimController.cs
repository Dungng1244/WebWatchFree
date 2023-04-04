using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebXemPhim.Models;

namespace WebXemPhim.Controllers
{
    public class WebPhimController : Controller
    {
        // GET: WebPhim
        dbWebsitePhimDataContext data = new dbWebsitePhimDataContext();
        private List<Phim> Layphimmoi(int count)
        {
            return data.Phims.OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
        }
        public ActionResult Index()
        {
            var Phimmoi = Layphimmoi(9);
            return View(Phimmoi);
        }

        public ActionResult Genre()
        {
            var genre = from gr in data.TheLoais select gr;
            return PartialView(genre);
        }
        public ActionResult PhimTheoGenre(int id)
        {
            var phim = from s in data.Phims where s.MaTL == id select s;
            return View(phim);
        }
        public ActionResult QuocGia()
        {
            var quocgia = from qg in data.QuocGias select qg;
            return PartialView(quocgia);
        }
        public ActionResult PhimTheoQG(int id)
        {
            var phim = from s in data.Phims where s.MaQG == id select s;
            return View(phim);
        }
        public ActionResult KieuPhim()
        {
            var kieuphim = from kp in data.KieuPhims select kp;
            return PartialView(kieuphim);
        }
        public ActionResult PhimTheoKieuPhim(int id)
        {
            var phim = from s in data.Phims where s.MaKieu == id select s;
            return View(phim);
        }

        public ActionResult Details()
        {
            return View();
        }
        /*public ActionResult Details(int id)
        {
            var phim = from s in data.Phims
                       where s.Maphim == id
                       select s;
            return View(phim.Single());
        }*/
    }
}