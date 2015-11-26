<!--BEGIN PAGE CONTAINER-->
  <div class="page-content"> 
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div id="portlet-config" class="modal hide">
      <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button"></button>
        <h3>Widget Settings</h3>
      </div>
      <div class="modal-body"> Widget settings form goes here </div>
    </div>
    <div class="clearfix"></div>
    <div class="content">
    <ul class="breadcrumb">
        <li>
          <p>FORM PENGAJUAN</p>
        </li>
        <i class="icon-angle-right"></i>
        <li><a href="<?php echo site_url('form_cuti/index_hr')?>" class="active">Cuti - HR</a> </li>
      </ul>
      <div class="page-title"> <i class="icon-custom-left"></i>
        <h3><?php echo lang('list_of_submission'); ?> - <span class="semi-bold"><?php echo lang('form_cuti_subheading'); ?></span></h3>
      </div>
      <div class="pull-left" id="Filters">
        <div class="btn-group"> 
          <a href="#" data-toggle="dropdown" class="btn dropdown-toggle btn-demo-space"> <span class="anim150">Region</span> <span class="caret"></span> </a>
          <ul class="dropdown-menu">
            <li class="active" data-filter="all" data-dimension="region"><a href="#">All</a></li>
            <li data-filter="alaska" data-dimension="region"><a href="#">Alaska</a></li>
            <li data-filter="intermountain" data-dimension="region"><a href="#">Intermountain</a></li>
            <li data-filter="northeast" data-dimension="region"><a href="#">Northeast</a></li>
            <li data-filter="pacific_west" data-dimension="region"><a href="#">Pacific</a> </li>
            <li data-filter="southeast" data-dimension="region"><a href="#">Southeast</a></li>
          </ul>
        </div>
      </div>
      <div class="pull-right">
        <div class="btn-group">
          <a href="<?php echo site_url('form_cuti/input'); ?>" class="icon-plus-sign-alt custom-icon-space icon-2x"></a>
        </div>
      </div>
      <div class="clearfix"></div>
      <br>
      <ul id="Parks" class="just">
        <!-- "TABLE" HEADER CONTAINING SORT BUTTONS (HIDDEN IN GRID MODE)-->
        <div class="list_header">
          <!-- <th width="15%"><?php echo lang('name') ?></th>
                                  <th width="15%"><?php echo lang('date') ?></th>
                                  <th width="20%"><?php echo lang('reason') ?></th>
                                  <th width="10%"><?php echo lang('count_cuti') ?></th>
                                  <th width="15%">appr. spv</th>
                                  <th width="15%">appr. ka. bag</th>
                                  <th width="15%">appr. HRD</th> -->
          <div class="meta name active desc"> <?php echo lang('name') ?> </div>
          <div class="meta date"><?php echo lang('date') ?></div>
          <div class="meta reason"><?php echo lang('reason') ?></div>
          <div class="meta spv">appr. spv</div>
          <div class="meta kabag">appr. ka. bag</div>
          <div class="meta hr">appr. HRD</div>
        </div>
        <!-- FAIL ELEMENT -->
        <div class="fail_element anim250">Sorry &mdash; we could not find any parks matching matching these criteria</div>
        <!-- BEGIN LIST OF PARKS (MANY OF THESE ELEMENTS ARE VISIBLE ONLY IN LIST MODE)-->
        <!-- <tbody>
                                <?php if ($_num_rows > 0) {?>
                                  <?php foreach ($form_cuti as $user) :?>
                                  <?php
                                  $id_cuti = $user->id;
                                  $user_id = $user->user_id;
                                  $user_pengajuan = $this->form_cuti_model->where('users.id',$user_id)->render_emp()->row();
                                  $user_app_lv1 = $user->user_app_lv1;
                                  $date_app_lv1 = getDateFormat($user->date_app_lv1);
                                  $user_app_lv2 = $user->user_app_lv2;
                                  $date_app_lv2 = getDateFormat($user->date_app_lv2);
                                  $user_app_lv3 = $user->user_app_lv3;
                                  $date_app_lv3 = getDateFormat($user->date_app_lv3);

                                  // approval cuti
                                  $txt_app_lv1 = $txt_app_lv2 = $txt_app_lv3 = "-";
                                  if ($user->is_app_lv1 == 1) {
                                    $txt_app_lv1 = '<i class="icon-ok-sign"></i>';
                                  }elseif ($user->is_app_lv1 == 2) {
                                    $txt_app_lv1 = '<i class="icon-remove-sign"></i>';
                                  }
                                  elseif ($this->ion_auth->is_superior1()) {
                                    $txt_app_lv1 = "<a href='".site_url('form_cuti/approval_spv/'.$id_cuti)."'>approve</a>";
                                  }
                                  else{
                                    $txt_app_lv1 = '<i class="icon-check-empty"></i>';
                                  }
                                  
                                  if ($user->is_app_lv2 == 1) {
                                      $txt_app_lv2 = '<i class="icon-ok-sign"></i>';
                                  }elseif ($user->is_app_lv2 == 2) {
                                    $txt_app_lv2 = '<i class="icon-remove-sign"></i>';
                                  }elseif ($this->ion_auth->is_superior2()) {
                                    $txt_app_lv2 = "<a href='".site_url('form_cuti/approval_kbg/'.$id_cuti)."'>approve</a>";
                                  }
                                  else{
                                    $txt_app_lv2 = '<i class="icon-check-empty"></i>';
                                  }

                                  if ($user->is_app_lv3 == 1) {
                                    $txt_app_lv3 = '<i class="icon-ok-sign"></i>';
                                  }elseif ($user->is_app_lv3 == 2) {
                                    $txt_app_lv3 = '<i class="icon-remove-sign"></i>';
                                  }elseif ($this->ion_auth->is_hr()) {
                                    $txt_app_lv3 = "<a href='".site_url('form_cuti/approval_hr/'.$id_cuti)."'>approve</a>";
                                  }
                                  else{
                                    $txt_app_lv3 = '<i class="icon-check-empty"></i>';
                                  }

                                  $q_nm_app_lv1 = $this->form_cuti_model->where('users.id',$user_app_lv1)->get_user()->row();
                                    $nm_app_lv1_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv1)->get_user()->num_rows();

                                    $nm_app_lv1 = ($nm_app_lv1_num_rows > 0) ? $q_nm_app_lv1->first_name." ".$q_nm_app_lv1->last_name : "";
                                                                          
                                    $q_nm_app_lv2 = $this->form_cuti_model->where('users.id',$user_app_lv2)->get_user()->row();
                                    $nm_app_lv2_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv2)->get_user()->num_rows();

                                    $nm_app_lv2 = ($nm_app_lv2_num_rows > 0) ? $q_nm_app_lv2->first_name." ".$q_nm_app_lv2->last_name : "";

                                    $q_nm_app_lv3 = $this->form_cuti_model->where('users.id',$user_app_lv3)->get_user()->row();
                                    $nm_app_lv3_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv3)->get_user()->num_rows();

                                    $nm_app_lv3 = ($nm_app_lv3_num_rows > 0) ? $q_nm_app_lv3->first_name." ".$q_nm_app_lv3->last_name : "";

                                  // date cuti
                                  $date_now = date('Y-m-d');

                                  $datetime1 = new DateTime($date_now);
                                  $datetime2 = new DateTime($user->date_selesai_cuti);
                                  $interval = $datetime1->diff($datetime2);
                                  $sisa_cuti = $interval->format('%a');
                                  if ($datetime2 <= $datetime1) {
                                    $sisa_cuti = 0;
                                  }
                                  
                                  // user pengganti name
                                  $user_pengganti = $user->first_name." ".$user->last_name;
                                  ?>
                                  <tr class="itemcuti" id="<?php echo $id_cuti; ?>">
                                    <td valign="middle">
                                      <a href="#" id="viewcuti-<?php echo $id_cuti; ?>"><?php echo $user_pengajuan->first_name.' '.$user_pengajuan->last_name; ?></a>
                                    </td>
                                    <td valign="middle">
                                      <?php echo getDateFormat($user->date_mulai_cuti); ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $user->alasan_cuti; ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $user->jumlah_hari; ?> hari
                                    </td>
                                    <td valign="middle">
                                      <?php echo $txt_app_lv1; ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $txt_app_lv2; ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $txt_app_lv3; ?>
                                    </td>
                                  </tr>
                                  <tr id="cutidetail-<?php echo $id_cuti; ?>" style="display:none">
                                    <td class="detail" colspan="8">
                                      <div class="row">
                                        <form action="<?php echo site_url('form_cuti/delete/'.$id_cuti)?>" method="enctype" id="cuti_delete" onsubmit="return confirm('Are you sure you want to delete this record?');">
                                          <div class="col-md-12">
                                            <div class="grid simple">
                                              <div class="grid-title no-border">
                                                <input type="hidden" name="cuti_id" id="cuti_id" value="<?php echo $id_cuti; ?>">
                                                <h4>ID : #<?php echo $id_cuti; ?></h4>
                                              </div>
                                              <div class="grid-body no-border">
                                                <div class="row column-seperation">
                                                  <div class="col-md-5">
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('start_working') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="seniority_date" id="seniority_date" type="text"  class="form-control" placeholder="Lama Bekerja" value="<?php echo getDateFormat($user->seniority_date); ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('name') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="name" id="name" type="text"  class="form-control" placeholder="Nama" value="<?php echo $user_pengajuan->first_name.' '.$user_pengajuan->last_name; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('dept_div') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="organization" id="organization" type="text"  class="form-control" placeholder="Organization" value="<?php echo $user_pengajuan->organization_title; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('position') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="position" id="position" type="text"  class="form-control" placeholder="Jabatan" value="<?php echo $user_pengajuan->position_title; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('cuti_remain') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="sisa_cuti" id="sisa_cuti" type="text"  class="form-control" placeholder="Sisa Cuti" value="<?php echo $sisa_cuti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div class="col-md-7">
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('year') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="description" id="description" type="text"  class="form-control" placeholder="Description" value="<?php echo $user->comp_session; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('start_cuti_date') ?></label>
                                                      </div>
                                                      <div class="col-md-3">
                                                        <input name="registration_date" id="registration_date" type="text"  class="form-control" placeholder="Registration Date" value="<?php echo getDateFormat($user->date_mulai_cuti); ?>" disabled="disabled">
                                                      </div>
                                                      <div class="col-md-2">
                                                        <label class="form-label text-center">s/d</label>
                                                      </div>
                                                      <div class="col-md-3">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo getDateFormat($user->date_selesai_cuti); ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('count_day') ?></label>
                                                      </div>
                                                      <div class="col-md-2">
                                                        <input name="courseid" id="courseid" type="text"  class="form-control" placeholder="courseid" value="<?php echo $user->jumlah_hari; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('reason') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo $user->alasan_cuti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('replacement') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo $user_pengganti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('addr_cuti') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo $user->alamat_cuti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                  <?php if ($user->is_app_lv1 == 1) { ?>
                                                    <div class="row">
                                                      <div class="col-md-8 text-center">
                                                        Disetujui oleh,
                                                        <div class="row wf-cuti">
                                                          
                                                          <div class="col-md-6">
                                                            <?php if ($user->is_app_lv1 == 1) { ?>
                                                              <p class="wf-approve-sp">
                                                                <span class="semi-bold"><?php echo $nm_app_lv1 ?></span><br>
                                                                <span class="small"><?php echo $date_app_lv1 ?></span><br>
                                                                (Supervisor)
                                                              </p>   
                                                            <?php }?>
                                                          </div>
                                                          
                                                          <div class="col-md-6">
                                                            <?php if ($user->is_app_lv2 == 1) { ?>
                                                              <div class="col-md-6">
                                                              <p class="wf-approve-sm">
                                                                <span class="semi-bold"><?php echo $nm_app_lv2 ?></span><br>
                                                                <span class="small"><?php echo $date_app_lv2; ?></span><br>
                                                                (Ka. Cabang / Ka. Bagian)
                                                              </p>
                                                            </div>
                                                            <?php }?>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-md-4 text-center">
                                                        <div class="row wf-cuti">
                                                          <div class="col-md-12">
                                                            <?php if ($user->is_app_lv3 == 1) { ?>
                                                            <div class="col-md-6">
                                                              <p class="wf-approve-hr">
                                                                <span class="semi-bold"><?php echo $nm_app_lv3 ?></span><br>
                                                              <span class="small"><?php echo $date_app_lv3; ?></span><br>
                                                                (Personalia)
                                                              </p>
                                                            </div>
                                                            <?php }?>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  <?php }else{?>
                                                <div class="row">
                                                  <div class="col-md-12 text-right">
                                                    <button id="delete_cuti" name="delete_cuti" value="1" class="btn btn-danger" type="submit">delete</button>
                                                  </div>
                                                </div>
                                                <?php } ?>
                                              </div>
                                            </div>
                                          </div>
                                        </form>
                                    </div>
                                  </td>
                                </tr>
                                <?php endforeach; ?>
                                <?php } ?> 
                              </tbody> -->
        <?php if ($_num_rows > 0) {?>
          <?php foreach ($form_cuti as $user) :?>
          <?php
          $id_cuti = $user->id;
          $user_id = $user->user_id;
          $user_pengajuan = $this->form_cuti_model->where('users.id',$user_id)->render_emp()->row();
          $user_app_lv1 = $user->user_app_lv1;
          $date_app_lv1 = getDateFormat($user->date_app_lv1);
          $user_app_lv2 = $user->user_app_lv2;
          $date_app_lv2 = getDateFormat($user->date_app_lv2);
          $user_app_lv3 = $user->user_app_lv3;
          $date_app_lv3 = getDateFormat($user->date_app_lv3);

          // approval cuti
          $txt_app_lv1 = $txt_app_lv2 = $txt_app_lv3 = "-";
          if ($user->is_app_lv1 == 1) {
            $txt_app_lv1 = '<i class="icon-ok-sign"></i>';
          }elseif ($user->is_app_lv1 == 2) {
            $txt_app_lv1 = '<i class="icon-remove-sign"></i>';
          }
          elseif ($this->ion_auth->is_superior1()) {
            $txt_app_lv1 = "<a href='".site_url('form_cuti/approval_spv/'.$id_cuti)."'>approve</a>";
          }
          else{
            $txt_app_lv1 = '<i class="icon-check-empty"></i>';
          }
          
          if ($user->is_app_lv2 == 1) {
              $txt_app_lv2 = '<i class="icon-ok-sign"></i>';
          }elseif ($user->is_app_lv2 == 2) {
            $txt_app_lv2 = '<i class="icon-remove-sign"></i>';
          }elseif ($this->ion_auth->is_superior2()) {
            $txt_app_lv2 = "<a href='".site_url('form_cuti/approval_kbg/'.$id_cuti)."'>approve</a>";
          }
          else{
            $txt_app_lv2 = '<i class="icon-check-empty"></i>';
          }

          if ($user->is_app_lv3 == 1) {
            $txt_app_lv3 = '<i class="icon-ok-sign"></i>';
          }elseif ($user->is_app_lv3 == 2) {
            $txt_app_lv3 = '<i class="icon-remove-sign"></i>';
          }elseif ($this->ion_auth->is_hr()) {
            $txt_app_lv3 = "<a href='".site_url('form_cuti/approval_hr/'.$id_cuti)."'>approve</a>";
          }
          else{
            $txt_app_lv3 = '<i class="icon-check-empty"></i>';
          }

          $q_nm_app_lv1 = $this->form_cuti_model->where('users.id',$user_app_lv1)->get_user()->row();
            $nm_app_lv1_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv1)->get_user()->num_rows();

            $nm_app_lv1 = ($nm_app_lv1_num_rows > 0) ? $q_nm_app_lv1->first_name." ".$q_nm_app_lv1->last_name : "";
                                                  
            $q_nm_app_lv2 = $this->form_cuti_model->where('users.id',$user_app_lv2)->get_user()->row();
            $nm_app_lv2_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv2)->get_user()->num_rows();

            $nm_app_lv2 = ($nm_app_lv2_num_rows > 0) ? $q_nm_app_lv2->first_name." ".$q_nm_app_lv2->last_name : "";

            $q_nm_app_lv3 = $this->form_cuti_model->where('users.id',$user_app_lv3)->get_user()->row();
            $nm_app_lv3_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv3)->get_user()->num_rows();

            $nm_app_lv3 = ($nm_app_lv3_num_rows > 0) ? $q_nm_app_lv3->first_name." ".$q_nm_app_lv3->last_name : "";

          // date cuti
          $date_now = date('Y-m-d');

          $datetime1 = new DateTime($date_now);
          $datetime2 = new DateTime($user->date_selesai_cuti);
          $interval = $datetime1->diff($datetime2);
          $sisa_cuti = $interval->format('%a');
          if ($datetime2 <= $datetime1) {
            $sisa_cuti = 0;
          }
          
          // user pengganti name
          $user_pengganti = $user->first_name." ".$user->last_name;
          ?>
        <li class="mix northeast camping climbing fishing swimming" data-name="Acadia" data-area="47452.80">
          <div class="meta name">
            <div class="img_wrapper"> <img src="assets/img/others/acadia.jpg" /> </div>
            <div class="titles">
              <h2>Acadia</h2>
              <p><em>Maine</em></p>
            </div>
          </div>
          <div class="meta date">
            <p>Northeast</p>
          </div>
          <div class="meta reason">
            <ul>
              <li>Camping</li>
              <li>Climbing</li>
              <li>Fishing</li>
              <li>Swimming</li>
            </ul>
          </div>
          <div class="meta spv">
            <p>47,452.80</p>
          </div>
          <div class="meta kabag">
            <p>47,452.80</p>
          </div>
          <div class="meta hr">
            <p>47,452.80</p>
          </div>
        </li>
        <?php endforeach; ?>
        <?php } ?> 
        <!-- END LIST OF PARKS -->
      </ul>
	    <!-- <div id="container">
        <div class="row">
          <div class="col-md-12">
              <div class="grid simple ">
                  <div class="grid-body no-border">
                          <table class="table table-bordered" id="table_cuti">
                              <thead>
                                <tr>
                                  <th width="15%"><?php echo lang('name') ?></th>
                                  <th width="15%"><?php echo lang('date') ?></th>
                                  <th width="20%"><?php echo lang('reason') ?></th>
                                  <th width="10%"><?php echo lang('count_cuti') ?></th>
                                  <th width="15%">appr. spv</th>
                                  <th width="15%">appr. ka. bag</th>
                                  <th width="15%">appr. HRD</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php if ($_num_rows > 0) {?>
                                  <?php foreach ($form_cuti as $user) :?>
                                  <?php
                                  $id_cuti = $user->id;
                                  $user_id = $user->user_id;
                                  $user_pengajuan = $this->form_cuti_model->where('users.id',$user_id)->render_emp()->row();
                                  $user_app_lv1 = $user->user_app_lv1;
                                  $date_app_lv1 = getDateFormat($user->date_app_lv1);
                                  $user_app_lv2 = $user->user_app_lv2;
                                  $date_app_lv2 = getDateFormat($user->date_app_lv2);
                                  $user_app_lv3 = $user->user_app_lv3;
                                  $date_app_lv3 = getDateFormat($user->date_app_lv3);

                                  // approval cuti
                                  $txt_app_lv1 = $txt_app_lv2 = $txt_app_lv3 = "-";
                                  if ($user->is_app_lv1 == 1) {
                                    $txt_app_lv1 = '<i class="icon-ok-sign"></i>';
                                  }elseif ($user->is_app_lv1 == 2) {
                                    $txt_app_lv1 = '<i class="icon-remove-sign"></i>';
                                  }
                                  elseif ($this->ion_auth->is_superior1()) {
                                    $txt_app_lv1 = "<a href='".site_url('form_cuti/approval_spv/'.$id_cuti)."'>approve</a>";
                                  }
                                  else{
                                    $txt_app_lv1 = '<i class="icon-check-empty"></i>';
                                  }
                                  
                                  if ($user->is_app_lv2 == 1) {
                                      $txt_app_lv2 = '<i class="icon-ok-sign"></i>';
                                  }elseif ($user->is_app_lv2 == 2) {
                                    $txt_app_lv2 = '<i class="icon-remove-sign"></i>';
                                  }elseif ($this->ion_auth->is_superior2()) {
                                    $txt_app_lv2 = "<a href='".site_url('form_cuti/approval_kbg/'.$id_cuti)."'>approve</a>";
                                  }
                                  else{
                                    $txt_app_lv2 = '<i class="icon-check-empty"></i>';
                                  }

                                  if ($user->is_app_lv3 == 1) {
                                    $txt_app_lv3 = '<i class="icon-ok-sign"></i>';
                                  }elseif ($user->is_app_lv3 == 2) {
                                    $txt_app_lv3 = '<i class="icon-remove-sign"></i>';
                                  }elseif ($this->ion_auth->is_hr()) {
                                    $txt_app_lv3 = "<a href='".site_url('form_cuti/approval_hr/'.$id_cuti)."'>approve</a>";
                                  }
                                  else{
                                    $txt_app_lv3 = '<i class="icon-check-empty"></i>';
                                  }

                                  $q_nm_app_lv1 = $this->form_cuti_model->where('users.id',$user_app_lv1)->get_user()->row();
                                    $nm_app_lv1_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv1)->get_user()->num_rows();

                                    $nm_app_lv1 = ($nm_app_lv1_num_rows > 0) ? $q_nm_app_lv1->first_name." ".$q_nm_app_lv1->last_name : "";
                                                                          
                                    $q_nm_app_lv2 = $this->form_cuti_model->where('users.id',$user_app_lv2)->get_user()->row();
                                    $nm_app_lv2_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv2)->get_user()->num_rows();

                                    $nm_app_lv2 = ($nm_app_lv2_num_rows > 0) ? $q_nm_app_lv2->first_name." ".$q_nm_app_lv2->last_name : "";

                                    $q_nm_app_lv3 = $this->form_cuti_model->where('users.id',$user_app_lv3)->get_user()->row();
                                    $nm_app_lv3_num_rows = $this->form_cuti_model->where('users.id',$user_app_lv3)->get_user()->num_rows();

                                    $nm_app_lv3 = ($nm_app_lv3_num_rows > 0) ? $q_nm_app_lv3->first_name." ".$q_nm_app_lv3->last_name : "";

                                  // date cuti
                                  $date_now = date('Y-m-d');

                                  $datetime1 = new DateTime($date_now);
                                  $datetime2 = new DateTime($user->date_selesai_cuti);
                                  $interval = $datetime1->diff($datetime2);
                                  $sisa_cuti = $interval->format('%a');
                                  if ($datetime2 <= $datetime1) {
                                    $sisa_cuti = 0;
                                  }
                                  
                                  // user pengganti name
                                  $user_pengganti = $user->first_name." ".$user->last_name;
                                  ?>
                                  <tr class="itemcuti" id="<?php echo $id_cuti; ?>">
                                    <td valign="middle">
                                      <a href="#" id="viewcuti-<?php echo $id_cuti; ?>"><?php echo $user_pengajuan->first_name.' '.$user_pengajuan->last_name; ?></a>
                                    </td>
                                    <td valign="middle">
                                      <?php echo getDateFormat($user->date_mulai_cuti); ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $user->alasan_cuti; ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $user->jumlah_hari; ?> hari
                                    </td>
                                    <td valign="middle">
                                      <?php echo $txt_app_lv1; ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $txt_app_lv2; ?>
                                    </td>
                                    <td valign="middle">
                                      <?php echo $txt_app_lv3; ?>
                                    </td>
                                  </tr>
                                  <tr id="cutidetail-<?php echo $id_cuti; ?>" style="display:none">
                                    <td class="detail" colspan="8">
                                      <div class="row">
                                        <form action="<?php echo site_url('form_cuti/delete/'.$id_cuti)?>" method="enctype" id="cuti_delete" onsubmit="return confirm('Are you sure you want to delete this record?');">
                                          <div class="col-md-12">
                                            <div class="grid simple">
                                              <div class="grid-title no-border">
                                                <input type="hidden" name="cuti_id" id="cuti_id" value="<?php echo $id_cuti; ?>">
                                                <h4>ID : #<?php echo $id_cuti; ?></h4>
                                              </div>
                                              <div class="grid-body no-border">
                                                <div class="row column-seperation">
                                                  <div class="col-md-5">
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('start_working') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="seniority_date" id="seniority_date" type="text"  class="form-control" placeholder="Lama Bekerja" value="<?php echo getDateFormat($user->seniority_date); ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('name') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="name" id="name" type="text"  class="form-control" placeholder="Nama" value="<?php echo $user_pengajuan->first_name.' '.$user_pengajuan->last_name; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('dept_div') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="organization" id="organization" type="text"  class="form-control" placeholder="Organization" value="<?php echo $user_pengajuan->organization_title; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('position') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="position" id="position" type="text"  class="form-control" placeholder="Jabatan" value="<?php echo $user_pengajuan->position_title; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('cuti_remain') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="sisa_cuti" id="sisa_cuti" type="text"  class="form-control" placeholder="Sisa Cuti" value="<?php echo $sisa_cuti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div class="col-md-7">
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('year') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="description" id="description" type="text"  class="form-control" placeholder="Description" value="<?php echo $user->comp_session; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('start_cuti_date') ?></label>
                                                      </div>
                                                      <div class="col-md-3">
                                                        <input name="registration_date" id="registration_date" type="text"  class="form-control" placeholder="Registration Date" value="<?php echo getDateFormat($user->date_mulai_cuti); ?>" disabled="disabled">
                                                      </div>
                                                      <div class="col-md-2">
                                                        <label class="form-label text-center">s/d</label>
                                                      </div>
                                                      <div class="col-md-3">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo getDateFormat($user->date_selesai_cuti); ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('count_day') ?></label>
                                                      </div>
                                                      <div class="col-md-2">
                                                        <input name="courseid" id="courseid" type="text"  class="form-control" placeholder="courseid" value="<?php echo $user->jumlah_hari; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('reason') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo $user->alasan_cuti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('replacement') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo $user_pengganti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                    <div class="row form-row">
                                                      <div class="col-md-3">
                                                        <label class="form-label text-right"><?php echo lang('addr_cuti') ?></label>
                                                      </div>
                                                      <div class="col-md-9">
                                                        <input name="status" id="status" type="text"  class="form-control" placeholder="Status" value="<?php echo $user->alamat_cuti; ?>" disabled="disabled">
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                  <?php if ($user->is_app_lv1 == 1) { ?>
                                                    <div class="row">
                                                      <div class="col-md-8 text-center">
                                                        Disetujui oleh,
                                                        <div class="row wf-cuti">
                                                          
                                                          <div class="col-md-6">
                                                            <?php if ($user->is_app_lv1 == 1) { ?>
                                                              <p class="wf-approve-sp">
                                                                <span class="semi-bold"><?php echo $nm_app_lv1 ?></span><br>
                                                                <span class="small"><?php echo $date_app_lv1 ?></span><br>
                                                                (Supervisor)
                                                              </p>   
                                                            <?php }?>
                                                          </div>
                                                          
                                                          <div class="col-md-6">
                                                            <?php if ($user->is_app_lv2 == 1) { ?>
                                                              <div class="col-md-6">
                                                              <p class="wf-approve-sm">
                                                                <span class="semi-bold"><?php echo $nm_app_lv2 ?></span><br>
                                                                <span class="small"><?php echo $date_app_lv2; ?></span><br>
                                                                (Ka. Cabang / Ka. Bagian)
                                                              </p>
                                                            </div>
                                                            <?php }?>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-md-4 text-center">
                                                        <div class="row wf-cuti">
                                                          <div class="col-md-12">
                                                            <?php if ($user->is_app_lv3 == 1) { ?>
                                                            <div class="col-md-6">
                                                              <p class="wf-approve-hr">
                                                                <span class="semi-bold"><?php echo $nm_app_lv3 ?></span><br>
                                                              <span class="small"><?php echo $date_app_lv3; ?></span><br>
                                                                (Personalia)
                                                              </p>
                                                            </div>
                                                            <?php }?>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  <?php }else{?>
                                                <div class="row">
                                                  <div class="col-md-12 text-right">
                                                    <button id="delete_cuti" name="delete_cuti" value="1" class="btn btn-danger" type="submit">delete</button>
                                                  </div>
                                                </div>
                                                <?php } ?>
                                              </div>
                                            </div>
                                          </div>
                                        </form>
                                    </div>
                                  </td>
                                </tr>
                                <?php endforeach; ?>
                                <?php } ?> 
                              </tbody>
                          </table>
                  </div>
              </div>
          </div>
        </div>
      </div> -->
	          	
		
      </div>
		
	</div>  
	<!-- END PAGE