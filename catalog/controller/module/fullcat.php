<?php  
class ControllerModulefullcat extends Controller {
	public function index() {

		$this->load->language('module/fullcat'); //���������� ����� �������� ����
		$data['heading_title'] = $this->language->get('heading_title'); //��������� ���������� heading_title � ������� �� ��������� �����

		$data['content']="��� �������";        //����� ������ ������, ����� � �����������

		$this->load->model('catalog/category'); //���������� ����� ������ �� OpenCart (���������)

		$data['allcat']=$this->model_catalog_category->getCategories; //���������� ����� ������������ ������

		//����������� ��������� ��� ������������ OpenCart, �������� ���� ������������� ������ ��� ������ ������
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fullcat.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/fullcat.tpl', $data);
		} else {
			return $this->load->view('default/template/module/fullcat.tpl', $data);
		}		

	}
}?>