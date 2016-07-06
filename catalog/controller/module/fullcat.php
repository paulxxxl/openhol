<?php  
class ControllerModulefullcat extends Controller {
	public function index() {

		$this->load->language('module/fullcat'); //подключаем любой €зыковой файл
		$data['heading_title'] = $this->language->get('heading_title'); //объ€вл€ем переменную heading_title с данными из €зыкового файла

		$data['content']="¬аш контент";        //можно задать данные, сразу в контроллере

		$this->load->model('catalog/category'); //подключаем любую модель из OpenCart (категорию)

		$data['allcat']=$this->model_catalog_category->getCategories; //используем метод подключенной модели

		//стандартна€ процедура дл€ контроллеров OpenCart, выбираем файл представлени€ модул€ дл€ вывода данных
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fullcat.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/fullcat.tpl', $data);
		} else {
			return $this->load->view('default/template/module/fullcat.tpl', $data);
		}		

	}
}?>