import pandas as pd
from sklearn.svm import SVC
# from sklearn.externals import joblib
from sklearn.metrics import accuracy_score
import joblib
from preprocess import DataSource
from model_tfidf import Dict_Tfidf
from sklearn.model_selection import cross_val_score
from utils import util
from sklearn.model_selection import train_test_split
PATH = "./data/train.crash"

def create_tfidf_vector(path):
    stopWordList = []
    dict_tfidf = Dict_Tfidf(PATH)
    vectorizer = dict_tfidf.create_dict_tfidf()

    #load du lieu
    ds = DataSource()
    train_data = pd.DataFrame(ds.load_data(path))
    x_train = train_data.review
    y_train = train_data.label
    
    # chuan hoa lai du lieu
    x_train = x_train.tolist()
    Util = util()
    f = open("stop-words.txt", "r",encoding='utf8')
    Content = f.readlines()
    for line in Content:
        stopWordList.append(line.strip())

    A = []
    for i in range(len(x_train)):
        text = x_train[i]
        text = Util.text_util_final(text,stopWordList)
        A.append(text)        

    #Chuyen ve vector tfidf    
    x_train_tfidf = vectorizer.transform(A)
    return x_train_tfidf,y_train

def training():
    x,y = create_tfidf_vector(PATH)
    X_train, X_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=42)
    model = SVC(C=1,kernel='linear')
    model.fit(x,y)
    predicted = model.predict(X_test)
    joblib.dump(model, './models/best_model.pkl', compress = 1)
    return (accuracy_score(y_test, predicted))

if __name__ == '__main__':
    training()