﻿using UniversityMVCWebApp.APIModel;
using UniversityMVCWebApp.Repository;

namespace UniversityMVCWebApp.DataServices
{
    public class UniversityDataService : IDataRepository<UniversityModelApi>
    {
        public void Add(UniversityModelApi university)
        {
            throw new NotImplementedException();
        }
        public IEnumerable<UniversityModelApi> GetAll()
        {
            return new List<UniversityModelApi>()
            {
                new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007

                },
                 new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
                  new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
                   new UniversityModelApi() 
                {
                   Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
                    new UniversityModelApi()
                {
                  Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
            };
        }
    }
}
