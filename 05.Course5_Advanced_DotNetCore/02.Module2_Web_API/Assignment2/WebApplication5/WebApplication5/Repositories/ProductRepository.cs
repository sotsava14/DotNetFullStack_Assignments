using Microsoft.EntityFrameworkCore;
using WebApplication5.Models;

namespace WebApplication5.Repositories
{
    public class ProductRepository : IProductRepository
    {
        public SalesDbContext _context;
        public ProductRepository(SalesDbContext context)
        {
            _context = context;
        }

        public List<Product> GetAllProducts()
        {
            List<Product> products = _context.Products.ToList();
            return products;
        }

        public Product GetProductById(int id)
        {
            return _context.Products.Find(id);
        }

        public void AddProduct(Product productObj)
        {
            _context.Products.Add(productObj);
            _context.SaveChanges();
        }
    }
}