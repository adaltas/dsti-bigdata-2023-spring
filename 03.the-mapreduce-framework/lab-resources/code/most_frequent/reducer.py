import sys
import json


def read_kv_array(text):
    key_values = []

    for line in text:
        key, value = line.split('\t')
        key_values.append({'key': key, 'value': value})

    return key_values


def write_kv_dict(key_values):
    for k, v in key_values.items():
        print(f'{k}\t{v}')


def find_most_frequent(kv_array):
    wordcount = {}
    most_freq = []

    for wc in kv_array:
        wordcount.update(json.loads(wc['value']))

    max_count = max([int(c) for c in wordcount.values()])

    for word, count in wordcount.items():
        if int(count) == max_count:
            most_freq.append(word)

    return {max_count: most_freq}


if __name__ == '__main__':
    write_kv_dict(find_most_frequent(read_kv_array(sys.stdin)))
