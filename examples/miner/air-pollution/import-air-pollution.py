import csv

def import_csv(filename):
    print("Import " + filename)
    with open(filename) as csv_file:
        csv_reader = csv.DictReader(csv_file)
        val = 0
        for row in csv_reader:
            print(row)
            val += 1
            if (val == 10):
                break

def main():
    import_csv("BeijingPM20100101_20151231.csv")
    import_csv("ChengduPM20100101_20151231.csv")
    import_csv("GuangzhouPM20100101_20151231.csv")
    import_csv("ShanghaiPM20100101_20151231.csv")
    import_csv("ShenyangPM20100101_20151231.csv")

main()
