function initializeAddressPicker() {
  $('#user_country').on('change', function(e) {
    e.preventDefault();

    $.ajax({
      url: '/states',
      dataType: 'json',
      data: {country_name: $('#user_country').val()},
      type: 'GET'
    }).done(function(data) {
      var state_data = "<option value=''>--</option>";
      for(i = 0; i < data.length; i += 1) {
        state_data += "<option value='" + data[i] + "'>" + data[i] + "</option>";
      }
      $('#user_state').html(state_data).removeAttr('disabled');
    });
  });

  $('#user_state').on('change', function(e) {
    e.preventDefault();

    $.ajax({
      url: '/cities',
      dataType: 'json',
      data: {state_name: $('#user_state').val()},
      type: 'GET'
    }).done(function(data) {
      var city_data = "<option value=''>--</option>";
      for(i = 0; i < data.length; i += 1) {
        city_data += "<option value='" + data[i] + "'>" + data[i] + "</option>";
      }
      $('#user_city').html(city_data).removeAttr('disabled');
    });
  });
}

$(function() {
  $('#user_state, #user_city').attr('disabled', 'disabled');

  // Mobile number validation
  $('#user-form').on('submit', function(e) {
    if(!/^[1-9][0-9]{9}$/.test($('#user_mobile').val())) {
      alert('Invalid mobile number');
      return false;
    }
  });

  initializeAddressPicker();
})
