using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using A7___Exercise1.Database;
using A7___Exercise1.Models;
using System.Data.SqlClient;
using System.Data;

namespace A7___Exercise1.Controllers
{
    public class BlogController : Controller
    {
        private readonly DatabaseContext _context;

        public BlogController(DatabaseContext context)
        {
            _context = context;
        }

        // GET: Blog
        public async Task<IActionResult> Index()
        {
            return View(await _context.Comments.ToListAsync());
        }

        // GET: Blog/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var comments = await _context.Comments
                .SingleOrDefaultAsync(m => m.CommentId == id);
            if (comments == null)
            {
                return NotFound();
            }

            return View(comments);
        }

        // GET: Blog/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Blog/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("CommentId,EmailId,Comment,CreateDate")] Comments comments)
        {
            if (ModelState.IsValid)
            {
                _context.Add(comments);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(comments);
        }

        // GET: Blog/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var comments = await _context.Comments.SingleOrDefaultAsync(m => m.CommentId == id);
            if (comments == null)
            {
                return NotFound();
            }
            return View(comments);
        }

        // POST: Blog/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("CommentId,EmailId,Comment,CreateDate")] Comments comments)
        {
            if (id != comments.CommentId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(comments);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CommentsExists(comments.CommentId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(comments);
        }

        // GET: Blog/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var comments = await _context.Comments
                .SingleOrDefaultAsync(m => m.CommentId == id);
            if (comments == null)
            {
                return NotFound();
            }

            return View(comments);
        }

        // POST: Blog/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var comments = await _context.Comments.SingleOrDefaultAsync(m => m.CommentId == id);
            _context.Comments.Remove(comments);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CommentsExists(int id)
        {
            return _context.Comments.Any(e => e.CommentId == id);
        }

        public IActionResult ShowDetails(string emailId)
        {
            var outGoingUrl = "https://google.com?q="+ WebUtility.UrlEncode(emailId);

            string TestString = "This is a <H1> Welcome </H1>";

            string encodedString = WebUtility.HtmlEncode(TestString);

            string decodedString = WebUtility.HtmlDecode(encodedString);

            return Redirect(outGoingUrl);
        }

        public IActionResult ResetData()
        {
            DataTable dt = new DataTable();

            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                var query = "delete Comments";
                SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                SqlDataAdapter da = new SqlDataAdapter { SelectCommand = cmd };
                da.Fill(dt);
            }

            return RedirectToAction("Index");
        }
    }
}
