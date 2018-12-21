<script>
    $(function() {
      $("#linkTypeSelect").change(function() {
        if ($(this).val() == "Internal") {
          $('#linkTypeExternal').hide();
          $('#linkTypeInternal').show();
        } else if ($(this).val() == "External") {
          $('#linkTypeExternal').show();
          $('#linkTypeInternal').hide();
        } else {
          $('#linkTypeInternal').hide();
          $('#linkTypeExternal').hide();
        }
      });
  
      $("#linkTypeSelect").trigger("change");
  
  
    });
</script>




<div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapseLinkExample">Link Type Example<span class="toggle" aria-hidden="true"></span></a>
            </h4>
        </div>
        <div id="collapseLinkExample" class="panel-collapse collapse">
            <div class="panel-body">
               
                <div class="row">
                    <div class="col-md-6">
                        <h2><label class="label-control" for="linkTypeSelect">Link Type</label></h2>
                        <p class="subText">Select if this links to an internal page on the site, or an external site.</p>
                        <select class="form-control" name="linktype" id="linkTypeSelect">
                            <option value="Select One">Select One</option>
                            <option value="Internal">Internal</option>
                            <option value="External">External</option>
                        </select>
                    </div>
                    <div class="col-md-6" id="linkTypeInternal">
                        <h2><label class="label-control" for="internal_page">Internal Page URL</label></h2>
                        <p class="subText">(Required) Add internal page relative URL.</p>
                        <input class="form-control" id="internal_page" name="internal_page" type="text">
                    </div>

                    <div class="col-md-6" id="linkTypeExternal" style="display:none;">
                        <h2><label class="label-control" for="external_page">Resource URL</label></h2>
                        <p class="subText">(Required) Add external URL.</p>
                        <input class="form-control" id="external_page" name="external_page" type="text">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
