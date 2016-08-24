var AutocompleteForm = {
  init: function() {
    $('input').on('keyup', this.onKeyup.bind(this));
  },

  onKeyup: function(evt) {
    var val = $(evt.currentTarget).val()

    var data = {
      text: val
    };

    if(val === '') {
      this.clearSuggestions();
    } else {
      $.get('/productive_items/suggested', data, this.renderSuggestions.bind(this));
    }
  },

  renderSuggestions: function(suggestions) {
    $('.suggestions').empty();

    suggestions.forEach(function(e, i) {
      var $suggestion = $('<div>').addClass('suggestion');
      $('.suggestions').append($suggestion.html(e.body));
    });

    $('.suggestions .suggestion').click(function(evt) {
      this.fillInputWithSuggestion($(evt.currentTarget).html());
    }.bind(this));
  },

  fillInputWithSuggestion: function(val) {
    $('.accomplish-input input').val(val);

    this.clearSuggestions();
  },

  clearSuggestions: function() {
    $('.suggestions').empty();
  }
};
