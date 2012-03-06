var model = {
  getMessage : function(veracity) {
    return veracity ? 'truth' : 'falsehood';
  }
};

var view = {
  result : function(value) {
    $("#result").val(value);
  }       
};

var setTruth = function() {
  model.getMessage(true);
};

$(function() {
  $('#true-button').click(function() { alert("test"); });
});
