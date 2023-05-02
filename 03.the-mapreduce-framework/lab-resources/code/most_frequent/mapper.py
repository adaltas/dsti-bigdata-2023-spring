import sys
import json


def read_kv_dict(text):
    key_values = {}

    for line in text:
        key, value = line.strip().split('\t')
        key_values.update({key: value})

    return key_values


def write_kv_dict(key_values):
    for k, v in key_values.items():
        print(f'{k}\t{v}')


def wordscount_to_single_kv(wordcount):
    return {'wordcount': json.dumps(wordcount)}


if __name__ == '__main__':
    write_kv_dict(wordscount_to_single_kv(read_kv_dict(sys.stdin)))
