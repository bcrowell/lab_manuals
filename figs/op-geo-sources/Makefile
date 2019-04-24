default:
	composite -dissolve 50 -gravity Center unmagnified.png dog_magnified_centered.jpg -alpha Set z_both_sharp.jpg
	composite -dissolve 65 -gravity Center blurred.png dog_magnified_centered.jpg -alpha Set z_sharp_dog_blurry_tree.jpg
	composite -dissolve 35 -gravity Center unmagnified.png dog_magnified_centered_blurred.jpg -alpha Set z_sharp_tree_blurry_dog.jpg
	composite -dissolve 50 -gravity Center unmagnified.png dog_magnified_on_right.png -alpha Set z_misaligned.jpg
