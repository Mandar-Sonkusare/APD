<<<<<<< HEAD
# Digit Recognition CNN

A Convolutional Neural Network (CNN) for recognizing handwritten digits using the MNIST dataset, built with TensorFlow/Keras.

## Features

- CNN model with 2 convolutional layers
- Trained on MNIST dataset (60,000 training images)
- Achieves ~97% accuracy on test data
- Docker support for easy deployment
- Visualization of predictions

## Requirements

- Python 3.9+
- TensorFlow 2.13.0
- See `requirements.txt` for full dependencies

## Installation

### Using Docker (Recommended)

```bash
# Build and run with docker-compose
docker-compose up --build

# Or using Docker directly
docker build -t digit-recognition-cnn .
docker run digit-recognition-cnn
```

### Local Installation

```bash
pip install -r requirements.txt
python digit_recognition_cnn.py
```

## Usage

The script will:
1. Download and load the MNIST dataset
2. Train a CNN model (1 epoch by default)
3. Evaluate the model on test data
4. Generate predictions visualization (saved as `predictions.png`)
5. Optionally predict on a custom image if `test_image.png` exists

## Model Architecture

- Conv2D (32 filters, 3x3 kernel)
- MaxPooling2D (2x2)
- Conv2D (64 filters, 3x3 kernel)
- MaxPooling2D (2x2)
- Flatten
- Dropout (0.5)
- Dense (10 units, softmax)

## License

MIT
=======
# Digit Recognition CNN

A Convolutional Neural Network (CNN) for recognizing handwritten digits using the MNIST dataset, built with TensorFlow/Keras.

## Features

- CNN model with 2 convolutional layers
- Trained on MNIST dataset (60,000 training images)
- Achieves ~97% accuracy on test data
- Docker support for easy deployment
- Visualization of predictions

## Requirements

- Python 3.9+
- TensorFlow 2.13.0
- See `requirements.txt` for full dependencies

## Installation

### Using Docker (Recommended)

```bash
# Build and run with docker-compose
docker-compose up --build

# Or using Docker directly
docker build -t digit-recognition-cnn .
docker run digit-recognition-cnn
```

### Local Installation

```bash
pip install -r requirements.txt
python digit_recognition_cnn.py
```

## Usage

The script will:
1. Download and load the MNIST dataset
2. Train a CNN model (1 epoch by default)
3. Evaluate the model on test data
4. Generate predictions visualization (saved as `predictions.png`)
5. Optionally predict on a custom image if `test_image.png` exists

## Model Architecture

- Conv2D (32 filters, 3x3 kernel)
- MaxPooling2D (2x2)
- Conv2D (64 filters, 3x3 kernel)
- MaxPooling2D (2x2)
- Flatten
- Dropout (0.5)
- Dense (10 units, softmax)

## License

MIT
>>>>>>> e0cc833c6cbb17e2e8549a1aae44ff844e2cf58d
