#path 有问题,不能导入
def search(路径们, query_q, results_q):
    行们 = []
    for path in 路径们:
        行们.extend(l.strip() for l in path.open())

    query = query_q.get()
    while query:
        results_q.put([l for l in 行们 if query in l])
        query = query_q.get()


if __name__ == "__main__":
    from multiprocessing import Process, Queue, cpu_count
    from path import path

    核心数 = cpu_count()
    路径名 = [f for f in path(".").listdir() if f.isfile()]
    路径们 = [路径名[i::核心数] for i in range(核心数)]
    query_queues = [Queue() for p in range(核心数)]
    results_queue = Queue()

    search_procs = [
        Process(target=search, args=(p, q, results_queue))
        for p, q in zip(路径们, query_queues)
    ]
    for proc in search_procs:
        proc.start()

    for q in query_queues:
        q.put("def")
        q.put(None)  # Signal process termination

    for i in range(核心数):
        for match in results_queue.get():
            print(match)
    for proc in search_procs:
        proc.join()

