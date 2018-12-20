	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<div class="content-cpl">
						<span style="font-size: 14px;font-style: italic;margin-left: 30px;">* Quý khách đã đặt tour thành công.Hệ thống sẽ gữi mail và liên lạc lại cho quý khách sau.Xin cảm ơn!</span>
						</br>
						<table style="margin-left: 30px;padding: 5px 10px;border: 1px solid #000;" border-collapse: collapse;>
							<tr style="background: #f7f7f7;">
								<th>Mã Tour</th>
								<th>Họ Và Tên</th>
								<th>Ngày Đặt</th>
								<th>Số Lượng Người</th>
								<th>Giá</td>
							</tr>
							<tr>
								<td>${formcustomers.id}</td>
								<td>${formcustomers.name}</td>
								<td>${formcustomers.date}</td>
								<td style="width: 130px;">${formcustomers.number}</td>
								<td style="width: 100px;">${formcustomers.price} VNĐ</td>
							</tr>
						</table>
					</div>