<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ä�����</title>
</head>
<body>
	<form action="Etp_RecruitOk" method="get">
		<div class="form-group row">
			<label for="recruit_title" name="recruit_title" class="col-md-3 control-label">ü���������</label>
			<div class="col-md-9">
				<input type="text" class="form-control" id="headline" name="recruit_title" placeholder="ä�������� �Է����ּ���">
			</div>
		</div>
		<div class="form-group row">
			<label for="etp_no" class="col-md-3 control-label">���ȸ����ȣ</label>
			<div class="col-md-9">
				<label id="etp_no" class="col-md-9">hi</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">ä��������ȣ</label>
			<div class="col-md-9">
				<label id="etp_no" class="col-md-9">hi</label>
			</div>
		</div>
		<div class="form-group row">
			<label for="hire_type" class="col-md-3 control-label">�������</label>
			<div class="col-md-9">
				<span><input name="hire_type" type="checkbox" value="������">������</span>
				<span><input name="hire_type" type="checkbox" value="�����">�����</span>
				<span><input name="hire_type" type="checkbox" value="����">����</span>
				<span><input name="hire_type" type="checkbox" value="�İ���">�İ���</span>
				<span><input name="hire_type" type="checkbox" value="����">����</span>
				<span><input name="hire_type" type="checkbox" value="��������">��������</span>
				<span><input name="hire_type" type="checkbox" value="�Ƹ�����Ʈ">�Ƹ�����Ʈ</span>
				<span><input name="hire_type" type="checkbox" value="������/������">������/������</span>
				<span><input name="hire_type" type="checkbox" value="����Ư��">����Ư��</span>
				<span><input name="hire_type" type="checkbox" value="������/���λ����">������/���λ����</span>
			</div>
		</div>
		<div class="form-group row">
			<label for="recruit_number" class="col-md-3 control-label">�����ο�</label>
			<div class="col-md-9">
				<div class="recruits_radio">
					<span><input name="recruit_number" id="free_place_radio" type="radio" value="free_place"> 
					<input type="text" name="free_place" id="free_place_text">��</span> 
					<span><input name="recruit_number" value="0" type="radio">0��</span> 
					<span> <input name="recruit_number" value="00" type="radio">00��</span> 
					<span><input name="recruit_number" value="000" type="radio">000��</span>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="salary_requirements" class="col-md-3 control-label">�޿�����</label>
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-4">
						<select class="form-control" name="income_qualification">
							<option value="����">����</option>
							<option value="�ֱ�">�ֱ�</option>
							<option value="����">����</option>
							<option value="�ϱ�">�ϱ�</option>
							<option value="�Ǻ�">�Ǻ�</option>
						</select>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" name="min_pay" placeholder="�ּұ޿�">
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control" name="max_pay" placeholder="�ִ�޿�">
					</div>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">����/��å</label>
			<div class="col-md-9">
				<div class="position_list">
					<span><input name="recruit_position" type="checkbox" value="�����">�����</span> 
					<span><input name="recruit_position" type="checkbox" value="����~�븮��">����~�븮��</span>
					<span><input name="recruit_position" type="checkbox" value="����/�Ŵ���/����">����/�Ŵ���/����</span>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">��»���</label>
			<div class="col-md-9" id="qualification_answer">
				<span><input name="career_check" type="checkbox" value="����">����</span>
				<span><input name="career_check" type="checkbox" value="���">���</span>
				<input type="text" name="career_period" class="form-control">�� �̻� �����
			</div>
		</div>
		<div class="form-group row">
			<label for="ac_ability_no" class="col-md-3 control-label">�����з�</label>
			<div class="col-md-9">
				<select class="form-control" name="ac_ability_no">
					<option value="no_choice">--����--</option>
					<option value="�з¹���">�з¹���</option>
					<option value="�ʵ��б�����">�ʵ��б�����</option>
					<option value="���б�����">���б�����</option>
					<option value="���б�����(2,3����)">���б�����(2,3����)</option>
					<option value="���б�����(4����)">���б�����(4����)</option>
					<option value="���п���������">���п���������</option>
					<option value="���п��ڻ�����">���п��ڻ�����</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label for="recruit_field" class="col-md-3 control-label">ä��о�</label>
			<div class="col-md-9">
				<select name="recruit_field">
					<option value="��������">��������</option>
					<option value="�������̳�">�������̳�</option>
					<option value="����������">����������</option>
					<option value="��������">��������</option>
					<option value="��񼳰���">��񼳰���</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">�����Ⱓ</label>
			<div class="col-md-9">
				<span>������ <input type="text" id="receive_sdate" name="receive_sdate"></span>
				<span>������ <input type="text" id="receive_ddate" name="receive_ddate"></span>
			</div>
		</div>
		<div class="form-group row">
			<label for="receive_way" class="col-md-3 control-label">�������</label>
			<div class="col-md-9">
				<span><input name="receive_way" value="��������" type="checkbox">��������</span>
				<span><input name="receive_way" value="�湮����" type="checkbox">�湮����</span>
				span><input name="receive_way" value="�¶�������" type="checkbox">�¶�������</span>
			</div>
		</div>
		<div class="form-group row">
			<label for="" class="col-md-3 control-label">�ٹ�����</label>
			<div class="col-md-9">
				<div class="recruit_addr">
					<div class="row">
						<div class="col-md-3">
							<input type="text" id="sample4_postcode" name="recruit_addr"
								class="form-control" placeholder="�����ȣ">
						</div>
						<div class="col-md-2">
							<input type="button" name="recruit_addr"
								onclick="sample4_execDaumPostcode()" value="�����ȣ ã��">
						</div>
						<div class="col-md-7"></div>
					</div>
					<div class="row">
						<div class="col-md-5">
							<input type="text" id="sample4_roadAddress" name="recruit_addr"
								class="form-control" placeholder="���θ��ּ�">
						</div>
						<div class="col-md-5">
							<input type="text" id="sample4_jibunAddress" name="recruit_addr"
								class="form-control" placeholder="�����ּ�">
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="recruit_day" class="col-md-3 control-label">�ٹ�����</label>
			<div class="col-md-9">
				<select class="form-control" name="recruit_day">
					<option value="no_choice">--����--</option>
					<option value="��5��">��5��</option>
					<option value="��6��">��6��</option>
					<option value="�����޹�">�����޹�</option>
					<option value="���ϱٹ�">���ϱٹ�</option>
					<option value="���ǰ���">���ǰ���</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label for="ads_radio" class="col-md-3 control-label">������</label>
			<div class="col-md-9">
				<div class="ads_radio">
					<span><input name="ads" value="Y" type="radio">��</span> 
					<span><input name="ads" value="N" type="radio">�ƴϿ�</span>
				</div>
			</div>
		</div>
		<input type="submit" value="Ȯ��">
	</form>
</body>
</html>