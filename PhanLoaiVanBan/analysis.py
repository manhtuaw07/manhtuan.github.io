from model_tfidf import Dict_Tfidf
# from sklearn.externals import joblib
import joblib
import io
import argparse
from tqdm import tqdm,trange
import time
from utils import util
PATH = "./data/train.crash"
positiveList = []
negativeList = []
neutralList = []
model= joblib.load('./models/best_model.pkl')

def analysis(text):
	text = [text]
	dict_tfidf = Dict_Tfidf(PATH)
	vectorizer = dict_tfidf.create_dict_tfidf()	
	vector_tfidf = vectorizer.transform(text)
	label = model.predict(vector_tfidf)
	
	if(label[0] == 0):
		category = "Thể thao"
	elif(label[0] == 1):
		category ="Pháp luật"
	elif(label[0] == 2):
		category ="Sức khẻo"
	else:
		category ="Giáo dục"
	return category

