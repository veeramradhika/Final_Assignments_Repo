using Microsoft.AspNetCore.Mvc;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniversityMVCWebApp.APIModel;
using UniversityMVCWebApp.Controllers;
using UniversityMVCWebApp.Repository;
using Xunit;

namespace UniversityTestProject
{
    public class UniversityTestData
    {
        public void Index_ReturnsAViewResult_WithAListOfUniversities()
        {
            // Arrange
            var mockRepo = new Mock<IDataRepository<UniversityModelApi>>();

            mockRepo.Setup(repo => repo.GetAll()).Returns(UniversityTestData.GetTestUniversity());

            var controller = new UniversitiesController(mockRepo.Object);

            // Act
            var result = controller.Index();

            // Assert

            var viewResult = Assert.IsType<ViewResult>(result);

            var model = Assert.IsAssignableFrom<List<UniversityModelApi>>(viewResult.ViewData.Model);

            Assert.Equal(2, model.Count());

        }

        private static IEnumerable<UniversityModelApi> GetTestUniversity()
        {
            throw new NotImplementedException();
        }
    }
}
