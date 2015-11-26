<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Form_spd_dalam extends MX_Controller {

	public $data;

    function __construct()
    {
        parent::__construct();
        $this->load->library('authentication', NULL, 'ion_auth');
        $this->load->library('form_validation');
        $this->load->helper('url');
        
        $this->load->database();
        $this->load->model('form_spd_dalam/form_spd_dalam_model','form_spd_dalam_model');
        
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));

        $this->lang->load('auth');
        $this->load->helper('language');
    }

    function index($ftitle = "fn:",$sort_by = "id", $sort_order = "desc", $offset = 0)
    {
        $user_id = $this->session->userdata('user_id');
        if (!$this->ion_auth->logged_in())
        {
            redirect('auth/login', 'refresh');
        }
        elseif ($this->ion_auth->is_admin()) 
        {
            $this->index_admin("fn:","id","desc",0);       
        }
        elseif($this->ion_auth->is_superior1())
        { 
            $this->index_superior1("fn:","id","desc",0);
        }
        elseif($this->ion_auth->is_superior2())
        {
            $this->index_superior2("fn:","id","desc",0);
        }
        elseif($this->ion_auth->is_hr())
        {
            $this->index_hr("fn:","id","desc",0);
        }
        else
        {
            return show_error('You must be a superior/admin/HR to view this page.');
        }
    }

    function index_superior1($ftitle = "fn:",$sort_by = "id", $sort_order = "desc", $offset = 0)
    {
        $user_id = $this->session->userdata('user_id');
        if (!$this->ion_auth->logged_in())
        {
            //redirect them to the login page
            redirect('auth/login', 'refresh');
        }
        elseif ($this->ion_auth->is_superior1())
        {
            $id = $this->ion_auth->user()->row()->id;

            $q_position_id = $this->form_spd_dalam_model->where('users_employement.user_id',$id)->render_emp()->row();

            $position_id = $q_position_id->position_id;

            $organization_id = $q_position_id->organization_id;

            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

            $this->data['sort_order'] = $sort_order;
            
            $this->data['sort_by'] = $sort_by;
              
            $this->data['ftitle_param'] = $ftitle; 
            $exp_ftitle = explode(":",$ftitle);
            $ftitle_re = str_replace("_", " ", $exp_ftitle[1]);
            $ftitle_post = (strlen($ftitle_re) > 0) ? array('form_spd_dalam.title'=>$ftitle_re) : array() ;
            
            $this->data['limit'] = $limit = (strlen($this->input->post('limit')) > 0) ? $this->input->post('limit') : 10 ;

            $this->data['offset'] = 6;

            $this->data['form_spd_dalam_all'] = $this->form_spd_dalam_model->like($ftitle_post)->where('users_spd_dalam.is_deleted',0)->where('position.parent_position_id',$position_id)->form_spd_dalam()->result();
                
            $this->data['num_rows_all'] = $this->form_spd_dalam_model->like($ftitle_post)->where('users_spd_dalam.is_deleted',0)->where('position.parent_position_id',$position_id)->form_spd_dalam()->num_rows();

            $this->data['form_spd_dalam'] = $this->form_spd_dalam_model->like($ftitle_post)->where('users_spd_dalam.is_deleted',0)->where('position.parent_position_id',$position_id)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->form_spd_dalam()->result();

            $this->data['_num_rows'] = $this->form_spd_dalam_model->like($ftitle_post)->where('users_spd_dalam.is_deleted',0)->where('position.parent_position_id',$position_id)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->form_spd_dalam()->num_rows();

            $this->_render_page('form_spd_dalam/index_superior1', $this->data);
        }else{
            return show_error("You must be an superior 1 to view this page.");
        }
    }


    function submit($id=0)
    {
        $user_id = $this->session->userdata('user_id');
        if ($id == 0) {
            $task_id = $this->uri->segment(3);
        }else{
            $task_id = $id;
        }

        if (!$this->ion_auth->logged_in())
        {
            //redirect them to the login page
            redirect('auth/login', 'refresh');
        }
        elseif (!$this->ion_auth->is_admin()) //remove this elseif if you want to enable this for non-admins
        {
            //redirect them to the home page because they must be an administrator to view this
            //return show_error('You must be an administrator to view this page.');
            return show_error('You must be an administrator to view this page.');
        }
        else
        {
            //set the flash data error message if there is one
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

            $data_result = $this->data['task_detail'] = $this->form_spd_dalam_model->where('users_spd_dalam.id',$task_id)->form_spd_dalam()->result();
            $this->data['td_num_rows'] = $this->form_spd_dalam_model->where('users_spd_dalam.id',$task_id)->form_spd_dalam()->num_rows();

            //get task creator id
            foreach ($data_result as $dr) {
                $created_by_id = $dr->created_by;
                $receiver_user_id = $dr->user_id;
            }

            //get task creator name
            $query_result = $this->form_spd_dalam_model->where('users.id',$created_by_id)->get_emp_detail()->result();
            foreach ($query_result as $qr) {
                $this->data['task_creator_nm'] = $qr->first_name." ".$qr->last_name;
            }

            $this->data['task_receiver_nm'] = $receiver_user_id;

            //get tast receiver name
            $query_result = $this->form_spd_dalam_model->where('users.id',$receiver_user_id)->get_emp_detail()->result();
            foreach ($query_result as $qr) {
                $this->data['task_receiver_nm'] = $qr->first_name." ".$qr->last_name;
            }

            //get task creator detail
            $this->data['task_creator'] = $this->form_spd_dalam_model->where('users.id',$created_by_id)->get_emp_detail()->result();
            $this->data['tc_num_rows'] = $this->form_spd_dalam_model->where('users.id',$created_by_id)->get_emp_detail()->num_rows();
            $this->data['task_receiver'] = $this->form_spd_dalam_model->where('users.id',$receiver_user_id)->get_emp_detail()->result();
            $this->data['tr_num_rows'] = $this->form_spd_dalam_model->where('users.id',$receiver_user_id)->get_emp_detail()->num_rows();

            //get user org_id
            $data_result = $this->form_spd_dalam_model->where('users.id',$user_id)->get_org_id()->result();
            foreach ($data_result as $dr) {
                $org_id = $dr->organization_id;
            }

            // render employee
            $this->data['employee_list'] = $this->form_spd_dalam_model->where('users_employement.organization_id',$org_id)->render_emp()->result();
            $this->data['el_num_rows'] = $this->form_spd_dalam_model->where('users_employement.organization_id',$org_id)->render_emp()->num_rows();
            


            $this->_render_page('form_spd_dalam/submit', $this->data);
        }
    }

    public function do_submit()
    {
        $user_id = $this->session->userdata('user_id');
        $date_now = date('Y-m-d');
        $spd_id = $this->input->post('spd_id');

        $additional_data = array(
        'is_submit' => 1,  
        'date_submit' => $date_now);

       if ($this->form_spd_dalam_model->update($spd_id,$additional_data)) {
        redirect('form_spd_dalam/submit/'.$spd_id,'refresh');
       }
    }

    public function input()
    {
        $user_id = $this->session->userdata('user_id');

        if (!$this->ion_auth->logged_in())
        {
            redirect('auth/login', 'refresh');
        }
        elseif($this->ion_auth->is_superior1() || $this->ion_auth->is_superior2() || $this->ion_auth->is_admin())
        {
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

            /*$query_result = $this->form_spd_dalam_model->where('users.id',$user_id)->get_emp_detail()->result();
            foreach ($query_result as $qr) {
                $this->data['task_creator_nm'] = $qr->first_name." ".$qr->last_name;
            }*/
            $q_task_creator = $this->form_spd_dalam_model->where('users.id',$user_id)->get_emp_detail();
            
            if($q_task_creator->num_rows() > 0){
                $qr = $q_task_creator->row();
                $this->data['task_creator_nm'] = $qr->first_name." ".$qr->last_name;
            }else{
                $this->data['task_creator_nm'] = "";
            }

            $data_result = $this->form_spd_dalam_model->where('users.id',$user_id)->get_org_id()->result();
            foreach ($data_result as $dr) {
                $org_id = $dr->organization_id;
            }

            $query_result = $this->form_spd_dalam_model->where('users_employement.organization_id',$org_id)->get_emp_detail()->result();
            foreach ($query_result as $qr) {
                $this->data['task_receiver_nm'] = $qr->first_name." ".$qr->last_name;
            }

            $this->data['task_creator'] = $this->form_spd_dalam_model->where('users.id',$user_id)->get_emp_detail()->result();

            $this->data['tc_num_rows'] = $this->form_spd_dalam_model->where('users.id',$user_id)->get_emp_detail()->num_rows();

            $data_result = $this->form_spd_dalam_model->where('users.id',$user_id)->get_org_id()->result();
            foreach ($data_result as $dr) {
                $org_id = $dr->organization_id;
            }

            $this->data['employee_list'] = $this->form_spd_dalam_model->where('organization.parent_organization_id',$org_id)->render_emp()->result();
            
            $this->data['el_num_rows'] = $this->form_spd_dalam_model->where('users_employement.organization_id',$org_id)->render_emp()->num_rows();
            
            $this->_render_page('form_spd_dalam/input', $this->data);
        }
        else
        {
            return show_error('You must be a superior/admin/HR to view this page.');
        }
    }

    public function add()
    {

        $this->form_validation->set_rules('destination', 'Tujuan', 'trim|required');
        $this->form_validation->set_rules('title', 'Tanggal Terakhir Cuti', 'trim|required');
        $this->form_validation->set_rules('date_spd', 'Tanggal Berangkat', 'trim|required');
        $this->form_validation->set_rules('spd_start_time', 'Waktu Berangkat', 'trim|required');
        $this->form_validation->set_rules('spd_end_time', 'Waktu Selesai', 'trim|required');
        
        if($this->form_validation->run() == FALSE)
        {
            echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
        }
        else
        {
            $user_id    = $this->input->post('employee');

            $start_cuti = $this->input->post('start_cuti');
            $end_cuti = $this->input->post('end_cuti');

            $additional_data = array(
                'title'                 => $this->input->post('title'),
                'destination'           => $this->input->post('destination'),
                'date_spd'              => date('Y-m-d', strtotime($this->input->post('date_spd'))),
                'start_time'            => date('H:i:s', strtotime($this->input->post('spd_start_time'))),
                'end_time'              => date('H:i:s', strtotime($this->input->post('spd_end_time'))),
                'created_on'            => date('Y-m-d',strtotime('now')),
                'created_by'            => $this->session->userdata('user_id')
            );

            if ($this->form_validation->run() == true && $this->form_spd_dalam_model->create_($user_id,$additional_data))
            {
                $this->index();   
            }
        }
    }

    public function get_emp_org()
    {
        $id = $this->input->post('id');

        $data_result = $this->form_spd_dalam_model->where('users.id',$id)->render_emp()->result();
            foreach ($data_result as $dr) {
                $org_nm = $dr->organization_title;
            }
        
        echo $org_nm;
    }

    public function get_emp_pos()
    {
        $id = $this->input->post('id');

        $data_result = $this->form_spd_dalam_model->where('users.id',$id)->render_emp()->result();
            foreach ($data_result as $dr) {
                $pos_nm = $dr->position_title;
            }
        
        echo $pos_nm;
    }

    function _get_csrf_nonce()
    {
        $this->load->helper('string');
        $key   = random_string('alnum', 8);
        $value = random_string('alnum', 20);
        $this->session->set_flashdata('csrfkey', $key);
        $this->session->set_flashdata('csrfvalue', $value);

        return array($key => $value);
    }

    function _valid_csrf_nonce()
    {
        if ($this->input->post($this->session->flashdata('csrfkey')) !== FALSE &&
            $this->input->post($this->session->flashdata('csrfkey')) == $this->session->flashdata('csrfvalue'))
        {
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }

    function _render_page($view, $data=null, $render=false)
    {
        $data = (empty($data)) ? $this->data : $data;
        if ( ! $render)
        {
            $this->load->library('template');

                if(in_array($view, array('form_spd_dalam/index','form_spd_dalam/index_superior1')))
                {
                    $this->template->set_layout('default');

                    $this->template->add_js('jquery.min.js');
                    $this->template->add_js('bootstrap.min.js');

                    $this->template->add_js('jquery-ui-1.10.1.custom.min.js');
                    $this->template->add_js('jquery.sidr.min.js');
                    $this->template->add_js('breakpoints.js');
                    $this->template->add_js('select2.min.js');

                    $this->template->add_js('core.js');
                    $this->template->add_js('purl.js');

                    $this->template->add_js('main.js');
                    $this->template->add_js('respond.min.js');

                    $this->template->add_js('jquery.bootstrap.wizard.min.js');
                    $this->template->add_js('jquery.validate.min.js');
                    $this->template->add_js('form_spd_dalam_input.js');

                    
                    $this->template->add_css('jquery-ui-1.10.1.custom.min.css');
                    $this->template->add_css('plugins/select2/select2.css');
                    
                }
                elseif(in_array($view, array('form_spd_dalam/input','form_spd_dalam/submit')))
                {

                    $this->template->set_layout('default');

                    $this->template->add_js('jquery.min.js');
                    $this->template->add_js('bootstrap.min.js');

                    $this->template->add_js('jquery-ui-1.10.1.custom.min.js');
                    $this->template->add_js('jquery.sidr.min.js');
                    $this->template->add_js('breakpoints.js');
                    $this->template->add_js('select2.min.js');

                    $this->template->add_js('core.js');
                    $this->template->add_js('purl.js');

                    $this->template->add_js('main.js');
                    $this->template->add_js('respond.min.js');

                    $this->template->add_js('jquery.bootstrap.wizard.min.js');
                    $this->template->add_js('jquery.validate.min.js');
                    $this->template->add_js('bootstrap-datepicker.js');
                    $this->template->add_js('jquery.slimscroll.js');
                    $this->template->add_js('bootstrap-timepicker.js');
                    $this->template->add_js('form_spd_dalam_input.js');
                    
                    $this->template->add_css('jquery-ui-1.10.1.custom.min.css');
                    $this->template->add_css('plugins/select2/select2.css');
                    $this->template->add_css('datepicker.css');
                    $this->template->add_css('bootstrap-timepicker.css');
                     
                }


            if ( ! empty($data['title']))
            {
                $this->template->set_title($data['title']);
            }

            $this->template->load_view($view, $data);
        }
        else
        {
            return $this->load->view($view, $data, TRUE);
        }
    }
}

/* End of file form_spd_dalam.php */
/* Location: ./application/modules/form_spd_dalam/controllers/form_spd_dalam.php */