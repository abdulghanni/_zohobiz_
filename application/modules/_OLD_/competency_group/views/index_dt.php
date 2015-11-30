<div class="page-content">
    <div id="portlet-config" class="modal hide">
        <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"></button>
             <h3>Widget Settings</h3>
        </div>
        <div class="modal-body">Widget settings form goes here</div>
    </div>
    <div class="clearfix"></div>
    <div class="content">
        <div class="page-title">
            <i class="icon-custom-left"></i>
            <h3><?php echo lang('list_of_subheading')?>&nbsp;<span class="semi-bold"><?php echo lang('comp_group_subheading');?></span></h3> 
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="grid simple ">                            
                    <div class="grid-body no-border">
                        <br/>
                        <div class="row">
                            <div class="col-md-6">
                                <h4><?php echo lang('search_of_subheading')?>&nbsp;<span class="semi-bold"><?php echo lang('comp_group_subheading');?></span></h4>
                            </div>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div id="MsgGood" class="alert alert-success text-center" style="display:none;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tabel">
                            <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                              <thead>
                                <tr>
                                  <th>Title</th>
                                  <th style="width:125px;">Action</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                    <td>Title1</td>
                                    <td>Action1</td>
                                </tr>
                                <tr>
                                    <td>Title2</td>
                                    <td>Action2</td>
                                </tr>
                              </tbody>

                              <tfoot>
                                <tr>
                                  <th>Title</th>
                                  <th>Action</th>
                                </tr>
                              </tfoot>
                            </table>
							
						</div>

                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE -->
</div>


<script type="text/javascript">

    var save_method;
    var table;
    $(document).ready(function() {
        $('#table').DataTable();
      table = $('#table').DataTable({ 
        
        "processing": true, 
        "serverSide": true,
        "ajax": {
            "url": "<?php echo site_url('competency_group/ajax_list')?>",
            "type": "POST"
        },

        "columnDefs": [
        { 
          "targets": [ -1 ],
          "orderable": false,
        },
        ],

      });
   });

    function reload_table()
    {
      table.ajax.reload(null,false);
    }

  </script>