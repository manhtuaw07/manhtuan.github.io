from preprocess import DataSource
import pandas as pd
import re
from underthesea import word_tokenize
import emoji
dict = [["ship", "vận chuyển"],["shop", "cửa hàng"],["m", "mình"],["mik","mình"],["ko","không"],["k","không"],["kh","không"],["khong","không"],["kg","không"],["khg","không"],["tl","trả lời"],
["rep","trả lời"],["r","rồi"],["fb","facebook"],["face","faceook"],["thanks","cảm ơn"],["thank","cảm ơn"],["tks","cảm ơn"],["tk","cảm ơn"],["ok","tốt"],["oki","tốt"],["okie","tốt"],["sp","sản phẩm"],
["dc","được"],["vs","với"],["đt","điện thoại"],["thjk","thích"],["thik","thích"],["qá","quá"],["trể","trễ"],["bgjo","bao giờ"],["h","giờ"],["qa","quá"],["dep","đẹp"],["xau","xấu"],["ib","nhắn tin"],
["cute","dễ thương"],["sz","size"],["good","tốt"],["god","tốt"],["bt","bình thường"],["cx","cũng"]]

class util():
	def remove(self,text): 
		text = re.sub(r'([A-Z])\1+', lambda m: m.group(1).upper(), text, flags=re.IGNORECASE)
		if(text.find("http") > 0  or text.find("https") > 0): text = ""
		return text

	# chuyen cac ky tu viet hoa ve cac ky tu viet thuong
	def A_cvt_a(self,text): 
		text = text.lower().strip()
		return text

	#loai bo cac tu dung	
	def removeStopWord(self,text,stopWordList):
		list_text = text.split(" ")
		list_temp = list_text.copy()
		for i in list_text:
			if i in stopWordList:
				list_temp.remove(i)
		text = " ".join(list_temp)
		return text

	#chuyen doi cac tu viet tat
	def utils_data(self,text):
		list_text = text.split(" ")
		for i in range(len(list_text)):
			for j in range(len(dict)):
				if (list_text[i] == dict[j][0]):
					list_text[i] = dict[j][1]
		text = " ".join(list_text)
		return text

	#tach tu (hom nay la mot ngay dep troi => hom_nay la mot_ngay dep_troi)
	def wordSegmentation(self,text):
		text = word_tokenize(text,format="text")
		return text
	
	def standardize_data(self,row):
		row = row.lower()
		row = re.sub(r"[\.,\?]+$-", "", row)
		row = row.replace(",", " ").replace(".", " ") \
			.replace(";", " ").replace("“", " ") \
			.replace(":", " ").replace("”", " ") \
			.replace('"', " ").replace("'", " ") \
			.replace("!", " ").replace("?", " ") \
			.replace("-", " ").replace("?", " ").replace("=))", " ").replace("=", " ").replace(")", " ").replace("(", " ").replace("]", " ").replace("  ", " ").replace("   ", " ")
		row = row.strip()
		return row

	def remove_emojis(self,data):
		emoj = re.compile("["
			u"\U0001F600-\U0001F64F"  # emoticons
			u"\U0001F300-\U0001F5FF"  # symbols & pictographs
			u"\U0001F680-\U0001F6FF"  # transport & map symbols
			u"\U0001F1E0-\U0001F1FF"  # flags (iOS)
			u"\U00002500-\U00002BEF"  # chinese char
			u"\U00002702-\U000027B0"
			u"\U00002702-\U000027B0"
			u"\U000024C2-\U0001F251"
			u"\U0001f926-\U0001f937"
			u"\U00010000-\U0010ffff"
			u"\u2640-\u2642" 
			u"\u2600-\u2B55"
			u"\u200d"
			u"\u23cf"
			u"\u23e9"
			u"\u231a"
			u"\ufe0f"  # dingbats
			u"\u3030"
			"]+", re.UNICODE)
		return re.sub(emoj, '', data)

	def text_util_final(self,text,stopWordList = []):
		text = self.remove_emojis(text)
		text = self.remove(text)
		text = self.A_cvt_a(text)
		text = self.utils_data(text)
		text = self.standardize_data(text)
		text = self.removeStopWord(text,stopWordList)
		text = self.wordSegmentation(text)
		return text



		