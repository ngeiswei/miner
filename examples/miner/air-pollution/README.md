# Mine Air Pollution Data

Example mining data from Kaggle about air pollution.

## Usage

### Import data

Go to

https://www.kaggle.com/uciml/pm25-data-for-five-chinese-cities

click on Download at the top right corner of the page, you need to
have an account at kaggle.com, and save the archive file

```
pm25-data-for-five-chinese-cities.zip
```

here in this folder. Then unzip it

```bash
unzip pm25-data-for-five-chinese-cities.zip
```

and call the following script to convert the csv files of that archive
into scheme code for the subsequent mining phase.

```bash
python3 import-air-pollution.py
```

