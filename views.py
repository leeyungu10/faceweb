import numpy as np
from django.http import HttpResponse
import cv2
import tensorflow as tf

def check(request):
    print("abc")
    fernet = tf.keras.models.load_model('faceweb/epochs60_acc68_test80.h5')
    for key, value in request.POST.items():
        print("%s %s" % (key, value))

    test_image = request.POST['fileName']
    print(test_image)

    print("\n\ntest image\n\n", test_image)
    print("===============================\n\n\n")
    # image = cv2.imread(test_image, cv2.IMREAD_GRAYSCALE) 


# 이미지 파일 경로 설정 (이를 여러 이미지에 대해 반복하면 됨)


# 이미지 전처리

    try:
        # path=os.path.join(test_image, n)
        image=cv2.imread(test_image, cv2.IMREAD_GRAYSCALE)
        target_size = (48, 48)
        image=cv2.resize(img, target_size)
    except Exception as e:
        print(str(e))
    image = cv2.resize(image,(48,48))
    img=np.array(image)
    # img= img / 255.0
    img = img.reshape(1,48,48,1)
    predict_x=fernet.predict(img) 
    result=np.argmax(predict_x,axis=1)
    # plt.imshow(image,cmap='gray')
    # plt.show()
    print(result)
    return HttpResponse(result)