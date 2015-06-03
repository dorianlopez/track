<?php

class VisitController extends ControllerBase
{
    public function getrowsAction()
    {
        $post = $this->request->getPost('paginator');
//        $this->logger->log($post);
        $this->logger->log(print_r($post, true));
        
        
        $limit = $post['limit'];
        $page = $post['page'];
        
        $filter = new \stdClass();
        $filter->user = $post['user'];
        $filter->visitType = $post['visit'];
        $filter->client = $post['client'];
        $filter->date = $post['date'];
        
        $pager = new \Sigmamovil\Misc\PaginationDecorator();
        
        $pager->setRowsPerPage($limit);
        $pager->setCurrentPage($page);
        
        $finder = new \Sigmamovil\Misc\VisitFinder();
        
        try {
            $finder->setPaginator($pager);
            $finder->setAccount($this->user->account);
            $finder->setFilter($filter);
            $finder->load();
            $rows = $finder->getRows();
            $this->logger->log(print_r($rows, true));
            
            return $this->set_json_response(json_encode($rows), 200, 'success');
        } 
        catch (Exception $ex) {
            $this->logger->log($ex->getMessage());
        }
       
        
        
//        $pagination = array('pagination' => array(
//            'page' => $pager->getCurrentPage(),
//            'limit' => $pager->getRowsPerPage(),
//            'total' => $pager->getTotalRecords(),
//            'rows' => $pager->getRowsPerPage(),
//            'availablepages' => $pager->getTotalPages(),			
//            'data' => $finder->getRows(),			
//        ));
    }
}