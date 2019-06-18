module Newebpay
	
	class ErrorCodes
		@@error_codes = {
			DON10001: "商店代號不可空白",
			DON10002: "串接商店代號與後台設定不符",
			DON10003: "捐款編號不可空白",
			DON10004: "捐款編號格式錯誤! 格式為:英數及底線",
			DON10005: "捐款編號不可重複",
			DON10006: "金額檢查錯誤",
			DON10007: "NotifyURL 不可空白",
			DON10008: "時間戳記不可空白",
			DON10009: "商品說明不可空白",
			DON10010: "CheckValue 檢查錯誤",
			DON10011: "電話號碼格式有錯誤，請檢查",
			DON10012: "E-Mail 信箱格式有錯誤，請檢查",
			DON10013: "統一編號格式錯誤",
			DON10014: "統一編號輸入有誤，請檢查",
			DON10015: "身份證字號有錯誤，請檢查",
			DON10016: "藍新金流商店金流尚未設定開啟",
			DON10017: "CheckValue 檢查失敗",
			MEM40008: "資料空白",
			MEM40012: "資料傳遞錯誤PostData_ 空白",
			MEM40013: "資料不齊全",
			MEM40014: "傳送時間有誤",
			MPG01001: "會員參數 不可空白/設定錯誤",
			MPG01002: "時間戳記不可空白",
			MPG01005: "TokenTerm 不可空白/設定錯誤",
			MPG01008: "分期參數設定錯誤",
			MPG01009: "商店代號不可空白",
			MPG01010: "程式版本設定錯誤",
			MPG01011: "回傳規格設定錯誤",
			MPG01012: "商店訂單編號不可空白/設定錯誤",
			MPG01013: "付款人電子信箱設定錯誤",
			MPG01014: "網址設定錯誤",
			MPG01015: "訂單金額不可空白/設定錯誤",
			MPG01017: "商品資訊不可空白",
			MPG01018: "繳費有效期限設定錯誤",
			MPG01023: "交易加密資料不可空白",
			MPG01024: "交易加密 SHA 資料不可空白",
			MPG02002: "查無商店開啟任何金流服務",
			MPG02003: "支付方式未啟用，請洽客服中心",
			MPG02004: "送出後檢查，超過交易限制秒數",
			MPG02005: "送出後檢查，驗證資料錯誤",
			MPG02006: "系統發生異常，請洽客服中心",
			MPG03001: "FormPost 加密失敗",
			MPG03002: "拒絕交易 IP",
			MPG03003: "IP 交易次數限制",
			MPG03004: "商店狀態已被暫停或是關閉，無法進行交易",
			MPG03007: "查無此商店代號",
			MPG03008: "已存在相同的商店訂單編號",
			MPG03009: "交易失敗",
			PER10001: "商店資料取得失敗",
			PER10002: "資料解密錯誤",
			PER10003: "POST 資料傳遞錯誤",
			PER10004: "資料不齊全",
			PER10005: "資料不可空白",
			PER10006: "商品名稱不得含有 JavaScript 語法、CSS 語法",
			PER10007: "委託金額格式不對，金額必須為數字",
			PER10008: "委託金額不能為零",
			PER10009: "週期設定錯誤! (W=週,M=月,Y=年)",
			PER10010: "商店訂單編號錯誤，只允許英數與底線",
			PER10011: "商店訂單編號長度限制為 20 字",
			PER10012: "回傳格式格式錯誤，只接受 JSON 或 String",
			PER10013: "週期授權時間資料不正確，日期格式為 1 到 7",
			PER10014: "週期授權時間資料不正確，日期格式為 1 到 7(長度不符)",
			PER10015: "定期授權時間資料不正確，日期格式為 01 到 31",
			PER10016: "定期授權時間資料不正確，日期格式為 01 到 31(長度不符)",
			PER10017: "定期授權時間資料不正確，日期格式為 01 到 31",
			PER10018: "定期授權時間資料不正確，日期格式為 01 到 31",
			PER10019: "定期授權時間資料不正確，長度不符",
			PER10020: "首期授權模式設定錯誤(1-3)，請檢查",
			PER10021: "備註說明不得含有 JavaScript 語法、CSS 語法",
			PER10022: "授權期數格式不對，必須為數字",
			PER10023: "授權期數不能為零",
			PER10024: "授權期數不能多於 999 次",
			PER10025: "返回商店網址格式錯誤",
			PER10026: "每期授權通知網址格式錯誤",
			PER10027: "是否開啟付款人資訊設定錯誤",
			PER10028: "付款人電子信箱格式錯誤",
			PER10029: "商店代號停用",
			PER10030: "商店信用卡資格停用",
			PER10031: "商店定期定額資格停用",
			PER10032: "該訂單編號已重覆",
			PER10033: "寫入委託單失敗",
			PER10034: "授權失敗，委託單建立失敗",
			PER10035: "委託單更新授權結果失敗",
			PER10036: "驗證資料錯誤(來源不合法)",
			PER10037: "付款頁參數不足",
			TRA10001: "商店代號錯誤",
			TRA10003: "金額必須為數字且大於 0 元",
			TRA10008: "資料加密錯誤",
			TRA10009: "商店代號空白",
 			TRA10012: "商店代號停用",
 			TRA10013: "商店信用卡資格停用",
 			TRA10015: "網路連線失敗",
 			TRA10021: "查無該筆交易資訊",
 			TRA10032: "單號類別錯誤",
 			TRA10033: "商店訂單編號空白或藍新金流交易序號空白",
 			TRA10036: "RespondType 欄位資料格式錯誤",
 			TRA10037: "商店訂單編號錯誤",
 			TRA10038: "藍新金流交易序號格式錯誤",
 			TRA10041: "NotifyURL 網址格式錯誤",
 			TRA10045: "該筆交易今日已退款",
 			TRA10047: "交易非授權成功狀態",
 			TRA10048: "該交易正在請款狀態",
 			TRA10049: "該交易正在退款狀態",
 			TRA10050: "金額不符",
 			TRA10051: "取消授權失敗",
 			TRA10054: "檢查碼 CheckValue 有錯誤",
 			TRA10058: "分期交易非全額請款或退款",
 			TRA10094: "取消請款或退款時查無該筆資料，或該筆資料已不可取消請款或退款",
 			TRA10095: "此筆交易已過關帳時間，不可取消",
 			TRA20001: "金融機構取消授權批次處理中",
 			TRA20004: "商店訂單編號重覆",
 			TRA20011: "該筆交易已請款",
 			TRA40008: "資料不可空白",
 			TRA40012: "資料傳遞錯誤",
 			TRA40013: "資料不齊全",
 			TRA40014: "TimeStamp 欄位錯誤"
		}

		def self.error_codes
			@@error_codes
		end

		# def self.get_error_message code
		# 	@error_code[code]
		# end
	end
end