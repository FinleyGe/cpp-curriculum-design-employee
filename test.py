#!/bin/env python3
import random
used_id = set()

def generate_test_data() -> str:
    # random data
    name:str = "name" + str(random.randint(10000000, 100000000))
    id:str = str(random.randint(10000000, 100000000))
    while id in used_id:
        id = str(random.randint(10000000, 100000000))
    used_id.add(id)

    phone:str = "1" + str(random.randint(1000000000, 10000000000))
    department:str = random.choice(("CS", "EE", "Math"))
    college:str = random.choice(("CS", "EE", "Math"))
    edu:str = random.choice(("MASTER", "BACHELOR", "DOCTOR"))

    data = "{0} {1} {2} {3} {4} {5}".format(name, id, phone, department, college, edu)
    return data

def main():
    for i in range(20):
        print(generate_test_data())

if __name__ == "__main__":
    main()
