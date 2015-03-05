<?php include_once('classes/signup.class.php'); ?>
<?php include_once('header.php'); ?>

<div id="register-wrapper">
<div class="regform">
<?php _e('Register'); ?>
</div>

<div class="row-register">
	<div class="span6">
		<form class="form-horizontal" method="post" action="sign_up.php" id="sign-up-form">
			<fieldset>
				<div class="control-group">
					<label class="control-label" for="name"><?php _e('Full name'); ?></label>
					<div class="controls">
						<input type="text" class="input-xlarge" id="name" name="name" value="<?php echo $signUp->getPost('name'); ?>" placeholder="<?php _e('Full name'); ?>">
					</div>
				</div>

				<?php if (empty($signUp->use_emails)) : ?>
				
				<div class="control-group">
					<label class="control-label" for="colemanid"><?php _e('Coleman ID#'); ?></label>
					<div class="controls">
						<input type="text" class="input-xlarge" id="colemanid" name="colemanid" value="<?php echo $signUp->getPost('colemanid'); ?>" placeholder="<?php _e('Coleman ID#'); ?>">
					</div>
				</div>
				

				<div class="control-group" id="usrCheck">
					<label class="control-label" for="username"><?php _e('Username'); ?></label>
					<div class="controls">
						<input type="text" class="input-xlarge" id="username" name="username" maxlength="15" value="<?php echo $signUp->getPost('username'); ?>" placeholder="<?php _e('Choose your username'); ?>">
					</div>
				</div>
				<?php endif; ?>
				
				<div class="control-group">
					<label class="control-label" for="role"><?php _e('Role'); ?></label>
					<div class="controls">
						<select type="text" class="input-xlarge" id="role" name="role" maxlength="25" value="<?php echo $signUp->getPost('role'); ?>" placeholder="<?php _e('Role'); ?>">
						<option value="">Role Select</option>
								<option value="1">Student</option>
								<option value="2">TA</option>
								<option value="3">Faculty</option>
					        </select>			
					</div>
				</div>
				 
				 <div class="control-group">
					<label class="control-label" for="department"><?php _e('Department'); ?></label>
					<div class="controls">
						<select type="text" class="input-xlarge" id="department" name="department" maxlength="25" value="<?php echo $signUp->getPost('department'); ?>" placeholder="<?php _e('department'); ?>">
						<option value="">Department Select</option>
								<option value="SD">SD</option>
								<option value="GDD">GDD</option>
								<option value="NS">NS</option>
								<option value="GD">GD</option>
								<option value="GEN ED">GEN ED</option>
					        </select>			
					</div>
				</div>				 
				 
				<div class="control-group">
					<label class="control-label" for="email"><?php _e('Email'); ?></label>
					<div class="controls">
						<input type="email" class="input-xlarge" id="email" name="email" value="<?php echo $signUp->getPost('email'); ?>" placeholder="<?php _e('Email'); ?>">
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="phonenum"><?php _e('Cell Number'); ?></label>
					<div class="controls">
						<input type="text" class="input-xlarge" id="phonenum" name="phonenum" value="<?php echo $signUp->getPost('phonenum'); ?>" placeholder="<?php _e('Cell Number'); ?>">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="password"><?php _e('Password'); ?></label>
					<div class="controls">
						<input type="password" class="input-xlarge" id="password" name="password" placeholder="<?php _e('Create a password'); ?>">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="password_confirm"><?php _e('Password again'); ?></label>
					<div class="controls">
						<input type="password" class="input-xlarge" id="password_confirm" name="password_confirm" placeholder="<?php _e('Confirm your password'); ?>">
					</div>
				</div>

				<div class="control-group">
					<?php $signUp->profileSignUpFields(); ?>
				</div>

				<div class="control-group">
					<?php $signUp->doCaptcha(true); ?>
				</div>

			</fieldset>
			<input type="hidden" name="token" value="<?php echo $_SESSION['jigowatt']['token']; ?>"/>
			<button type="submit" class="btn btn-primary"><?php _e('&nbsp;&nbsp;Register&nbsp;&nbsp;'); ?></button>
		</form>
	
	</div>
</div>
</div>
<?php include_once('footer.php'); ?>