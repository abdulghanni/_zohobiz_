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
            <h3><?php echo lang('list_of_subheading')?>&nbsp;<span class="semi-bold"><?php echo lang('comp_def_subheading');?></span></h3> 
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="grid simple ">                            
                    <div class="grid-body no-border">
                        <br/>
                        <div class="row">
                            <div class="col-md-6">
                                <h4><?php echo lang('search_of_subheading')?>&nbsp;<span class="semi-bold"><?php echo lang('comp_def_subheading');?></span></h4>
                            </div>
                        </div>
                        <?php echo form_open(site_url('competency_def/keywords'),array( 'id'=>'search_comp_def'))?>

                            <div class="row">
                                <div class="col-md-5">
                                    <div class="row">
                                        <div class="col-md-3 search_label"><?php echo form_label(lang('index_ftitle_th'),'Title')?></div>
                                        <div class="col-md-9"><?php echo bs_form_input($ftitle_search)?></div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-info"><i class="icon-search"></i>&nbsp;<?php echo lang('search_button')?></button>
                                            <button type="button" class="btn btn-primary" id="addnew" data-toggle="modal" data-target="#addModal"><i class="icon-plus"></i>&nbsp;<?php echo lang('add_button');?></button>
                                            <!-- <input type="hidden" value="<?php echo site_url('competency_def/add__')?>" name="url_add_" id="url_add_">
                                            <input type="hidden" name="last_id" id="last_id">
                                            <button type="button" class="btn btn-primary" id="addnew_"><i class="icon-plus"></i>&nbsp;<?php echo lang('add_button');?></button> -->
                                        </div>
                                    </div>
                                </div>    
                            </div>
                        <?php echo form_close()?>
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
							<table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th width="1%">
                                            <div class="checkbox check-default">
                                                <input id="checkbox10" type="checkbox" value="1" class="checkall">
                                                <label for="checkbox10"></label>
                                            </div>
                                        </th>
                                        <th width="10%"><?php echo anchor('competency_def/index/'.$ftitle_param.'/title/'.(($sort_order == 'asc' && $sort_by == 'title') ? 'desc' : 'asc'), lang('index_ftitle_th'));?></th>
                                        <th width="10%"><?php echo lang('comp_group_label');?></th>
                                        <th width="10%"><?php echo lang('index_action_th');?></th>                                  
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if($_num_rows > 0) { ?>
                                        <?php foreach ($competency_def as $user):?>
                                            <tr>
                                                <td valign="middle">
                                                     <div class="checkbox check-default">
                                                        <input id="checkbox11" type="checkbox" value="1">
                                                        <label for="checkbox11"></label>
                                                    </div>
                                                </td>
                                                <td valign="middle"><?php echo $user->title;?></td>
                                                <td valign="middle"><?php echo $user->competency_group_title;?></td>
                                                <td valign="middle">
                                                    <button type="button" class="btn btn-info btn-small" data-toggle="modal" data-target="#editModal<?php echo $user->id?>" title="<?php echo lang('edit_button')?>"><i class="icon-paste"></i></button>
                                                    
                                                    <button class='btn btn-danger btn-small' type="button" name="remove_levels" value="Delete" data-toggle="modal" data-target="#deleteModal<?php echo $user->id?>" title="<?php echo lang('delete_button')?>"><i class="icon-warning-sign"></i></button>
                                                </td>
                                            </tr>
                                        <?php endforeach;?>
                                    <?php }else{ ?>
                                            <tr>
                                                <td valign="middle" colspan="4">
                                                    <p class="text-center">No Data</p>
                                                </td>
                                            </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
						</div>

                        <div class="row">
                            <div class="col-md-4 page_limit">
                                <?php echo form_open(uri_string());?>
                                <?php 
                                    $selectComponentData = array(
                                        10  => '10',
                                        25 => '25',
                                        50 =>'50',
                                        75 => '75',
                                        100 => '100',);
                                    $selectComponentJs = 'class="select2" onChange="this.form.submit()" id="limit"';
                                    echo "Per page: ".form_dropdown('limit', $selectComponentData, $limit, $selectComponentJs);
                                    echo '&nbsp;'.lang('found_subheading').'&nbsp;'.$num_rows_all.'&nbsp;'.lang('comp_def_subheading');
                                ?>
                                <?php echo form_close();?>
                            </div>
                            <div class="col-md-10">
                                <ul class="pagination">
                                    <?php echo $halaman;?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE -->
</div>

<div id="modal"></div>

<!-- Add Course Modal -->
<div class="modal fade" id="addModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="modaldialog">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo lang('add_comp_def', 'add_comp_def')?></h4>
      </div>
      <p class="error_msg" id="MsgBad" style="background: #fff; display: none;"></p>
      <div class="modal-body">
            <?php echo form_open('competency_def/add/', array('id'=>'formadd3'))?> 
             <div class="row form-row">
                <div class="col-md-2 text-right">
                    <?php echo lang('title', 'title');?>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="title" name="title">         
                </div>
                <div class="col-md-2 text-right">
                    <?php echo lang('code_label', 'code');?>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="code" name="code">         
                </div>
            </div>
            <div class="row form-row">
                <div class="col-md-2 text-right">
                    <?php echo lang('comp_group_label', 'comp_group_label');?>
                </div>
                <div class="col-md-10">
                    <?php 
                        $extra = array(
                            'id'=>'competency_group_id',
                            'class'=>'select2'
                            );

                        echo bs_form_dropdown('competency_group_id', $options_competency_group, '', $extra);
                    ?>      
                </div>
            </div>                    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-remove"></i>&nbsp;<?php echo lang('close_button')?></button> 
        <button type="submit" class="btn btn-primary" name="btn_add" id="btnRetPass" style="margin-top: 3px;" ><i class="icon-ok-sign"></i>&nbsp;<?php echo lang('save_button')?></button> 
      </div>
        <?php echo form_close()?>
    </div>
  </div>
</div>
<!--end add modal-->


<script type="text/javascript">
    
    window.onload = function()
    {
        getModal();
    };

    function getTable() 
    {
        $('#tabel').load('<?php echo site_url('competency_def/get_table/'); ?>');
    }
	
	function getModal() 
    {
        $('#modal').load('<?php echo site_url('competency_def/get_modal/'); ?>');
    }


</script>