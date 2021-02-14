<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title"><i class="fa fa-pencil" aria-hidden="true"></i> 
    	Edit Supplier
    </h4>
</div>  
<div class="modal-body">
	<div class="row">
        <div class="">
            <div class="box-body">
              <div class="col-md-12">
				<?php
					$attributes = array('id'=>'Customer_form','method'=>'post','class'=>'form-horizontal');
				?>
				<?php echo form_open_multipart('supplier/edit',$attributes); ?>
				<?php 
				  $data = array('class'=>'form-control','type'=>'hidden','name'=>'edit_customer_id','value'=>$single_supplier[0]->id);
				  echo form_input($data);
				 ?>
	              	<div class="row box box-default">
	              		<div class="col-md-12 margin">
	              			<h4>
	              				<label class="box-label"><b>INFORMASI DATA SUPPLIER</b></label>
	              			</h4>
			              	<div class="col-md-5 field-agjust">	
				              <div class="form-group">	
								 <?php echo form_label('Nama Supplier :'); ?>
								 <?php
									$data = array('class'=>'form-control input-lg','type'=>'text','name'=>'customer_name','value'=>$single_supplier[0]->customer_name,'reqiured'=>'');
									echo form_input($data);
								?>
				              </div>
				            </div>
				            <div class="col-md-5 field-agjust">	
							   <div class="form-group">
								<?php echo form_label('Alamat Email :'); ?>
				                <?php
									$data = array('class'=>'form-control input-lg','type'=>'email','name'=>'customer_email','value'=>$single_supplier[0]->cus_email,'reqiured'=>'');
										echo form_input($data);
									?>
				              </div>
			              	</div>
			              	<div class="col-md-5 field-agjust" >	
							   <div class="form-group">
							     <?php echo form_label('Nomor KTP :'); ?>
								  <?php
										$data = array('class'=>'form-control input-lg','type'=>'text','name'=>'customer_cnic','value'=>$single_supplier[0]->customer_nationalid,'reqiured'=>'');
										echo form_input($data);
									?>
				              </div>
			              </div>
			              <!-- <div class="col-md-5 field-agjust">	
							  <div class="form-group">
							     <?php echo form_label('Jenis Supplier:'); ?>
								  <select name="customer_type" class="form-control input-lg">
								  	<option <?php echo ($single_supplier[0]->cus_type == 'Regular' ? 'selected' : '');  ?> value="Regular"> Regular</option>
								  	<option <?php echo ($single_supplier[0]->cus_type == 'Visitor' ? 'selected' : '');  ?> value="Visitor" > Visitor</option>
								  </select>
				              </div>
			              </div> -->
		              </div>
	              </div>
	              	<div class="row box box-default">
	              		<div class="col-md-12 margin">
	              			<h4>
	              				<label class="box-label"><b>INFORMASI KONTAK DAN ALAMAT</b></label>
	              			</h4>
			              	<div class="col-md-5 field-agjust">	
							   <div class="form-group">
							   <?php echo form_label('Alamat Supplier :'); ?>
				               <?php
										$data = array('class'=>'form-control input-lg','type'=>'text','name'=>'customer_address','value'=>$single_supplier[0]->cus_address,'reqiured'=>'');
										echo form_input($data);
							  ?>
				              </div>
			              </div>
			              <div class="col-md-5 field-agjust">	
							  <div class="form-group">
							  <?php echo form_label('Nomor Telepon :'); ?>
								<?php
										$data = array('class'=>'form-control input-lg','type'=>'number','name'=>'customer_contatc1','value'=>$single_supplier[0]->cus_contact_1,'reqiured'=>'');
										echo form_input($data);
							   ?>
				              </div>
			              </div>
			             <!--  <div class="col-md-5 field-agjust">	
							   <div class="form-group">
							     <?php echo form_label('Nomor HP :'); ?>
				                   <?php
										$data = array('class'=>'form-control input-lg','type'=>'number','name'=>'customer_contact_two','value'=>$single_supplier[0]->cus_contact_2,'reqiured'=>'');
										echo form_input($data);
									?>
				              </div>
			              </div> -->
			             <!--  <div class="col-md-5 field-agjust">	
							   <div class="form-group">
							     <?php echo form_label('Nama Supplier:'); ?>
								  <?php
										$data = array('class'=>'form-control input-lg','type'=>'text','name'=>'customer_company','value'=>$single_supplier[0]->cus_company,'reqiured'=>'');
										echo form_input($data);
									?>
				              </div>
			              </div> -->
			              <!-- <div class="col-md-5 field-agjust">	
							  <div class="form-group">
							     <?php echo form_label('Region:'); ?>
								  <?php
										$data = array('class'=>'form-control input-lg','type'=>'text','name'=>'customer_region','value'=>$single_supplier[0]->cus_region,'reqiured'=>'');
										echo form_input($data);
									?>
				              </div>
			              </div> -->

			              <div class="col-md-5 field-agjust">	
							  <div class="form-group">
							     <?php echo form_label('Kota :'); ?>
								  <?php
										$data = array('class'=>'form-control input-lg','type'=>'text','name'=>'customer_town','value'=>$single_supplier[0]->cus_town,'reqiured'=>'');
										echo form_input($data);
									?>
				              </div>
			              </div>
			            </div>
			        </div>
			        <div class="row box box-default">
	              		<div class="col-md-12 margin">
	              			<h4>
	              			  <label class="box-label"><b>FOTO SUPPLIER</b></label>
	              			</h4>
			              <div class="col-md-5 field-agjust">	
							  <div class="form-group">
				                <label>Edit Foto Supplier (Optional)</label>
								<div class="input-group">
				          			<input type="file" name="customer_picture" data-validate="required" class="form-control input-lg" data-message-required="Value Required" >
				                </div>
				              </div>
			              </div>			             
			               <div class="col-md-4 field-agjust ">	
							  <div class="form-group margin">
							  	<img src="<?php echo base_url('uploads/supplier/'.$single_supplier[0]->cus_picture); ?>" class="img-circle" width="70" height="70" name="" />
				              </div>
			              </div>
			            </div>
			        </div>			        
			      <!--   <div class="row box box-default">
	              		<div class="col-md-12 margin">
	              			<label class="box-label"><b>INFORMASI LAIN-LAIN</b></label>
			              <div class="col-md-12 field-agjust">	
							   <div class="form-group">
							   <?php echo form_label('Tambahkan rincian:'); ?>
				               <?php
									$data = array('class'=>'form-control input-lg','type'=>'text','name'=>'customer_description','value'=>$single_supplier[0]->cus_description,'reqiured'=>'');
									echo form_input($data);
								?>
				              </div>
			              </div>
			            </div>
			        </div> -->
		              <div class="col-md-5">	
						  <div class="form-group">  				
							<?php
								$data = array('class'=>'btn btn-info btn-outline-primary ','type' => 'submit','name'=>'btn_submit_customer','value'=>'true', 'content' => '<i class="fa fa-floppy-o" aria-hidden="true"></i> Perbarui Supplier');
								echo form_button($data);
							 ?>   
		             	 </div>
	             	 </div>
					<?php echo form_close(); ?>
        		</div>
			</div>
 		</div>
	</div>
</div>
 <!-- Form Validation -->
<script src="<?php echo base_url(); ?>assets/dist/js/custom.js"></script>