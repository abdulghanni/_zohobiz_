<!-- Add Course Modal -->
<?php echo form_open('position/add/', array('id'=>'formadd2'))?> 
<div class="modal fade" id="addModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="modaldialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo lang('add_pos_group', 'add_pos_group')?></h4>
      </div>
      <p class="error_msg" id="MsgBad" style="background: #fff; display: none;"></p>
      <div class="modal-body">
        
             <div class="row form-row">
                <div class="col-md-3">
                    <?php echo lang('title', 'title');?>
                </div>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="title" name="title">         
                </div>
            </div>

            <div class="row form-row">
                <div class="col-md-3">
                    <?php echo lang('abbr', 'abbr');?>
                </div>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="abbr" name="abbr">         
                </div>
            </div>

            <div class="row form-row">
                <div class="col-md-3">
                    <?php echo lang('position_group', 'position_group_id');?>
                </div>
                <div class="col-md-9">
                    <select name="position_group_id" class="select2" id="position_group_id" style="width:100%">
                        <?php
                            echo '<option value="0">-- Option --</option>';
                            foreach ($position_group->result_array() as $key => $value) {
                                $selected = ($position_group_id <> 0 && $position_group_id == $value['position_group_position_id']) ? 'selected = selected' : '';
                                echo '<option value="'.$value['id'].'" '.$selected.'>'.$value['title'].'</option>';
                            }
                        ?>
                        </select>
                </div>
            </div>

            <div class="row form-row">
                <div class="col-md-3">
                    <?php echo lang('position_parent', 'parent_position_id');?>
                </div>
                <div class="col-md-9">
                    <select name="parent_position_id" class="select2" id="parent_position_id" style="width:100%">
                        <?php
                            echo '<option value="0">-- Option --</option>';
							if($q_parent->num_rows()>0){
                            foreach ($q_parent->result_array() as $value) {
                                $selected = ($parent_id <> 0 && $parent_id == $value['parent_position_id']) ? 'selected = selected' : '';
                                echo '<option value="'.$value['id'].'" '.$selected.'>'.$value['title'].'</option>';
                            }}
                        ?>
                        </select>
                </div>
            </div>
			
			<div class="row form-row">
                <div class="col-md-3">
                    <?php echo lang('organization', 'organization_id');?>
                </div>
                <div class="col-md-9">
                    <select name="organization_id" class="select2" id="organization_id" style="width:100%">
                        <?php
                            echo '<option value="0">-- Option --</option>';
                            foreach ($organization->result_array() as $key => $value) {
                                $selected = ($organization_id <> 0 && $organization_id == $value['organization_position_id']) ? 'selected = selected' : '';
                                echo '<option value="'.$value['id'].'" '.$selected.'>'.'['.$value['organization_class_title'].'] '.$value['title'].'</option>';
                            }
                        ?>
                        </select>
                </div>
            </div>

            <div class="row form-row">
                <div class="col-md-3">
                    <?php echo lang('description', 'description');?>
                </div>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="description" name="description">         
                </div>
            </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-remove"></i>&nbsp;<?php echo lang('close_button')?></button> 
        <button type="submit" class="btn btn-primary lnkBlkWhtArw" name="btn_add" id="btnRetPass" style="margin-top: 3px;"><i class="icon-ok-sign"></i>&nbsp;<?php echo lang('save_button')?></button> 
      </div>
        
    </div>
  </div>
</div>
<?php echo form_close()?>
<!--end add modal-->

<?php foreach ($position as $user):?>
<!--Edit Modal-->
        <?php echo form_open('position/update/'.$user->id, array('id'=>'formupdate'.$user->id))?>
        <div class="modal fade" id="editModal<?php echo $user->id?>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel"><?php echo lang('edit_pos_group', 'edit_pos_group')?></h4>
                    </div>
                        <p class="error_msg" id="MsgBad2<?php echo $user->id?>" style="background: #fff; display: none;"></p>
                    <div class="modal-body">
                        
                        <div class="row form-row">
							<div class="col-md-6">
								<input type="text" class="form-control" id="title" name="title" value="<?php echo $user->title?>" placeholder="<?php echo lang('title');?>">         
							</div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="abbr" name="abbr" value="<?php echo $user->abbr?>" placeholder="<?php echo lang('abbr');?>">         
                            </div>
						</div>

						<div class="row form-row">
                            <div class="col-md-6">
                                <select name="position_group_id" class="select2" id="position_group_id<?php echo $user->id?>" style="width:100%">
                                    <?php
                                        echo '<option value="0">'.lang('position_group').'</option>';
                                        foreach ($position_group->result_array() as $key => $value) {
                                            $selected = ($user->position_group_id <> 0 && $user->position_group_id == $value['id']) ? 'selected = selected' : '';
                                            echo '<option value="'.$value['id'].'" '.$selected.'>'.$value['title'].'</option>';
                                        }
                                    ?>
                                    </select>
                            </div>
                            <div class="col-md-6">
                                <select name="parent_position_id" class="select2" id="parent_position_id<?php echo $user->id?>" style="width:100%">
                                    <?php
                                        echo '<option value="0">'.lang('position_parent').'</option>';
                                        if($q_parent->num_rows()>0){
                                        foreach ($parent->result_array() as $value) {
                                            $selected = ($user->parent_position_id == $value['id']) ? 'selected = selected' : '';
                                            echo '<option value="'.$value['id'].'" '.$selected.'>'.$value['title'].'</option>';
                                        }}
                                    ?>
                                    </select>
                            </div>
						</div>
						
						<div class="row form-row">
							<div class="col-md-6">
								<select name="organization_id" class="select2" id="organization_id<?php echo $user->id?>" style="width:100%">
									<?php
										echo '<option value="0">'.lang('organization').'</option>';
										foreach ($organization->result_array() as $key => $value) {
											$selected = ($user->organization_id <> 0 && $user->organization_id == $value['id']) ? 'selected = selected' : '';
											echo '<option value="'.$value['id'].'" '.$selected.'>'.'['.$value['organization_class_title'].'] '.$value['title'].'</option>';
										}
									?>
									</select>
							</div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="description" name="description" value="<?php echo $user->description?>" placeholder="<?php echo lang('description');?>">         
                            </div>
						</div>


                        <div class="row form-row">
                            <div class="col-md-12 text-center">
                                <h4>Competency</h4>
                            </div>
                        </div>

                        <?php foreach ($competency_group->result_array() as $row): ?>
                            <div class="row form-row">
                                <div class="col-md-4">
                                    <label>Competency Group : <?php echo $row['title']?></label>
                                </div>
                                <div class="col-md-8">
                                    <select name="competency_def<?php echo $row['id']?>[]" class="select2" id="competency<?php echo $row['id']?>_def<?php echo $user->id?>" style="width:100%" placeholder="Competency" multiple>
                                    <?php
                                        $f_competency_def = array(
                                            'is_deleted' => "where/0",
                                            'comp_group_id' => "where/".$row['id'],
                                            'title' => "order/asc",
                                            );
                                        $q_competency_def = GetAll_('competency_def',$f_competency_def);
                                        $competency_def = ($q_competency_def->num_rows() > 0 ) ? $q_competency_def : array();
                                        foreach($competency_def->result_array() as $value) {
                                            echo '<option value="'.$value['id'].'" >'.$value['title'].'</option>';
                                        }
                                    ?>
                                    </select>
                                </div>
                            </div>

                            <div id="position_conpetency_div">
                            <?php 
                            $f_position_competency = array(
                                            'position_competency.is_deleted' => "where/0",
                                            'position_competency.position_id' => "where/".$user->id,
                                            'competency_def.comp_group_id' => "where/".$row['id']
                                            );
                            $q_competency_def = GetJoin('position_competency','competency_def','position_competency.competency_def_id = competency_def.id','left','position_competency.id as id,position_competency.position_id as position_id,position_competency.itj as itj,competency_def.title as competency_title',$f_position_competency);
                            if($q_competency_def->num_rows() > 0){ ?>
                            <div class="row form-row">
                                <div class="col-md-8 col-md-offset-4">
                                    <table class="table">
                                        <tr>
                                            <th>Competency</th>
                                            <th>ITJ</th>
                                        </tr>
                                        <?php foreach ($q_competency_def->result_array() as $comp): ?>
                                        <tr id="row_pos_comp<?php echo $comp['id']?>">
                                            <td>
                                                <input type="hidden" name="url_del_pos_comp<?php echo $comp['id']?>" value="<?php echo site_url('position/del_pos_comp/')?>">
                                                <a title="remove" id="pos_comp_del<?php echo $comp['id']?>" class="pos_comp_del" onclick="del_pos_comp('<?php echo $comp['id']?>','<?php echo site_url('position/del_pos_comp/')?>')">
                                                    <i class="icon-remove"></i>
                                                </a>
                                                <u class="pos_comp" id="pos_comp<?php echo $comp['id']?>" onClick="toggle_form_('<?php echo $comp['id']?>')"><?php echo $comp['competency_title']?></u>
                                            </td>
                                            <td id="itj<?php echo $comp['id']?>">
                                               <?php echo $comp['itj']?>
                                            </td>
                                            <td id="itj_box<?php echo $comp['id']?>" style="display:none;">
                                                <input type="text" class="form-control" name="itj_txt<?php echo $comp['id']?>" value="<?php echo $comp['itj']?>" placeholder="important to job" onChange="update_itj('<?php echo $comp['id']?>','<?php echo site_url('position/update_itj/')?>')">
                                                <div id="MsgBad"></div>
                                            </td>
                                        </tr>
                                        <?php endforeach;?> 
                                    </table>
                                </div>
                            </div>
                            <?php } ?>
                        </div>

                        <?php endforeach;?> 
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-remove"></i>&nbsp;<?php echo lang('close_button')?></button> 
                        <button type="submit" class="btn btn-primary lnkBlkWhtArw" style="margin-top: 3px;" id="submit"><i class="icon-ok-sign"></i>&nbsp;<?php echo lang('save_button')?></button> 
                    </div>             
                </div>
            </div>
        </div>
       
        
        <?php echo form_close()?>
        <!-- End Edit Modal-->

        <!--Delete Modal-->
        <div class="modal fade" id="deleteModal<?php echo $user->id?>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo lang('delete_confirmation').' for '.$user->title; ?></h4>
                </div>
              <?php echo form_open('position/delete/'.$user->id, array("id"=>"formdelete".$user->id))?>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="display:none"><span aria-hidden="true">&times;</span></button>
              <div class="modal-body">
                <p><?php echo lang('delete_this_data').$user->title.' ?'; ?></p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="icon-ban-circle"></i>&nbsp;<?php echo lang('cancel_button')?></button> 
                <button type="submit" class="btn btn-danger lnkBlkWhtArw" style="margin-top: 3px;"><i class="icon-warning-sign"></i>&nbsp;<?php echo lang('delete_button')?></button>
              </div>
                <?php echo form_close()?>
            </div>
          </div>
        </div>
        <!-- End Delete Modal-->
        <script type="text/javascript">
            $(document).ready(function(){
                $('#formupdate<?php echo $user->id?>').on("submit",function(response){
                    $.post($('#formupdate<?php echo $user->id?>').attr('action'), $('#formupdate<?php echo $user->id?>').serialize(),function(json){
                        if(json.st == 0){
                            $('#MsgBad2<?=$user->id?>').html(json.errors).fadeIn();
                        }else{
                            getTable();getModal();;
                            $("[data-dismiss=modal]").trigger({ type: "click" });
                            $('#MsgBad2<?=$user->id?>').hide();
                            $('#MsgGood').text('Data Updated').fadeIn().delay(3000).fadeOut("slow");
                        }
                    }, 'json');
                    return false;
                });

                $('#formdelete<?php echo $user->id?>').submit(function(response){
                    $.post($('#formdelete<?php echo $user->id?>').attr('action'), $('#formdelete<?php echo $user->id?>').serialize(),function(json){
                        if(json.st == 0){
                            $('#MsgBad').text('Delete Failed').fadeIn();
                        }else{
                            getTable();getModal();;
                            $("[data-dismiss=modal]").trigger({ type: "click" });
                            $('#MsgGood').text('Data Deleted').fadeIn().delay(4000).fadeOut("slow");
                        }
                    }, 'json');
                    return false;
                });

                 $('#position_group_id<?php echo $user->id?>').select2();
                 $('#parent_position_id<?php echo $user->id?>').select2();
                 $('#organization_id<?php echo $user->id?>').select2();
                 $('#competency1_def<?php echo $user->id?>').select2();
                 $('#competency2_def<?php echo $user->id?>').select2();
                 $('#competency3_def<?php echo $user->id?>').select2();
                 $('#organization_id').select2();

            });
        </script>
    <?php endforeach;?>
    <script type="text/javascript">

        function toggle_form_(idx){
            $('#itj' + idx).toggle();
            $('#itj_box' + idx).toggle();
        } 

        function update_itj(idx,url_update){           
            var itj_txt = $('input[name=itj_txt' + idx).val();
            var id_txt = idx;
           $.post(url_update, {itj : itj_txt,id : id_txt},function(json){
                if(json.st == 0){
                    $('#MsgBad').text('Update Failed').fadeIn();
                }else{
                    $('#itj' + idx).toggle();
                    $('#itj_box' + idx).toggle();
                    $('#itj' + idx).text(json.itj_new);
                }
            }, 'json');
            return false;
        }

        function del_pos_comp(idx,url_del_pos_comp){
            var id_txt = idx;
           $.post(url_del_pos_comp, {is_deleted : 1,id : id_txt},function(json){
                if(json.st == 0){
                    $('#MsgBad').text('Update Failed').fadeIn();
                }else{
                    $('#row_pos_comp' + idx).fadeOut();
                }
            }, 'json');
            return false;
        }
    </script>
<script src="<?php echo assets_url('js/main.js'); ?>"></script>