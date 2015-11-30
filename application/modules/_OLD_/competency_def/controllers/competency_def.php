<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Competency_def extends MX_Controller {

    public $data;

    function __construct()
    {
        parent::__construct();
        $this->load->library('authentication', NULL, 'ion_auth');
        $this->load->library('form_validation');
        $this->load->helper('url');
        
        $this->load->database();
        $this->load->model('competency_def/competency_def_model','competency_def_model');
        $this->load->model('competency_group/competency_group_model','competency_group_model');
        $this->load->model('competency_level/competency_level_model','competency_level_model');
        
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));

        $this->lang->load('auth');
        $this->load->helper('language');

    }

    function index($ftitle = "fn:",$sort_by = "id", $sort_order = "desc", $offset = 0)
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('auth/login', 'refresh');
        }
        elseif (!$this->ion_auth->is_admin())
        {
            return show_error('You must be an administrator to view this page.');
        }
        else
        {
            //set the flash data error message if there is one
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

            //set sort order
            $this->data['sort_order'] = $sort_order;
            
            //set sort by
            $this->data['sort_by'] = $sort_by;
           
            //set filter by title
            $this->data['ftitle_param'] = $ftitle; 
            $exp_ftitle = explode(":",$ftitle);
            $ftitle_re = str_replace("_", " ", $exp_ftitle[1]);
            $ftitle_post = (strlen($ftitle_re) > 0) ? array('competency_def.title'=>$ftitle_re) : array() ;
            
            //set default limit in var $config['list_limit'] at application/config/ion_auth.php 
            $this->data['limit'] = $limit = (strlen($this->input->post('limit')) > 0) ? $this->input->post('limit') : 10 ;

            $this->data['offset'] = 6;

            //list of filterize all competency_def  
            $this->data['competency_def_all'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->competency_def()->result();
            
            $this->data['num_rows_all'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->competency_def()->num_rows();

            //list of filterize limit competency_def for pagination  
            $this->data['competency_def'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->competency_def()->result();

            $this->data['_num_rows'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->competency_def()->num_rows();

             //config pagination
             $config['base_url'] = base_url().'competency_def/index/fn:'.$exp_ftitle[1].'/'.$sort_by.'/'.$sort_order.'/';
             $config['total_rows'] = $this->data['num_rows_all'];
             $config['per_page'] = $limit;
             $config['uri_segment'] = 6;

            //inisialisasi config
             $this->pagination->initialize($config);

            //create pagination
            $this->data['halaman'] = $this->pagination->create_links();

            $this->data['ftitle_search'] = array(
                'name'  => 'title',
                'id'    => 'title',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('title'),
            );

            $competency_group = $this->competency_group_model->select('id,title')->where('is_deleted',0)->competency_group();
            $return = array();
            //$return[0] = strtoupper('please select');
                foreach($competency_group->result_array() as $row){
                    $return[$row['id']] = $row['title'];
                }
            $this->data['options_competency_group'] =  $return;
               
            
            $this->_render_page('competency_def/index', $this->data);
        }
    }

    public function insert_()
    {

        $this->form_validation->set_rules('title', 'Title', 'trim|required');
        
        if($this->form_validation->run() == FALSE)
        {
            echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
        }
        else
        {
           
            $title    = $this->input->post('title');
            $is_deleted = $this->input->post('is_deleted');

            $additional_data = array(
                'created_on'        => date('Y-m-d',strtotime('now')),
                'created_by'        => $this->session->userdata('user_id'),
                'is_deleted'        => $is_deleted,
            );

            if ($this->form_validation->run() == true && $this->competency_def_model->create_($title, $additional_data))
            {
                echo json_encode(array('st'=>1));   
            }else{
                echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
            }
        }
    }

    function index__($ftitle = "fn:",$sort_by = "id", $sort_order = "asc", $offset = 0)
    {

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

            //set sort order
            $this->data['sort_order'] = $sort_order;
            
            //set sort by
            $this->data['sort_by'] = $sort_by;
           
            //set filter by title
            $this->data['ftitle_param'] = $ftitle; 
            $exp_ftitle = explode(":",$ftitle);
            $ftitle_re = str_replace("_", " ", $exp_ftitle[1]);
            $ftitle_post = (strlen($ftitle_re) > 0) ? array('competency_def.title'=>$ftitle_re) : array() ;
            
            //set default limit in var $config['list_limit'] at application/config/ion_auth.php 
            $this->data['limit'] = $limit = (strlen($this->input->post('limit')) > 0) ? $this->input->post('limit') : 10 ;

            $this->data['offset'] = 6;

            //list of filterize all competency_def  
            $this->data['competency_def_all'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->competency_def()->result();
            
            $this->data['num_rows_all'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->competency_def()->num_rows();

            //list of filterize limit competency_def for pagination  
            $this->data['competency_def'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->competency_def()->result();

            $this->data['_num_rows'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->competency_def()->num_rows();

             //config pagination
             $config['base_url'] = base_url().'competency_def/index/fn:'.$exp_ftitle[1].'/'.$sort_by.'/'.$sort_order.'/';
             $config['total_rows'] = $this->data['num_rows_all'];
             $config['per_page'] = $limit;
             $config['uri_segment'] = 6;

            //inisialisasi config
             $this->pagination->initialize($config);

            //create pagination
            $this->data['halaman'] = $this->pagination->create_links();

            $this->data['ftitle_search'] = array(
                'name'  => 'title',
                'id'    => 'title',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('title'),
            );

            $this->_render_page('competency_def/index', $this->data);
        }
    }

    function get_table($ftitle = "fn:",$sort_by = "id", $sort_order = "desc", $offset = 0)
    {

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

            //set sort order
            $this->data['sort_order'] = $sort_order;
            
            //set sort by
            $this->data['sort_by'] = $sort_by;
           
            //set filter by title
            $this->data['ftitle_param'] = $ftitle; 
            $exp_ftitle = explode(":",$ftitle);
            $ftitle_re = str_replace("_", " ", $exp_ftitle[1]);
            $ftitle_post = (strlen($ftitle_re) > 0) ? array('competency_def.title'=>$ftitle_re) : array() ;
            
            //set default limit in var $config['list_limit'] at application/config/ion_auth.php 
            $this->data['limit'] = $limit = (strlen($this->input->post('limit')) > 0) ? $this->input->post('limit') : 10 ;

            $this->data['offset'] = $offset = $this->uri->segment(6);

            //list of filterize all competency_def  
            $this->data['competency_def_all'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->competency_def()->result();
            
            $this->data['num_rows_all'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->competency_def()->num_rows();

            //list of filterize limit competency_def for pagination  
            $this->data['competency_def'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->competency_def()->result();

            $this->data['_num_rows'] = $this->competency_def_model->like($ftitle_post)->where('competency_def.is_deleted',0)->limit($limit)->offset($offset)->order_by($sort_by, $sort_order)->competency_def()->num_rows();

             //config pagination
             $config['base_url'] = base_url().'competency_def/index/fn:'.$exp_ftitle[1].'/'.$sort_by.'/'.$sort_order.'/';
             $config['total_rows'] = $this->data['num_rows_all'];
             $config['per_page'] = $limit;
             $config['uri_segment'] = $offset = $this->uri->segment(6);

            //inisialisasi config
             $this->pagination->initialize($config);

            //create pagination
            $this->data['halaman'] = $this->pagination->create_links();

            $this->data['ftitle_search'] = array(
                'name'  => 'title',
                'id'    => 'title',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('title'),
            );

            $this->_render_page('competency_def/table/index', $this->data);
        }
    }
	
	function get_modal()
    {

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
			$this->data['competency_def'] = $this->competency_def_model->where('competency_def.is_deleted',0)->competency_def()->result();

            $competency_group = $this->competency_group_model->select('id,title')->where('is_deleted',0)->competency_group();
            $return = array();
            //$return[0] = strtoupper('please select');
                foreach($competency_group->result_array() as $row){
                    $return[$row['id']] = $row['title'];

                }
            $this->data['options_competency_group'] =  $competency_group;

			$this->load->view('competency_def/modal/index', $this->data);
		}
	}

    function keywords(){
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
            $title = $this->input->post('title');
            $base = base_url();

            if($title=null){
                echo json_encode(array('st'=>0));
            }else{
                echo json_encode(array('st' =>1, 'title'=>$this->input->post('title'), 'base_url' => $base));
            }
        }
    }

    public function update($id)
    {
        $this->form_validation->set_rules('title', lang('title'), 'trim|required');
        $this->form_validation->set_rules('code', lang('code_label'), 'trim|required');
        $this->form_validation->set_rules('competency_group_id', lang('comp_group_label'), 'trim|required');
        
        if($this->form_validation->run() == FALSE)
        {
            echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
        }
        else
        {         
            $data = array(
                    'title'             => $this->input->post('title'),
                    'code'              => $this->input->post('code'),
                    'comp_group_id'     => $this->input->post('competency_group_id'),
                    'edited_on'         => date('Y-m-d',strtotime('now')),
                    'edited_by'         => $this->session->userdata('user_id'),
                    );

            $this->competency_def_model->update($id, $data);

            $competency_level = $this->competency_level_model->where('competency_def_id',$id)->where('is_deleted',0)->competency_level()->result();
            foreach ($competency_level as $value) {
                $id_level = $value->id;
                $data_level = array(
                        'title'             => $this->input->post('title_level'.$id_level),
                        'description'       => $this->input->post('description_level'.$id_level),
                        'edited_on'         => date('Y-m-d',strtotime('now')),
                        'edited_by'         => $this->session->userdata('user_id'),
                    );
                $this->competency_level_model->update($id_level, $data_level);

            }

            echo json_encode(array('st'=>1));
            
        }

    }

    public function delete($id)
    {
        $data = array(
                'is_deleted'    => 1,
                'deleted_on'    =>date('Y-m-d',strtotime('now')),
                'deleted_by'    =>$this->session->userdata('user_id'),
                );

        $this->competency_def_model->update($id, $data);

        echo json_encode(array('st'=>1));
    }

    public function add()
    {

        $this->form_validation->set_rules('title', $this->lang->line('title'), 'trim|required');
        $this->form_validation->set_rules('code', $this->lang->line('code_label'), 'trim|required');
        $this->form_validation->set_rules('competency_group_id', $this->lang->line('comp_group_label'), 'trim|required');
        
        if($this->form_validation->run() == FALSE)
        {
            echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
        }
        else
        {
           
            $title    = $this->input->post('title');

            $additional_data = array(
                'created_on'            => date('Y-m-d',strtotime('now')),
                'created_by'            => $this->session->userdata('user_id'),
                'code'                  => $this->input->post('code'),
                'comp_group_id'   => $this->input->post('competency_group_id'),
            );

            if ($this->form_validation->run() == true)
            {
                $create = $this->competency_def_model->create_($title, $additional_data);

                for ($i=1; $i <= 4; $i++) { 
                    if($i==1){
                        $title_level = 'Semi Skilled';
                    }elseif($i==2){
                        $title_level = 'Skilled';
                    }elseif($i==3){
                        $title_level = 'Very Skilled';
                    }else{
                        $title_level = 'Expert';
                    }

                    $additional_data_level = array(
                        'created_on'            => date('Y-m-d',strtotime('now')),
                        'created_by'            => $this->session->userdata('user_id'),
                        'level'                  => $i,
                        'competency_def_id'   => $create,
                        'title'   => $title_level,
                    );

                    $this->db->insert('competency_level', $additional_data_level);
                    //$this->competency_def_model->create_level($title_level, $additional_data_level);
                }

                echo json_encode(array('st'=>1));   
            }else{
                echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
            }
        }
    }

     public function add__()
    {

        /*$this->form_validation->set_rules('title', $this->lang->line('title'), 'trim|required');
        $this->form_validation->set_rules('code', $this->lang->line('code_label'), 'trim|required');
        $this->form_validation->set_rules('competency_group_id', $this->lang->line('comp_group_label'), 'trim|required');
        
        if($this->form_validation->run() == FALSE)
        {
            echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
        }
        else
        {*/
           
            $title    = $this->input->post('title');

            $additional_data = array(
                'created_on'            => date('Y-m-d',strtotime('now')),
                'created_by'            => $this->session->userdata('user_id'),
                'code'                  => $this->input->post('code'),
                'competency_group_id'   => $this->input->post('competency_group_id'),
            );

            /*if ($this->form_validation->run() == true)
            {*/
                $create = $this->competency_def_model->create_($title, $additional_data);

                for ($i=1; $i <= 4; $i++) { 
                    $title_level = 'empty';
                    $additional_data_level = array(
                        'created_on'            => date('Y-m-d',strtotime('now')),
                        'created_by'            => $this->session->userdata('user_id'),
                        'level'                  => $i,
                        'competency_def_id'   => $create,
                        'description'   => 'empty',
                        'title'   => 'empty',
                    );

                    $this->db->insert('competency_level', $additional_data_level);
                    //$this->competency_def_model->create_level($title_level, $additional_data_level);
                }

                echo json_encode(array('st'=>1, 'last_id'=>$create));   
            /*}
            else{
                echo json_encode(array('st'=>0, 'errors'=>validation_errors('<div class="alert alert-danger" role="alert">', '</div>')));
            }*/
        //}
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

                if(in_array($view, array('competency_def/index')))
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

                    
                    $this->template->add_css('jquery-ui-1.10.1.custom.min.css');
                    $this->template->add_css('plugins/select2/select2.css');
                    
                }
                elseif(in_array($view, array('competency_def/edit')))
                {

                    $this->template->set_layout('default');

                    $this->template->add_js('jquery-ui-1.10.1.custom.min.js');
                    $this->template->add_js('jqueryblockui.js');
                    $this->template->add_js('jquery.sidr.min.js');
                    $this->template->add_js('breakpoints.js');
                    $this->template->add_js('pace.min.js');
                    $this->template->add_js('core.js');
                    
                    $this->template->add_js('select2.min.js');
                    
                    $this->template->add_css('jquery-ui-1.10.1.custom.min.css');
                    $this->template->add_css('pace-theme-flash.css');
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
