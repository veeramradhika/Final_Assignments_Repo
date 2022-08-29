using UniversityMVCWebApp.APIModel;

namespace UniversityMVCWebApp.Repository
{
    public interface IDataRepository<TEntity>
    {
        IEnumerable<TEntity> GetAll();

       void  Add(UniversityModelApi university);
    }
}
