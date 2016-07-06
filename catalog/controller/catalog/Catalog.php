<?php
class ControllerCatalogCatalog extends Controller {

		public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

	  $this->load->language('product/category');

		$this->load->model('catalog/category');

		$this->load->model('tool/image');
    
    $data['text_refine'] = $this->language->get('text_refine');
  
  
 

    $data['categories'] = array();
    $url = '';
		$results = $this->model_catalog_category->getCategories();

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);
          if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				}
				$data['categories'][] = array(
					'name' => $result['name'],
					'href' => $this->url->link('product/category', 'path=' . $result['category_id'] . $url),
          'image' => $image
				);
      
			}
          
		 
      
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/catalog/catalog.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/catalog/catalog.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/catalog/catalog.tpl', $data));
		}
	}
}

