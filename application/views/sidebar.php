<!-- BEGIN SIDEBAR -->
  <div class="page-sidebar" id="main-menu"> 
    <!-- BEGIN MINI-PROFILE -->
    <div class="user-info-wrapper"> 
      <div class="profile-wrapper">
        <img src="<?php
		
		if($s_photo && file_exists('./uploads/'.$u_folder.'/'.$s_photo)) {
        echo base_url().'uploads/'.$u_folder.'/80x80/'.$s_photo;
        }else{
        echo base_url().'assets/img/no-image.png';
        }
		?>" data-src="<?php echo assets_url('img/profiles/avatar.jpg'); ?>" data-src-retina="<?php echo assets_url('img/profiles/avatar2x.jpg'); ?>" width="69" height="69" />
      </div>
      <div class="user-info">
        <div class="greeting">Welcome</div>
        <div class="username"><?php echo $this->session->userdata('username')?></div>
        <div class="status">Status<a href="#"><div class="status-icon green"></div>Online</a></div>
        <br/> <br/>
      </div>
    </div>
    <!-- END MINI-PROFILE -->
  <!-- BEGIN SIDEBAR MENU --> 
    <ul>  
      <li class="start active "> 
        <a href="<?php echo site_url('auth')?>"> <i class="icon-custom-home"></i> <span class="title">Halaman Depan</span> <span class="selected"></span> </a> 
      </li>      
      <li class=""> <a href="attendance.html"> <i class="icon-signin"></i> <span class="title">Kehadiran</span></a>
      </li>
      <li class=""> <a href="javascript:;"> <i class="icon-plus-sign"></i> <span class="title">Form pengajuan</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="<?php echo site_url('form_cuti')?>">Cuti</a> </li>
          
          <li > <a href="<?php echo site_url('form_spd_dalam') ?>">Perjalanan dinas - dalam kota</a> </li>          
          <li > <a href="<?php echo site_url('form_spd_luar') ?>">Perjalanan dinas - luar kota</a> </li>            
          <li > <a href="<?php echo site_url('form_absen') ?>">Keterangan tidak absen</a> </li>
          <?php echo ($this->ion_auth->is_superior1()) ? '<li > <a href="'.site_url('form_absen/index_superior1').'">Absen - Subordinate appr1</a> </li>' : "";?>
          <?php echo ($this->ion_auth->is_superior2()) ? '<li > <a href="'.site_url('form_absen/index_superior2').'">Absen - Subordinate appr2</a> </li>' : "";?>
          <li > <a href="<?php echo site_url('form_training') ?>">Training</a> </li>
          <?php echo ($this->ion_auth->is_superior1()) ? '<li > <a href="'.site_url('form_training/index_superior1').'">Training - Subordinate appr1</a> </li>' : "";?>
          <?php echo ($this->ion_auth->is_hr()) ? '<li > <a href="'.site_url('form_training/index_hr').'">Training - Subordinate appr2</a> </li>' : "";?>                  
          <li > <a href="form_medical.html">Medical</a> </li>          
          <li > <a href="<?php echo site_url('form_promosi') ?>">Promosi</a> </li>          
          <li > <a href="form_demolition.html">Demolition</a> </li>          
          <li > <a href="form_rolling.html">Rolling</a> </li>          
          <li > <a href="form_exit.html">Exit clearance</a> </li>          
          <li > <a href="form_status.html">Status karyawan</a> </li>           
          <li > <a href="form_retirement.html">Retirement</a> </li>          
          <li > <a href="<?php echo site_url('form_resignment') ?>">Resignment</a> </li>          
          <li > <a href="form_recruitment.html">Recruitment</a> </li>          
        </ul>
      </li>
      <li class=""> <a href="javascript:;"> <i class="icon-ok-sign"></i> <span class="title">Approval</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <?php echo ($this->ion_auth->is_superior1()) ? '<li > <a href="'.site_url('form_cuti/index_superior1').'">Cuti - Subordinate appr1</a> </li>' : "";?>
          <?php echo ($this->ion_auth->is_superior2()) ? '<li > <a href="'.site_url('form_cuti/index_superior2').'">Cuti - Subordinate appr2</a> </li>' : "";?>
          <?php echo ($this->ion_auth->is_hr()) ? '<li > <a href="'.site_url('form_cuti/index_hr').'">Cuti - HR</a> </li>' : "";?>
        </ul>
      </li>
      <li class=""> <a href="javascript:;"> <i class="icon-custom-form"></i> <span class="title">Analisis & Laporan</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="grids_simple.html">Laporan</a> </li>
          <li > <a href="grids_draggable.html">Analisa </a> </li>
        </ul>
      </li>
      <li class=""> <a href="javascript:;"> <i class="icon-cog"></i> <span class="title">Pengaturan</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="tables.html">Pengelolaan akun</a> </li>
          <li > <a href="tables.html">Hak akses</a> </li>
          <li > <a href="datatables.html">Parameter pengaturan </a> </li>
        </ul>
      </li>  
      <li class=""> <a href="javascript:;"> <i class="icon-group"></i> <span class="title">Manage Company</span> <span class="arrow "></span> </a>
        <ul class="sub-menu">
          <li > <a href="<?php echo site_url('comp_session')?>">Company Session</a> </li>
          <li > <a href="<?php echo site_url('organization')?>">Organization</a> </li>
          <li > <a href="<?php echo site_url('position')?>">Position</a> </li>
          <li > <a href="<?php echo site_url('library_table')?>">Library Reference Table</a> </li>
          
        </ul>
      </li>      
    </ul>
    <a href="#" class="scrollup">Scroll</a>
    <div class="clearfix"></div>
    <!-- END SIDEBAR MENU --> 
  </div>
  <!-- END SIDEBAR -->