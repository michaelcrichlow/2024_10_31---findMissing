import copy


def findMissing(l: list[int]) -> int:
    local_array = copy.deepcopy(l)
    local_array.sort()
    missing_num = 0

    for i in range(1, len(local_array)):
        if local_array[i] != local_array[i - 1] + 1:
            missing_num = local_array[i - 1] + 1

    return missing_num


def main() -> None:
    print(findMissing([3, 0, 1]))
    print(findMissing([10, 5, 8, 6, 9, 12, 7]))
    print(findMissing([200, 199, 202]))


if __name__ == '__main__':
    main()

# findMissing([3,0,1]) => 2
