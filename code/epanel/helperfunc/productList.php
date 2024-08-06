<?php
	require ('../includes/configure.php');
	include ('../includes/functions/general.php');
	$result = array('aaData' => array());
	$queryString =  ets_db_query("SELECT * from product order by sortorder") or die(ets_db_error());	
	// Same from main controller File
		while($res = ets_db_fetch_array($queryString)){
			if($res['status']=='E'){
				$status = "Active";
			}else{
				$status = "Disabled";
			}
			$pk = "product_id:".$res['product_id'];
		
				$productType='<td>'.getproductType($res['product_type']).'</td>';
				$productDate='<td>'.$res['eve_date'].'</td>';
				$productTitle='<td>'.$res['product_title'].'</td>';
				
				$productStatus='<td><a href="#" class="estatus" data-type="select" data-name="status" data-pk="'.$pk.'" data-url="ajaxUpd.php" data-title="Change Status">'.$status.'</a></td>';
				
				$productSortorder='<td><a href="#" class="esortorder" data-type="text" data-name="sortorder" data-pk="'.$pk.'" data-url="ajaxUpd.php" data-title="Change Sort Order">'.$res['sortorder'].'</a></td>';
				
				$Action='<td><a href="index.php?controller=product&action=product&subaction=editForm&product_id='.$res['product_id'].'"  data-toggle="tooltip" title="Edit Records" class="btn btn-success marker"><i class="fa fa-edit"></i></a> |
				<a href="index.php?controller=product&action=product&subaction=delete&product_id='.$res['product_id'].'" title="Delete Records" data-toggle="tooltip" class="btn btn-danger marker" onClick="return confirmSubmit();" ><i class="fa fa-times"></i></a>
				</td>';
		
				$result['aaData'][] = array( "$productType", "$productTitle", "$productStatus","$productSortorder","$Action");			
		}
	// End While Loop
		echo json_encode($result);
?>