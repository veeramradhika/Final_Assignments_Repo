using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniversityMVCWebApp.APIModel;

namespace UniversityTestProject.TestData
{
    public class UniversityTestData
    {
        public static IEnumerable<UniversityModelApi> GetTestUniversity()
        {
            return new List<UniversityModelApi>()
            {
                new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Jtua",
                    Location="Andhra",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007

                },
                 new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="OU",
                    Location="Hyderabad",
                    AffiliatedUnder="Telangana",
                    EstablishedYear=2007
                },
                  new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Jntuh",
                    Location="Hyderabad",
                    AffiliatedUnder="Telangana",
                    EstablishedYear=1980
                },
                   new UniversityModelApi()
                {
                   Id=1,
                    UniversityName="Jntuk",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=1889
                },
                    new UniversityModelApi()
                {
                  Id=1,
                    UniversityName="Delhi university",
                    Location="Delhi",
                    AffiliatedUnder="UGC",
                    EstablishedYear=1980
                },
            };
        }
    }
}
