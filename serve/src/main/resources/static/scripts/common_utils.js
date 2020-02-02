Utils = {
  doAjax: function (url, params, success) {
    $.ajax({
      type: 'POST',
      url: url,
      dataType: "json",
      contentType: "application/json",
      data: JSON.stringify(params),
      success: function (data) {
        success(data);
      }
    })
  }
}