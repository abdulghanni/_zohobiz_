<?php 
    foreach ($competency_def as $user):
        $competency_level = $this->competency_level_model->where('competency_def_id',$user->id)->where('is_deleted',0)->competency_level()->result();
?>
<!--Edit Modal-->
        <?php echo form_open('competency_def/update/'.$user->id, array('id'=>'formupdate'.$user->id))?>
        <div class="modal fade" id="editModal<?php echo $user->id?>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel"><?php echo lang('edit_comp_def', 'edit_comp_def')?></h4>
                    </div>
                        <p class="error_msg" id="MsgBad2<?php echo $user->id?>" style="background: #fff; display: none;"></p>
                    <div class="modal-body">
                        <!-- <div class="row form-row">
                            <div class="col-md-3">
                                <?php echo lang('title', 'title');?>
                            </div>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="title" name="title" value="<?php echo $user->title?>">         
                            </div>
                        </div> -->

                        <div class="row form-row">
                            <div class="col-md-2 text-right">
                                <?php echo lang('title', 'title');?>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="title" name="title" value="<?php echo $user->title?>">      
                            </div>
                            <div class="col-md-2 text-right">
                                <?php echo lang('code_label', 'code');?>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="code" name="code" value="<?php echo $user->code?>">         
                            </div>
                        </div>
                        <div class="row form-row">
                            <div class="col-md-2 text-right">
                                <?php echo lang('comp_group_label', 'comp_group_label');?>
                            </div>
                            <div class="col-md-10">
                                <select name="competency_group_id" class="select2" id="competency_group_id<?php echo $user->id?>" style="width:100%">
                                <?php
                                    foreach ($options_competency_group->result_array() as $key => $value) {
                                        $selected = ($user->comp_group_id <> 0 && $user->comp_group_id == $value['id']) ? 'selected = selected' : '';
                                        echo '<option value="'.$value['id'].'" '.$selected.'>'.$value['title'].'</option>';
                                    }
                                ?>
                                </select>
                            </div>
                        </div> 

                        <div class="row form-row">
                            <div class="col-md-12 text-center">
                                <h4>Competency Level</h4>
                            </div>
                        </div>

                        <div class="row form-row">
                            <div class="col-md-12">
                                <?php foreach ($competency_level as $row):?>
                                <div class="row form-row">
                                    <div class="col-md-2 text-right">
                                        Level <?php echo $row->level?> 
                                    </div>
                                    <div class="col-md-10">
                                        <div class="row form-row">
                                            <div class="col-md-2"><?php echo lang('title', 'title');?></div>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" id="title_level<?php echo $row->id?>" name="title_level<?php echo $row->id?>" value="<?php echo $row->title?>"> 
                                            </div>
                                        </div>
                                        <div class="row form-row">
                                            <div class="col-md-2"><?php echo lang('description', 'description');?></div>
                                            <div class="col-md-10">
                                                <input type="hidden" class="form-control" id="id_level<?php echo $row->id?>" name="id_level<?php echo $row->id?>" value="<?php echo $row->id?>">
                                                <input type="text" class="form-control" id="description_level<?php echo $row->id?>" name="description_level<?php echo $row->id?>" value="<?php echo $row->description?>">
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                                <!-- <div class="row form-row">
                                    <div class="col-md-12"><input type="text" class="form-control" id="description_level<?php echo $row->id?>" name="description_level<?php echo $row->id?>" value="<?php echo $row->description?>"> </div>
                                </div> -->
                                <?php endforeach?>
                            </div>
                        </div>  


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
              <?php echo form_open('competency_def/delete/'.$user->id, array("id"=>"formdelete".$user->id))?>
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
                            getTable();getModal();
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
                            getTable();getModal();
                            $("#deleteModal<?php echo $user->id?>").modal('hide');
                            $('#MsgGood').text('Data Deleted').fadeIn().delay(4000).fadeOut("slow");
                            setTimeout(function(){location.reload()},2000);
                        }
                    }, 'json');
                    return false;
                });

                $('#competency_group_id<?php echo $user->id?>').select2();
            });
        </script>
    <?php endforeach;?>