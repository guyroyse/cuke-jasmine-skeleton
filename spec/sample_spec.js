describe("Sample", function() {

  beforeEach(function() {
    loadFixtures('sample-fixture.html');
  });

  describe("Model", function() {

    it("returns falsehood when handed false", function() {
      expect(model.getMessage(false)).toBe('falsehood');
    });

    it("returns truth when handed true", function() {
      expect(model.getMessage(true)).toBe('truth');
    });

  });

  describe("View", function() {

    it("displays a string in the result field", function() {
      view.result('foo');
      expect($('#result')).toHaveValue('foo');
    });

  });

  describe("Events", function() {

    it("passes true to the model when true is pressed", function() {
      spyOn(model, 'getMessage');
      $('#true-button').click();
      expect(model.getMessage).toHaveBeenCalledWith(true);
    });

  });

});
