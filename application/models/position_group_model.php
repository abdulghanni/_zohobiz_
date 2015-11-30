<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class position_group_model extends CI_Model {

	var $table = 'position_group';
	var $table_join1 = 'position_group';
	var $column = array('title','abbr','level_order','parent_position','description');
	var $order = array('a.level_order' => 'asc');

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	private function _get_datatables_query()
	{
		$this->db->select(
		   'a.id as id,
			a.title as title,
			a.abbr as abbr,
			a.level_order as level_order,
			a.description as description,
			b.title as parent_position
			');
		$this->db->from($this->table.' a');
		$this->db->join($this->table_join1. ' b', 'b.id = a.parent_position_group_id','left');
		$i = 0;
	
		foreach ($this->column as $item) 
		{
			if($_POST['search']['value'])
			{
				if($item == 'title'){
					$item = 'a.title';
				}elseif($item == 'abbr'){
					$item = 'a.abbr';
				}elseif($item == 'level_order'){
					$item = 'a.level_order';
				}elseif($item == 'description'){
					$item = 'a.description';
				}elseif($item == 'parent_position'){
					$item = 'b.title';
				}

				($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
			}
				
			$column[$i] = $item;
			$i++;
		}
		
		if(isset($_POST['order']))
		{
			$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	function get_datatables()
	{
		$this->_get_datatables_query();
		$this->db->where('a.is_deleted',0);
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}

	function count_filtered()
	{
		$this->_get_datatables_query();
		$this->db->where('a.is_deleted',0);
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$this->db->from($this->table.' a');
		$this->db->where('a.is_deleted',0);
		return $this->db->count_all_results();
	}

	public function get_by_id($id)
	{
		$this->db->from($this->table);
		$this->db->where('id',$id);
		$this->db->where('is_deleted',0);
		$query = $this->db->get();

		return $query->row();
	}

	public function save($data)
	{
		$this->db->insert($this->table, $data);
		return $this->db->insert_id();
	}

	public function update($where, $data)
	{
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
	}

	public function delete_by_id($id)
	{
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
		/*$this->db->where('id', $id);
		$this->db->delete($this->table);*/
	}

	public function get_parent_position()
	{	
		$this->db->where($this->table_join1.'.is_deleted',0);
		$this->db->order_by($this->table_join1.'.level_order','asc');
		return $this->db->get($this->table_join1);
	}
}
