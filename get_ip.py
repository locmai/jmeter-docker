with open('ip_list.txt') as f:
    lines = f.read().splitlines()
    print(",".join(lines))