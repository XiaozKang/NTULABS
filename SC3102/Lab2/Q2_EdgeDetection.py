#install opencv-python to import cv2
#pip3 install --upgrade opencv-python

import cv2 
import matplotlib.pyplot as plt
import os

def simple_edge_detection(image): 
   # Apply Canny edge detection
   edges_detected = cv2.Canny(image, 100, 200) 
   images = [image , edges_detected]
   location = [121, 122] 
   for loc, edge_image in zip(location, images): 
      plt.subplot(loc) 
      plt.imshow(edge_image, cmap='gray')
#    cv2.imwrite('edge_detected.png', edges_detected) 
#    plt.savefig('edge_plot.png') 
   plt.show()

# Set the working directory to the 'Lab2' folder using a relative path
os.chdir('Lab2')

img = cv2.imread('leaves.jpg', 0)
#img = cv2.imread('edgeflower.jpg', 0)
simple_edge_detection(img)

# import cv2 
# import matplotlib.pyplot as plt
# import os

# def simple_edge_detection(image): 
#     edges_detected = cv2.Canny(image, 100, 200)
#     images = [image, edges_detected]
#     titles = ['Original Image', 'Edge Detected Image']
    
#     plt.figure(figsize=(10, 5))
#     for i in range(2):
#         plt.subplot(1, 2, i+1)
#         plt.imshow(images[i], cmap='gray')
#         plt.title(titles[i])
#         plt.axis('off')
    
#     plt.show()

# # Set the working directory to the 'Lab2' folder using a relative path
# os.chdir('Lab2')

# # Load the image in grayscale mode
# img_path = os.path.join(os.getcwd(), 'edgeflower.jpg')
# img = cv2.imread(img_path, 0)

# if img is not None:
#     simple_edge_detection(img)
# else:
#     print(f"Error: Image file not found or cannot be opened. Tried loading: {img_path}")
